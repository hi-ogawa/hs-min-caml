{-# OPTIONS_GHC -w #-}
{-# LANGUAGE CPP #-}  
module Parser where

import Lexer as L
import Type as T
import IdMod as I
import Syntax as S

import Control.Monad.State
import Control.Monad.Error
import Control.Monad.Reader

-- parser produced by Happy Version 1.18.9

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
 action_107,
 action_108,
 action_109,
 action_110,
 action_111,
 action_112,
 action_113,
 action_114,
 action_115,
 action_116,
 action_117,
 action_118,
 action_119,
 action_120,
 action_121,
 action_122,
 action_123,
 action_124,
 action_125,
 action_126,
 action_127,
 action_128,
 action_129,
 action_130 :: () => Int -> ({-HappyReduction (ParseMonad) = -}
	   Int 
	-> (L.Token)
	-> HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseMonad) HappyAbsSyn)
	-> [HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseMonad) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(L.Token)] -> (ParseMonad) HappyAbsSyn)

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
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54 :: () => ({-HappyReduction (ParseMonad) = -}
	   Int 
	-> (L.Token)
	-> HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseMonad) HappyAbsSyn)
	-> [HappyState (L.Token) (HappyStk HappyAbsSyn -> [(L.Token)] -> (ParseMonad) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(L.Token)] -> (ParseMonad) HappyAbsSyn)

action_0 (11) = happyShift action_3
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_11
action_0 (18) = happyShift action_12
action_0 (22) = happyShift action_13
action_0 (34) = happyShift action_14
action_0 (35) = happyShift action_15
action_0 (36) = happyShift action_16
action_0 (37) = happyShift action_17
action_0 (38) = happyShift action_18
action_0 (39) = happyShift action_19
action_0 (40) = happyShift action_20
action_0 (41) = happyShift action_21
action_0 (42) = happyShift action_22
action_0 (43) = happyShift action_23
action_0 (46) = happyShift action_24
action_0 (49) = happyShift action_25
action_0 (52) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_9
action_0 (9) = happyGoto action_10
action_0 _ = happyFail

action_1 (11) = happyShift action_3
action_1 (12) = happyShift action_4
action_1 (13) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (52) = happyShift action_7
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (31) = happyShift action_68
action_2 _ = happyFail

action_3 _ = happyReduce_41

action_4 _ = happyReduce_42

action_5 _ = happyReduce_40

action_6 _ = happyReduce_43

action_7 (11) = happyShift action_3
action_7 (12) = happyShift action_4
action_7 (13) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (15) = happyShift action_11
action_7 (18) = happyShift action_12
action_7 (22) = happyShift action_13
action_7 (34) = happyShift action_14
action_7 (35) = happyShift action_15
action_7 (36) = happyShift action_16
action_7 (37) = happyShift action_17
action_7 (38) = happyShift action_18
action_7 (39) = happyShift action_19
action_7 (40) = happyShift action_20
action_7 (41) = happyShift action_21
action_7 (42) = happyShift action_22
action_7 (43) = happyShift action_23
action_7 (46) = happyShift action_24
action_7 (49) = happyShift action_25
action_7 (52) = happyShift action_7
action_7 (53) = happyShift action_67
action_7 (4) = happyGoto action_66
action_7 (5) = happyGoto action_9
action_7 (9) = happyGoto action_10
action_7 _ = happyFail

action_8 (11) = happyShift action_3
action_8 (12) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (16) = happyShift action_49
action_8 (17) = happyShift action_50
action_8 (18) = happyShift action_51
action_8 (19) = happyShift action_52
action_8 (20) = happyShift action_53
action_8 (21) = happyShift action_54
action_8 (22) = happyShift action_55
action_8 (23) = happyShift action_56
action_8 (24) = happyShift action_57
action_8 (25) = happyShift action_58
action_8 (26) = happyShift action_59
action_8 (27) = happyShift action_60
action_8 (28) = happyShift action_61
action_8 (29) = happyShift action_62
action_8 (30) = happyShift action_63
action_8 (50) = happyShift action_64
action_8 (51) = happyShift action_65
action_8 (52) = happyShift action_7
action_8 (54) = happyAccept
action_8 (5) = happyGoto action_47
action_8 (8) = happyGoto action_48
action_8 _ = happyFail

action_9 (31) = happyShift action_46
action_9 _ = happyReduce_1

action_10 (50) = happyShift action_45
action_10 _ = happyReduce_34

action_11 (11) = happyShift action_3
action_11 (12) = happyShift action_4
action_11 (13) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_11
action_11 (18) = happyShift action_12
action_11 (22) = happyShift action_13
action_11 (34) = happyShift action_14
action_11 (35) = happyShift action_15
action_11 (36) = happyShift action_16
action_11 (37) = happyShift action_17
action_11 (38) = happyShift action_18
action_11 (39) = happyShift action_19
action_11 (40) = happyShift action_20
action_11 (41) = happyShift action_21
action_11 (42) = happyShift action_22
action_11 (43) = happyShift action_23
action_11 (46) = happyShift action_24
action_11 (49) = happyShift action_25
action_11 (52) = happyShift action_7
action_11 (4) = happyGoto action_44
action_11 (5) = happyGoto action_9
action_11 (9) = happyGoto action_10
action_11 _ = happyFail

action_12 (11) = happyShift action_3
action_12 (12) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_11
action_12 (18) = happyShift action_12
action_12 (22) = happyShift action_13
action_12 (34) = happyShift action_14
action_12 (35) = happyShift action_15
action_12 (36) = happyShift action_16
action_12 (37) = happyShift action_17
action_12 (38) = happyShift action_18
action_12 (39) = happyShift action_19
action_12 (40) = happyShift action_20
action_12 (41) = happyShift action_21
action_12 (42) = happyShift action_22
action_12 (43) = happyShift action_23
action_12 (46) = happyShift action_24
action_12 (49) = happyShift action_25
action_12 (52) = happyShift action_7
action_12 (4) = happyGoto action_43
action_12 (5) = happyGoto action_9
action_12 (9) = happyGoto action_10
action_12 _ = happyFail

action_13 (11) = happyShift action_3
action_13 (12) = happyShift action_4
action_13 (13) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_11
action_13 (18) = happyShift action_12
action_13 (22) = happyShift action_13
action_13 (34) = happyShift action_14
action_13 (35) = happyShift action_15
action_13 (36) = happyShift action_16
action_13 (37) = happyShift action_17
action_13 (38) = happyShift action_18
action_13 (39) = happyShift action_19
action_13 (40) = happyShift action_20
action_13 (41) = happyShift action_21
action_13 (42) = happyShift action_22
action_13 (43) = happyShift action_23
action_13 (46) = happyShift action_24
action_13 (49) = happyShift action_25
action_13 (52) = happyShift action_7
action_13 (4) = happyGoto action_42
action_13 (5) = happyGoto action_9
action_13 (9) = happyGoto action_10
action_13 _ = happyFail

action_14 (14) = happyShift action_40
action_14 (52) = happyShift action_41
action_14 (7) = happyGoto action_39
action_14 _ = happyFail

action_15 (11) = happyShift action_3
action_15 (12) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (52) = happyShift action_7
action_15 (5) = happyGoto action_38
action_15 _ = happyFail

action_16 (11) = happyShift action_3
action_16 (12) = happyShift action_4
action_16 (13) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (52) = happyShift action_7
action_16 (5) = happyGoto action_37
action_16 _ = happyFail

action_17 (11) = happyShift action_3
action_17 (12) = happyShift action_4
action_17 (13) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (52) = happyShift action_7
action_17 (5) = happyGoto action_36
action_17 _ = happyFail

action_18 (11) = happyShift action_3
action_18 (12) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (52) = happyShift action_7
action_18 (5) = happyGoto action_35
action_18 _ = happyFail

action_19 (11) = happyShift action_3
action_19 (12) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (52) = happyShift action_7
action_19 (5) = happyGoto action_34
action_19 _ = happyFail

action_20 (11) = happyShift action_3
action_20 (12) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (52) = happyShift action_7
action_20 (5) = happyGoto action_33
action_20 _ = happyFail

action_21 (11) = happyShift action_3
action_21 (12) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (52) = happyShift action_7
action_21 (5) = happyGoto action_32
action_21 _ = happyFail

action_22 (11) = happyShift action_3
action_22 (12) = happyShift action_4
action_22 (13) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (15) = happyShift action_11
action_22 (18) = happyShift action_12
action_22 (22) = happyShift action_13
action_22 (34) = happyShift action_14
action_22 (35) = happyShift action_15
action_22 (36) = happyShift action_16
action_22 (37) = happyShift action_17
action_22 (38) = happyShift action_18
action_22 (39) = happyShift action_19
action_22 (40) = happyShift action_20
action_22 (41) = happyShift action_21
action_22 (42) = happyShift action_22
action_22 (43) = happyShift action_23
action_22 (46) = happyShift action_24
action_22 (49) = happyShift action_25
action_22 (52) = happyShift action_7
action_22 (4) = happyGoto action_31
action_22 (5) = happyGoto action_9
action_22 (9) = happyGoto action_10
action_22 _ = happyFail

