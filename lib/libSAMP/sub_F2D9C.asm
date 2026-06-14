; =========================================================
; Game Engine Function: sub_F2D9C
; Address            : 0xF2D9C - 0xF2DE0
; =========================================================

F2D9C:  PUSH            {R4,R6,R7,LR}
F2D9E:  ADD             R7, SP, #8
F2DA0:  MOV             R4, R0
F2DA2:  LDR             R0, [R0,#8]
F2DA4:  LDR             R2, [R4,#0xC]
F2DA6:  LDR             R1, [R1,#4]
F2DA8:  LDR.W           R3, [R2,#-8]
F2DAC:  LDR.W           R12, [R0,R1,LSL#3]
F2DB0:  STR.W           R3, [R0,R1,LSL#3]
F2DB4:  ADD.W           R0, R0, R1,LSL#3
F2DB8:  STR.W           R12, [R2,#-8]
F2DBC:  LDR.W           R12, [R2,#-4]
F2DC0:  LDR             R3, [R0,#4]
F2DC2:  STR.W           R12, [R0,#4]
F2DC6:  STR.W           R3, [R2,#-4]
F2DCA:  LDRD.W          R0, R2, [R4,#8]
F2DCE:  LDR.W           R0, [R0,R1,LSL#3]
F2DD2:  STR             R1, [R0,#4]
F2DD4:  SUB.W           R0, R2, #8
F2DD8:  BL              sub_F2DE0
F2DDC:  STR             R0, [R4,#0xC]
F2DDE:  POP             {R4,R6,R7,PC}
