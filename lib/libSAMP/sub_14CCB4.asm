; =========================================================
; Game Engine Function: sub_14CCB4
; Address            : 0x14CCB4 - 0x14CD2C
; =========================================================

14CCB4:  PUSH            {R4,R6,R7,LR}
14CCB6:  ADD             R7, SP, #8
14CCB8:  SUB             SP, SP, #0x118
14CCBA:  LDRD.W          R1, R0, [R0]; src
14CCBE:  MOVS            R4, #0
14CCC0:  ASRS            R2, R0, #0x1F
14CCC2:  MOVS            R3, #0
14CCC4:  ADD.W           R0, R0, R2,LSR#29
14CCC8:  MOVS            R2, #1
14CCCA:  STR             R4, [SP,#0x120+var_C]
14CCCC:  ADD.W           R2, R2, R0,ASR#3; size
14CCD0:  MOV             R0, SP; int
14CCD2:  BL              sub_17D4F2
14CCD6:  LDR             R1, [SP,#0x120+var_120]
14CCD8:  LDR             R0, [SP,#0x120+var_118]
14CCDA:  CMP             R0, R1
14CCDC:  BGE             loc_14CCF4
14CCDE:  LDR             R1, [SP,#0x120+var_114]
14CCE0:  ASRS            R2, R0, #3
14CCE2:  LDRB            R1, [R1,R2]
14CCE4:  ADDS            R2, R0, #1
14CCE6:  AND.W           R0, R0, #7
14CCEA:  STR             R2, [SP,#0x120+var_118]
14CCEC:  LSL.W           R0, R1, R0
14CCF0:  UXTB            R0, R0
14CCF2:  LSRS            R4, R0, #7
14CCF4:  ADD             R1, SP, #0x120+var_C; int
14CCF6:  MOV             R0, SP; int
14CCF8:  MOVS            R2, #0x20 ; ' '
14CCFA:  MOVS            R3, #1
14CCFC:  BL              sub_17D786
14CD00:  LDR             R0, =(off_23496C - 0x14CD06)
14CD02:  ADD             R0, PC; off_23496C
14CD04:  LDR             R0, [R0]; dword_23DEF4
14CD06:  LDR             R0, [R0]
14CD08:  LDR.W           R0, [R0,#0x3B0]
14CD0C:  LDR             R0, [R0,#0x18]
14CD0E:  CBZ             R4, loc_14CD1A
14CD10:  LDR             R2, [SP,#0x120+var_C]
14CD12:  MOVS            R1, #1
14CD14:  BL              sub_14F47C
14CD18:  B               loc_14CD22
14CD1A:  MOVS            R1, #0
14CD1C:  MOVS            R2, #0
14CD1E:  BL              sub_14F47C
14CD22:  MOV             R0, SP
14CD24:  BL              sub_17D542
14CD28:  ADD             SP, SP, #0x118
14CD2A:  POP             {R4,R6,R7,PC}
