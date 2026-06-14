; =========================================================
; Game Engine Function: sub_FFB14
; Address            : 0xFFB14 - 0xFFB32
; =========================================================

FFB14:  PUSH            {R4,R5,R7,LR}
FFB16:  ADD             R7, SP, #8
FFB18:  MOV             R4, R1
FFB1A:  LDRD.W          R1, R2, [R0,#8]
FFB1E:  MOV             R5, R0
FFB20:  MOV             R0, R4
FFB22:  BL              sub_FFB40
FFB26:  LDR             R0, [R5,#0x10]
FFB28:  MOV             R1, R4
FFB2A:  POP.W           {R4,R5,R7,LR}
FFB2E:  B.W             sub_FE074
