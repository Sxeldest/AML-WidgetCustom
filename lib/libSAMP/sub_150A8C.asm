; =========================================================
; Game Engine Function: sub_150A8C
; Address            : 0x150A8C - 0x150AF6
; =========================================================

150A8C:  PUSH            {R4-R7,LR}
150A8E:  ADD             R7, SP, #0xC
150A90:  PUSH.W          {R8,R9,R11}
150A94:  SUB             SP, SP, #8
150A96:  MOV             R8, R0
150A98:  LDR             R0, [R0,#0xC]
150A9A:  MOV             R4, R1
150A9C:  CBZ             R0, loc_150AC6
150A9E:  LDR.W           R5, [R8,#8]
150AA2:  ADD.W           R6, R8, #4
150AA6:  CMP             R5, R6
150AA8:  BEQ             loc_150AC6
150AAA:  MOV             R9, SP
150AAC:  LDR             R0, [R5,#8]
150AAE:  LDR             R1, [R0,#4]
150AB0:  CBZ             R1, loc_150AC0
150AB2:  LDR             R0, [R4,#0x10]
150AB4:  STR             R1, [SP,#0x20+var_20]
150AB6:  CBZ             R0, loc_150AF2
150AB8:  LDR             R1, [R0]
150ABA:  LDR             R2, [R1,#0x18]
150ABC:  MOV             R1, R9
150ABE:  BLX             R2
150AC0:  LDR             R5, [R5,#4]
150AC2:  CMP             R5, R6
150AC4:  BNE             loc_150AAC
150AC6:  LDR.W           R0, [R8,#0x1C]
150ACA:  CBZ             R0, loc_150AEA
150ACC:  LDR.W           R6, [R8,#0x18]
150AD0:  CBZ             R6, loc_150AEA
150AD2:  ADD             R5, SP, #0x20+var_1C
150AD4:  LDR             R0, [R4,#0x10]
150AD6:  LDR             R1, [R6,#0xC]
150AD8:  STR             R1, [SP,#0x20+var_1C]
150ADA:  CBZ             R0, loc_150AF2
150ADC:  LDR             R1, [R0]
150ADE:  LDR             R2, [R1,#0x18]
150AE0:  MOV             R1, R5
150AE2:  BLX             R2
150AE4:  LDR             R6, [R6]
150AE6:  CMP             R6, #0
150AE8:  BNE             loc_150AD4
150AEA:  ADD             SP, SP, #8
150AEC:  POP.W           {R8,R9,R11}
150AF0:  POP             {R4-R7,PC}
150AF2:  BL              sub_DC92C
