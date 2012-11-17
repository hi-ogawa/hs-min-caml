{-# LANGUAGE CPP #-}
module Emit where

import qualified Type as T
import qualified IdMod as I
import qualified GlobalEnv as G
import qualified Closure as C
import qualified Asm as A


import qualified Data.Map as Mp
import Data.List(elemIndex, partition)
import Data.Word(Word32)
import Data.Int(Int32)
import Data.Binary.IEEE754(floatToWord)
import Text.Printf(printf)
import Control.Monad.Writer
import Control.Monad.State
import qualified Debug.Trace as DT

data Dest = Tail
          | NonTail I.Id
type StackSet = Mp.Map I.Id T.T
type StackMap = [I.Id]

type Output = String
type EmitMonad = WriterT Output (State ((StackSet,StackMap), I.Counter))

----MAIN---
emitMain :: G.GloOffset -> A.Prog -> I.Counter -> Output
emitMain gloOffset prog c = 
  let !_ = DT.trace ("emitting...") () in  
  output
  where ((_, output), _) =runState(runWriterT (emitMain' gloOffset prog)) ((Mp.empty, []), c)
    
emitMain' :: G.GloOffset -> A.Prog -> EmitMonad ()
emitMain' gloOffset (e, fundefs) = 
  do tell $ printf "\t%s\t%s, %d\n"                     "lfh" A.regZrF          (0::Int)
     tell $ printf "\t%s\t%s, %d\n"                     "lfl" A.regZrF          (0::Int)
     tell $ printf "\t%s\t%s, %d\n"                     "lfh" A.regOneF         (16256::Int)
     tell $ printf "\t%s\t%s, %d\n"                     "lfl" A.regOneF         (0::Int)
     tell $ printf "\t%s\t%s, %d\n"                     "lfh" A.regMiOneF       (49024::Int)
     tell $ printf "\t%s\t%s, %d\n"                     "lfl" A.regMiOneF       (0::Int)
     tell $ printf "\t%s\t%s\n"                         "j" "min_caml_start"
     mapM emitFun fundefs
     tell $ printf "%s:\n"                              "min_caml_start"
     tell $ printf "\t%s\t%s, %s, %d\n"                 "ori" A.regHp "$r0" gloOffset
     tell $ printf "\t%s\t%s, %d\n"                     "lui" A.regSp (0x0040 :: Int)
     tell $ printf "\t%s\t%s, %s, %d\n"                 "ori" A.regSp A.regSp (0x0000 :: Int)
     (_, c) <- get
     put ((Mp.empty, []), c)
     writeE (NonTail "$g0") e
     tell $ printf "\t%s\n"                             "halt"

emitFun :: A.Fundef -> EmitMonad ()
emitFun A.Fundef{A.name = I.Label x, A.body = e} =
  do tell $ printf "%s:\n"                              x
     (_, c) <- get
     put ((Mp.empty, []), c)
     writeE Tail e


------- write print -------------------------
writeE :: Dest -> A.T -> EmitMonad ()
writeE dest (A.Ans exp)         = do writeExp dest        exp
writeE dest (A.Let (x,t) exp e) = do writeExp (NonTail x) exp
                                     writeE   dest        e
                                     
writeExp :: Dest -> A.Exp -> EmitMonad ()
writeExp (NonTail a) exp = case exp of
  A.Nop                   -> return ()
  A.Set  i              | -32768 <= i && i <= 32767 
                          -> tell $ printf "\t%s\t%s, %s, %d\n"         "addi" a "$r0" i
  A.Set  i                -> do tell $ printf "\t%s\t%s, %d\n"          "lui"  a hi
                                tell $ printf "\t%s\t%s, %s, %d\n"      "ori"  a a lo
    where i' = fromIntegral i :: Word32
          hi = (i' `div` 0x10000) `mod` 0x10000
          lo = i' `mod` 0x10000
  A.SetF f              | f == 0.0
                          -> do tell $ printf "\t%s\t%s, %s\n"          "fmove" a A.regZrF
  A.SetF f              | f == 1.0  
                          -> do tell $ printf "\t%s\t%s, %s\n"          "fmove" a A.regOneF
  A.SetF f              | f == -1.0  
                          -> do tell $ printf "\t%s\t%s, %s\n"          "fmove" a A.regMiOneF
  A.SetF f                -> do tell $ printf "\t%s\t%s, %d\n"          "lfh"  a hi
                                case lo of
                                  0     -> return ()
                                  _     -> tell $ printf "\t%s\t%s, %d\n"          "lfl"  a lo 
    where f' = floatToWord f :: Word32
          hi = (f' `div` 0x10000) `mod` 0x10000
          lo = f' `mod` 0x10000
  A.SetL (I.Label x)      -> tell $ printf "\t%s\t%s, %s\n"            "la"   a x
  A.Mov  x | a == x       -> return ()
  A.Mov  x                -> tell $ printf "\t%s\t%s, %s, %d\n"         "addi" a x (0::Int)
  A.Neg  x                -> tell $ printf "\t%s\t%s, %s, %s\n"         "subu" a "$r0" x
  A.Add  x (A.V y)        -> tell $ printf "\t%s\t%s, %s, %s\n"         "addu" a x y
  A.Sub  x (A.V y)        -> tell $ printf "\t%s\t%s, %s, %s\n"         "subu" a x y
  A.Add  x (A.C i)        -> tell $ printf "\t%s\t%s, %s, %d\n"         "addi" a x i
  A.Sub  x (A.C i)        -> tell $ printf "\t%s\t%s, %s, %d\n"         "addi" a x (-i)
  A.SLL  x i              -> tell $ printf "\t%s\t%s, %s, %d\n"         "sll" a x i
  A.SRA  x i              -> tell $ printf "\t%s\t%s, %s, %d\n"         "sra" a x i
  -- A.Ld   x (A.V y)        -> do tell $ printf "\t%s\t%s, %s, %s\t!%s\n"         "addu" "$r1" x y         "ld var"
  --                               tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"         "lw"    a (0::Int) "$r1" "ld var"
  A.Ld   x (A.V y)        -> tell $ printf "\t%s\t%s, %s(%s)\t!%s\n"    "lwr" a y x         "ld var"  
  A.Ld   x (A.C i)        -> tell $ printf "\t%s\t%s, %d(%s)\n"         "lw"  a i x
  -- A.St   x y (A.V z)      -> do tell $ printf "\t%s\t%s, %s, %s\t!%s\n"         "addu" "$r1" y z         "st var"
  --                               tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"         "sw"    x (0::Int) "$r1" "st var"
  A.St   x y (A.V z)      -> tell $ printf "\t%s\t%s, %s(%s)\t!%s\n"    "swr" x z y         "st var"  
  A.St   x y (A.C i)      -> tell $ printf "\t%s\t%s, %d(%s)\n"         "sw" x i y
  A.FMov x | a == x       -> return ()
  A.FMov x                -> tell $ printf "\t%s\t%s, %s\n"             "fmove" a x
  A.FNeg x                -> tell $ printf "\t%s\t%s, %s\n"             "fneg"  a x
  A.Fabs x                -> tell $ printf "\t%s\t%s, %s\n"             "fabs"  a x  
  A.Sqrt x                -> tell $ printf "\t%s\t%s, %s\n"             "sqrt"  a x  
  A.FAdd x y              -> tell $ printf "\t%s\t%s, %s, %s\n"         "add.s" a x y
  A.FSub x y              -> tell $ printf "\t%s\t%s, %s, %s\n"         "sub.s" a x y
  A.FMul x y              -> tell $ printf "\t%s\t%s, %s, %s\n"         "mul.s" a x y
  A.FDiv x y              -> tell $ printf "\t%s\t%s, %s, %s\n"         "div.s" a x y
  -- A.LdF  x (A.V y)        -> do tell $ printf "\t%s\t%s, %s, %s\t!%s\n"         "addu" "$r1" x y         "ldf var"
  --                               tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"         "lwcl"  a (0::Int) "$r1" "ldf var"
  A.LdF  x (A.V y)        -> tell $ printf "\t%s\t%s, %s(%s)\t!%s\n"    "lwclr" a y x         "ldf var"  
  A.LdF  x (A.C i)        -> tell $ printf "\t%s\t%s, %d(%s)\n"         "lwcl" a i x                     
  -- A.StF  x y (A.V z)      -> do tell $ printf "\t%s\t%s, %s, %s\t!%s\n"         "addu" "$r1" y z         "stf var"
  --                               tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"         "swcl"  x (0::Int) "$r1" "stf var"
  A.StF  x y (A.V z)      -> tell $ printf "\t%s\t%s, %s(%s)\t!%s\n"    "swclr" x z y        "stf var"  
  A.StF  x y (A.C i)      -> tell $ printf "\t%s\t%s, %d(%s)\n"         "swcl" x i y  
  A.IfEq x y'@(A.V y) e1 e2       -> ifNonTail x y' e1 e2 "beq"  "bne"  a
  A.IfEq x y'@(A.C i) e1 e2       -> ifNonTail x y' e1 e2 "beqi" "bnei" a  
  A.IfLe x y'@(A.V y) e1 e2       -> ifNonTail x y' e1 e2 "ble"  "bgt"  a
  A.IfLe x y'@(A.C i) e1 e2       -> ifNonTail x y' e1 e2 "blei" "bgti" a  
  A.IfGe x y'@(A.V y) e1 e2       -> error ""
  A.IfGe x y'@(A.C i) e1 e2       -> ifNonTail x y' e1 e2 "bgei" "blti" a    
  A.IfFEq x y e1 e2       -> do tell $ printf "\t%s\t%s, %s\n"          "c.eq.s" x y
                                ifNonTailF e1 e2 "bclt" "bclf" a
  A.IfFLe x y e1 e2       -> do tell $ printf "\t%s\t%s, %s\n"          "c.le.s" x y
                                ifNonTailF e1 e2 "bclt" "bclf" a
  A.CallCls x ys zs       ->
    do writeArgs [(x,A.regCl)] ys zs
       ss <- getStackSize ()
       label1 <- genNewLabel "lab1"
       label2 <- genNewLabel "lab2"       
       tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"                        "sw" A.regRa (-ss) A.regSp        "call-cls"
       tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"                        "lw" A.regSw (0::Int) A.regCl     "call-cls"
       tell $ printf "\t%s\t%s, %s, %d\n"                        "addi" A.regSp A.regSp (-ss)
       tell $ printf "\t%s\t%s\n"                                "jal"  label2                          
       tell $ printf "\t%s\t%s\n"                                "j"    label1                          
       tell $ printf "%s:\n"                                     label2                                 
       tell $ printf "\t%s\t%s\n"                                "jr"   A.regSw                         
       tell $ printf "%s:\n"                                     label1                                 
       tell $ printf "\t%s\t%s, %s, %d\n"                        "addi" A.regSp A.regSp (ss)       
       tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"                        "lw" A.regRa (-ss) A.regSp        "call-cls"
       (if elem a A.iRegs && a /= (head A.iRegs)                                                        
        then tell $ printf "\t%s\t%s, %s, %d\t!%s\n"                "addi" a (head A.iRegs) (0::Int)    "call-cls"
        else if elem a A.fRegs && a /= (head A.fRegs)                                                   
             then tell $ printf "\t%s\t%s, %s\t!%s\n"           "fmove" a (head A.fRegs)                "call-cls"
             else return () )
  A.CallDir (I.Label x) ys zs->
    do writeArgs [] ys zs
       ss <- getStackSize ()
       tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"                        "sw" A.regRa (-ss) A.regSp        "call-dir"
       tell $ printf "\t%s\t%s, %s, %d\t!%s\n"                        "addi" A.regSp A.regSp (-ss)      "call-dir"
       tell $ printf "\t%s\t%s\n"                                "jal"  x
       tell $ printf "\t%s\t%s, %s, %d\n"                        "addi" A.regSp A.regSp (ss)
       tell $ printf "\t%s\t%s, %d(%s)\t!%s\n"                        "lw" A.regRa (-ss) A.regSp        "call-dir"
       (if elem a A.iRegs && a /= (head A.iRegs)
        then tell $ printf "\t%s\t%s, %s, %d\t!%s\n"                "addi" a (head A.iRegs) (0::Int)    "call-dir"
        else if elem a A.fRegs && a /= (head A.fRegs)
             then tell $ printf "\t%s\t%s, %s\t!%s\n"           "fmove" a (head A.fRegs)                "call-dir"
             else return ())      
  A.Save x n | elem x A.iRegs ->
    do{ mem <- gets (\((st,_), _) -> Mp.member n st)
      ; if (not mem) then do save n T.Int
                             offset <- getOffset n
                             tell $ printf "\t%s\t%s, %d(%s)\n"         "sw" x offset A.regSp
        else return () }
  A.Save x n | elem x A.fRegs ->
    do{ mem <- gets (\((st,_), _) -> Mp.member n st)
      ; if (not mem) then do save n T.Float
                             offset <- getOffset n
                             tell $ printf "\t%s\t%s, %d(%s)\n"         "swcl" x offset A.regSp
        else return () }
  A.Save x n              -> error ((show __FILE__)++(show __LINE__))
  A.Restore n | elem a A.iRegs
                -> do offset <- getOffset n
                      tell $ printf "\t%s\t%s, %d(%s)\n"              "lw" a offset A.regSp
  A.Restore n | elem a A.fRegs
                -> do offset <- getOffset n
                      tell $ printf "\t%s\t%s, %d(%s)\n"           "lwcl" a offset A.regSp
  A.Restore n                  -> error ((show __FILE__)++(show __LINE__))
    
writeExp Tail exp = case exp of
--- return unit exp
  A.Nop                 -> do writeExp (NonTail "unit") exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.St    _ _ _         -> do writeExp (NonTail "unit") exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.StF   _ _ _         -> do writeExp (NonTail "unit") exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Save  _ _           -> do writeExp (NonTail "unit") exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
--- return int exp
  A.Set  _              -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.SetL _              -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Mov  _              -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Neg  _              -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Add  _ _            -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Sub  _ _            -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.SLL  _ _            -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.SRA  _ _            -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Ld   _ _            -> do writeExp (NonTail (head A.iRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
--- return float exp
  A.SetF _              -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.FMov _              -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.FNeg _              -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.Sqrt _              -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.FAdd _ _            -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.FSub _ _            -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.FMul _ _            -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.FDiv _ _            -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
  A.LdF  _ _            -> do writeExp (NonTail (head A.fRegs)) exp
                              tell $ printf "\t%s\t%s\n"                "jr" "$r31"
---
  A.Restore x           -> 
    do intOrNot <- getType x
       (if intOrNot
        then writeExp (NonTail (head A.iRegs)) exp
        else writeExp (NonTail (head A.fRegs)) exp)
       tell $ printf "\t%s\t%s\n"                                       "jr" "$r31"
  A.IfEq x y'@(A.V y) e1 e2       -> ifTail x y' e1 e2 "beq"  "bne" 
  A.IfEq x y'@(A.C i) e1 e2       -> ifTail x y' e1 e2 "beqi" "bnei"
  A.IfLe x y'@(A.V y) e1 e2       -> ifTail x y' e1 e2 "ble"  "bgt" 
  A.IfLe x y'@(A.C i) e1 e2       -> ifTail x y' e1 e2 "blei" "bgti"
  A.IfGe x y'@(A.V y) e1 e2       -> error ""
  A.IfGe x y'@(A.C i) e1 e2       -> ifTail x y' e1 e2 "bgei" "blti"
  A.IfFEq x y e1 e2     -> do tell $ printf "\t%s\t%s, %s\n"            "c.eq.s" x y
                              ifTailF e1 e2 "bclt" "bclf"
  A.IfFLe x y e1 e2     -> do tell $ printf "\t%s\t%s, %s\n"            "c.le.s" x y
                              ifTailF e1 e2 "bclt" "bclf"
  A.CallCls x ys zs     -> do writeArgs [(x, A.regCl)] ys zs
                              tell $ printf "\t%s\t%s, 0(%s)\n"         "lw" A.regSw A.regCl
                              tell $ printf "\t%s\t%s\n"                "jr" A.regSw
  A.CallDir (I.Label x) ys zs -> do writeArgs [] ys zs
                                    tell $ printf "\t%s\t%s\n"          "j"  x

ifTail :: I.Id->A.IdOrIm -> A.T->A.T -> String->String -> EmitMonad ()
ifTail x y' e1 e2 brt brf = 
  do label1 <- genNewLabel brt
     label2 <- genNewLabel brf
     ((sts0,stm0), _) <- get             -- backup stack
     (case y' of
         A.V y  -> tell $ printf "\t%s\t%s, %s, %s\n"                   brf x y label2
         A.C i  -> tell $ printf "\t%s\t%s, %d, %s\n"                   brf x i label2
       )
     writeE Tail e1                                                     -- write e1
     tell $ printf "%s:\n"                                              label2
     ((sts1,stm1), c) <- get             -- but keep counting (and stm??)
     put ((sts0,stm1), c)
     writeE Tail e2                                                     -- write e2
    
ifNonTail :: I.Id->A.IdOrIm -> A.T->A.T -> String->String -> I.Id -> EmitMonad ()
ifNonTail x y' e1 e2 brt brf dest =
  do label1 <- genNewLabel "cont"
     label2 <- genNewLabel brf
     ((sts0, stm0), _) <- get             -- backup stack
     (case y' of
         A.V y  -> tell $ printf "\t%s\t%s, %s, %s\n"                   brf x y label2
         A.C i  -> tell $ printf "\t%s\t%s, %d, %s\n"                   brf x i label2
       )     
     writeE (NonTail dest) e1                                           -- write e1
     ((sts1, stm1), c) <- get
     tell $ printf "\t%s\t%s\n"                                         "j" label1
     tell $ printf "%s:\n"                                              label2
     put ((sts0, stm1), c)
     writeE (NonTail dest) e2                                           -- write e2
     tell $ printf "%s:\n"                                              label1
     ((sts2, stm2), c') <- get
     put ((Mp.intersection sts1 sts2, stm2), c')
     
ifTailF :: A.T->A.T -> String -> String -> EmitMonad ()
ifTailF e1 e2 brt brf = 
  do label1 <- genNewLabel brt
     label2 <- genNewLabel brf
     ((sts0,stm0), _) <- get             -- backup stack
     tell $ printf "\t%s\t%s\n"                                         brf label2
     writeE Tail e1                                                     -- write e1
     tell $ printf "%s:\n"                                              label2
     ((sts1,stm1), c) <- get             -- but keep counting (and stm??)
     put ((sts0,stm1), c)
     writeE Tail e2                                                     -- write e2
    
ifNonTailF :: A.T->A.T -> String->String -> I.Id -> EmitMonad ()
ifNonTailF e1 e2 brt brf dest =
  do label1 <- genNewLabel "cont"
     label2 <- genNewLabel brf
     ((sts0, stm0), _) <- get             -- backup stack
     tell $ printf "\t%s\t%s\n"                                         brf label2
     writeE (NonTail dest) e1                                           -- write e1
     ((sts1, stm1), c) <- get
     tell $ printf "\t%s\t%s\n"                                         "j" label1
     tell $ printf "%s:\n"                                              label2
     put ((sts0, stm1), c)
     writeE (NonTail dest) e2                                           -- write e2
     tell $ printf "%s:\n"                                              label1
     ((sts2, stm2), c') <- get
     put ((Mp.intersection sts1 sts2, stm2), c')
     
writeArgs :: [(I.Id, I.Id)] -> [I.Id] -> [I.Id] -> EmitMonad ()
writeArgs x_regCl ys zs = 
  do mapM (\(y, r) 
           -> tell $ printf "\t%s\t%s, %s, %d\n"                        "addi" r y (0::Int)
          ) yr'
     mapM (\(z, r) 
           -> tell $ printf "\t%s\t%s, %s\n"                            "fmove"r z
          ) zr'
     return ()
    where yrs = x_regCl++(zip ys A.iRegs)
          yr' = shuffle A.regSw yrs
          zrs = zip zs A.fRegs
          zr' = shuffle A.regSwF zrs
          
shuffle :: I.Id -> [(I.Id, I.Id)] -> [(I.Id, I.Id)]
shuffle sw []   = []
shuffle sw yrs  = 
  let (ids, yrs1) = partition (\(y,r) -> y == r) yrs in
  case partition (\(_,r) -> elem r $ (fst.unzip) yrs1) yrs1 of
    ([]        , [])   -> []
    ((y,r):yrs2, [])   -> (r,sw):(y,r):(shuffle sw yrs3)
      where yrs3 = map (\(y1,r1) -> if r == y1 then (sw, r1) else (y1,r1)) yrs2
    (yrs2    , acyc)   -> acyc++(shuffle sw yrs2) 
                       
getOffset :: I.Id -> EmitMonad Int
getOffset n = do ((sts,stm), _) <- get
                 (case elemIndex n stm of
                     Just i  -> return $ (i+1)*(-4)
                     Nothing -> error ((show __FILE__)++(show __LINE__)))
                 
getStackSize :: () -> EmitMonad Int
getStackSize () = do ((sts,stm), _) <- get
                     return $ (length stm + 1) * 4
                 
getType :: I.Id -> EmitMonad Bool --intだったら真
getType n = do ((sts,_), _) <- get
               (case Mp.lookup n sts of
                   Just T.Int   -> return True
                   Just T.Float -> return False
                   _            -> error ((show __FILE__)++(show __LINE__)))
                 
save :: I.Id -> T.T -> EmitMonad ()
save n t = do ((sts,stm), c) <- get
              let newSts = Mp.insert n t sts
              let newStm = stm ++ [n]
              (if elem n stm
               then put ((newSts, stm), c)
               else put ((newSts, newStm), c))
  
genNewLabel :: String -> EmitMonad String
genNewLabel str = do (st, c) <- get
                     put (st, c+1)
                     return $ str++"."++(show (c+1))