{-# OPTIONS_GHC -w #-}
{-# LANGUAGE CPP #-}  
module Parser where

import Lexer as L
import qualified Type as T
import qualified IdMod as I
import qualified Syntax as S

import Control.Monad.State
import Control.Monad.Error

-- parser produced by Happy Version 1.18.6

data HappyAbsSyn 
	= HappyTerminal (L.Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 (S.T)
	| HappyAbsSyn6 (S.Fundef)
	| HappyAbsSyn7 ([(I.Id, T.T)])
	| HappyAbsSyn8 ([S.T])

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (L.Token)
	-> HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> m HappyAbsSyn)
	-> [HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(L.Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107 :: () => Int -> ({-HappyReduction (ParseState) = -}
	   Int 
	-> (L.Token)
	-> HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseState) HappyAbsSyn)
	-> [HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseState) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(L.Token)] -> (ParseState) HappyAbsSyn)

happyReduce_1,
 happyReduce_2,
 happyReduce_3,
 happyReduce_4,
 happyReduce_5,
 happyReduce_6,
 happyReduce_7,
 happyReduce_8,
 happyReduce_9,
 happyReduce_10,
 happyReduce_11,
 happyReduce_12,
 happyReduce_13,
 happyReduce_14,
 happyReduce_15,
 happyReduce_16,
 happyReduce_17,
 happyReduce_18,
 happyReduce_19,
 happyReduce_20,
 happyReduce_21,
 happyReduce_22,
 happyReduce_23,
 happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45 :: () => ({-HappyReduction (ParseState) = -}
	   Int 
	-> (L.Token)
	-> HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseState) HappyAbsSyn)
	-> [HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseState) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(L.Token)] -> (ParseState) HappyAbsSyn)

action_0 (11) = happyShift action_3
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_11
action_0 (17) = happyShift action_12
action_0 (21) = happyShift action_13
action_0 (32) = happyShift action_14
action_0 (33) = happyShift action_15
action_0 (36) = happyShift action_16
action_0 (39) = happyShift action_17
action_0 (42) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_9
action_0 (9) = happyGoto action_10
action_0 _ = happyFail

action_1 (11) = happyShift action_3
action_1 (12) = happyShift action_4
action_1 (13) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (42) = happyShift action_7
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (30) = happyShift action_49
action_2 _ = happyFail

action_3 _ = happyReduce_32

action_4 _ = happyReduce_33

action_5 _ = happyReduce_31

action_6 _ = happyReduce_34

action_7 (11) = happyShift action_3
action_7 (12) = happyShift action_4
action_7 (13) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (15) = happyShift action_11
action_7 (17) = happyShift action_12
action_7 (21) = happyShift action_13
action_7 (32) = happyShift action_14
action_7 (33) = happyShift action_15
action_7 (36) = happyShift action_16
action_7 (39) = happyShift action_17
action_7 (42) = happyShift action_7
action_7 (43) = happyShift action_48
action_7 (4) = happyGoto action_47
action_7 (5) = happyGoto action_9
action_7 (9) = happyGoto action_10
action_7 _ = happyFail

action_8 (11) = happyShift action_3
action_8 (12) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (16) = happyShift action_31
action_8 (17) = happyShift action_32
action_8 (18) = happyShift action_33
action_8 (19) = happyShift action_34
action_8 (20) = happyShift action_35
action_8 (21) = happyShift action_36
action_8 (22) = happyShift action_37
action_8 (23) = happyShift action_38
action_8 (24) = happyShift action_39
action_8 (25) = happyShift action_40
action_8 (26) = happyShift action_41
action_8 (27) = happyShift action_42
action_8 (28) = happyShift action_43
action_8 (29) = happyShift action_44
action_8 (40) = happyShift action_45
action_8 (41) = happyShift action_46
action_8 (42) = happyShift action_7
action_8 (44) = happyAccept
action_8 (5) = happyGoto action_29
action_8 (8) = happyGoto action_30
action_8 _ = happyFail

action_9 (30) = happyShift action_28
action_9 _ = happyReduce_1

action_10 (40) = happyShift action_27
action_10 _ = happyReduce_25

action_11 (11) = happyShift action_3
action_11 (12) = happyShift action_4
action_11 (13) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_11
action_11 (17) = happyShift action_12
action_11 (21) = happyShift action_13
action_11 (32) = happyShift action_14
action_11 (33) = happyShift action_15
action_11 (36) = happyShift action_16
action_11 (39) = happyShift action_17
action_11 (42) = happyShift action_7
action_11 (4) = happyGoto action_26
action_11 (5) = happyGoto action_9
action_11 (9) = happyGoto action_10
action_11 _ = happyFail

action_12 (11) = happyShift action_3
action_12 (12) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_11
action_12 (17) = happyShift action_12
action_12 (21) = happyShift action_13
action_12 (32) = happyShift action_14
action_12 (33) = happyShift action_15
action_12 (36) = happyShift action_16
action_12 (39) = happyShift action_17
action_12 (42) = happyShift action_7
action_12 (4) = happyGoto action_25
action_12 (5) = happyGoto action_9
action_12 (9) = happyGoto action_10
action_12 _ = happyFail

action_13 (11) = happyShift action_3
action_13 (12) = happyShift action_4
action_13 (13) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_11
action_13 (17) = happyShift action_12
action_13 (21) = happyShift action_13
action_13 (32) = happyShift action_14
action_13 (33) = happyShift action_15
action_13 (36) = happyShift action_16
action_13 (39) = happyShift action_17
action_13 (42) = happyShift action_7
action_13 (4) = happyGoto action_24
action_13 (5) = happyGoto action_9
action_13 (9) = happyGoto action_10
action_13 _ = happyFail

action_14 (11) = happyShift action_3
action_14 (12) = happyShift action_4
action_14 (13) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (15) = happyShift action_11
action_14 (17) = happyShift action_12
action_14 (21) = happyShift action_13
action_14 (32) = happyShift action_14
action_14 (33) = happyShift action_15
action_14 (36) = happyShift action_16
action_14 (39) = happyShift action_17
action_14 (42) = happyShift action_7
action_14 (4) = happyGoto action_23
action_14 (5) = happyGoto action_9
action_14 (9) = happyGoto action_10
action_14 _ = happyFail

action_15 (11) = happyShift action_3
action_15 (12) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_11
action_15 (17) = happyShift action_12
action_15 (21) = happyShift action_13
action_15 (32) = happyShift action_14
action_15 (33) = happyShift action_15
action_15 (36) = happyShift action_16
action_15 (39) = happyShift action_17
action_15 (42) = happyShift action_7
action_15 (4) = happyGoto action_22
action_15 (5) = happyGoto action_9
action_15 (9) = happyGoto action_10
action_15 _ = happyFail

action_16 (14) = happyShift action_19
action_16 (37) = happyShift action_20
action_16 (42) = happyShift action_21
action_16 _ = happyFail

action_17 (11) = happyShift action_3
action_17 (12) = happyShift action_4
action_17 (13) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (42) = happyShift action_7
action_17 (5) = happyGoto action_18
action_17 _ = happyFail

