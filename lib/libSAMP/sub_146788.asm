; =========================================================
; Game Engine Function: sub_146788
; Address            : 0x146788 - 0x146944
; =========================================================

146788:  PUSH            {R4-R7,LR}
14678A:  ADD             R7, SP, #0xC
14678C:  PUSH.W          {R8,R9,R11}
146790:  SUB             SP, SP, #0x160; float
146792:  LDRD.W          R1, R0, [R0]; src
146796:  MOVS            R3, #0
146798:  ASRS            R2, R0, #0x1F
14679A:  ADD.W           R0, R0, R2,LSR#29
14679E:  MOVS            R2, #1
1467A0:  ADD.W           R2, R2, R0,ASR#3; size
1467A4:  ADD             R0, SP, #0x178+var_12F+3; int
1467A6:  BL              sub_17D4F2
1467AA:  LDR             R1, =(off_23496C - 0x1467B0)
1467AC:  ADD             R1, PC; off_23496C
1467AE:  LDR             R1, [R1]; dword_23DEF4
1467B0:  LDR             R1, [R1]
1467B2:  LDR.W           R1, [R1,#0x3B0]
1467B6:  LDR.W           R9, [R1]
1467BA:  ADD.W           R1, SP, #0x178+var_12F+1; int
1467BE:  MOVS            R2, #0x10
1467C0:  MOVS            R3, #1
1467C2:  BL              sub_17D786
1467C6:  ADD             R0, SP, #0x178+var_12F+3; int
1467C8:  ADD.W           R1, SP, #0x178+var_12F; int
1467CC:  MOVS            R2, #8
1467CE:  MOVS            R3, #1
1467D0:  BL              sub_17D786
1467D4:  ADD             R0, SP, #0x178+var_12F+3; int
1467D6:  ADD             R1, SP, #0x178+var_134; int
1467D8:  MOVS            R2, #0x20 ; ' '
1467DA:  MOVS            R3, #1
1467DC:  BL              sub_17D786
1467E0:  ADD             R5, SP, #0x178+var_140
1467E2:  ADD             R0, SP, #0x178+var_12F+3; int
1467E4:  MOVS            R2, #0x20 ; ' '
1467E6:  MOVS            R3, #1
1467E8:  MOV             R1, R5; int
1467EA:  BL              sub_17D786
1467EE:  ADDS            R1, R5, #4; int
1467F0:  ADD             R0, SP, #0x178+var_12F+3; int
1467F2:  MOVS            R2, #0x20 ; ' '
1467F4:  MOVS            R3, #1
1467F6:  BL              sub_17D786
1467FA:  ADD.W           R1, R5, #8; int
1467FE:  ADD             R0, SP, #0x178+var_12F+3; int
146800:  MOVS            R2, #0x20 ; ' '
146802:  MOVS            R3, #1
146804:  BL              sub_17D786
146808:  ADD             R0, SP, #0x178+var_12F+3; int
14680A:  ADD             R1, SP, #0x178+var_144; int
14680C:  MOVS            R2, #0x20 ; ' '
14680E:  MOVS            R3, #1
146810:  BL              sub_17D786
146814:  ADD             R0, SP, #0x178+var_12F+3; int
146816:  ADD             R1, SP, #0x178+var_148; int
146818:  MOVS            R2, #0x20 ; ' '
14681A:  MOVS            R3, #1
14681C:  BL              sub_17D786
146820:  ADD             R0, SP, #0x178+var_12F+3; int
146822:  ADD.W           R1, SP, #0x178+var_149; int
146826:  MOVS            R2, #8
146828:  MOVS            R3, #1
14682A:  BL              sub_17D786
14682E:  ADD             R5, SP, #0x178+dest
146830:  ADD             R0, SP, #0x178+var_12F+3; int
146832:  MOVS            R2, #0x16
146834:  MOV             R1, R5; dest
146836:  BL              sub_17D744
14683A:  CMP.W           R9, #0
14683E:  BEQ             loc_146936
146840:  LDRH.W          R0, [SP,#0x178+var_12F+1]
146844:  CMP.W           R0, #0x3EC
146848:  BHI             loc_146936
14684A:  ADD.W           R1, R9, R0
14684E:  LDRB.W          R1, [R1,#0xFB4]
146852:  CMP             R1, #0
146854:  BEQ             loc_146936
146856:  ADD.W           R0, R9, R0,LSL#2
14685A:  LDR             R0, [R0,#4]
14685C:  CMP             R0, #0
14685E:  BEQ             loc_146936
146860:  LDR.W           R8, [R0]
146864:  CMP.W           R8, #0
146868:  BEQ             loc_146936
14686A:  LDRB.W          R1, [SP,#0x178+var_12F]; int
14686E:  LDRD.W          R3, R0, [SP,#0x178+var_148]
146872:  LDR             R2, [SP,#0x178+var_134]; int
146874:  LDRB.W          R6, [SP,#0x178+var_149]
146878:  STMEA.W         SP, {R0,R3,R6}
14687C:  ADD             R3, SP, #0x178+var_140; int
14687E:  MOV             R0, R8; int
146880:  BL              sub_14A500
146884:  CBZ             R0, loc_1468F6
146886:  LDR.W           R6, [R8,#0x128]
14688A:  CBZ             R6, loc_1468A0
14688C:  MOVS            R4, #0
14688E:  LDRH.W          R2, [R5,R4,LSL#1]
146892:  MOV             R0, R6
146894:  MOV             R1, R4
146896:  BL              sub_105474
14689A:  ADDS            R4, #1
14689C:  CMP             R4, #0xB
14689E:  BNE             loc_14688E
1468A0:  LDRB.W          R0, [SP,#0x178+var_12F]
1468A4:  CMP             R0, #0xFF
1468A6:  IT NE
1468A8:  STRBNE.W        R0, [R8,#0x12]
1468AC:  LDRH.W          R1, [SP,#0x178+var_12F+1]
1468B0:  MOV             R0, R9
1468B2:  BL              sub_148EBA
1468B6:  CLZ.W           R1, R6
1468BA:  EOR.W           R0, R0, #1
1468BE:  LSRS            R1, R1, #5
1468C0:  ORRS            R0, R1
1468C2:  BNE             loc_1468D6
1468C4:  MOVS            R0, #0
1468C6:  MOVS            R1, #0
1468C8:  STRD.W          R0, R0, [SP,#0x178+var_178]
1468CC:  MOV             R0, R6
1468CE:  MOVS            R2, #1
1468D0:  MOVS            R3, #1
1468D2:  BL              sub_104A7C
1468D6:  MOVW            R0, #0x17B4
1468DA:  LDRH.W          R1, [SP,#0x178+var_12F+1]
1468DE:  ADD             R0, R9
1468E0:  LDRD.W          R3, R2, [R0]
1468E4:  CMP             R3, R2
1468E6:  BEQ             loc_14691C
1468E8:  LDR             R6, [R3]
1468EA:  CMP             R6, R1
1468EC:  BEQ             loc_14691C
1468EE:  ADDS            R3, #4
1468F0:  CMP             R3, R2
1468F2:  BNE             loc_1468E8
1468F4:  B               loc_146920
1468F6:  LDR             R0, =(off_234A24 - 0x1468FC)
1468F8:  ADD             R0, PC; off_234A24
1468FA:  LDR             R0, [R0]; dword_23DEEC
1468FC:  LDR             R0, [R0]
1468FE:  CBZ             R0, loc_146936
146900:  LDR             R4, [R0,#0x60]
146902:  LDR             R1, =(unk_84129 - 0x146908)
146904:  ADD             R1, PC; unk_84129 ; s
146906:  ADD             R0, SP, #0x178+var_168; int
146908:  MOVS            R2, #0x51 ; 'Q'
14690A:  BL              sub_F1E90
14690E:  LDR             R1, [SP,#0x178+var_168]
146910:  LDRH.W          R2, [SP,#0x178+var_12F+1]
146914:  MOV             R0, R4
146916:  BL              sub_12D5E8
14691A:  B               loc_146936
14691C:  CMP             R3, R2
14691E:  BNE             loc_146936
146920:  LDR             R3, [R0,#8]
146922:  STR             R1, [SP,#0x178+var_168]
146924:  CMP             R2, R3
146926:  BCS             loc_146930
146928:  STR.W           R1, [R2],#4
14692C:  STR             R2, [R0,#4]
14692E:  B               loc_146936
146930:  ADD             R1, SP, #0x178+var_168
146932:  BL              sub_147CA8
146936:  ADD             R0, SP, #0x178+var_12F+3
146938:  BL              sub_17D542
14693C:  ADD             SP, SP, #0x160
14693E:  POP.W           {R8,R9,R11}
146942:  POP             {R4-R7,PC}
