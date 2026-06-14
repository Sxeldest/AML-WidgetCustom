; =========================================================
; Game Engine Function: sub_E3F7A
; Address            : 0xE3F7A - 0xE3F8C
; =========================================================

E3F7A:  PUSH            {R4,R6,R7,LR}
E3F7C:  ADD             R7, SP, #8
E3F7E:  MOV             R4, R0
E3F80:  LDRB.W          R1, [R0],#8
E3F84:  BL              sub_E57FC
E3F88:  MOV             R0, R4
E3F8A:  POP             {R4,R6,R7,PC}