action_23 (11) = happyShift action_3
action_23 (12) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (15) = happyShift action_11
action_23 (18) = happyShift action_12
action_23 (22) = happyShift action_13
action_23 (34) = happyShift action_14
action_23 (35) = happyShift action_15
action_23 (36) = happyShift action_16
action_23 (37) = happyShift action_17
action_23 (38) = happyShift action_18
action_23 (39) = happyShift action_19
action_23 (40) = happyShift action_20
action_23 (41) = happyShift action_21
action_23 (42) = happyShift action_22
action_23 (43) = happyShift action_23
action_23 (46) = happyShift action_24
action_23 (49) = happyShift action_25
action_23 (52) = happyShift action_7
action_23 (4) = happyGoto action_30
action_23 (5) = happyGoto action_9
action_23 (9) = happyGoto action_10
action_23 _ = happyFail

action_24 (14) = happyShift action_27
action_24 (47) = happyShift action_28
action_24 (52) = happyShift action_29
action_24 _ = happyFail

action_25 (11) = happyShift action_3
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (52) = happyShift action_7
action_25 (5) = happyGoto action_26
action_25 _ = happyFail

action_26 (11) = happyShift action_3
action_26 (12) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (31) = happyShift action_68
action_26 (52) = happyShift action_7
action_26 (5) = happyGoto action_103
action_26 _ = happyFail

action_27 (25) = happyShift action_102
action_27 _ = happyFail

action_28 (14) = happyShift action_101
action_28 (6) = happyGoto action_100
action_28 _ = happyFail

action_29 (14) = happyShift action_99
action_29 (10) = happyGoto action_98
action_29 _ = happyFail

action_30 (11) = happyShift action_3
action_30 (12) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (16) = happyShift action_49
action_30 (17) = happyShift action_50
action_30 (18) = happyShift action_51
action_30 (19) = happyShift action_52
action_30 (20) = happyShift action_53
action_30 (21) = happyShift action_54
action_30 (22) = happyShift action_55
action_30 (23) = happyShift action_56
action_30 (24) = happyShift action_57
action_30 (25) = happyShift action_58
action_30 (26) = happyShift action_59
action_30 (27) = happyShift action_60
action_30 (28) = happyShift action_61
action_30 (29) = happyShift action_62
action_30 (30) = happyShift action_63
action_30 (44) = happyShift action_97
action_30 (50) = happyShift action_64
action_30 (51) = happyShift action_65
action_30 (52) = happyShift action_7
action_30 (5) = happyGoto action_47
action_30 (8) = happyGoto action_48
action_30 _ = happyFail

action_31 (11) = happyShift action_3
action_31 (12) = happyShift action_4
action_31 (13) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (52) = happyShift action_7
action_31 (5) = happyGoto action_47
action_31 (8) = happyGoto action_48
action_31 _ = happyReduce_26

action_32 (31) = happyShift action_68
action_32 _ = happyReduce_24

action_33 (11) = happyShift action_3
action_33 (12) = happyShift action_4
action_33 (13) = happyShift action_5
action_33 (14) = happyShift action_6
action_33 (31) = happyShift action_68
action_33 (52) = happyShift action_7
action_33 (5) = happyGoto action_96
action_33 _ = happyFail

action_34 (31) = happyShift action_68
action_34 _ = happyReduce_22

action_35 (31) = happyShift action_68
action_35 _ = happyReduce_21

action_36 (31) = happyShift action_68
action_36 _ = happyReduce_20

action_37 (11) = happyShift action_3
action_37 (12) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (31) = happyShift action_68
action_37 (52) = happyShift action_7
action_37 (5) = happyGoto action_95
action_37 _ = happyFail

action_38 (11) = happyShift action_3
action_38 (12) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (31) = happyShift action_68
action_38 (52) = happyShift action_7
action_38 (5) = happyGoto action_94
action_38 _ = happyFail

action_39 (33) = happyShift action_93
action_39 _ = happyFail

action_40 (14) = happyShift action_40
action_40 (52) = happyShift action_41
action_40 (7) = happyGoto action_92
action_40 _ = happyReduce_48

action_41 (53) = happyShift action_91
action_41 _ = happyFail

action_42 (11) = happyShift action_3
action_42 (12) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (52) = happyShift action_7
action_42 (5) = happyGoto action_47
action_42 (8) = happyGoto action_48
action_42 _ = happyReduce_28

action_43 (11) = happyShift action_3
action_43 (12) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (52) = happyShift action_7
action_43 (5) = happyGoto action_47
action_43 (8) = happyGoto action_48
action_43 _ = happyReduce_27

action_44 (11) = happyShift action_3
action_44 (12) = happyShift action_4
action_44 (13) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (16) = happyShift action_49
action_44 (17) = happyShift action_50
action_44 (18) = happyShift action_51
action_44 (19) = happyShift action_52
action_44 (20) = happyShift action_53
action_44 (21) = happyShift action_54
action_44 (22) = happyShift action_55
action_44 (23) = happyShift action_56
action_44 (24) = happyShift action_57
action_44 (25) = happyShift action_58
action_44 (26) = happyShift action_59
action_44 (27) = happyShift action_60
action_44 (28) = happyShift action_61
action_44 (29) = happyShift action_62
action_44 (30) = happyShift action_63
action_44 (50) = happyShift action_64
action_44 (51) = happyShift action_65
action_44 (52) = happyShift action_7
action_44 (5) = happyGoto action_47
action_44 (8) = happyGoto action_48
action_44 _ = happyReduce_2

action_45 (11) = happyShift action_3
action_45 (12) = happyShift action_4
action_45 (13) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (15) = happyShift action_11
action_45 (18) = happyShift action_12
action_45 (22) = happyShift action_13
action_45 (34) = happyShift action_14
action_45 (35) = happyShift action_15
action_45 (36) = happyShift action_16
action_45 (37) = happyShift action_17
action_45 (38) = happyShift action_18
action_45 (39) = happyShift action_19
action_45 (40) = happyShift action_20
action_45 (41) = happyShift action_21
action_45 (42) = happyShift action_22
action_45 (43) = happyShift action_23
action_45 (46) = happyShift action_24
action_45 (49) = happyShift action_25
action_45 (52) = happyShift action_7
action_45 (4) = happyGoto action_90
action_45 (5) = happyGoto action_9
action_45 (9) = happyGoto action_10
action_45 _ = happyFail

action_46 (52) = happyShift action_89
action_46 _ = happyFail

action_47 (31) = happyShift action_68
action_47 _ = happyReduce_50

action_48 (11) = happyShift action_3
action_48 (12) = happyShift action_4
action_48 (13) = happyShift action_5
action_48 (14) = happyShift action_6
action_48 (52) = happyShift action_7
action_48 (5) = happyGoto action_88
action_48 _ = happyReduce_32

action_49 (11) = happyShift action_3
action_49 (12) = happyShift action_4
action_49 (13) = happyShift action_5
action_49 (14) = happyShift action_6
action_49 (15) = happyShift action_11
action_49 (18) = happyShift action_12
action_49 (22) = happyShift action_13
action_49 (34) = happyShift action_14
action_49 (35) = happyShift action_15
action_49 (36) = happyShift action_16
action_49 (37) = happyShift action_17
action_49 (38) = happyShift action_18
action_49 (39) = happyShift action_19
action_49 (40) = happyShift action_20
action_49 (41) = happyShift action_21
action_49 (42) = happyShift action_22
action_49 (43) = happyShift action_23
action_49 (46) = happyShift action_24
action_49 (49) = happyShift action_25
action_49 (52) = happyShift action_7
action_49 (4) = happyGoto action_87
action_49 (5) = happyGoto action_9
action_49 (9) = happyGoto action_10
action_49 _ = happyFail

action_50 (11) = happyShift action_3
action_50 (12) = happyShift action_4
action_50 (13) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (15) = happyShift action_11
action_50 (18) = happyShift action_12
action_50 (22) = happyShift action_13
action_50 (34) = happyShift action_14
action_50 (35) = happyShift action_15
action_50 (36) = happyShift action_16
action_50 (37) = happyShift action_17
action_50 (38) = happyShift action_18
action_50 (39) = happyShift action_19
action_50 (40) = happyShift action_20
action_50 (41) = happyShift action_21
action_50 (42) = happyShift action_22
action_50 (43) = happyShift action_23
action_50 (46) = happyShift action_24
action_50 (49) = happyShift action_25
action_50 (52) = happyShift action_7
action_50 (4) = happyGoto action_86
action_50 (5) = happyGoto action_9
action_50 (9) = happyGoto action_10
action_50 _ = happyFail

action_51 (11) = happyShift action_3
action_51 (12) = happyShift action_4
action_51 (13) = happyShift action_5
action_51 (14) = happyShift action_6
action_51 (15) = happyShift action_11
action_51 (18) = happyShift action_12
action_51 (22) = happyShift action_13
action_51 (34) = happyShift action_14
action_51 (35) = happyShift action_15
action_51 (36) = happyShift action_16
action_51 (37) = happyShift action_17
action_51 (38) = happyShift action_18
action_51 (39) = happyShift action_19
action_51 (40) = happyShift action_20
action_51 (41) = happyShift action_21
action_51 (42) = happyShift action_22
action_51 (43) = happyShift action_23
action_51 (46) = happyShift action_24
action_51 (49) = happyShift action_25
action_51 (52) = happyShift action_7
action_51 (4) = happyGoto action_85
action_51 (5) = happyGoto action_9
action_51 (9) = happyGoto action_10
action_51 _ = happyFail

