; =========================================================
; Game Engine Function: sub_182E82
; Address            : 0x182E82 - 0x182EE6
; =========================================================

182E82:  PUSH            {R4-R7,LR}
182E84:  ADD             R7, SP, #0xC
182E86:  PUSH.W          {R11}
182E8A:  SUB             SP, SP, #0x18
182E8C:  MOV             LR, R0
182E8E:  LDRB.W          R0, [R0,#0x80]
182E92:  MOV             R12, R2
182E94:  CBZ             R0, loc_182ECE
182E96:  ADD.W           R3, LR, #0xE4
182E9A:  ADD.W           R0, LR, #0x114
182E9E:  ADD.W           R2, LR, #0x104
182EA2:  ADD.W           R4, LR, #0xD4
182EA6:  STRD.W          R4, R3, [SP,#0x28+var_20]
182EAA:  ADD.W           R5, LR, #0x124
182EAE:  ADD.W           R3, LR, #0xC4
182EB2:  STRD.W          R2, R0, [SP,#0x28+var_18]
182EB6:  MOV             R0, R12
182EB8:  MOV             R2, LR
182EBA:  ADD.W           R6, LR, #0xF4
182EBE:  STRD.W          R6, R5, [SP,#0x28+var_28]
182EC2:  BL              sub_186AF0
182EC6:  ADD             SP, SP, #0x18
182EC8:  POP.W           {R11}
182ECC:  POP             {R4-R7,PC}
182ECE:  MOV             R0, R1
182ED0:  ADD.W           R2, LR, #0x20 ; ' '
182ED4:  MOV             R1, LR
182ED6:  MOV             R3, R12
182ED8:  ADD             SP, SP, #0x18
182EDA:  POP.W           {R11}
182EDE:  POP.W           {R4-R7,LR}
182EE2:  B.W             sub_186C66
