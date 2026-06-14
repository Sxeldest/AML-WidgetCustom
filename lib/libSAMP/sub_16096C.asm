; =========================================================
; Game Engine Function: sub_16096C
; Address            : 0x16096C - 0x160A02
; =========================================================

16096C:  PUSH            {R4-R7,LR}
16096E:  ADD             R7, SP, #0xC
160970:  PUSH.W          {R8,R9,R11}
160974:  SUB             SP, SP, #0x40
160976:  MOV             R8, R0
160978:  ADD             R0, SP, #0x58+var_34
16097A:  MOV             R6, R3
16097C:  MOV             R5, R2
16097E:  MOV             R9, R1
160980:  BL              sub_F06B2
160984:  BL              sub_F0734
160988:  LDRB            R2, [R0]
16098A:  MOV             R4, R0
16098C:  LDRD.W          R1, R12, [R7,#arg_0]
160990:  LSLS            R2, R2, #0x1F
160992:  BNE             loc_16099A
160994:  MOVS            R2, #0
160996:  STRH            R2, [R4]
160998:  B               loc_1609AA
16099A:  LDR             R2, [R4,#8]
16099C:  MOVS            R3, #0
16099E:  STRB            R3, [R2]
1609A0:  LDRB            R0, [R4]
1609A2:  LDR             R2, [R4]
1609A4:  STR             R3, [R4,#4]
1609A6:  LSLS            R0, R0, #0x1F
1609A8:  BNE             loc_1609AE
1609AA:  MOVS            R2, #9
1609AC:  B               loc_1609B4
1609AE:  SUBS            R0, R2, #2
1609B0:  BIC.W           R2, R0, #1
1609B4:  LDR             R1, [R1]
1609B6:  MOVS            R0, #0
1609B8:  LDR.W           R3, [R12]
1609BC:  STR             R0, [SP,#0x58+var_1C]
1609BE:  STR             R6, [SP,#0x58+var_30]
1609C0:  STR             R3, [SP,#0x58+var_20]
1609C2:  STR             R1, [SP,#0x58+var_28]
1609C4:  MOV.W           R3, #0x1CC
1609C8:  ADD             R1, SP, #0x58+var_30
1609CA:  STRD.W          R3, R0, [SP,#0x58+var_50]
1609CE:  MOV             R3, R9
1609D0:  STRD.W          R1, R0, [SP,#0x58+var_48]
1609D4:  ADD             R0, SP, #0x58+var_3C
1609D6:  MOV             R1, R4
1609D8:  STR             R5, [SP,#0x58+var_58]
1609DA:  BL              sub_DCA40
1609DE:  LDRB            R0, [R4]
1609E0:  LDRD.W          R2, R1, [R4,#4]
1609E4:  ANDS.W          R3, R0, #1
1609E8:  ITT EQ
1609EA:  ADDEQ           R1, R4, #1; text
1609EC:  LSREQ           R2, R0, #1
1609EE:  MOV             R0, R8; int
1609F0:  BL              sub_ED4F8
1609F4:  ADD             R0, SP, #0x58+var_34
1609F6:  BL              sub_F0720
1609FA:  ADD             SP, SP, #0x40 ; '@'
1609FC:  POP.W           {R8,R9,R11}
160A00:  POP             {R4-R7,PC}