action_52 (11) = happyShift action_3
action_52 (12) = happyShift action_4
action_52 (13) = happyShift action_5
action_52 (14) = happyShift action_6
action_52 (15) = happyShift action_11
action_52 (18) = happyShift action_12
action_52 (22) = happyShift action_13
action_52 (34) = happyShift action_14
action_52 (35) = happyShift action_15
action_52 (36) = happyShift action_16
action_52 (37) = happyShift action_17
action_52 (38) = happyShift action_18
action_52 (39) = happyShift action_19
action_52 (40) = happyShift action_20
action_52 (41) = happyShift action_21
action_52 (42) = happyShift action_22
action_52 (43) = happyShift action_23
action_52 (46) = happyShift action_24
action_52 (49) = happyShift action_25
action_52 (52) = happyShift action_7
action_52 (4) = happyGoto action_84
action_52 (5) = happyGoto action_9
action_52 (9) = happyGoto action_10
action_52 _ = happyFail

action_53 (11) = happyShift action_3
action_53 (12) = happyShift action_4
action_53 (13) = happyShift action_5
action_53 (14) = happyShift action_6
action_53 (15) = happyShift action_11
action_53 (18) = happyShift action_12
action_53 (22) = happyShift action_13
action_53 (34) = happyShift action_14
action_53 (35) = happyShift action_15
action_53 (36) = happyShift action_16
action_53 (37) = happyShift action_17
action_53 (38) = happyShift action_18
action_53 (39) = happyShift action_19
action_53 (40) = happyShift action_20
action_53 (41) = happyShift action_21
action_53 (42) = happyShift action_22
action_53 (43) = happyShift action_23
action_53 (46) = happyShift action_24
action_53 (49) = happyShift action_25
action_53 (52) = happyShift action_7
action_53 (4) = happyGoto action_83
action_53 (5) = happyGoto action_9
action_53 (9) = happyGoto action_10
action_53 _ = happyFail

action_54 (11) = happyShift action_3
action_54 (12) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (15) = happyShift action_11
action_54 (18) = happyShift action_12
action_54 (22) = happyShift action_13
action_54 (34) = happyShift action_14
action_54 (35) = happyShift action_15
action_54 (36) = happyShift action_16
action_54 (37) = happyShift action_17
action_54 (38) = happyShift action_18
action_54 (39) = happyShift action_19
action_54 (40) = happyShift action_20
action_54 (41) = happyShift action_21
action_54 (42) = happyShift action_22
action_54 (43) = happyShift action_23
action_54 (46) = happyShift action_24
action_54 (49) = happyShift action_25
action_54 (52) = happyShift action_7
action_54 (4) = happyGoto action_82
action_54 (5) = happyGoto action_9
action_54 (9) = happyGoto action_10
action_54 _ = happyFail

action_55 (11) = happyShift action_3
action_55 (12) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (15) = happyShift action_11
action_55 (18) = happyShift action_12
action_55 (22) = happyShift action_13
action_55 (34) = happyShift action_14
action_55 (35) = happyShift action_15
action_55 (36) = happyShift action_16
action_55 (37) = happyShift action_17
action_55 (38) = happyShift action_18
action_55 (39) = happyShift action_19
action_55 (40) = happyShift action_20
action_55 (41) = happyShift action_21
action_55 (42) = happyShift action_22
action_55 (43) = happyShift action_23
action_55 (46) = happyShift action_24
action_55 (49) = happyShift action_25
action_55 (52) = happyShift action_7
action_55 (4) = happyGoto action_81
action_55 (5) = happyGoto action_9
action_55 (9) = happyGoto action_10
action_55 _ = happyFail

action_56 (11) = happyShift action_3
action_56 (12) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (15) = happyShift action_11
action_56 (18) = happyShift action_12
action_56 (22) = happyShift action_13
action_56 (34) = happyShift action_14
action_56 (35) = happyShift action_15
action_56 (36) = happyShift action_16
action_56 (37) = happyShift action_17
action_56 (38) = happyShift action_18
action_56 (39) = happyShift action_19
action_56 (40) = happyShift action_20
action_56 (41) = happyShift action_21
action_56 (42) = happyShift action_22
action_56 (43) = happyShift action_23
action_56 (46) = happyShift action_24
action_56 (49) = happyShift action_25
action_56 (52) = happyShift action_7
action_56 (4) = happyGoto action_80
action_56 (5) = happyGoto action_9
action_56 (9) = happyGoto action_10
action_56 _ = happyFail

action_57 (11) = happyShift action_3
action_57 (12) = happyShift action_4
action_57 (13) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (15) = happyShift action_11
action_57 (18) = happyShift action_12
action_57 (22) = happyShift action_13
action_57 (34) = happyShift action_14
action_57 (35) = happyShift action_15
action_57 (36) = happyShift action_16
action_57 (37) = happyShift action_17
action_57 (38) = happyShift action_18
action_57 (39) = happyShift action_19
action_57 (40) = happyShift action_20
action_57 (41) = happyShift action_21
action_57 (42) = happyShift action_22
action_57 (43) = happyShift action_23
action_57 (46) = happyShift action_24
action_57 (49) = happyShift action_25
action_57 (52) = happyShift action_7
action_57 (4) = happyGoto action_79
action_57 (5) = happyGoto action_9
action_57 (9) = happyGoto action_10
action_57 _ = happyFail

action_58 (11) = happyShift action_3
action_58 (12) = happyShift action_4
action_58 (13) = happyShift action_5
action_58 (14) = happyShift action_6
action_58 (15) = happyShift action_11
action_58 (18) = happyShift action_12
action_58 (22) = happyShift action_13
action_58 (34) = happyShift action_14
action_58 (35) = happyShift action_15
action_58 (36) = happyShift action_16
action_58 (37) = happyShift action_17
action_58 (38) = happyShift action_18
action_58 (39) = happyShift action_19
action_58 (40) = happyShift action_20
action_58 (41) = happyShift action_21
action_58 (42) = happyShift action_22
action_58 (43) = happyShift action_23
action_58 (46) = happyShift action_24
action_58 (49) = happyShift action_25
action_58 (52) = happyShift action_7
action_58 (4) = happyGoto action_78
action_58 (5) = happyGoto action_9
action_58 (9) = happyGoto action_10
action_58 _ = happyFail

action_59 (11) = happyShift action_3
action_59 (12) = happyShift action_4
action_59 (13) = happyShift action_5
action_59 (14) = happyShift action_6
action_59 (15) = happyShift action_11
action_59 (18) = happyShift action_12
action_59 (22) = happyShift action_13
action_59 (34) = happyShift action_14
action_59 (35) = happyShift action_15
action_59 (36) = happyShift action_16
action_59 (37) = happyShift action_17
action_59 (38) = happyShift action_18
action_59 (39) = happyShift action_19
action_59 (40) = happyShift action_20
action_59 (41) = happyShift action_21
action_59 (42) = happyShift action_22
action_59 (43) = happyShift action_23
action_59 (46) = happyShift action_24
action_59 (49) = happyShift action_25
action_59 (52) = happyShift action_7
action_59 (4) = happyGoto action_77
action_59 (5) = happyGoto action_9
action_59 (9) = happyGoto action_10
action_59 _ = happyFail

action_60 (11) = happyShift action_3
action_60 (12) = happyShift action_4
action_60 (13) = happyShift action_5
action_60 (14) = happyShift action_6
action_60 (15) = happyShift action_11
action_60 (18) = happyShift action_12
action_60 (22) = happyShift action_13
action_60 (34) = happyShift action_14
action_60 (35) = happyShift action_15
action_60 (36) = happyShift action_16
action_60 (37) = happyShift action_17
action_60 (38) = happyShift action_18
action_60 (39) = happyShift action_19
action_60 (40) = happyShift action_20
action_60 (41) = happyShift action_21
action_60 (42) = happyShift action_22
action_60 (43) = happyShift action_23
action_60 (46) = happyShift action_24
action_60 (49) = happyShift action_25
action_60 (52) = happyShift action_7
action_60 (4) = happyGoto action_76
action_60 (5) = happyGoto action_9
action_60 (9) = happyGoto action_10
action_60 _ = happyFail

action_61 (11) = happyShift action_3
action_61 (12) = happyShift action_4
action_61 (13) = happyShift action_5
action_61 (14) = happyShift action_6
action_61 (15) = happyShift action_11
action_61 (18) = happyShift action_12
action_61 (22) = happyShift action_13
action_61 (34) = happyShift action_14
action_61 (35) = happyShift action_15
action_61 (36) = happyShift action_16
action_61 (37) = happyShift action_17
action_61 (38) = happyShift action_18
action_61 (39) = happyShift action_19
action_61 (40) = happyShift action_20
action_61 (41) = happyShift action_21
action_61 (42) = happyShift action_22
action_61 (43) = happyShift action_23
action_61 (46) = happyShift action_24
action_61 (49) = happyShift action_25
action_61 (52) = happyShift action_7
action_61 (4) = happyGoto action_75
action_61 (5) = happyGoto action_9
action_61 (9) = happyGoto action_10
action_61 _ = happyFail

action_62 (11) = happyShift action_3
action_62 (12) = happyShift action_4
action_62 (13) = happyShift action_5
action_62 (14) = happyShift action_6
action_62 (15) = happyShift action_11
action_62 (18) = happyShift action_12
action_62 (22) = happyShift action_13
action_62 (34) = happyShift action_14
action_62 (35) = happyShift action_15
action_62 (36) = happyShift action_16
action_62 (37) = happyShift action_17
action_62 (38) = happyShift action_18
action_62 (39) = happyShift action_19
action_62 (40) = happyShift action_20
action_62 (41) = happyShift action_21
action_62 (42) = happyShift action_22
action_62 (43) = happyShift action_23
action_62 (46) = happyShift action_24
action_62 (49) = happyShift action_25
action_62 (52) = happyShift action_7
action_62 (4) = happyGoto action_74
action_62 (5) = happyGoto action_9
action_62 (9) = happyGoto action_10
action_62 _ = happyFail

