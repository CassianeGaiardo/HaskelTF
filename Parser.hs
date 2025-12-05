{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,274) ([6624,269,4,0,0,61440,65164,0,0,0,0,18040,67,128,0,0,15360,8611,26496,1076,36080,134,53662,49168,64307,7,0,0,0,39392,509,1024,32768,62575,7,0,40448,4305,13248,538,18040,67,26831,8,28672,0,1536,0,0,0,16,53662,16,0,30746,17222,52992,2152,0,0,41788,32895,64615,7,32,0,53248,0,0,0,0,59631,57359,3353,1,24,26496,13364,0,0,0,0,0,0,0,52992,26728,0,3328,0,416,0,0,32,1,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","true","false","if","then","else","'\\\\'","ident","':'","\"->\"","','","'{'","'}'","fst","snd","'+'","'*'","\"&&\"","\"||\"","'('","')'","TBool","TNum","%eof"]
        bit_start = st Prelude.* 29
        bit_end = (st Prelude.+ 1) Prelude.* 29
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..28]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (25) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_5
action_3 (9) = happyShift action_6
action_3 (12) = happyShift action_7
action_3 (13) = happyShift action_8
action_3 (17) = happyShift action_9
action_3 (19) = happyShift action_10
action_3 (20) = happyShift action_11
action_3 (21) = happyShift action_20
action_3 (22) = happyShift action_21
action_3 (23) = happyShift action_22
action_3 (24) = happyShift action_23
action_3 (25) = happyShift action_12
action_3 (29) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (9) = happyShift action_6
action_6 (12) = happyShift action_7
action_6 (13) = happyShift action_8
action_6 (17) = happyShift action_9
action_6 (19) = happyShift action_10
action_6 (20) = happyShift action_11
action_6 (25) = happyShift action_12
action_6 (4) = happyGoto action_18
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (13) = happyShift action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_4

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (12) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (19) = happyShift action_10
action_9 (20) = happyShift action_11
action_9 (25) = happyShift action_12
action_9 (4) = happyGoto action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (12) = happyShift action_7
action_10 (13) = happyShift action_8
action_10 (17) = happyShift action_9
action_10 (19) = happyShift action_10
action_10 (20) = happyShift action_11
action_10 (25) = happyShift action_12
action_10 (4) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (12) = happyShift action_7
action_11 (13) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (20) = happyShift action_11
action_11 (25) = happyShift action_12
action_11 (4) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (12) = happyShift action_7
action_12 (13) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (19) = happyShift action_10
action_12 (20) = happyShift action_11
action_12 (25) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (12) = happyShift action_7
action_13 (13) = happyShift action_8
action_13 (16) = happyShift action_31
action_13 (17) = happyShift action_9
action_13 (19) = happyShift action_10
action_13 (20) = happyShift action_11
action_13 (21) = happyShift action_20
action_13 (22) = happyShift action_21
action_13 (23) = happyShift action_22
action_13 (24) = happyShift action_23
action_13 (25) = happyShift action_12
action_13 (26) = happyShift action_32
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_6
action_14 (12) = happyShift action_7
action_14 (13) = happyShift action_8
action_14 (17) = happyShift action_9
action_14 (19) = happyShift action_10
action_14 (20) = happyShift action_11
action_14 (21) = happyShift action_20
action_14 (22) = happyShift action_21
action_14 (23) = happyShift action_22
action_14 (24) = happyShift action_23
action_14 (25) = happyShift action_12
action_14 (4) = happyGoto action_19
action_14 _ = happyReduce_15

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (9) = happyShift action_6
action_15 (12) = happyShift action_7
action_15 (13) = happyShift action_8
action_15 (17) = happyShift action_9
action_15 (19) = happyShift action_10
action_15 (20) = happyShift action_11
action_15 (21) = happyShift action_20
action_15 (22) = happyShift action_21
action_15 (23) = happyShift action_22
action_15 (24) = happyShift action_23
action_15 (25) = happyShift action_12
action_15 (4) = happyGoto action_19
action_15 _ = happyReduce_14

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (12) = happyShift action_7
action_16 (13) = happyShift action_8
action_16 (16) = happyShift action_30
action_16 (17) = happyShift action_9
action_16 (19) = happyShift action_10
action_16 (20) = happyShift action_11
action_16 (21) = happyShift action_20
action_16 (22) = happyShift action_21
action_16 (23) = happyShift action_22
action_16 (24) = happyShift action_23
action_16 (25) = happyShift action_12
action_16 (4) = happyGoto action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (14) = happyShift action_29
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (9) = happyShift action_6
action_18 (10) = happyShift action_28
action_18 (12) = happyShift action_7
action_18 (13) = happyShift action_8
action_18 (17) = happyShift action_9
action_18 (19) = happyShift action_10
action_18 (20) = happyShift action_11
action_18 (21) = happyShift action_20
action_18 (22) = happyShift action_21
action_18 (23) = happyShift action_22
action_18 (24) = happyShift action_23
action_18 (25) = happyShift action_12
action_18 (4) = happyGoto action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_6
action_19 (12) = happyShift action_7
action_19 (13) = happyShift action_8
action_19 (17) = happyShift action_9
action_19 (19) = happyShift action_10
action_19 (20) = happyShift action_11
action_19 (21) = happyShift action_20
action_19 (22) = happyShift action_21
action_19 (23) = happyShift action_22
action_19 (24) = happyShift action_23
action_19 (25) = happyShift action_12
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_16

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (12) = happyShift action_7
action_20 (13) = happyShift action_8
action_20 (17) = happyShift action_9
action_20 (19) = happyShift action_10
action_20 (20) = happyShift action_11
action_20 (25) = happyShift action_12
action_20 (4) = happyGoto action_27
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (9) = happyShift action_6
action_21 (12) = happyShift action_7
action_21 (13) = happyShift action_8
action_21 (17) = happyShift action_9
action_21 (19) = happyShift action_10
action_21 (20) = happyShift action_11
action_21 (25) = happyShift action_12
action_21 (4) = happyGoto action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (12) = happyShift action_7
action_22 (13) = happyShift action_8
action_22 (17) = happyShift action_9
action_22 (19) = happyShift action_10
action_22 (20) = happyShift action_11
action_22 (25) = happyShift action_12
action_22 (4) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (12) = happyShift action_7
action_23 (13) = happyShift action_8
action_23 (17) = happyShift action_9
action_23 (19) = happyShift action_10
action_23 (20) = happyShift action_11
action_23 (25) = happyShift action_12
action_23 (4) = happyGoto action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (12) = happyShift action_7
action_24 (13) = happyShift action_8
action_24 (17) = happyShift action_9
action_24 (19) = happyShift action_10
action_24 (20) = happyShift action_11
action_24 (21) = happyShift action_20
action_24 (22) = happyShift action_21
action_24 (23) = happyShift action_22
action_24 (25) = happyShift action_12
action_24 (4) = happyGoto action_19
action_24 _ = happyReduce_8

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (12) = happyShift action_7
action_25 (13) = happyShift action_8
action_25 (17) = happyShift action_9
action_25 (19) = happyShift action_10
action_25 (20) = happyShift action_11
action_25 (21) = happyShift action_20
action_25 (22) = happyShift action_21
action_25 (25) = happyShift action_12
action_25 (4) = happyGoto action_19
action_25 _ = happyReduce_7

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (12) = happyShift action_7
action_26 (13) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (19) = happyShift action_10
action_26 (20) = happyShift action_11
action_26 (25) = happyShift action_12
action_26 (4) = happyGoto action_19
action_26 _ = happyReduce_6

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (12) = happyShift action_7
action_27 (13) = happyShift action_8
action_27 (17) = happyShift action_9
action_27 (19) = happyShift action_10
action_27 (20) = happyShift action_11
action_27 (22) = happyShift action_21
action_27 (25) = happyShift action_12
action_27 (4) = happyGoto action_19
action_27 _ = happyReduce_5

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (9) = happyShift action_6
action_28 (12) = happyShift action_7
action_28 (13) = happyShift action_8
action_28 (17) = happyShift action_9
action_28 (19) = happyShift action_10
action_28 (20) = happyShift action_11
action_28 (25) = happyShift action_12
action_28 (4) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (25) = happyShift action_36
action_29 (27) = happyShift action_37
action_29 (28) = happyShift action_38
action_29 (5) = happyGoto action_35
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (12) = happyShift action_7
action_30 (13) = happyShift action_8
action_30 (17) = happyShift action_9
action_30 (19) = happyShift action_10
action_30 (20) = happyShift action_11
action_30 (25) = happyShift action_12
action_30 (4) = happyGoto action_34
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (12) = happyShift action_7
action_31 (13) = happyShift action_8
action_31 (17) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (20) = happyShift action_11
action_31 (25) = happyShift action_12
action_31 (4) = happyGoto action_33
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_9

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (12) = happyShift action_7
action_33 (13) = happyShift action_8
action_33 (17) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (21) = happyShift action_20
action_33 (22) = happyShift action_21
action_33 (23) = happyShift action_22
action_33 (24) = happyShift action_23
action_33 (25) = happyShift action_12
action_33 (26) = happyShift action_44
action_33 (4) = happyGoto action_19
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (12) = happyShift action_7
action_34 (13) = happyShift action_8
action_34 (17) = happyShift action_9
action_34 (18) = happyShift action_43
action_34 (19) = happyShift action_10
action_34 (20) = happyShift action_11
action_34 (21) = happyShift action_20
action_34 (22) = happyShift action_21
action_34 (23) = happyShift action_22
action_34 (24) = happyShift action_23
action_34 (25) = happyShift action_12
action_34 (4) = happyGoto action_19
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (25) = happyShift action_36
action_36 (27) = happyShift action_37
action_36 (28) = happyShift action_38
action_36 (5) = happyGoto action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_17

