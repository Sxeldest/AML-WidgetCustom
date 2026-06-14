; =========================================================
; Game Engine Function: sub_171FC0
; Address            : 0x171FC0 - 0x172002
; =========================================================

171FC0:  MOV             R1, R0
171FC2:  LDR             R0, =(dword_381B58 - 0x171FCC)
171FC4:  MOVW            R3, #0x1AB4
171FC8:  ADD             R0, PC; dword_381B58
171FCA:  LDR             R0, [R0]
171FCC:  ADD.W           R2, R0, R3
171FD0:  LDR             R0, [R0,R3]
171FD2:  STR             R1, [R2,#0x58]
171FD4:  CBZ             R1, loc_171FDC
171FD6:  MOVS            R1, #1
171FD8:  B.W             sub_16F910
171FDC:  LDR.W           R1, [R0,#0x308]
171FE0:  CMP             R1, #0
171FE2:  IT NE
171FE4:  MOVNE           R0, R1
171FE6:  LDR.W           R1, [R0,#0x30C]
171FEA:  STR             R0, [R2]
171FEC:  CMP             R1, #0
171FEE:  BEQ             loc_171FD6
171FF0:  MOVS            R3, #1
171FF2:  STR             R1, [R2,#4]
171FF4:  STRH.W          R3, [R2,#0x61]
171FF8:  STRB.W          R3, [R2,#0x63]
171FFC:  STR.W           R1, [R0,#0x30C]
172000:  BX              LR
