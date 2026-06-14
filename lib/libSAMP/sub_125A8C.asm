; =========================================================
; Game Engine Function: sub_125A8C
; Address            : 0x125A8C - 0x125AE8
; =========================================================

125A8C:  PUSH            {R4-R7,LR}
125A8E:  ADD             R7, SP, #0xC
125A90:  PUSH.W          {R8-R11}
125A94:  SUB             SP, SP, #4
125A96:  LDR             R0, =(dword_238E90 - 0x125AA4)
125A98:  MOV             R8, R1
125A9A:  LDR             R1, =(dword_263C48 - 0x125AA8)
125A9C:  MOV.W           R9, #0
125AA0:  ADD             R0, PC; dword_238E90
125AA2:  MOVS            R5, #0
125AA4:  ADD             R1, PC; dword_263C48
125AA6:  LDR.W           R11, [R0]
125AAA:  LDR             R6, [R1]
125AAC:  SUB.W           R0, R11, #1
125AB0:  BIC.W           R0, R0, R0,ASR#31
125AB4:  MOV             R4, R6
125AB6:  ADD.W           R10, R0, #1
125ABA:  MOV             R1, R6
125ABC:  CMP             R6, #0
125ABE:  IT NE
125AC0:  MOVNE           R1, R4
125AC2:  MOV             R0, R8; s1
125AC4:  MOVS            R2, #0xE; n
125AC6:  CMP             R11, R5
125AC8:  IT LE
125ACA:  MOVLE           R1, R9; s2
125ACC:  BLX             strncasecmp
125AD0:  CBZ             R0, loc_125ADC
125AD2:  ADDS            R5, #1
125AD4:  ADDS            R4, #0xE
125AD6:  CMP             R10, R5
125AD8:  BNE             loc_125ABA
125ADA:  B               loc_125ADE
125ADC:  MOV             R10, R5
125ADE:  MOV             R0, R10
125AE0:  ADD             SP, SP, #4
125AE2:  POP.W           {R8-R11}
125AE6:  POP             {R4-R7,PC}