action_38 _ = happyReduce_18

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_6
action_39 (11) = happyShift action_40
action_39 (12) = happyShift action_7
action_39 (13) = happyShift action_8
action_39 (17) = happyShift action_9
action_39 (19) = happyShift action_10
action_39 (20) = happyShift action_11
action_39 (21) = happyShift action_20
action_39 (22) = happyShift action_21
action_39 (23) = happyShift action_22
action_39 (24) = happyShift action_23
action_39 (25) = happyShift action_12
action_39 (4) = happyGoto action_19
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_6
action_40 (12) = happyShift action_7
action_40 (13) = happyShift action_8
action_40 (17) = happyShift action_9
action_40 (19) = happyShift action_10
action_40 (20) = happyShift action_11
action_40 (25) = happyShift action_12
action_40 (4) = happyGoto action_50
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_48
action_41 (16) = happyShift action_49
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (9) = happyShift action_6
action_42 (12) = happyShift action_7
action_42 (13) = happyShift action_8
action_42 (17) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (25) = happyShift action_47
action_42 (27) = happyShift action_37
action_42 (28) = happyShift action_38
action_42 (4) = happyGoto action_45
action_42 (5) = happyGoto action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_13

action_44 _ = happyReduce_10

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_4
action_45 (8) = happyShift action_5
action_45 (9) = happyShift action_6
action_45 (12) = happyShift action_7
action_45 (13) = happyShift action_8
action_45 (17) = happyShift action_9
action_45 (19) = happyShift action_10
action_45 (20) = happyShift action_11
action_45 (21) = happyShift action_20
action_45 (22) = happyShift action_21
action_45 (23) = happyShift action_22
action_45 (24) = happyShift action_23
action_45 (25) = happyShift action_12
action_45 (4) = happyGoto action_19
action_45 _ = happyReduce_12

