; =========================================================
; Game Engine Function: sub_FCB74
; Address            : 0xFCB74 - 0xFCB86
; =========================================================

FCB74:  PUSH            {R4,R6,R7,LR}
FCB76:  ADD             R7, SP, #8
FCB78:  MOV             R4, R0
FCB7A:  LDRB            R0, [R0]
FCB7C:  CBZ             R0, loc_FCB82
FCB7E:  BL              sub_161204
FCB82:  MOV             R0, R4
FCB84:  POP             {R4,R6,R7,PC}