action_18 (11) = happyShift action_3
action_18 (12) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (30) = happyShift action_49
action_18 (42) = happyShift action_7
action_18 (5) = happyGoto action_77
action_18 _ = happyFail

action_19 (24) = happyShift action_76
action_19 _ = happyFail

action_20 (14) = happyShift action_75
action_20 (6) = happyGoto action_74
action_20 _ = happyFail

action_21 (14) = happyShift action_73
action_21 (10) = happyGoto action_72
action_21 _ = happyFail

action_22 (11) = happyShift action_3
action_22 (12) = happyShift action_4
action_22 (13) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (16) = happyShift action_31
action_22 (17) = happyShift action_32
action_22 (18) = happyShift action_33
action_22 (19) = happyShift action_34
action_22 (20) = happyShift action_35
action_22 (21) = happyShift action_36
action_22 (22) = happyShift action_37
action_22 (23) = happyShift action_38
action_22 (24) = happyShift action_39
action_22 (25) = happyShift action_40
action_22 (26) = happyShift action_41
action_22 (27) = happyShift action_42
action_22 (28) = happyShift action_43
action_22 (29) = happyShift action_44
action_22 (34) = happyShift action_71
action_22 (40) = happyShift action_45
action_22 (41) = happyShift action_46
action_22 (42) = happyShift action_7
action_22 (5) = happyGoto action_29
action_22 (8) = happyGoto action_30
action_22 _ = happyFail

action_23 (11) = happyShift action_3
action_23 (12) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (42) = happyShift action_7
action_23 (5) = happyGoto action_29
action_23 (8) = happyGoto action_30
action_23 _ = happyReduce_17

action_24 (11) = happyShift action_3
action_24 (12) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (42) = happyShift action_7
action_24 (5) = happyGoto action_29
action_24 (8) = happyGoto action_30
action_24 _ = happyReduce_19

action_25 (11) = happyShift action_3
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (42) = happyShift action_7
action_25 (5) = happyGoto action_29
action_25 (8) = happyGoto action_30
action_25 _ = happyReduce_18

action_26 (11) = happyShift action_3
action_26 (12) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (16) = happyShift action_31
action_26 (17) = happyShift action_32
action_26 (18) = happyShift action_33
action_26 (19) = happyShift action_34
action_26 (20) = happyShift action_35
action_26 (21) = happyShift action_36
action_26 (22) = happyShift action_37
action_26 (23) = happyShift action_38
action_26 (24) = happyShift action_39
action_26 (25) = happyShift action_40
action_26 (26) = happyShift action_41
action_26 (27) = happyShift action_42
action_26 (28) = happyShift action_43
action_26 (29) = happyShift action_44
action_26 (40) = happyShift action_45
action_26 (41) = happyShift action_46
action_26 (42) = happyShift action_7
action_26 (5) = happyGoto action_29
action_26 (8) = happyGoto action_30
action_26 _ = happyReduce_2

action_27 (11) = happyShift action_3
action_27 (12) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (15) = happyShift action_11
action_27 (17) = happyShift action_12
action_27 (21) = happyShift action_13
action_27 (32) = happyShift action_14
action_27 (33) = happyShift action_15
action_27 (36) = happyShift action_16
action_27 (39) = happyShift action_17
action_27 (42) = happyShift action_7
action_27 (4) = happyGoto action_70
action_27 (5) = happyGoto action_9
action_27 (9) = happyGoto action_10
action_27 _ = happyFail

action_28 (42) = happyShift action_69
action_28 _ = happyFail

action_29 (30) = happyShift action_49
action_29 _ = happyReduce_41

action_30 (11) = happyShift action_3
action_30 (12) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (42) = happyShift action_7
action_30 (5) = happyGoto action_68
action_30 _ = happyReduce_23

action_31 (11) = happyShift action_3
action_31 (12) = happyShift action_4
action_31 (13) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (15) = happyShift action_11
action_31 (17) = happyShift action_12
action_31 (21) = happyShift action_13
action_31 (32) = happyShift action_14
action_31 (33) = happyShift action_15
action_31 (36) = happyShift action_16
action_31 (39) = happyShift action_17
action_31 (42) = happyShift action_7
action_31 (4) = happyGoto action_67
action_31 (5) = happyGoto action_9
action_31 (9) = happyGoto action_10
action_31 _ = happyFail

action_32 (11) = happyShift action_3
action_32 (12) = happyShift action_4
action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (15) = happyShift action_11
action_32 (17) = happyShift action_12
action_32 (21) = happyShift action_13
action_32 (32) = happyShift action_14
action_32 (33) = happyShift action_15
action_32 (36) = happyShift action_16
action_32 (39) = happyShift action_17
action_32 (42) = happyShift action_7
action_32 (4) = happyGoto action_66
action_32 (5) = happyGoto action_9
action_32 (9) = happyGoto action_10
action_32 _ = happyFail

action_33 (11) = happyShift action_3
action_33 (12) = happyShift action_4
action_33 (13) = happyShift action_5
action_33 (14) = happyShift action_6
action_33 (15) = happyShift action_11
action_33 (17) = happyShift action_12
action_33 (21) = happyShift action_13
action_33 (32) = happyShift action_14
action_33 (33) = happyShift action_15
action_33 (36) = happyShift action_16
action_33 (39) = happyShift action_17
action_33 (42) = happyShift action_7
action_33 (4) = happyGoto action_65
action_33 (5) = happyGoto action_9
action_33 (9) = happyGoto action_10
action_33 _ = happyFail

action_34 (11) = happyShift action_3
action_34 (12) = happyShift action_4
action_34 (13) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (15) = happyShift action_11
action_34 (17) = happyShift action_12
action_34 (21) = happyShift action_13
action_34 (32) = happyShift action_14
action_34 (33) = happyShift action_15
action_34 (36) = happyShift action_16
action_34 (39) = happyShift action_17
action_34 (42) = happyShift action_7
action_34 (4) = happyGoto action_64
action_34 (5) = happyGoto action_9
action_34 (9) = happyGoto action_10
action_34 _ = happyFail

action_35 (11) = happyShift action_3
action_35 (12) = happyShift action_4
action_35 (13) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (15) = happyShift action_11
action_35 (17) = happyShift action_12
action_35 (21) = happyShift action_13
action_35 (32) = happyShift action_14
action_35 (33) = happyShift action_15
action_35 (36) = happyShift action_16
action_35 (39) = happyShift action_17
action_35 (42) = happyShift action_7
action_35 (4) = happyGoto action_63
action_35 (5) = happyGoto action_9
action_35 (9) = happyGoto action_10
action_35 _ = happyFail

action_36 (11) = happyShift action_3
action_36 (12) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (15) = happyShift action_11
action_36 (17) = happyShift action_12
action_36 (21) = happyShift action_13
action_36 (32) = happyShift action_14
action_36 (33) = happyShift action_15
action_36 (36) = happyShift action_16
action_36 (39) = happyShift action_17
action_36 (42) = happyShift action_7
action_36 (4) = happyGoto action_62
action_36 (5) = happyGoto action_9
action_36 (9) = happyGoto action_10
action_36 _ = happyFail

