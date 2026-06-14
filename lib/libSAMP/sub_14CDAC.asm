; =========================================================
; Game Engine Function: sub_14CDAC
; Address            : 0x14CDAC - 0x14CE1C
; =========================================================

14CDAC:  PUSH            {R4,R5,R7,LR}
14CDAE:  ADD             R7, SP, #8
14CDB0:  SUB             SP, SP, #0x120
14CDB2:  LDRD.W          R1, R0, [R0]; src
14CDB6:  MOVS            R3, #0
14CDB8:  ASRS            R2, R0, #0x1F
14CDBA:  ADD.W           R0, R0, R2,LSR#29
14CDBE:  MOVS            R2, #1
14CDC0:  ADD.W           R2, R2, R0,ASR#3; size
14CDC4:  ADD             R0, SP, #0x128+var_124; int
14CDC6:  BL              sub_17D4F2
14CDCA:  SUB.W           R1, R7, #-var_A; int
14CDCE:  MOVS            R2, #0x10
14CDD0:  MOVS            R3, #1
14CDD2:  BL              sub_17D786
14CDD6:  ADD             R0, SP, #0x128+var_124; int
14CDD8:  ADD             R1, SP, #0x128+var_10; int
14CDDA:  MOVS            R2, #0x20 ; ' '
14CDDC:  MOVS            R3, #1
14CDDE:  BL              sub_17D786
14CDE2:  LDR             R0, =(off_23496C - 0x14CDE8)
14CDE4:  ADD             R0, PC; off_23496C
14CDE6:  LDR             R0, [R0]; dword_23DEF4
14CDE8:  LDR             R0, [R0]
14CDEA:  LDR.W           R0, [R0,#0x3B0]
14CDEE:  LDR             R4, [R0,#4]
14CDF0:  CBZ             R4, loc_14CE12
14CDF2:  LDRH.W          R5, [R7,#var_A]
14CDF6:  LSRS            R0, R5, #4
14CDF8:  CMP             R0, #0x7C ; '|'
14CDFA:  BHI             loc_14CE12
14CDFC:  MOV             R0, R4
14CDFE:  MOV             R1, R5
14CE00:  BL              sub_F2396
14CE04:  CBZ             R0, loc_14CE12
14CE06:  LDR.W           R0, [R4,R5,LSL#2]
14CE0A:  CBZ             R0, loc_14CE12
14CE0C:  LDR             R1, [SP,#0x128+var_10]
14CE0E:  BL              sub_109AD0
14CE12:  ADD             R0, SP, #0x128+var_124
14CE14:  BL              sub_17D542
14CE18:  ADD             SP, SP, #0x120
14CE1A:  POP             {R4,R5,R7,PC}
