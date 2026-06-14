; =========================================================
; Game Engine Function: sub_EAD4E
; Address            : 0xEAD4E - 0xEAD5E
; =========================================================

EAD4E:  PUSH            {R4,R6,R7,LR}
EAD50:  ADD             R7, SP, #8
EAD52:  MOVS            R1, #0
EAD54:  MOV             R4, R0
EAD56:  BL              sub_F7474
EAD5A:  MOV             R0, R4
EAD5C:  POP             {R4,R6,R7,PC}
