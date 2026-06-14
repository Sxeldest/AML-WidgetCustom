; =========================================================
; Game Engine Function: sub_11AE02
; Address            : 0x11AE02 - 0x11AE38
; =========================================================

11AE02:  PUSH            {R4-R7,LR}
11AE04:  ADD             R7, SP, #0xC
11AE06:  PUSH.W          {R8,R9,R11}
11AE0A:  LDR             R5, [R7,#arg_0]
11AE0C:  LDR             R4, [R0,#4]
11AE0E:  LDR             R6, [R1]
11AE10:  LDR             R5, [R5]
11AE12:  MOV             R0, R4
11AE14:  LDR.W           R8, [R3]
11AE18:  LDR.W           R9, [R2]
11AE1C:  MOV             R1, R5
11AE1E:  BL              sub_11A698
11AE22:  LDR.W           R12, [R4,#8]
11AE26:  MOV             R0, R6
11AE28:  MOV             R1, R9
11AE2A:  MOV             R2, R8
11AE2C:  MOV             R3, R5
11AE2E:  POP.W           {R8,R9,R11}
11AE32:  POP.W           {R4-R7,LR}
11AE36:  BX              R12
