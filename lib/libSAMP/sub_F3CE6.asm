; =========================================================
; Game Engine Function: sub_F3CE6
; Address            : 0xF3CE6 - 0xF3D06
; =========================================================

F3CE6:  PUSH            {R4,R6,R7,LR}
F3CE8:  ADD             R7, SP, #8
F3CEA:  MOV             R4, R0
F3CEC:  LDR             R0, [R0,#0x10]
F3CEE:  CMP             R4, R0
F3CF0:  BEQ             loc_F3CF8
F3CF2:  CBZ             R0, loc_F3D02
F3CF4:  MOVS            R1, #5
F3CF6:  B               loc_F3CFA
F3CF8:  MOVS            R1, #4
F3CFA:  LDR             R2, [R0]
F3CFC:  LDR.W           R1, [R2,R1,LSL#2]
F3D00:  BLX             R1
F3D02:  MOV             R0, R4
F3D04:  POP             {R4,R6,R7,PC}