action_37 (11) = happyShift action_3
action_37 (12) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (15) = happyShift action_11
action_37 (17) = happyShift action_12
action_37 (21) = happyShift action_13
action_37 (32) = happyShift action_14
action_37 (33) = happyShift action_15
action_37 (36) = happyShift action_16
action_37 (39) = happyShift action_17
action_37 (42) = happyShift action_7
action_37 (4) = happyGoto action_61
action_37 (5) = happyGoto action_9
action_37 (9) = happyGoto action_10
action_37 _ = happyFail

action_38 (11) = happyShift action_3
action_38 (12) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (15) = happyShift action_11
action_38 (17) = happyShift action_12
action_38 (21) = happyShift action_13
action_38 (32) = happyShift action_14
action_38 (33) = happyShift action_15
action_38 (36) = happyShift action_16
action_38 (39) = happyShift action_17
action_38 (42) = happyShift action_7
action_38 (4) = happyGoto action_60
action_38 (5) = happyGoto action_9
action_38 (9) = happyGoto action_10
action_38 _ = happyFail

action_39 (11) = happyShift action_3
action_39 (12) = happyShift action_4
action_39 (13) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (15) = happyShift action_11
action_39 (17) = happyShift action_12
action_39 (21) = happyShift action_13
action_39 (32) = happyShift action_14
action_39 (33) = happyShift action_15
action_39 (36) = happyShift action_16
action_39 (39) = happyShift action_17
action_39 (42) = happyShift action_7
action_39 (4) = happyGoto action_59
action_39 (5) = happyGoto action_9
action_39 (9) = happyGoto action_10
action_39 _ = happyFail

action_40 (11) = happyShift action_3
action_40 (12) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (15) = happyShift action_11
action_40 (17) = happyShift action_12
action_40 (21) = happyShift action_13
action_40 (32) = happyShift action_14
action_40 (33) = happyShift action_15
action_40 (36) = happyShift action_16
action_40 (39) = happyShift action_17
action_40 (42) = happyShift action_7
action_40 (4) = happyGoto action_58
action_40 (5) = happyGoto action_9
action_40 (9) = happyGoto action_10
action_40 _ = happyFail

action_41 (11) = happyShift action_3
action_41 (12) = happyShift action_4
action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (15) = happyShift action_11
action_41 (17) = happyShift action_12
action_41 (21) = happyShift action_13
action_41 (32) = happyShift action_14
action_41 (33) = happyShift action_15
action_41 (36) = happyShift action_16
action_41 (39) = happyShift action_17
action_41 (42) = happyShift action_7
action_41 (4) = happyGoto action_57
action_41 (5) = happyGoto action_9
action_41 (9) = happyGoto action_10
action_41 _ = happyFail

action_42 (11) = happyShift action_3
action_42 (12) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (15) = happyShift action_11
action_42 (17) = happyShift action_12
action_42 (21) = happyShift action_13
action_42 (32) = happyShift action_14
action_42 (33) = happyShift action_15
action_42 (36) = happyShift action_16
action_42 (39) = happyShift action_17
action_42 (42) = happyShift action_7
action_42 (4) = happyGoto action_56
action_42 (5) = happyGoto action_9
action_42 (9) = happyGoto action_10
action_42 _ = happyFail

action_43 (11) = happyShift action_3
action_43 (12) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (15) = happyShift action_11
action_43 (17) = happyShift action_12
action_43 (21) = happyShift action_13
action_43 (32) = happyShift action_14
action_43 (33) = happyShift action_15
action_43 (36) = happyShift action_16
action_43 (39) = happyShift action_17
action_43 (42) = happyShift action_7
action_43 (4) = happyGoto action_55
action_43 (5) = happyGoto action_9
action_43 (9) = happyGoto action_10
action_43 _ = happyFail

action_44 (11) = happyShift action_3
action_44 (12) = happyShift action_4
action_44 (13) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (15) = happyShift action_11
action_44 (17) = happyShift action_12
action_44 (21) = happyShift action_13
action_44 (32) = happyShift action_14
action_44 (33) = happyShift action_15
action_44 (36) = happyShift action_16
action_44 (39) = happyShift action_17
action_44 (42) = happyShift action_7
action_44 (4) = happyGoto action_54
action_44 (5) = happyGoto action_9
action_44 (9) = happyGoto action_10
action_44 _ = happyFail

action_45 (11) = happyShift action_3
action_45 (12) = happyShift action_4
action_45 (13) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (15) = happyShift action_11
action_45 (17) = happyShift action_12
action_45 (21) = happyShift action_13
action_45 (32) = happyShift action_14
action_45 (33) = happyShift action_15
action_45 (36) = happyShift action_16
action_45 (39) = happyShift action_17
action_45 (42) = happyShift action_7
action_45 (4) = happyGoto action_53
action_45 (5) = happyGoto action_9
action_45 (9) = happyGoto action_10
action_45 _ = happyFail

action_46 (11) = happyShift action_3
action_46 (12) = happyShift action_4
action_46 (13) = happyShift action_5
action_46 (14) = happyShift action_6
action_46 (15) = happyShift action_11
action_46 (17) = happyShift action_12
action_46 (21) = happyShift action_13
action_46 (32) = happyShift action_14
action_46 (33) = happyShift action_15
action_46 (36) = happyShift action_16
action_46 (39) = happyShift action_17
action_46 (42) = happyShift action_7
action_46 (4) = happyGoto action_52
action_46 (5) = happyGoto action_9
action_46 (9) = happyGoto action_10
action_46 _ = happyFail

action_47 (11) = happyShift action_3
action_47 (12) = happyShift action_4
action_47 (13) = happyShift action_5
action_47 (14) = happyShift action_6
action_47 (16) = happyShift action_31
action_47 (17) = happyShift action_32
action_47 (18) = happyShift action_33
action_47 (19) = happyShift action_34
action_47 (20) = happyShift action_35
action_47 (21) = happyShift action_36
action_47 (22) = happyShift action_37
action_47 (23) = happyShift action_38
action_47 (24) = happyShift action_39
action_47 (25) = happyShift action_40
action_47 (26) = happyShift action_41
action_47 (27) = happyShift action_42
action_47 (28) = happyShift action_43
action_47 (29) = happyShift action_44
action_47 (40) = happyShift action_45
action_47 (41) = happyShift action_46
action_47 (42) = happyShift action_7
action_47 (43) = happyShift action_51
action_47 (5) = happyGoto action_29
action_47 (8) = happyGoto action_30
action_47 _ = happyFail

action_48 _ = happyReduce_30

action_49 (42) = happyShift action_50
action_49 _ = happyFail

action_50 (11) = happyShift action_3
action_50 (12) = happyShift action_4
action_50 (13) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (15) = happyShift action_11
action_50 (17) = happyShift action_12
action_50 (21) = happyShift action_13
action_50 (32) = happyShift action_14
action_50 (33) = happyShift action_15
action_50 (36) = happyShift action_16
action_50 (39) = happyShift action_17
action_50 (42) = happyShift action_7
action_50 (4) = happyGoto action_88
action_50 (5) = happyGoto action_9
action_50 (9) = happyGoto action_10
action_50 _ = happyFail