action_63 (11) = happyShift action_3
action_63 (12) = happyShift action_4
action_63 (13) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (15) = happyShift action_11
action_63 (18) = happyShift action_12
action_63 (22) = happyShift action_13
action_63 (34) = happyShift action_14
action_63 (35) = happyShift action_15
action_63 (36) = happyShift action_16
action_63 (37) = happyShift action_17
action_63 (38) = happyShift action_18
action_63 (39) = happyShift action_19
action_63 (40) = happyShift action_20
action_63 (41) = happyShift action_21
action_63 (42) = happyShift action_22
action_63 (43) = happyShift action_23
action_63 (46) = happyShift action_24
action_63 (49) = happyShift action_25
action_63 (52) = happyShift action_7
action_63 (4) = happyGoto action_73
action_63 (5) = happyGoto action_9
action_63 (9) = happyGoto action_10
action_63 _ = happyFail

action_64 (11) = happyShift action_3
action_64 (12) = happyShift action_4
action_64 (13) = happyShift action_5
action_64 (14) = happyShift action_6
action_64 (15) = happyShift action_11
action_64 (18) = happyShift action_12
action_64 (22) = happyShift action_13
action_64 (34) = happyShift action_14
action_64 (35) = happyShift action_15
action_64 (36) = happyShift action_16
action_64 (37) = happyShift action_17
action_64 (38) = happyShift action_18
action_64 (39) = happyShift action_19
action_64 (40) = happyShift action_20
action_64 (41) = happyShift action_21
action_64 (42) = happyShift action_22
action_64 (43) = happyShift action_23
action_64 (46) = happyShift action_24
action_64 (49) = happyShift action_25
action_64 (52) = happyShift action_7
action_64 (4) = happyGoto action_72
action_64 (5) = happyGoto action_9
action_64 (9) = happyGoto action_10
action_64 _ = happyFail

action_65 (11) = happyShift action_3
action_65 (12) = happyShift action_4
action_65 (13) = happyShift action_5
action_65 (14) = happyShift action_6
action_65 (15) = happyShift action_11
action_65 (18) = happyShift action_12
action_65 (22) = happyShift action_13
action_65 (34) = happyShift action_14
action_65 (35) = happyShift action_15
action_65 (36) = happyShift action_16
action_65 (37) = happyShift action_17
action_65 (38) = happyShift action_18
action_65 (39) = happyShift action_19
action_65 (40) = happyShift action_20
action_65 (41) = happyShift action_21
action_65 (42) = happyShift action_22
action_65 (43) = happyShift action_23
action_65 (46) = happyShift action_24
action_65 (49) = happyShift action_25
action_65 (52) = happyShift action_7
action_65 (4) = happyGoto action_71
action_65 (5) = happyGoto action_9
action_65 (9) = happyGoto action_10
action_65 _ = happyFail

action_66 (11) = happyShift action_3
action_66 (12) = happyShift action_4
action_66 (13) = happyShift action_5
action_66 (14) = happyShift action_6
action_66 (16) = happyShift action_49
action_66 (17) = happyShift action_50
action_66 (18) = happyShift action_51
action_66 (19) = happyShift action_52
action_66 (20) = happyShift action_53
action_66 (21) = happyShift action_54
action_66 (22) = happyShift action_55
action_66 (23) = happyShift action_56
action_66 (24) = happyShift action_57
action_66 (25) = happyShift action_58
action_66 (26) = happyShift action_59
action_66 (27) = happyShift action_60
action_66 (28) = happyShift action_61
action_66 (29) = happyShift action_62
action_66 (30) = happyShift action_63
action_66 (50) = happyShift action_64
action_66 (51) = happyShift action_65
action_66 (52) = happyShift action_7
action_66 (53) = happyShift action_70
action_66 (5) = happyGoto action_47
action_66 (8) = happyGoto action_48
action_66 _ = happyFail

action_67 _ = happyReduce_39

action_68 (52) = happyShift action_69
action_68 _ = happyFail

action_69 (11) = happyShift action_3
action_69 (12) = happyShift action_4
action_69 (13) = happyShift action_5
action_69 (14) = happyShift action_6
action_69 (15) = happyShift action_11
action_69 (18) = happyShift action_12
action_69 (22) = happyShift action_13
action_69 (34) = happyShift action_14
action_69 (35) = happyShift action_15
action_69 (36) = happyShift action_16
action_69 (37) = happyShift action_17
action_69 (38) = happyShift action_18
action_69 (39) = happyShift action_19
action_69 (40) = happyShift action_20
action_69 (41) = happyShift action_21
action_69 (42) = happyShift action_22
action_69 (43) = happyShift action_23
action_69 (46) = happyShift action_24
action_69 (49) = happyShift action_25
action_69 (52) = happyShift action_7
action_69 (4) = happyGoto action_113
action_69 (5) = happyGoto action_9
action_69 (9) = happyGoto action_10
action_69 _ = happyFail

action_70 _ = happyReduce_38

action_71 (11) = happyShift action_3
action_71 (12) = happyShift action_4
action_71 (13) = happyShift action_5
action_71 (14) = happyShift action_6
action_71 (16) = happyShift action_49
action_71 (17) = happyShift action_50
action_71 (18) = happyShift action_51
action_71 (19) = happyShift action_52
action_71 (20) = happyShift action_53
action_71 (21) = happyShift action_54
action_71 (22) = happyShift action_55
action_71 (23) = happyShift action_56
action_71 (24) = happyShift action_57
action_71 (25) = happyShift action_58
action_71 (26) = happyShift action_59
action_71 (27) = happyShift action_60
action_71 (28) = happyShift action_61
action_71 (29) = happyShift action_62
action_71 (30) = happyShift action_63
action_71 (50) = happyShift action_64
action_71 (51) = happyShift action_65
action_71 (52) = happyShift action_7
action_71 (5) = happyGoto action_47
action_71 (8) = happyGoto action_48
action_71 _ = happyReduce_36

action_72 (11) = happyShift action_3
action_72 (12) = happyShift action_4
action_72 (13) = happyShift action_5
action_72 (14) = happyShift action_6
action_72 (16) = happyShift action_49
action_72 (17) = happyShift action_50
action_72 (18) = happyShift action_51
action_72 (19) = happyShift action_52
action_72 (20) = happyShift action_53
action_72 (21) = happyShift action_54
action_72 (22) = happyShift action_55
action_72 (23) = happyShift action_56
action_72 (24) = happyShift action_57
action_72 (25) = happyShift action_58
action_72 (26) = happyShift action_59
action_72 (27) = happyShift action_60
action_72 (28) = happyShift action_61
action_72 (29) = happyShift action_62
action_72 (30) = happyShift action_63
action_72 (52) = happyShift action_7
action_72 (5) = happyGoto action_47
action_72 (8) = happyGoto action_48
action_72 _ = happyReduce_52

action_73 (11) = happyShift action_3
action_73 (12) = happyShift action_4
action_73 (13) = happyShift action_5
action_73 (14) = happyShift action_6
action_73 (16) = happyShift action_49
action_73 (17) = happyShift action_50
action_73 (18) = happyShift action_51
action_73 (19) = happyShift action_52
action_73 (20) = happyShift action_53
action_73 (21) = happyShift action_54
action_73 (22) = happyShift action_55
action_73 (23) = happyShift action_56
action_73 (24) = happyShift action_57
action_73 (52) = happyShift action_7
action_73 (5) = happyGoto action_47
action_73 (8) = happyGoto action_48
action_73 _ = happyReduce_17

action_74 (11) = happyShift action_3
action_74 (12) = happyShift action_4
action_74 (13) = happyShift action_5
action_74 (14) = happyShift action_6
action_74 (16) = happyShift action_49
action_74 (17) = happyShift action_50
action_74 (18) = happyShift action_51
action_74 (19) = happyShift action_52
action_74 (20) = happyShift action_53
action_74 (21) = happyShift action_54
action_74 (22) = happyShift action_55
action_74 (23) = happyShift action_56
action_74 (24) = happyShift action_57
action_74 (52) = happyShift action_7
action_74 (5) = happyGoto action_47
action_74 (8) = happyGoto action_48
action_74 _ = happyReduce_16

action_75 (11) = happyShift action_3
action_75 (12) = happyShift action_4
action_75 (13) = happyShift action_5
action_75 (14) = happyShift action_6
action_75 (16) = happyShift action_49
action_75 (17) = happyShift action_50
action_75 (18) = happyShift action_51
action_75 (19) = happyShift action_52
action_75 (20) = happyShift action_53
action_75 (21) = happyShift action_54
action_75 (22) = happyShift action_55
action_75 (23) = happyShift action_56
action_75 (24) = happyShift action_57
action_75 (52) = happyShift action_7
action_75 (5) = happyGoto action_47
action_75 (8) = happyGoto action_48
action_75 _ = happyReduce_15

action_76 (11) = happyShift action_3
action_76 (12) = happyShift action_4
action_76 (13) = happyShift action_5
action_76 (14) = happyShift action_6
action_76 (16) = happyShift action_49
action_76 (17) = happyShift action_50
action_76 (18) = happyShift action_51
action_76 (19) = happyShift action_52
action_76 (20) = happyShift action_53
action_76 (21) = happyShift action_54
action_76 (22) = happyShift action_55
action_76 (23) = happyShift action_56
action_76 (24) = happyShift action_57
action_76 (52) = happyShift action_7
action_76 (5) = happyGoto action_47
action_76 (8) = happyGoto action_48
action_76 _ = happyReduce_14

