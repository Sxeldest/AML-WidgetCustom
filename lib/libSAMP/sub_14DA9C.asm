; =========================================================
; Game Engine Function: sub_14DA9C
; Address            : 0x14DA9C - 0x14DB34
; =========================================================

14DA9C:  PUSH            {R4,R6,R7,LR}
14DA9E:  ADD             R7, SP, #8
14DAA0:  SUB             SP, SP, #0x120
14DAA2:  LDRD.W          R1, R0, [R0]; src
14DAA6:  MOVS            R3, #0
14DAA8:  ASRS            R2, R0, #0x1F
14DAAA:  ADD.W           R0, R0, R2,LSR#29
14DAAE:  MOVS            R2, #1
14DAB0:  ADD.W           R2, R2, R0,ASR#3; size
14DAB4:  MOV             R0, SP; int
14DAB6:  BL              sub_17D4F2
14DABA:  ADD             R4, SP, #0x128+var_14
14DABC:  MOVS            R2, #0x20 ; ' '
14DABE:  MOVS            R3, #1
14DAC0:  MOV             R1, R4; int
14DAC2:  BL              sub_17D786
14DAC6:  ADDS            R1, R4, #4; int
14DAC8:  MOV             R0, SP; int
14DACA:  MOVS            R2, #0x20 ; ' '
14DACC:  MOVS            R3, #1
14DACE:  BL              sub_17D786
14DAD2:  ADD.W           R1, R4, #8; int
14DAD6:  MOV             R0, SP; int
14DAD8:  MOVS            R2, #0x20 ; ' '
14DADA:  MOVS            R3, #1
14DADC:  BL              sub_17D786
14DAE0:  LDR             R0, =(off_23496C - 0x14DAE6)
14DAE2:  ADD             R0, PC; off_23496C
14DAE4:  LDR             R0, [R0]; dword_23DEF4
14DAE6:  LDR             R0, [R0]
14DAE8:  LDR.W           R0, [R0,#0x3B0]
14DAEC:  LDR             R0, [R0]
14DAEE:  CBZ             R0, loc_14DB2A
14DAF0:  MOVW            R1, #0x13BC
14DAF4:  LDR             R4, [R0,R1]
14DAF6:  CBZ             R4, loc_14DB2A
14DAF8:  LDR             R0, =(off_234970 - 0x14DB00)
14DAFA:  ADD             R3, SP, #0x128+var_14
14DAFC:  ADD             R0, PC; off_234970
14DAFE:  LDM             R3, {R1-R3}
14DB00:  LDR             R0, [R0]; dword_23DEF0
14DB02:  LDR             R0, [R0]
14DB04:  BL              sub_F9ED4
14DB08:  VMOV.F32        S2, #1.5
14DB0C:  VMOV            S0, R0
14DB10:  VADD.F32        S0, S0, S2
14DB14:  VSTR            S0, [SP,#0x128+var_C]
14DB18:  MOV             R0, R4
14DB1A:  BL              sub_141418
14DB1E:  LDR             R0, [R4,#0x1C]
14DB20:  ADD             R3, SP, #0x128+var_14
14DB22:  LDM             R3, {R1-R3}
14DB24:  LDR             R4, [R0]
14DB26:  LDR             R4, [R4,#0x10]
14DB28:  BLX             R4
14DB2A:  MOV             R0, SP
14DB2C:  BL              sub_17D542
14DB30:  ADD             SP, SP, #0x120
14DB32:  POP             {R4,R6,R7,PC}