action_51 _ = happyReduce_29

action_52 (11) = happyShift action_3
action_52 (12) = happyShift action_4
action_52 (13) = happyShift action_5
action_52 (14) = happyShift action_6
action_52 (16) = happyShift action_31
action_52 (17) = happyShift action_32
action_52 (18) = happyShift action_33
action_52 (19) = happyShift action_34
action_52 (20) = happyShift action_35
action_52 (21) = happyShift action_36
action_52 (22) = happyShift action_37
action_52 (23) = happyShift action_38
action_52 (24) = happyShift action_39
action_52 (25) = happyShift action_40
action_52 (26) = happyShift action_41
action_52 (27) = happyShift action_42
action_52 (28) = happyShift action_43
action_52 (29) = happyShift action_44
action_52 (40) = happyShift action_45
action_52 (41) = happyShift action_46
action_52 (42) = happyShift action_7
action_52 (5) = happyGoto action_29
action_52 (8) = happyGoto action_30
action_52 _ = happyReduce_27

action_53 (11) = happyShift action_3
action_53 (12) = happyShift action_4
action_53 (13) = happyShift action_5
action_53 (14) = happyShift action_6
action_53 (16) = happyShift action_31
action_53 (17) = happyShift action_32
action_53 (18) = happyShift action_33
action_53 (19) = happyShift action_34
action_53 (20) = happyShift action_35
action_53 (21) = happyShift action_36
action_53 (22) = happyShift action_37
action_53 (23) = happyShift action_38
action_53 (24) = happyShift action_39
action_53 (25) = happyShift action_40
action_53 (26) = happyShift action_41
action_53 (27) = happyShift action_42
action_53 (28) = happyShift action_43
action_53 (29) = happyShift action_44
action_53 (42) = happyShift action_7
action_53 (5) = happyGoto action_29
action_53 (8) = happyGoto action_30
action_53 _ = happyReduce_43

action_54 (11) = happyShift action_3
action_54 (12) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (16) = happyShift action_31
action_54 (17) = happyShift action_32
action_54 (18) = happyShift action_33
action_54 (19) = happyShift action_34
action_54 (20) = happyShift action_35
action_54 (21) = happyShift action_36
action_54 (22) = happyShift action_37
action_54 (23) = happyShift action_38
action_54 (42) = happyShift action_7
action_54 (5) = happyGoto action_29
action_54 (8) = happyGoto action_30
action_54 _ = happyReduce_16

action_55 (11) = happyShift action_3
action_55 (12) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (16) = happyShift action_31
action_55 (17) = happyShift action_32
action_55 (18) = happyShift action_33
action_55 (19) = happyShift action_34
action_55 (20) = happyShift action_35
action_55 (21) = happyShift action_36
action_55 (22) = happyShift action_37
action_55 (23) = happyShift action_38
action_55 (42) = happyShift action_7
action_55 (5) = happyGoto action_29
action_55 (8) = happyGoto action_30
action_55 _ = happyReduce_15

action_56 (11) = happyShift action_3
action_56 (12) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (16) = happyShift action_31
action_56 (17) = happyShift action_32
action_56 (18) = happyShift action_33
action_56 (19) = happyShift action_34
action_56 (20) = happyShift action_35
action_56 (21) = happyShift action_36
action_56 (22) = happyShift action_37
action_56 (23) = happyShift action_38
action_56 (42) = happyShift action_7
action_56 (5) = happyGoto action_29
action_56 (8) = happyGoto action_30
action_56 _ = happyReduce_14

action_57 (11) = happyShift action_3
action_57 (12) = happyShift action_4
action_57 (13) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (16) = happyShift action_31
action_57 (17) = happyShift action_32
action_57 (18) = happyShift action_33
action_57 (19) = happyShift action_34
action_57 (20) = happyShift action_35
action_57 (21) = happyShift action_36
action_57 (22) = happyShift action_37
action_57 (23) = happyShift action_38
action_57 (42) = happyShift action_7
action_57 (5) = happyGoto action_29
action_57 (8) = happyGoto action_30
action_57 _ = happyReduce_13

action_58 (11) = happyShift action_3
action_58 (12) = happyShift action_4
action_58 (13) = happyShift action_5
action_58 (14) = happyShift action_6
action_58 (16) = happyShift action_31
action_58 (17) = happyShift action_32
action_58 (18) = happyShift action_33
action_58 (19) = happyShift action_34
action_58 (20) = happyShift action_35
action_58 (21) = happyShift action_36
action_58 (22) = happyShift action_37
action_58 (23) = happyShift action_38
action_58 (42) = happyShift action_7
action_58 (5) = happyGoto action_29
action_58 (8) = happyGoto action_30
action_58 _ = happyReduce_12

action_59 (11) = happyShift action_3
action_59 (12) = happyShift action_4
action_59 (13) = happyShift action_5
action_59 (14) = happyShift action_6
action_59 (16) = happyShift action_31
action_59 (17) = happyShift action_32
action_59 (18) = happyShift action_33
action_59 (19) = happyShift action_34
action_59 (20) = happyShift action_35
action_59 (21) = happyShift action_36
action_59 (22) = happyShift action_37
action_59 (23) = happyShift action_38
action_59 (42) = happyShift action_7
action_59 (5) = happyGoto action_29
action_59 (8) = happyGoto action_30
action_59 _ = happyReduce_11

action_60 (11) = happyShift action_3
action_60 (12) = happyShift action_4
action_60 (13) = happyShift action_5
action_60 (14) = happyShift action_6
action_60 (42) = happyShift action_7
action_60 (5) = happyGoto action_29
action_60 (8) = happyGoto action_30
action_60 _ = happyReduce_10

action_61 (11) = happyShift action_3
action_61 (12) = happyShift action_4
action_61 (13) = happyShift action_5
action_61 (14) = happyShift action_6
action_61 (42) = happyShift action_7
action_61 (5) = happyGoto action_29
action_61 (8) = happyGoto action_30
action_61 _ = happyReduce_9

action_62 (11) = happyShift action_3
action_62 (12) = happyShift action_4
action_62 (13) = happyShift action_5
action_62 (14) = happyShift action_6
action_62 (18) = happyShift action_33
action_62 (19) = happyShift action_34
action_62 (22) = happyShift action_37
action_62 (23) = happyShift action_38
action_62 (42) = happyShift action_7
action_62 (5) = happyGoto action_29
action_62 (8) = happyGoto action_30
action_62 _ = happyReduce_8

action_63 (11) = happyShift action_3
action_63 (12) = happyShift action_4
action_63 (13) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (18) = happyShift action_33
action_63 (19) = happyShift action_34
action_63 (22) = happyShift action_37
action_63 (23) = happyShift action_38
action_63 (42) = happyShift action_7
action_63 (5) = happyGoto action_29
action_63 (8) = happyGoto action_30
action_63 _ = happyReduce_7

