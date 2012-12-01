module Block where

import qualified IdMod as I
import qualified Asm as As

import qualified Data.Set as St
import qualified Data.Map as Mp

data Fundef = Fundef{fId:: I.Label, fArgs :: [I.Id], fFargs :: [I.Id], fRet::T.T,
                     fBlocks :: St.Set I.Id, fHead :: I.Id,
                     fDefRegs:: [I.Id]}


data Block  = Block{bId :: I.Id, bFundef:: I.Label, bStmts:: St.Set I.Id,
                    bPred :: [I.Id], bSucc :: [I.Id],
                    bHead :: I.Id,   bTail :: I.Id,
                    bLiveInt :: [I.Id], bLiveOut :: [I.Id]}
  
data Stmt   = Stmt {sId :: I.Id, sBlock :: I.Id, sInst :: Exp,
                    sPred :: [I.Id], sSucc :: [I.Id],
                    sLiveIn :: [I.Id], sLiveOut :: [I.Id]}

data Exp = Exp { def :: (I.Id, T.T), op :: Exp }

data T = Nop
       | Set       Int
       | SetF      Float
       | SetL      I.Label
       | Mov       I.Id
       | Neg       I.Id
       | Add       I.Id As.IdOrIm
       | Sub       I.Id As.IdOrIm
       | SLL       I.Id Int
       | SRA       I.Id Int
       | Ld        I.Id As.IdOrIm
       | St        I.Id I.Id As.IdOrIm
       | FMov      I.Id
       | FNeg      I.Id
       | Fabs      I.Id
       | Sqrt      I.Id
       | FAdd      I.Id I.Id
       | FSub      I.Id I.Id
       | FMul      I.Id I.Id
       | FDiv      I.Id I.Id
       | LdF       I.Id I.Id
       | StF       
       | IfEq      
       | IfLe      
       | IfGe      
       | IfFEq     
       | IfFLe     
       | CallCls   
       | CallDir   
       | Save      
       | Restore   

