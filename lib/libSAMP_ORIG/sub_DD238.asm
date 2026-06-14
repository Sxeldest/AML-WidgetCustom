; =========================================================
; Game Engine Function: sub_DD238
; Address            : 0xDD238 - 0xDD246
; =========================================================

DD238:  PUSH            {R7,LR}
DD23A:  MOV             R7, SP
DD23C:  BL              sub_E2F64
DD240:  EOR.W           R0, R0, #1
DD244:  POP             {R7,PC}