action_64 (11) = happyShift action_3
action_64 (12) = happyShift action_4
action_64 (13) = happyShift action_5
action_64 (14) = happyShift action_6
action_64 (42) = happyShift action_7
action_64 (5) = happyGoto action_29
action_64 (8) = happyGoto action_30
action_64 _ = happyReduce_6

action_65 (11) = happyShift action_3
action_65 (12) = happyShift action_4
action_65 (13) = happyShift action_5
action_65 (14) = happyShift action_6
action_65 (42) = happyShift action_7
action_65 (5) = happyGoto action_29
action_65 (8) = happyGoto action_30
action_65 _ = happyReduce_5

action_66 (11) = happyShift action_3
action_66 (12) = happyShift action_4
action_66 (13) = happyShift action_5
action_66 (14) = happyShift action_6
action_66 (18) = happyShift action_33
action_66 (19) = happyShift action_34
action_66 (22) = happyShift action_37
action_66 (23) = happyShift action_38
action_66 (42) = happyShift action_7
action_66 (5) = happyGoto action_29
action_66 (8) = happyGoto action_30
action_66 _ = happyReduce_4

action_67 (11) = happyShift action_3
action_67 (12) = happyShift action_4
action_67 (13) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (18) = happyShift action_33
action_67 (19) = happyShift action_34
action_67 (22) = happyShift action_37
action_67 (23) = happyShift action_38
action_67 (42) = happyShift action_7
action_67 (5) = happyGoto action_29
action_67 (8) = happyGoto action_30
action_67 _ = happyReduce_3

action_68 (30) = happyShift action_49
action_68 _ = happyReduce_40

action_69 (11) = happyShift action_3
action_69 (12) = happyShift action_4
action_69 (13) = happyShift action_5
action_69 (14) = happyShift action_6
action_69 (15) = happyShift action_11
action_69 (17) = happyShift action_12
action_69 (21) = happyShift action_13
action_69 (32) = happyShift action_14
action_69 (33) = happyShift action_15
action_69 (36) = happyShift action_16
action_69 (39) = happyShift action_17
action_69 (42) = happyShift action_7
action_69 (4) = happyGoto action_87
action_69 (5) = happyGoto action_9
action_69 (9) = happyGoto action_10
action_69 _ = happyFail

action_70 (11) = happyShift action_3
action_70 (12) = happyShift action_4
action_70 (13) = happyShift action_5
action_70 (14) = happyShift action_6
action_70 (16) = happyShift action_31
action_70 (17) = happyShift action_32
action_70 (18) = happyShift action_33
action_70 (19) = happyShift action_34
action_70 (20) = happyShift action_35
action_70 (21) = happyShift action_36
action_70 (22) = happyShift action_37
action_70 (23) = happyShift action_38
action_70 (24) = happyShift action_39
action_70 (25) = happyShift action_40
action_70 (26) = happyShift action_41
action_70 (27) = happyShift action_42
action_70 (28) = happyShift action_43
action_70 (29) = happyShift action_44
action_70 (42) = happyShift action_7
action_70 (5) = happyGoto action_29
action_70 (8) = happyGoto action_30
action_70 _ = happyReduce_42

action_71 (11) = happyShift action_3
action_71 (12) = happyShift action_4
action_71 (13) = happyShift action_5
action_71 (14) = happyShift action_6
action_71 (15) = happyShift action_11
action_71 (17) = happyShift action_12
action_71 (21) = happyShift action_13
action_71 (32) = happyShift action_14
action_71 (33) = happyShift action_15
action_71 (36) = happyShift action_16
action_71 (39) = happyShift action_17
action_71 (42) = happyShift action_7
action_71 (4) = happyGoto action_86
action_71 (5) = happyGoto action_9
action_71 (9) = happyGoto action_10
action_71 _ = happyFail

action_72 (40) = happyShift action_84
action_72 (43) = happyShift action_85
action_72 _ = happyFail

action_73 (40) = happyShift action_83
action_73 _ = happyFail

action_74 (38) = happyShift action_82
action_74 _ = happyFail

action_75 (14) = happyShift action_80
action_75 (42) = happyShift action_81
action_75 (7) = happyGoto action_79
action_75 _ = happyFail

action_76 (11) = happyShift action_3
action_76 (12) = happyShift action_4
action_76 (13) = happyShift action_5
action_76 (14) = happyShift action_6
action_76 (15) = happyShift action_11
action_76 (17) = happyShift action_12
action_76 (21) = happyShift action_13
action_76 (32) = happyShift action_14
action_76 (33) = happyShift action_15
action_76 (36) = happyShift action_16
action_76 (39) = happyShift action_17
action_76 (42) = happyShift action_7
action_76 (4) = happyGoto action_78
action_76 (5) = happyGoto action_9
action_76 (9) = happyGoto action_10
action_76 _ = happyFail

action_77 (30) = happyShift action_49
action_77 _ = happyReduce_28

action_78 (11) = happyShift action_3
action_78 (12) = happyShift action_4
action_78 (13) = happyShift action_5
action_78 (14) = happyShift action_6
action_78 (16) = happyShift action_31
action_78 (17) = happyShift action_32
action_78 (18) = happyShift action_33
action_78 (19) = happyShift action_34
action_78 (20) = happyShift action_35
action_78 (21) = happyShift action_36
action_78 (22) = happyShift action_37
action_78 (23) = happyShift action_38
action_78 (24) = happyShift action_39
action_78 (25) = happyShift action_40
action_78 (26) = happyShift action_41
action_78 (27) = happyShift action_42
action_78 (28) = happyShift action_43
action_78 (29) = happyShift action_44
action_78 (38) = happyShift action_99
action_78 (40) = happyShift action_45
action_78 (41) = happyShift action_46
action_78 (42) = happyShift action_7
action_78 (5) = happyGoto action_29
action_78 (8) = happyGoto action_30
action_78 _ = happyFail

action_79 (24) = happyShift action_98
action_79 _ = happyFail

action_80 (14) = happyShift action_80
action_80 (42) = happyShift action_81
action_80 (7) = happyGoto action_97
action_80 _ = happyReduce_39

action_81 (43) = happyShift action_96
action_81 _ = happyFail

action_82 (11) = happyShift action_3
action_82 (12) = happyShift action_4
action_82 (13) = happyShift action_5
action_82 (14) = happyShift action_6
action_82 (15) = happyShift action_11
action_82 (17) = happyShift action_12
action_82 (21) = happyShift action_13
action_82 (32) = happyShift action_14
action_82 (33) = happyShift action_15
action_82 (36) = happyShift action_16
action_82 (39) = happyShift action_17
action_82 (42) = happyShift action_7
action_82 (4) = happyGoto action_95
action_82 (5) = happyGoto action_9
action_82 (9) = happyGoto action_10
action_82 _ = happyFail

action_83 (14) = happyShift action_94
action_83 _ = happyFail

action_84 (14) = happyShift action_93
action_84 _ = happyFail

action_85 (24) = happyShift action_92
action_85 _ = happyFail