action_77 (11) = happyShift action_3
action_77 (12) = happyShift action_4
action_77 (13) = happyShift action_5
action_77 (14) = happyShift action_6
action_77 (16) = happyShift action_49
action_77 (17) = happyShift action_50
action_77 (18) = happyShift action_51
action_77 (19) = happyShift action_52
action_77 (20) = happyShift action_53
action_77 (21) = happyShift action_54
action_77 (22) = happyShift action_55
action_77 (23) = happyShift action_56
action_77 (24) = happyShift action_57
action_77 (52) = happyShift action_7
action_77 (5) = happyGoto action_47
action_77 (8) = happyGoto action_48
action_77 _ = happyReduce_13

action_78 (11) = happyShift action_3
action_78 (12) = happyShift action_4
action_78 (13) = happyShift action_5
action_78 (14) = happyShift action_6
action_78 (16) = happyShift action_49
action_78 (17) = happyShift action_50
action_78 (18) = happyShift action_51
action_78 (19) = happyShift action_52
action_78 (20) = happyShift action_53
action_78 (21) = happyShift action_54
action_78 (22) = happyShift action_55
action_78 (23) = happyShift action_56
action_78 (24) = happyShift action_57
action_78 (52) = happyShift action_7
action_78 (5) = happyGoto action_47
action_78 (8) = happyGoto action_48
action_78 _ = happyReduce_12

action_79 (11) = happyShift action_3
action_79 (12) = happyShift action_4
action_79 (13) = happyShift action_5
action_79 (14) = happyShift action_6
action_79 (52) = happyShift action_7
action_79 (5) = happyGoto action_47
action_79 (8) = happyGoto action_48
action_79 _ = happyReduce_11

action_80 (11) = happyShift action_3
action_80 (12) = happyShift action_4
action_80 (13) = happyShift action_5
action_80 (14) = happyShift action_6
action_80 (52) = happyShift action_7
action_80 (5) = happyGoto action_47
action_80 (8) = happyGoto action_48
action_80 _ = happyReduce_10

action_81 (11) = happyShift action_3
action_81 (12) = happyShift action_4
action_81 (13) = happyShift action_5
action_81 (14) = happyShift action_6
action_81 (19) = happyShift action_52
action_81 (20) = happyShift action_53
action_81 (23) = happyShift action_56
action_81 (24) = happyShift action_57
action_81 (52) = happyShift action_7
action_81 (5) = happyGoto action_47
action_81 (8) = happyGoto action_48
action_81 _ = happyReduce_9

action_82 (11) = happyShift action_3
action_82 (12) = happyShift action_4
action_82 (13) = happyShift action_5
action_82 (14) = happyShift action_6
action_82 (19) = happyShift action_52
action_82 (20) = happyShift action_53
action_82 (23) = happyShift action_56
action_82 (24) = happyShift action_57
action_82 (52) = happyShift action_7
action_82 (5) = happyGoto action_47
action_82 (8) = happyGoto action_48
action_82 _ = happyReduce_8

action_83 (11) = happyShift action_3
action_83 (12) = happyShift action_4
action_83 (13) = happyShift action_5
action_83 (14) = happyShift action_6
action_83 (52) = happyShift action_7
action_83 (5) = happyGoto action_47
action_83 (8) = happyGoto action_48
action_83 _ = happyReduce_7

action_84 (11) = happyShift action_3
action_84 (12) = happyShift action_4
action_84 (13) = happyShift action_5
action_84 (14) = happyShift action_6
action_84 (52) = happyShift action_7
action_84 (5) = happyGoto action_47
action_84 (8) = happyGoto action_48
action_84 _ = happyReduce_6

action_85 (11) = happyShift action_3
action_85 (12) = happyShift action_4
action_85 (13) = happyShift action_5
action_85 (14) = happyShift action_6
action_85 (19) = happyShift action_52
action_85 (20) = happyShift action_53
action_85 (23) = happyShift action_56
action_85 (24) = happyShift action_57
action_85 (52) = happyShift action_7
action_85 (5) = happyGoto action_47
action_85 (8) = happyGoto action_48
action_85 _ = happyReduce_5

action_86 (11) = happyShift action_3
action_86 (12) = happyShift action_4
action_86 (13) = happyShift action_5
action_86 (14) = happyShift action_6
action_86 (19) = happyShift action_52
action_86 (20) = happyShift action_53
action_86 (23) = happyShift action_56
action_86 (24) = happyShift action_57
action_86 (52) = happyShift action_7
action_86 (5) = happyGoto action_47
action_86 (8) = happyGoto action_48
action_86 _ = happyReduce_4

action_87 (11) = happyShift action_3
action_87 (12) = happyShift action_4
action_87 (13) = happyShift action_5
action_87 (14) = happyShift action_6
action_87 (19) = happyShift action_52
action_87 (20) = happyShift action_53
action_87 (23) = happyShift action_56
action_87 (24) = happyShift action_57
action_87 (52) = happyShift action_7
action_87 (5) = happyGoto action_47
action_87 (8) = happyGoto action_48
action_87 _ = happyReduce_3

action_88 (31) = happyShift action_68
action_88 _ = happyReduce_49

action_89 (11) = happyShift action_3
action_89 (12) = happyShift action_4
action_89 (13) = happyShift action_5
action_89 (14) = happyShift action_6
action_89 (15) = happyShift action_11
action_89 (18) = happyShift action_12
action_89 (22) = happyShift action_13
action_89 (34) = happyShift action_14
action_89 (35) = happyShift action_15
action_89 (36) = happyShift action_16
action_89 (37) = happyShift action_17
action_89 (38) = happyShift action_18
action_89 (39) = happyShift action_19
action_89 (40) = happyShift action_20
action_89 (41) = happyShift action_21
action_89 (42) = happyShift action_22
action_89 (43) = happyShift action_23
action_89 (46) = happyShift action_24
action_89 (49) = happyShift action_25
action_89 (52) = happyShift action_7
action_89 (4) = happyGoto action_112
action_89 (5) = happyGoto action_9
action_89 (9) = happyGoto action_10
action_89 _ = happyFail

action_90 (11) = happyShift action_3
action_90 (12) = happyShift action_4
action_90 (13) = happyShift action_5
action_90 (14) = happyShift action_6
action_90 (16) = happyShift action_49
action_90 (17) = happyShift action_50
action_90 (18) = happyShift action_51
action_90 (19) = happyShift action_52
action_90 (20) = happyShift action_53
action_90 (21) = happyShift action_54
action_90 (22) = happyShift action_55
action_90 (23) = happyShift action_56
action_90 (24) = happyShift action_57
action_90 (25) = happyShift action_58
action_90 (26) = happyShift action_59
action_90 (27) = happyShift action_60
action_90 (28) = happyShift action_61
action_90 (29) = happyShift action_62
action_90 (30) = happyShift action_63
action_90 (52) = happyShift action_7
action_90 (5) = happyGoto action_47
action_90 (8) = happyGoto action_48
action_90 _ = happyReduce_51

action_91 _ = happyReduce_46

action_92 _ = happyReduce_47

action_93 (11) = happyShift action_3
action_93 (12) = happyShift action_4
action_93 (13) = happyShift action_5
action_93 (14) = happyShift action_6
action_93 (15) = happyShift action_11
action_93 (18) = happyShift action_12
action_93 (22) = happyShift action_13
action_93 (34) = happyShift action_14
action_93 (35) = happyShift action_15
action_93 (36) = happyShift action_16
action_93 (37) = happyShift action_17
action_93 (38) = happyShift action_18
action_93 (39) = happyShift action_19
action_93 (40) = happyShift action_20
action_93 (41) = happyShift action_21
action_93 (42) = happyShift action_22
action_93 (43) = happyShift action_23
action_93 (46) = happyShift action_24
action_93 (49) = happyShift action_25
action_93 (52) = happyShift action_7
action_93 (4) = happyGoto action_111
action_93 (5) = happyGoto action_9
action_93 (9) = happyGoto action_10
action_93 _ = happyFail

action_94 (31) = happyShift action_68
action_94 _ = happyReduce_18

action_95 (31) = happyShift action_68
action_95 _ = happyReduce_19

action_96 (31) = happyShift action_68
action_96 _ = happyReduce_23

action_97 (11) = happyShift action_3
action_97 (12) = happyShift action_4
action_97 (13) = happyShift action_5
action_97 (14) = happyShift action_6
action_97 (15) = happyShift action_11
action_97 (18) = happyShift action_12
action_97 (22) = happyShift action_13
action_97 (34) = happyShift action_14
action_97 (35) = happyShift action_15
action_97 (36) = happyShift action_16
action_97 (37) = happyShift action_17
action_97 (38) = happyShift action_18
action_97 (39) = happyShift action_19
action_97 (40) = happyShift action_20
action_97 (41) = happyShift action_21
action_97 (42) = happyShift action_22
action_97 (43) = happyShift action_23
action_97 (46) = happyShift action_24
action_97 (49) = happyShift action_25
action_97 (52) = happyShift action_7
action_97 (4) = happyGoto action_110
action_97 (5) = happyGoto action_9
action_97 (9) = happyGoto action_10
action_97 _ = happyFail

action_98 (50) = happyShift action_108
action_98 (53) = happyShift action_109
action_98 _ = happyFail

