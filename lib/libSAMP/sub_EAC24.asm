; =========================================================
; Game Engine Function: sub_EAC24
; Address            : 0xEAC24 - 0xEAC48
; =========================================================

EAC24:  PUSH            {R4-R7,LR}
EAC26:  ADD             R7, SP, #0xC
EAC28:  PUSH.W          {R11}
EAC2C:  MOV             R6, R0
EAC2E:  LDRB.W          R1, [R0],#8
EAC32:  MOV             R4, R3
EAC34:  MOV             R5, R2
EAC36:  BL              sub_E57FC
EAC3A:  MOVS            R0, #5
EAC3C:  STRD.W          R5, R4, [R6,#8]
EAC40:  STRB            R0, [R6]
EAC42:  POP.W           {R11}
EAC46:  POP             {R4-R7,PC}
