; =========================================================
; Game Engine Function: sub_EC3AC
; Address            : 0xEC3AC - 0xEC3C4
; =========================================================

EC3AC:  PUSH            {R4,R6,R7,LR}
EC3AE:  ADD             R7, SP, #8
EC3B0:  MOV             R4, R0
EC3B2:  MOVS            R0, #0
EC3B4:  STRD.W          R0, R0, [R4]
EC3B8:  STR             R0, [R4,#8]
EC3BA:  MOV             R0, R1
EC3BC:  MOV             R1, R4
EC3BE:  BL              sub_EC3D4
EC3C2:  POP             {R4,R6,R7,PC}