action_86 (11) = happyShift action_3
action_86 (12) = happyShift action_4
action_86 (13) = happyShift action_5
action_86 (14) = happyShift action_6
action_86 (16) = happyShift action_31
action_86 (17) = happyShift action_32
action_86 (18) = happyShift action_33
action_86 (19) = happyShift action_34
action_86 (20) = happyShift action_35
action_86 (21) = happyShift action_36
action_86 (22) = happyShift action_37
action_86 (23) = happyShift action_38
action_86 (24) = happyShift action_39
action_86 (25) = happyShift action_40
action_86 (26) = happyShift action_41
action_86 (27) = happyShift action_42
action_86 (28) = happyShift action_43
action_86 (29) = happyShift action_44
action_86 (35) = happyShift action_91
action_86 (40) = happyShift action_45
action_86 (41) = happyShift action_46
action_86 (42) = happyShift action_7
action_86 (5) = happyGoto action_29
action_86 (8) = happyGoto action_30
action_86 _ = happyFail

action_87 (11) = happyShift action_3
action_87 (12) = happyShift action_4
action_87 (13) = happyShift action_5
action_87 (14) = happyShift action_6
action_87 (16) = happyShift action_31
action_87 (17) = happyShift action_32
action_87 (18) = happyShift action_33
action_87 (19) = happyShift action_34
action_87 (20) = happyShift action_35
action_87 (21) = happyShift action_36
action_87 (22) = happyShift action_37
action_87 (23) = happyShift action_38
action_87 (24) = happyShift action_39
action_87 (25) = happyShift action_40
action_87 (26) = happyShift action_41
action_87 (27) = happyShift action_42
action_87 (28) = happyShift action_43
action_87 (29) = happyShift action_44
action_87 (40) = happyShift action_45
action_87 (41) = happyShift action_46
action_87 (42) = happyShift action_7
action_87 (43) = happyShift action_90
action_87 (5) = happyGoto action_29
action_87 (8) = happyGoto action_30
action_87 _ = happyFail

action_88 (11) = happyShift action_3
action_88 (12) = happyShift action_4
action_88 (13) = happyShift action_5
action_88 (14) = happyShift action_6
action_88 (16) = happyShift action_31
action_88 (17) = happyShift action_32
action_88 (18) = happyShift action_33
action_88 (19) = happyShift action_34
action_88 (20) = happyShift action_35
action_88 (21) = happyShift action_36
action_88 (22) = happyShift action_37
action_88 (23) = happyShift action_38
action_88 (24) = happyShift action_39
action_88 (25) = happyShift action_40
action_88 (26) = happyShift action_41
action_88 (27) = happyShift action_42
action_88 (28) = happyShift action_43
action_88 (29) = happyShift action_44
action_88 (40) = happyShift action_45
action_88 (41) = happyShift action_46
action_88 (42) = happyShift action_7
action_88 (43) = happyShift action_89
action_88 (5) = happyGoto action_29
action_88 (8) = happyGoto action_30
action_88 _ = happyFail

action_89 _ = happyReduce_35

action_90 (31) = happyShift action_104
action_90 _ = happyReduce_35

action_91 (11) = happyShift action_3
action_91 (12) = happyShift action_4
action_91 (13) = happyShift action_5
action_91 (14) = happyShift action_6
action_91 (15) = happyShift action_11
action_91 (17) = happyShift action_12
action_91 (21) = happyShift action_13
action_91 (32) = happyShift action_14
action_91 (33) = happyShift action_15
action_91 (36) = happyShift action_16
action_91 (39) = happyShift action_17
action_91 (42) = happyShift action_7
action_91 (4) = happyGoto action_103
action_91 (5) = happyGoto action_9
action_91 (9) = happyGoto action_10
action_91 _ = happyFail

action_92 (11) = happyShift action_3
action_92 (12) = happyShift action_4
action_92 (13) = happyShift action_5
action_92 (14) = happyShift action_6
action_92 (15) = happyShift action_11
action_92 (17) = happyShift action_12
action_92 (21) = happyShift action_13
action_92 (32) = happyShift action_14
action_92 (33) = happyShift action_15
action_92 (36) = happyShift action_16
action_92 (39) = happyShift action_17
action_92 (42) = happyShift action_7
action_92 (4) = happyGoto action_102
action_92 (5) = happyGoto action_9
action_92 (9) = happyGoto action_10
action_92 _ = happyFail

action_93 _ = happyReduce_44

action_94 _ = happyReduce_45

action_95 (11) = happyShift action_3
action_95 (12) = happyShift action_4
action_95 (13) = happyShift action_5
action_95 (14) = happyShift action_6
action_95 (16) = happyShift action_31
action_95 (17) = happyShift action_32
action_95 (18) = happyShift action_33
action_95 (19) = happyShift action_34
action_95 (20) = happyShift action_35
action_95 (21) = happyShift action_36
action_95 (22) = happyShift action_37
action_95 (23) = happyShift action_38
action_95 (24) = happyShift action_39
action_95 (25) = happyShift action_40
action_95 (26) = happyShift action_41
action_95 (27) = happyShift action_42
action_95 (28) = happyShift action_43
action_95 (29) = happyShift action_44
action_95 (40) = happyShift action_45
action_95 (41) = happyShift action_46
action_95 (42) = happyShift action_7
action_95 (5) = happyGoto action_29
action_95 (8) = happyGoto action_30
action_95 _ = happyReduce_22

action_96 _ = happyReduce_37

action_97 _ = happyReduce_38

action_98 (11) = happyShift action_3
action_98 (12) = happyShift action_4
action_98 (13) = happyShift action_5
action_98 (14) = happyShift action_6
action_98 (15) = happyShift action_11
action_98 (17) = happyShift action_12
action_98 (21) = happyShift action_13
action_98 (32) = happyShift action_14
action_98 (33) = happyShift action_15
action_98 (36) = happyShift action_16
action_98 (39) = happyShift action_17
action_98 (42) = happyShift action_7
action_98 (4) = happyGoto action_101
action_98 (5) = happyGoto action_9
action_98 (9) = happyGoto action_10
action_98 _ = happyFail

action_99 (11) = happyShift action_3
action_99 (12) = happyShift action_4
action_99 (13) = happyShift action_5
action_99 (14) = happyShift action_6
action_99 (15) = happyShift action_11
action_99 (17) = happyShift action_12
action_99 (21) = happyShift action_13
action_99 (32) = happyShift action_14
action_99 (33) = happyShift action_15
action_99 (36) = happyShift action_16
action_99 (39) = happyShift action_17
action_99 (42) = happyShift action_7
action_99 (4) = happyGoto action_100
action_99 (5) = happyGoto action_9
action_99 (9) = happyGoto action_10
action_99 _ = happyFail