action_99 (50) = happyShift action_107
action_99 _ = happyFail

action_100 (48) = happyShift action_106
action_100 _ = happyFail

action_101 (14) = happyShift action_40
action_101 (52) = happyShift action_41
action_101 (7) = happyGoto action_105
action_101 _ = happyFail

action_102 (11) = happyShift action_3
action_102 (12) = happyShift action_4
action_102 (13) = happyShift action_5
action_102 (14) = happyShift action_6
action_102 (15) = happyShift action_11
action_102 (18) = happyShift action_12
action_102 (22) = happyShift action_13
action_102 (34) = happyShift action_14
action_102 (35) = happyShift action_15
action_102 (36) = happyShift action_16
action_102 (37) = happyShift action_17
action_102 (38) = happyShift action_18
action_102 (39) = happyShift action_19
action_102 (40) = happyShift action_20
action_102 (41) = happyShift action_21
action_102 (42) = happyShift action_22
action_102 (43) = happyShift action_23
action_102 (46) = happyShift action_24
action_102 (49) = happyShift action_25
action_102 (52) = happyShift action_7
action_102 (4) = happyGoto action_104
action_102 (5) = happyGoto action_9
action_102 (9) = happyGoto action_10
action_102 _ = happyFail

action_103 (31) = happyShift action_68
action_103 _ = happyReduce_37

action_104 (11) = happyShift action_3
action_104 (12) = happyShift action_4
action_104 (13) = happyShift action_5
action_104 (14) = happyShift action_6
action_104 (16) = happyShift action_49
action_104 (17) = happyShift action_50
action_104 (18) = happyShift action_51
action_104 (19) = happyShift action_52
action_104 (20) = happyShift action_53
action_104 (21) = happyShift action_54
action_104 (22) = happyShift action_55
action_104 (23) = happyShift action_56
action_104 (24) = happyShift action_57
action_104 (25) = happyShift action_58
action_104 (26) = happyShift action_59
action_104 (27) = happyShift action_60
action_104 (28) = happyShift action_61
action_104 (29) = happyShift action_62
action_104 (30) = happyShift action_63
action_104 (48) = happyShift action_122
action_104 (50) = happyShift action_64
action_104 (51) = happyShift action_65
action_104 (52) = happyShift action_7
action_104 (5) = happyGoto action_47
action_104 (8) = happyGoto action_48
action_104 _ = happyFail

action_105 (25) = happyShift action_121
action_105 _ = happyFail

action_106 (11) = happyShift action_3
action_106 (12) = happyShift action_4
action_106 (13) = happyShift action_5
action_106 (14) = happyShift action_6
action_106 (15) = happyShift action_11
action_106 (18) = happyShift action_12
action_106 (22) = happyShift action_13
action_106 (34) = happyShift action_14
action_106 (35) = happyShift action_15
action_106 (36) = happyShift action_16
action_106 (37) = happyShift action_17
action_106 (38) = happyShift action_18
action_106 (39) = happyShift action_19
action_106 (40) = happyShift action_20
action_106 (41) = happyShift action_21
action_106 (42) = happyShift action_22
action_106 (43) = happyShift action_23
action_106 (46) = happyShift action_24
action_106 (49) = happyShift action_25
action_106 (52) = happyShift action_7
action_106 (4) = happyGoto action_120
action_106 (5) = happyGoto action_9
action_106 (9) = happyGoto action_10
action_106 _ = happyFail

action_107 (14) = happyShift action_119
action_107 _ = happyFail

action_108 (14) = happyShift action_118
action_108 _ = happyFail

action_109 (25) = happyShift action_117
action_109 _ = happyFail

action_110 (11) = happyShift action_3
action_110 (12) = happyShift action_4
action_110 (13) = happyShift action_5
action_110 (14) = happyShift action_6
action_110 (16) = happyShift action_49
action_110 (17) = happyShift action_50
action_110 (18) = happyShift action_51
action_110 (19) = happyShift action_52
action_110 (20) = happyShift action_53
action_110 (21) = happyShift action_54
action_110 (22) = happyShift action_55
action_110 (23) = happyShift action_56
action_110 (24) = happyShift action_57
action_110 (25) = happyShift action_58
action_110 (26) = happyShift action_59
action_110 (27) = happyShift action_60
action_110 (28) = happyShift action_61
action_110 (29) = happyShift action_62
action_110 (30) = happyShift action_63
action_110 (45) = happyShift action_116
action_110 (50) = happyShift action_64
action_110 (51) = happyShift action_65
action_110 (52) = happyShift action_7
action_110 (5) = happyGoto action_47
action_110 (8) = happyGoto action_48
action_110 _ = happyFail

action_111 (11) = happyShift action_3
action_111 (12) = happyShift action_4
action_111 (13) = happyShift action_5
action_111 (14) = happyShift action_6
action_111 (16) = happyShift action_49
action_111 (17) = happyShift action_50
action_111 (18) = happyShift action_51
action_111 (19) = happyShift action_52
action_111 (20) = happyShift action_53
action_111 (21) = happyShift action_54
action_111 (22) = happyShift action_55
action_111 (23) = happyShift action_56
action_111 (24) = happyShift action_57
action_111 (25) = happyShift action_58
action_111 (26) = happyShift action_59
action_111 (27) = happyShift action_60
action_111 (28) = happyShift action_61
action_111 (29) = happyShift action_62
action_111 (30) = happyShift action_63
action_111 (50) = happyShift action_64
action_111 (51) = happyShift action_65
action_111 (52) = happyShift action_7
action_111 (5) = happyGoto action_47
action_111 (8) = happyGoto action_48
action_111 _ = happyReduce_25

action_112 (11) = happyShift action_3
action_112 (12) = happyShift action_4
action_112 (13) = happyShift action_5
action_112 (14) = happyShift action_6
action_112 (16) = happyShift action_49
action_112 (17) = happyShift action_50
action_112 (18) = happyShift action_51
action_112 (19) = happyShift action_52
action_112 (20) = happyShift action_53
action_112 (21) = happyShift action_54
action_112 (22) = happyShift action_55
action_112 (23) = happyShift action_56
action_112 (24) = happyShift action_57
action_112 (25) = happyShift action_58
action_112 (26) = happyShift action_59
action_112 (27) = happyShift action_60
action_112 (28) = happyShift action_61
action_112 (29) = happyShift action_62
action_112 (30) = happyShift action_63
action_112 (50) = happyShift action_64
action_112 (51) = happyShift action_65
action_112 (52) = happyShift action_7
action_112 (53) = happyShift action_115
action_112 (5) = happyGoto action_47
action_112 (8) = happyGoto action_48
action_112 _ = happyFail

action_113 (11) = happyShift action_3
action_113 (12) = happyShift action_4
action_113 (13) = happyShift action_5
action_113 (14) = happyShift action_6
action_113 (16) = happyShift action_49
action_113 (17) = happyShift action_50
action_113 (18) = happyShift action_51
action_113 (19) = happyShift action_52
action_113 (20) = happyShift action_53
action_113 (21) = happyShift action_54
action_113 (22) = happyShift action_55
action_113 (23) = happyShift action_56
action_113 (24) = happyShift action_57
action_113 (25) = happyShift action_58
action_113 (26) = happyShift action_59
action_113 (27) = happyShift action_60
action_113 (28) = happyShift action_61
action_113 (29) = happyShift action_62
action_113 (30) = happyShift action_63
action_113 (50) = happyShift action_64
action_113 (51) = happyShift action_65
action_113 (52) = happyShift action_7
action_113 (53) = happyShift action_114
action_113 (5) = happyGoto action_47
action_113 (8) = happyGoto action_48
action_113 _ = happyFail

action_114 _ = happyReduce_44

action_115 (32) = happyShift action_127
action_115 _ = happyReduce_44

action_116 (11) = happyShift action_3
action_116 (12) = happyShift action_4
action_116 (13) = happyShift action_5
action_116 (14) = happyShift action_6
action_116 (15) = happyShift action_11
action_116 (18) = happyShift action_12
action_116 (22) = happyShift action_13
action_116 (34) = happyShift action_14
action_116 (35) = happyShift action_15
action_116 (36) = happyShift action_16
action_116 (37) = happyShift action_17
action_116 (38) = happyShift action_18
action_116 (39) = happyShift action_19
action_116 (40) = happyShift action_20
action_116 (41) = happyShift action_21
action_116 (42) = happyShift action_22
action_116 (43) = happyShift action_23
action_116 (46) = happyShift action_24
action_116 (49) = happyShift action_25
action_116 (52) = happyShift action_7
action_116 (4) = happyGoto action_126
action_116 (5) = happyGoto action_9
action_116 (9) = happyGoto action_10
action_116 _ = happyFail

action_117 (11) = happyShift action_3
action_117 (12) = happyShift action_4
action_117 (13) = happyShift action_5
action_117 (14) = happyShift action_6
action_117 (15) = happyShift action_11
action_117 (18) = happyShift action_12
action_117 (22) = happyShift action_13
action_117 (34) = happyShift action_14
action_117 (35) = happyShift action_15
action_117 (36) = happyShift action_16
action_117 (37) = happyShift action_17
action_117 (38) = happyShift action_18
action_117 (39) = happyShift action_19
action_117 (40) = happyShift action_20
action_117 (41) = happyShift action_21
action_117 (42) = happyShift action_22
action_117 (43) = happyShift action_23
action_117 (46) = happyShift action_24
action_117 (49) = happyShift action_25
action_117 (52) = happyShift action_7
action_117 (4) = happyGoto action_125
action_117 (5) = happyGoto action_9
action_117 (9) = happyGoto action_10
action_117 _ = happyFail

