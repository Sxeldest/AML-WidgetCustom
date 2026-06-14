; =========================================================
; Game Engine Function: sub_9C10C
; Address            : 0x9C10C - 0x9C12E
; =========================================================

9C10C:  PUSH            {R7,LR}
9C10E:  MOV             R7, SP
9C110:  SUB             SP, SP, #8
9C112:  LDR.W           R12, [R0,#0x28]
9C116:  MOV.W           LR, #0
9C11A:  ADD.W           R12, R12, #0x14
9C11E:  LDM.W           R12, {R1-R3,R12}; int
9C122:  STRD.W          R12, LR, [SP,#0x10+var_10]; float
9C126:  BL              sub_9BFD8
9C12A:  ADD             SP, SP, #8
9C12C:  POP             {R7,PC}