action_100 (11) = happyShift action_3
action_100 (12) = happyShift action_4
action_100 (13) = happyShift action_5
action_100 (14) = happyShift action_6
action_100 (16) = happyShift action_31
action_100 (17) = happyShift action_32
action_100 (18) = happyShift action_33
action_100 (19) = happyShift action_34
action_100 (20) = happyShift action_35
action_100 (21) = happyShift action_36
action_100 (22) = happyShift action_37
action_100 (23) = happyShift action_38
action_100 (24) = happyShift action_39
action_100 (25) = happyShift action_40
action_100 (26) = happyShift action_41
action_100 (27) = happyShift action_42
action_100 (28) = happyShift action_43
action_100 (29) = happyShift action_44
action_100 (40) = happyShift action_45
action_100 (41) = happyShift action_46
action_100 (42) = happyShift action_7
action_100 (5) = happyGoto action_29
action_100 (8) = happyGoto action_30
action_100 _ = happyReduce_21

action_101 (11) = happyShift action_3
action_101 (12) = happyShift action_4
action_101 (13) = happyShift action_5
action_101 (14) = happyShift action_6
action_101 (16) = happyShift action_31
action_101 (17) = happyShift action_32
action_101 (18) = happyShift action_33
action_101 (19) = happyShift action_34
action_101 (20) = happyShift action_35
action_101 (21) = happyShift action_36
action_101 (22) = happyShift action_37
action_101 (23) = happyShift action_38
action_101 (24) = happyShift action_39
action_101 (25) = happyShift action_40
action_101 (26) = happyShift action_41
action_101 (27) = happyShift action_42
action_101 (28) = happyShift action_43
action_101 (29) = happyShift action_44
action_101 (40) = happyShift action_45
action_101 (41) = happyShift action_46
action_101 (42) = happyShift action_7
action_101 (5) = happyGoto action_29
action_101 (8) = happyGoto action_30
action_101 _ = happyReduce_36

action_102 (11) = happyShift action_3
action_102 (12) = happyShift action_4
action_102 (13) = happyShift action_5
action_102 (14) = happyShift action_6
action_102 (16) = happyShift action_31
action_102 (17) = happyShift action_32
action_102 (18) = happyShift action_33
action_102 (19) = happyShift action_34
action_102 (20) = happyShift action_35
action_102 (21) = happyShift action_36
action_102 (22) = happyShift action_37
action_102 (23) = happyShift action_38
action_102 (24) = happyShift action_39
action_102 (25) = happyShift action_40
action_102 (26) = happyShift action_41
action_102 (27) = happyShift action_42
action_102 (28) = happyShift action_43
action_102 (29) = happyShift action_44
action_102 (38) = happyShift action_106
action_102 (40) = happyShift action_45
action_102 (41) = happyShift action_46
action_102 (42) = happyShift action_7
action_102 (5) = happyGoto action_29
action_102 (8) = happyGoto action_30
action_102 _ = happyFail

action_103 (11) = happyShift action_3
action_103 (12) = happyShift action_4
action_103 (13) = happyShift action_5
action_103 (14) = happyShift action_6
action_103 (16) = happyShift action_31
action_103 (17) = happyShift action_32
action_103 (18) = happyShift action_33
action_103 (19) = happyShift action_34
action_103 (20) = happyShift action_35
action_103 (21) = happyShift action_36
action_103 (22) = happyShift action_37
action_103 (23) = happyShift action_38
action_103 (24) = happyShift action_39
action_103 (25) = happyShift action_40
action_103 (26) = happyShift action_41
action_103 (27) = happyShift action_42
action_103 (28) = happyShift action_43
action_103 (29) = happyShift action_44
action_103 (40) = happyShift action_45
action_103 (42) = happyShift action_7
action_103 (5) = happyGoto action_29
action_103 (8) = happyGoto action_30
action_103 _ = happyReduce_20

action_104 (11) = happyShift action_3
action_104 (12) = happyShift action_4
action_104 (13) = happyShift action_5
action_104 (14) = happyShift action_6
action_104 (15) = happyShift action_11
action_104 (17) = happyShift action_12
action_104 (21) = happyShift action_13
action_104 (32) = happyShift action_14
action_104 (33) = happyShift action_15
action_104 (36) = happyShift action_16
action_104 (39) = happyShift action_17
action_104 (42) = happyShift action_7
action_104 (4) = happyGoto action_105
action_104 (5) = happyGoto action_9
action_104 (9) = happyGoto action_10
action_104 _ = happyFail

action_105 (11) = happyShift action_3
action_105 (12) = happyShift action_4
action_105 (13) = happyShift action_5
action_105 (14) = happyShift action_6
action_105 (16) = happyShift action_31
action_105 (17) = happyShift action_32
action_105 (18) = happyShift action_33
action_105 (19) = happyShift action_34
action_105 (20) = happyShift action_35
action_105 (21) = happyShift action_36
action_105 (22) = happyShift action_37
action_105 (23) = happyShift action_38
action_105 (24) = happyShift action_39
action_105 (25) = happyShift action_40
action_105 (26) = happyShift action_41
action_105 (27) = happyShift action_42
action_105 (28) = happyShift action_43
action_105 (29) = happyShift action_44
action_105 (40) = happyShift action_45
action_105 (42) = happyShift action_7
action_105 (5) = happyGoto action_29
action_105 (8) = happyGoto action_30
action_105 _ = happyReduce_24

action_106 (11) = happyShift action_3
action_106 (12) = happyShift action_4
action_106 (13) = happyShift action_5
action_106 (14) = happyShift action_6
action_106 (15) = happyShift action_11
action_106 (17) = happyShift action_12
action_106 (21) = happyShift action_13
action_106 (32) = happyShift action_14
action_106 (33) = happyShift action_15
action_106 (36) = happyShift action_16
action_106 (39) = happyShift action_17
action_106 (42) = happyShift action_7
action_106 (4) = happyGoto action_107
action_106 (5) = happyGoto action_9
action_106 (9) = happyGoto action_10
action_106 _ = happyFail