action_118 _ = happyReduce_53

action_119 _ = happyReduce_54

action_120 (11) = happyShift action_3
action_120 (12) = happyShift action_4
action_120 (13) = happyShift action_5
action_120 (14) = happyShift action_6
action_120 (16) = happyShift action_49
action_120 (17) = happyShift action_50
action_120 (18) = happyShift action_51
action_120 (19) = happyShift action_52
action_120 (20) = happyShift action_53
action_120 (21) = happyShift action_54
action_120 (22) = happyShift action_55
action_120 (23) = happyShift action_56
action_120 (24) = happyShift action_57
action_120 (25) = happyShift action_58
action_120 (26) = happyShift action_59
action_120 (27) = happyShift action_60
action_120 (28) = happyShift action_61
action_120 (29) = happyShift action_62
action_120 (30) = happyShift action_63
action_120 (50) = happyShift action_64
action_120 (51) = happyShift action_65
action_120 (52) = happyShift action_7
action_120 (5) = happyGoto action_47
action_120 (8) = happyGoto action_48
action_120 _ = happyReduce_31

action_121 (11) = happyShift action_3
action_121 (12) = happyShift action_4
action_121 (13) = happyShift action_5
action_121 (14) = happyShift action_6
action_121 (15) = happyShift action_11
action_121 (18) = happyShift action_12
action_121 (22) = happyShift action_13
action_121 (34) = happyShift action_14
action_121 (35) = happyShift action_15
action_121 (36) = happyShift action_16
action_121 (37) = happyShift action_17
action_121 (38) = happyShift action_18
action_121 (39) = happyShift action_19
action_121 (40) = happyShift action_20
action_121 (41) = happyShift action_21
action_121 (42) = happyShift action_22
action_121 (43) = happyShift action_23
action_121 (46) = happyShift action_24
action_121 (49) = happyShift action_25
action_121 (52) = happyShift action_7
action_121 (4) = happyGoto action_124
action_121 (5) = happyGoto action_9
action_121 (9) = happyGoto action_10
action_121 _ = happyFail

action_122 (11) = happyShift action_3
action_122 (12) = happyShift action_4
action_122 (13) = happyShift action_5
action_122 (14) = happyShift action_6
action_122 (15) = happyShift action_11
action_122 (18) = happyShift action_12
action_122 (22) = happyShift action_13
action_122 (34) = happyShift action_14
action_122 (35) = happyShift action_15
action_122 (36) = happyShift action_16
action_122 (37) = happyShift action_17
action_122 (38) = happyShift action_18
action_122 (39) = happyShift action_19
action_122 (40) = happyShift action_20
action_122 (41) = happyShift action_21
action_122 (42) = happyShift action_22
action_122 (43) = happyShift action_23
action_122 (46) = happyShift action_24
action_122 (49) = happyShift action_25
action_122 (52) = happyShift action_7
action_122 (4) = happyGoto action_123
action_122 (5) = happyGoto action_9
action_122 (9) = happyGoto action_10
action_122 _ = happyFail

action_123 (11) = happyShift action_3
action_123 (12) = happyShift action_4
action_123 (13) = happyShift action_5
action_123 (14) = happyShift action_6
action_123 (16) = happyShift action_49
action_123 (17) = happyShift action_50
action_123 (18) = happyShift action_51
action_123 (19) = happyShift action_52
action_123 (20) = happyShift action_53
action_123 (21) = happyShift action_54
action_123 (22) = happyShift action_55
action_123 (23) = happyShift action_56
action_123 (24) = happyShift action_57
action_123 (25) = happyShift action_58
action_123 (26) = happyShift action_59
action_123 (27) = happyShift action_60
action_123 (28) = happyShift action_61
action_123 (29) = happyShift action_62
action_123 (30) = happyShift action_63
action_123 (50) = happyShift action_64
action_123 (51) = happyShift action_65
action_123 (52) = happyShift action_7
action_123 (5) = happyGoto action_47
action_123 (8) = happyGoto action_48
action_123 _ = happyReduce_30

action_124 (11) = happyShift action_3
action_124 (12) = happyShift action_4
action_124 (13) = happyShift action_5
action_124 (14) = happyShift action_6
action_124 (16) = happyShift action_49
action_124 (17) = happyShift action_50
action_124 (18) = happyShift action_51
action_124 (19) = happyShift action_52
action_124 (20) = happyShift action_53
action_124 (21) = happyShift action_54
action_124 (22) = happyShift action_55
action_124 (23) = happyShift action_56
action_124 (24) = happyShift action_57
action_124 (25) = happyShift action_58
action_124 (26) = happyShift action_59
action_124 (27) = happyShift action_60
action_124 (28) = happyShift action_61
action_124 (29) = happyShift action_62
action_124 (30) = happyShift action_63
action_124 (50) = happyShift action_64
action_124 (51) = happyShift action_65
action_124 (52) = happyShift action_7
action_124 (5) = happyGoto action_47
action_124 (8) = happyGoto action_48
action_124 _ = happyReduce_45

action_125 (11) = happyShift action_3
action_125 (12) = happyShift action_4
action_125 (13) = happyShift action_5
action_125 (14) = happyShift action_6
action_125 (16) = happyShift action_49
action_125 (17) = happyShift action_50
action_125 (18) = happyShift action_51
action_125 (19) = happyShift action_52
action_125 (20) = happyShift action_53
action_125 (21) = happyShift action_54
action_125 (22) = happyShift action_55
action_125 (23) = happyShift action_56
action_125 (24) = happyShift action_57
action_125 (25) = happyShift action_58
action_125 (26) = happyShift action_59
action_125 (27) = happyShift action_60
action_125 (28) = happyShift action_61
action_125 (29) = happyShift action_62
action_125 (30) = happyShift action_63
action_125 (48) = happyShift action_129
action_125 (50) = happyShift action_64
action_125 (51) = happyShift action_65
action_125 (52) = happyShift action_7
action_125 (5) = happyGoto action_47
action_125 (8) = happyGoto action_48
action_125 _ = happyFail

action_126 (11) = happyShift action_3
action_126 (12) = happyShift action_4
action_126 (13) = happyShift action_5
action_126 (14) = happyShift action_6
action_126 (16) = happyShift action_49
action_126 (17) = happyShift action_50
action_126 (18) = happyShift action_51
action_126 (19) = happyShift action_52
action_126 (20) = happyShift action_53
action_126 (21) = happyShift action_54
action_126 (22) = happyShift action_55
action_126 (23) = happyShift action_56
action_126 (24) = happyShift action_57
action_126 (25) = happyShift action_58
action_126 (26) = happyShift action_59
action_126 (27) = happyShift action_60
action_126 (28) = happyShift action_61
action_126 (29) = happyShift action_62
action_126 (30) = happyShift action_63
action_126 (50) = happyShift action_64
action_126 (52) = happyShift action_7
action_126 (5) = happyGoto action_47
action_126 (8) = happyGoto action_48
action_126 _ = happyReduce_29

action_127 (11) = happyShift action_3
action_127 (12) = happyShift action_4
action_127 (13) = happyShift action_5
action_127 (14) = happyShift action_6
action_127 (15) = happyShift action_11
action_127 (18) = happyShift action_12
action_127 (22) = happyShift action_13
action_127 (34) = happyShift action_14
action_127 (35) = happyShift action_15
action_127 (36) = happyShift action_16
action_127 (37) = happyShift action_17
action_127 (38) = happyShift action_18
action_127 (39) = happyShift action_19
action_127 (40) = happyShift action_20
action_127 (41) = happyShift action_21
action_127 (42) = happyShift action_22
action_127 (43) = happyShift action_23
action_127 (46) = happyShift action_24
action_127 (49) = happyShift action_25
action_127 (52) = happyShift action_7
action_127 (4) = happyGoto action_128
action_127 (5) = happyGoto action_9
action_127 (9) = happyGoto action_10
action_127 _ = happyFail

action_128 (11) = happyShift action_3
action_128 (12) = happyShift action_4
action_128 (13) = happyShift action_5
action_128 (14) = happyShift action_6
action_128 (16) = happyShift action_49
action_128 (17) = happyShift action_50
action_128 (18) = happyShift action_51
action_128 (19) = happyShift action_52
action_128 (20) = happyShift action_53
action_128 (21) = happyShift action_54
action_128 (22) = happyShift action_55
action_128 (23) = happyShift action_56
action_128 (24) = happyShift action_57
action_128 (25) = happyShift action_58
action_128 (26) = happyShift action_59
action_128 (27) = happyShift action_60
action_128 (28) = happyShift action_61
action_128 (29) = happyShift action_62
action_128 (30) = happyShift action_63
action_128 (50) = happyShift action_64
action_128 (52) = happyShift action_7
action_128 (5) = happyGoto action_47
action_128 (8) = happyGoto action_48
action_128 _ = happyReduce_33

action_129 (11) = happyShift action_3
action_129 (12) = happyShift action_4
action_129 (13) = happyShift action_5
action_129 (14) = happyShift action_6
action_129 (15) = happyShift action_11
action_129 (18) = happyShift action_12
action_129 (22) = happyShift action_13
action_129 (34) = happyShift action_14
action_129 (35) = happyShift action_15
action_129 (36) = happyShift action_16
action_129 (37) = happyShift action_17
action_129 (38) = happyShift action_18
action_129 (39) = happyShift action_19
action_129 (40) = happyShift action_20
action_129 (41) = happyShift action_21
action_129 (42) = happyShift action_22
action_129 (43) = happyShift action_23
action_129 (46) = happyShift action_24
action_129 (49) = happyShift action_25
action_129 (52) = happyShift action_7
action_129 (4) = happyGoto action_130
action_129 (5) = happyGoto action_9
action_129 (9) = happyGoto action_10
action_129 _ = happyFail

