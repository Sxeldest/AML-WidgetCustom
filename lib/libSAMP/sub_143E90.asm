; =========================================================
; Game Engine Function: sub_143E90
; Address            : 0x143E90 - 0x143EC6
; =========================================================

143E90:  PUSH            {R4,R6,R7,LR}
143E92:  ADD             R7, SP, #8
143E94:  SUB             SP, SP, #8
143E96:  MOV             R4, R1
143E98:  ADD             R1, SP, #0x10+var_C; int
143E9A:  MOV             R0, R4; int
143E9C:  MOVS            R2, #0x20 ; ' '
143E9E:  MOVS            R3, #1
143EA0:  BL              sub_17D786
143EA4:  LDRD.W          R1, R0, [R4,#8]
143EA8:  ADDS            R3, R1, #1
143EAA:  ASRS            R2, R1, #3
143EAC:  AND.W           R1, R1, #7
143EB0:  LDRB            R2, [R0,R2]
143EB2:  LDR             R0, [SP,#0x10+var_C]
143EB4:  STR             R3, [R4,#8]
143EB6:  LSL.W           R1, R2, R1
143EBA:  UXTB            R1, R1
143EBC:  LSRS            R1, R1, #7
143EBE:  BL              sub_10D528
143EC2:  ADD             SP, SP, #8
143EC4:  POP             {R4,R6,R7,PC}