action_107 (11) = happyShift action_3
action_107 (12) = happyShift action_4
action_107 (13) = happyShift action_5
action_107 (14) = happyShift action_6
action_107 (16) = happyShift action_31
action_107 (17) = happyShift action_32
action_107 (18) = happyShift action_33
action_107 (19) = happyShift action_34
action_107 (20) = happyShift action_35
action_107 (21) = happyShift action_36
action_107 (22) = happyShift action_37
action_107 (23) = happyShift action_38
action_107 (24) = happyShift action_39
action_107 (25) = happyShift action_40
action_107 (26) = happyShift action_41
action_107 (27) = happyShift action_42
action_107 (28) = happyShift action_43
action_107 (29) = happyShift action_44
action_107 (40) = happyShift action_45
action_107 (41) = happyShift action_46
action_107 (42) = happyShift action_7
action_107 (5) = happyGoto action_29
action_107 (8) = happyGoto action_30
action_107 _ = happyReduce_26

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Not happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Add happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Sub happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (sllOrMul happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (sraOrDiv happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FAdd happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FSub happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FMul happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FDiv happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Eq happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Not (S.Eq happy_var_1 happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Le happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Le happy_var_3 happy_var_1
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Not (S.Le happy_var_3 happy_var_1)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Not (S.Le happy_var_1 happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Sqrt happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (negOrFneg happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.FNeg happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 6 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happyMonadReduce 6 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IDENT happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                                                     ; return $ S.Let (happy_var_2, T.Var i) happy_var_4 happy_var_6})
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_22 = happyReduce 5 4 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.LetRec happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.App happy_var_1 happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 7 4 happyReduction_24
happyReduction_24 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.Put happy_var_1 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_1  4 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Tuple happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happyReduce 8 4 happyReduction_26
happyReduction_26 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.LetTuple happy_var_3 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_27 = happyMonadReduce 3 4 happyReduction_27
happyReduction_27 ((HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                                     ; return $ S.Let ("_", T.Var i) happy_var_1 happy_var_3 })
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_28 = happySpecReduce_3  4 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Array happy_var_2 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  5 happyReduction_30
happyReduction_30 _
	_
	 =  HappyAbsSyn4
		 (S.Unit
	)

happyReduce_31 = happySpecReduce_1  5 happyReduction_31
happyReduction_31 (HappyTerminal (BOOL happy_var_1))
	 =  HappyAbsSyn4
		 (S.Bool happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  5 happyReduction_32
happyReduction_32 (HappyTerminal (INT happy_var_1))
	 =  HappyAbsSyn4
		 (S.Int happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  5 happyReduction_33
happyReduction_33 (HappyTerminal (FLOAT happy_var_1))
	 =  HappyAbsSyn4
		 (S.Float happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  5 happyReduction_34
happyReduction_34 (HappyTerminal (IDENT happy_var_1))
	 =  HappyAbsSyn4
		 (S.Var happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happyReduce 5 5 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.Get happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happyMonadReduce 4 6 happyReduction_36
happyReduction_36 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                                     ; return $ S.Fundef (happy_var_1, T.Var i) happy_var_2 happy_var_4 })
	) (\r -> happyReturn (HappyAbsSyn6 r))

happyReduce_37 = happyMonadReduce 2 7 happyReduction_37
happyReduction_37 (_ `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                                     ; return $ [("unit", T.Var i)]})
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_38 = happyMonadReduce 2 7 happyReduction_38
happyReduction_38 ((HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                                     ; return $ (happy_var_1, T.Var i) : happy_var_2 })
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_39 = happyMonadReduce 1 7 happyReduction_39
happyReduction_39 ((HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                                     ; return $ [(happy_var_1, T.Var i)] })
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_40 = happySpecReduce_2  8 happyReduction_40
happyReduction_40 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  8 happyReduction_41
happyReduction_41 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  9 happyReduction_42
happyReduction_42 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  9 happyReduction_43
happyReduction_43 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1, happy_var_3]
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happyMonadReduce 3 10 happyReduction_44
happyReduction_44 ((HappyTerminal (IDENT happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i <- genTypeVar
                             ; return $ happy_var_1 ++ [(happy_var_3, T.Var i)] })
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_45 = happyMonadReduce 3 10 happyReduction_45
happyReduction_45 ((HappyTerminal (IDENT happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ i1:i2:[] <- sequence $ take 2 $ repeat genTypeVar
                             ; return $ [(happy_var_1, T.Var i1), (happy_var_3, T.Var i2)]})
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	INT happy_dollar_dollar -> cont 11;
	FLOAT happy_dollar_dollar -> cont 12;
	BOOL happy_dollar_dollar -> cont 13;
	IDENT happy_dollar_dollar -> cont 14;
	NOT -> cont 15;
	PLUS -> cont 16;
	MINUS -> cont 17;
	AST -> cont 18;
	SLASH -> cont 19;
	PLUS_DOT -> cont 20;
	MINUS_DOT -> cont 21;
	AST_DOT -> cont 22;
	SLASH_DOT -> cont 23;
	EQUAL -> cont 24;
	LESS_GREATER -> cont 25;
	LESS_EQUAL -> cont 26;
	GREATER_EQUAL -> cont 27;
	LESS -> cont 28;
	GREATER -> cont 29;
	DOT -> cont 30;
	LESS_MINUS -> cont 31;
	SQRT -> cont 32;
	IF -> cont 33;
	THEN -> cont 34;
	ELSE -> cont 35;
	LET -> cont 36;
	REC -> cont 37;
	IN -> cont 38;
	ARRAY -> cont 39;
	COMMA -> cont 40;
	SEMICOLON -> cont 41;
	LPAREN -> cont 42;
	RPAREN -> cont 43;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

happyThen :: () => ParseState a -> (a -> ParseState b) -> ParseState b
happyThen = ((>>=))
happyReturn :: () => a -> ParseState a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> ParseState a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(L.Token)] -> ParseState a
happyError' = parseError

parser tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- parser :: [Token] -> ParseState S.T  
  
type ParseState = ErrorT String (State (Int, [L.AlexPosn]))
  
parseError :: [L.Token] -> ParseState a
parseError toks = do{ (_, poss) <- get
                    ; let AlexPn _ li co = last $ take (length toks) (reverse poss)
                    ; throwError $ "parseError: "++"("++(show li)++", "++(show co)++")"}

genTypeVar :: ParseState Int
genTypeVar = do{ (i, poss) <- get
               ; put (i+1, poss)
               ; return (i+1) }

scanAndParse :: String -> Either String (S.T, T.TypeN)
scanAndParse input = 
  do (poss, tokens) <- fmap unzip (L.mainLex input)
     case runState (runErrorT (parser $ tokens)) (0, poss) of
       (Left msg,  _ ) -> throwError msg
       (Right exp, (lastN, _)) -> return (exp, lastN)
       
---- mul, div => sll, sra ----       

sllOrMul :: S.T -> S.T -> S.T       
sllOrMul e1 e2 = 
  if isLog2Exp e2 
  then
    case e2 of
      S.Int i             -> S.SLL e1 (log2 i)
      S.Neg (S.Int i)     -> S.SLL (S.Neg e1) (log2 i)
      _                   -> error (show __LINE__)
  else
    S.App (S.Var "mul") [e1, e2]
  
sraOrDiv e1 e2 = 
  if isLog2Exp e2 
  then
    case e2 of
      S.Int i             -> S.SRA e1 (log2 i)
      S.Neg (S.Int i)     -> S.SRA (S.Neg e1) (log2 i)
      _                   -> error (show __LINE__)
  else
    S.App (S.Var "div") [e1, e2]

       
isLog2Exp :: S.T -> Bool
isLog2Exp exp = case exp of
  S.Int i               | isLog2 i -> True
  S.Neg (S.Int i)       | isLog2 i -> True
  _                     -> False
  
isLog2 :: Int -> Bool  
isLog2 0 = False
isLog2 1 = True
isLog2 i | (i > 0) && (i `mod` 2 == 0) = isLog2 (i `div` 2)
isLog2 _ = False  
  
log2 :: Int -> Int      -- Int i expected positive
log2 1 = 0
log2 i | i `mod` 2 == 0 = log2 (i `div` 2) + 1
log2 _ = error (show __LINE__)

---- neg or fneg
negOrFneg :: S.T -> S.T
negOrFneg exp = case exp of
  S.Float f     -> S.FNeg exp
  S.Int   i     -> S.Neg  exp
  _             -> S.Neg  exp
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail  (1) tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 311 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