action_46 (15) = happyShift action_48
action_46 _ = happyReduce_20

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_5
action_47 (9) = happyShift action_6
action_47 (12) = happyShift action_7
action_47 (13) = happyShift action_8
action_47 (17) = happyShift action_9
action_47 (19) = happyShift action_10
action_47 (20) = happyShift action_11
action_47 (25) = happyShift action_47
action_47 (27) = happyShift action_37
action_47 (28) = happyShift action_38
action_47 (4) = happyGoto action_13
action_47 (5) = happyGoto action_41
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (25) = happyShift action_36
action_48 (27) = happyShift action_37
action_48 (28) = happyShift action_38
action_48 (5) = happyGoto action_46
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (25) = happyShift action_36
action_49 (27) = happyShift action_37
action_49 (28) = happyShift action_38
action_49 (5) = happyGoto action_51
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_4
action_50 (8) = happyShift action_5
action_50 (9) = happyShift action_6
action_50 (12) = happyShift action_7
action_50 (13) = happyShift action_8
action_50 (17) = happyShift action_9
action_50 (19) = happyShift action_10
action_50 (20) = happyShift action_11
action_50 (21) = happyShift action_20
action_50 (22) = happyShift action_21
action_50 (23) = happyShift action_22
action_50 (24) = happyShift action_23
action_50 (25) = happyShift action_12
action_50 (4) = happyGoto action_19
action_50 _ = happyReduce_11

action_51 (15) = happyShift action_48
action_51 (26) = happyShift action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_19

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 5 4 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Tuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 5 4 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Tuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Fst happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Snd happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_19 = happyReduce 5 5 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TTuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenTrue -> cont 7;
	TokenFalse -> cont 8;
	TokenIf -> cont 9;
	TokenThen -> cont 10;
	TokenElse -> cont 11;
	TokenLambda -> cont 12;
	TokenIdent happy_dollar_dollar -> cont 13;
	TokenColon -> cont 14;
	TokenArrow -> cont 15;
	TokenV -> cont 16;
	TokenLTupla -> cont 17;
	TokenRTupla -> cont 18;
	TokenFst -> cont 19;
	TokenSnd -> cont 20;
	TokenPlus -> cont 21;
	TokenTimes -> cont 22;
	TokenAnd -> cont 23;
	TokenOr -> cont 24;
	TokenLParen -> cont 25;
	TokenRParen -> cont 26;
	TokenTBool -> cont 27;
	TokenTNum -> cont 28;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









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