action_130 (11) = happyShift action_3
action_130 (12) = happyShift action_4
action_130 (13) = happyShift action_5
action_130 (14) = happyShift action_6
action_130 (16) = happyShift action_49
action_130 (17) = happyShift action_50
action_130 (18) = happyShift action_51
action_130 (19) = happyShift action_52
action_130 (20) = happyShift action_53
action_130 (21) = happyShift action_54
action_130 (22) = happyShift action_55
action_130 (23) = happyShift action_56
action_130 (24) = happyShift action_57
action_130 (25) = happyShift action_58
action_130 (26) = happyShift action_59
action_130 (27) = happyShift action_60
action_130 (28) = happyShift action_61
action_130 (29) = happyShift action_62
action_130 (30) = happyShift action_63
action_130 (50) = happyShift action_64
action_130 (51) = happyShift action_65
action_130 (52) = happyShift action_7
action_130 (5) = happyGoto action_47
action_130 (8) = happyGoto action_48
action_130 _ = happyReduce_35

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
		 (S.AddP happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (sllOrMul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (sraOrDiv happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FAdd happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FSub happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FMul happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.FDiv happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Eq happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Not (S.Eq happy_var_1 happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Le happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Le happy_var_3 happy_var_1
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Not (S.Le happy_var_3 happy_var_1)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Not (S.Le happy_var_1 happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Eq happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Not (S.Le happy_var_3 happy_var_2)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Not (S.Le happy_var_2 (S.Float 0.0))
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Not (S.Le (S.Float 0.0) happy_var_2)
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Eq happy_var_2 (S.Float 0.0)
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Not (S.Eq happy_var_2 happy_var_3)
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Fabs happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happyMonadReduce 4 4 happyReduction_25
happyReduction_25 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newf <- (lift.lift) $ I.genNewId "lambda"
                                     ; newt <- (lift) T.genTypeVar
                                     ; return $ S.LetRec S.Fundef{S.name=(newf,newt), S.args=happy_var_2, S.body=happy_var_4} (S.Var newf)})
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Sqrt happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (negOrFneg happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  4 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.FNeg happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 6 4 happyReduction_29
happyReduction_29 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_30 = happyMonadReduce 6 4 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IDENT happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt <- (lift) T.genTypeVar
                                                     ; return $ S.Let (happy_var_2, newt) happy_var_4 happy_var_6})
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_31 = happyReduce 5 4 happyReduction_31
happyReduction_31 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.LetRec happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_2  4 happyReduction_32
happyReduction_32 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (S.App happy_var_1 happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 7 4 happyReduction_33
happyReduction_33 ((HappyAbsSyn4  happy_var_7) `HappyStk`
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

happyReduce_34 = happySpecReduce_1  4 happyReduction_34
happyReduction_34 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (S.Tuple happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happyReduce 8 4 happyReduction_35
happyReduction_35 ((HappyAbsSyn4  happy_var_8) `HappyStk`
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

happyReduce_36 = happyMonadReduce 3 4 happyReduction_36
happyReduction_36 ((HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt <- (lift) T.genTypeVar
                                     ; return $ S.Let ("_", newt) happy_var_1 happy_var_3 })
	) (\r -> happyReturn (HappyAbsSyn4 r))

happyReduce_37 = happySpecReduce_3  4 happyReduction_37
happyReduction_37 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (S.Array happy_var_2 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  5 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  5 happyReduction_39
happyReduction_39 _
	_
	 =  HappyAbsSyn4
		 (S.Unit
	)

happyReduce_40 = happySpecReduce_1  5 happyReduction_40
happyReduction_40 (HappyTerminal (BOOL happy_var_1))
	 =  HappyAbsSyn4
		 (S.Bool happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  5 happyReduction_41
happyReduction_41 (HappyTerminal (INT happy_var_1))
	 =  HappyAbsSyn4
		 (S.Int happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  5 happyReduction_42
happyReduction_42 (HappyTerminal (FLOAT happy_var_1))
	 =  HappyAbsSyn4
		 (S.Float happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  5 happyReduction_43
happyReduction_43 (HappyTerminal (IDENT happy_var_1))
	 =  HappyAbsSyn4
		 (S.Var happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happyReduce 5 5 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (S.Get happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_45 = happyMonadReduce 4 6 happyReduction_45
happyReduction_45 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt <- (lift) T.genTypeVar
                                     ; return $ S.Fundef (happy_var_1, newt) happy_var_2 happy_var_4 })
	) (\r -> happyReturn (HappyAbsSyn6 r))

happyReduce_46 = happyMonadReduce 2 7 happyReduction_46
happyReduction_46 (_ `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt <- (lift) T.genTypeVar
                                     ; return $ [("unit", newt)]})
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_47 = happyMonadReduce 2 7 happyReduction_47
happyReduction_47 ((HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt <- lift T.genTypeVar
                                     ; return $ (happy_var_1, newt) : happy_var_2 })
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_48 = happyMonadReduce 1 7 happyReduction_48
happyReduction_48 ((HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt <- lift T.genTypeVar
                                     ; return $ [(happy_var_1, newt)] })
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_49 = happySpecReduce_2  8 happyReduction_49
happyReduction_49 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  8 happyReduction_50
happyReduction_50 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  9 happyReduction_51
happyReduction_51 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  9 happyReduction_52
happyReduction_52 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1, happy_var_3]
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happyMonadReduce 3 10 happyReduction_53
happyReduction_53 ((HappyTerminal (IDENT happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt  <- lift T.genTypeVar
                             ; return $ happy_var_1 ++ [(happy_var_3, newt)] })
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyReduce_54 = happyMonadReduce 3 10 happyReduction_54
happyReduction_54 ((HappyTerminal (IDENT happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IDENT happy_var_1)) `HappyStk`
	happyRest) tk
	 = happyThen (( do{ newt1 <- lift T.genTypeVar
                             ; newt2 <- lift T.genTypeVar
                             ; return $ [(happy_var_1, newt1), (happy_var_3, newt2)]})
	) (\r -> happyReturn (HappyAbsSyn7 r))

happyNewToken action sts stk [] =
	action 54 54 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	INT happy_dollar_dollar -> cont 11;
	FLOAT happy_dollar_dollar -> cont 12;
	BOOL happy_dollar_dollar -> cont 13;
	IDENT happy_dollar_dollar -> cont 14;
	NOT -> cont 15;
	PLUS_PLUS -> cont 16;
	PLUS -> cont 17;
	MINUS -> cont 18;
	AST -> cont 19;
	SLASH -> cont 20;
	PLUS_DOT -> cont 21;
	MINUS_DOT -> cont 22;
	AST_DOT -> cont 23;
	SLASH_DOT -> cont 24;
	EQUAL -> cont 25;
	LESS_GREATER -> cont 26;
	LESS_EQUAL -> cont 27;
	GREATER_EQUAL -> cont 28;
	LESS -> cont 29;
	GREATER -> cont 30;
	DOT -> cont 31;
	LESS_MINUS -> cont 32;
	MINUS_GREATER -> cont 33;
	FUN -> cont 34;
	FEQUAL -> cont 35;
	FLESS -> cont 36;
	FISPOS -> cont 37;
	FISNEG -> cont 38;
	FISZERO -> cont 39;
	XOR -> cont 40;
	FABS -> cont 41;
	SQRT -> cont 42;
	IF -> cont 43;
	THEN -> cont 44;
	ELSE -> cont 45;
	LET -> cont 46;
	REC -> cont 47;
	IN -> cont 48;
	ARRAY -> cont 49;
	COMMA -> cont 50;
	SEMICOLON -> cont 51;
	LPAREN -> cont 52;
	RPAREN -> cont 53;
	_ -> happyError' (tk:tks)
	}

happyError_ 54 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => ParseMonad a -> (a -> ParseMonad b) -> ParseMonad b
happyThen = ((>>=))
happyReturn :: () => a -> ParseMonad a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> ParseMonad a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(L.Token)] -> ParseMonad a
happyError' = parseError

parser tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- parser :: [Token] -> ParseMonad S.T  
  
type ParseMonad = 
  ReaderT [L.AlexPosn] (T.TyStateT (I.IdStateT (Either String)))
  
parseError :: [L.Token] -> ParseMonad a
parseError toks = do{ poss <- ask
                    ; let pos = last $ take (length toks) (reverse poss)
                    ; throwError $ "parseError: "++(L.showPosn pos) }

scanAndParse :: String -> Either String (S.T, T.TypeN, I.Counter)
scanAndParse input = 
  do (poss, tokens) <- fmap unzip (L.mainLex input)
     case evalStateT (evalStateT (runReaderT (parser' tokens) poss) 0) 0 of
       Left  msg                -> throwError msg
       Right (exp, n, c)        -> return (exp, n, c)
  where parser' tokens = do exp   <- parser tokens
                            lastN <- lift get
                            lastC <- (lift.lift) get
                            return (exp, lastN, lastC)
       
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
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

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

{-# LINE 312 "templates/GenericTemplate.hs" #-}
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
