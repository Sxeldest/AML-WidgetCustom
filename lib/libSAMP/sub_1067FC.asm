; =========================================================
; Game Engine Function: sub_1067FC
; Address            : 0x1067FC - 0x10692E
; =========================================================

1067FC:  PUSH            {R4,R5,R7,LR}
1067FE:  ADD             R7, SP, #8
106800:  SUB             SP, SP, #0x28
106802:  MOV             R4, R0
106804:  BL              sub_F8C70
106808:  CMP             R0, #0
10680A:  BEQ.W           loc_10692A
10680E:  LDRB.W          R0, [R4,#0x60]
106812:  CMP             R0, #0
106814:  BNE.W           loc_10692A
106818:  LDR             R0, [R4,#0x5C]
10681A:  CBZ             R0, loc_106830
10681C:  MOV             R0, R4
10681E:  BL              sub_F8C70
106822:  CBZ             R0, loc_106830
106824:  LDR             R0, [R4,#0x5C]
106826:  LDR.W           R0, [R0,#0x440]
10682A:  LDR             R0, [R0,#0x10]
10682C:  CMP             R0, #0
10682E:  BNE             loc_10692A
106830:  LDRB.W          R0, [R4,#0x3B]
106834:  SUBS            R1, R0, #1
106836:  CMP             R1, #3
106838:  BCS             loc_106848
10683A:  MOV             R0, R4
10683C:  BL              sub_10609E
106840:  CBZ             R0, loc_1068B6
106842:  LDR             R1, =(aDnkStndmLoop - 0x106848); "dnk_stndM_loop" ...
106844:  ADD             R1, PC; "dnk_stndM_loop"
106846:  B               loc_1068C2
106848:  CMP             R0, #4
10684A:  BNE             loc_10692A
10684C:  MOVW            R0, #0xE000
106850:  LDR             R1, =(aSmkcigPrtl - 0x106872); "smkcig_prtl" ...
106852:  MOVT            R0, #0x4085
106856:  LDR             R2, =(aGangs - 0x106878); "GANGS" ...
106858:  STR             R0, [SP,#0x30+var_C]
10685A:  MOVS            R0, #0
10685C:  SUB.W           R3, R7, #-var_12
106860:  STR             R0, [SP,#0x30+var_10]
106862:  STRB.W          R0, [R7,#var_11]
106866:  ADD.W           LR, SP, #0x30+var_14
10686A:  STRB.W          R0, [R7,#var_12]
10686E:  ADD             R1, PC; "smkcig_prtl"
106870:  STRB.W          R0, [R7,#var_13]
106874:  ADD             R2, PC; "GANGS"
106876:  STRB.W          R0, [SP,#0x30+var_14]
10687A:  MOVW            R0, #0xABE
10687E:  STR             R0, [SP,#0x30+var_18]
106880:  SUB.W           R0, R7, #-var_13
106884:  SUB.W           R5, R7, #-var_11
106888:  STRD.W          R5, R3, [SP,#0x30+var_30]
10688C:  ADD             R3, SP, #0x30+var_10
10688E:  STRD.W          R0, LR, [SP,#0x30+var_28]
106892:  MOV             R0, R4
106894:  ADD.W           R12, SP, #0x30+var_18
106898:  STR.W           R12, [SP,#0x30+var_20]
10689C:  BL              sub_104F28
1068A0:  MOV             R0, R4
1068A2:  BL              sub_1043B8
1068A6:  MOV             R0, R4
1068A8:  MOVS            R1, #0
1068AA:  MOVS            R2, #0
1068AC:  ADD             SP, SP, #0x28 ; '('
1068AE:  POP.W           {R4,R5,R7,LR}
1068B2:  B.W             sub_10479C
1068B6:  MOV             R0, R4
1068B8:  BL              sub_106070
1068BC:  CBZ             R0, loc_106910
1068BE:  LDR             R1, =(aDnkStndfLoop - 0x1068C4); "dnk_stndF_loop" ...
1068C0:  ADD             R1, PC; "dnk_stndF_loop"
1068C2:  MOVS            R0, #0
1068C4:  LDR             R2, =(aBar - 0x1068D8); "BAR" ...
1068C6:  MOVT            R0, #0x4010
1068CA:  SUB.W           R3, R7, #-var_11
1068CE:  STR             R0, [SP,#0x30+var_C]
1068D0:  MOVS            R0, #0
1068D2:  STR             R0, [SP,#0x30+var_10]
1068D4:  ADD             R2, PC; "BAR"
1068D6:  STRB.W          R0, [R7,#var_11]
1068DA:  ADD.W           LR, SP, #0x30+var_14
1068DE:  STRB.W          R0, [R7,#var_12]
1068E2:  ADD.W           R12, SP, #0x30+var_18
1068E6:  STRB.W          R0, [R7,#var_13]
1068EA:  SUB.W           R5, R7, #-var_13
1068EE:  STRB.W          R0, [SP,#0x30+var_14]
1068F2:  MOV.W           R0, #0xFFFFFFFF
1068F6:  STR             R0, [SP,#0x30+var_18]
1068F8:  SUB.W           R0, R7, #-var_12
1068FC:  STRD.W          R5, LR, [SP,#0x30+var_28]
106900:  STRD.W          R3, R0, [SP,#0x30+var_30]
106904:  ADD             R3, SP, #0x30+var_10
106906:  MOV             R0, R4
106908:  STR.W           R12, [SP,#0x30+var_20]
10690C:  BL              sub_104F28
106910:  LDRB.W          R0, [R4,#0x3B]
106914:  CMP             R0, #3
106916:  BEQ             loc_10692A
106918:  LDR             R0, [R4,#0x48]
10691A:  MOVW            R1, #0xC350
10691E:  ADDW            R0, R0, #0x4E2
106922:  CMP             R0, R1
106924:  IT CC
106926:  MOVCC           R1, R0
106928:  STR             R1, [R4,#0x48]
10692A:  ADD             SP, SP, #0x28 ; '('
10692C:  POP             {R4,R5,R7,PC}
