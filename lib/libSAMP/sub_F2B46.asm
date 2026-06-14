; =========================================================
; Game Engine Function: sub_F2B46
; Address            : 0xF2B46 - 0xF2B70
; =========================================================

F2B46:  PUSH            {R4,R5,R7,LR}
F2B48:  ADD             R7, SP, #8
F2B4A:  LDR             R5, [R0]
F2B4C:  MOV             R4, R0
F2B4E:  CBZ             R5, loc_F2B6C
F2B50:  LDR             R0, [R4,#4]
F2B52:  CMP             R0, R5
F2B54:  BEQ             loc_F2B64
F2B56:  SUBS            R0, #8
F2B58:  BL              sub_F2B10
F2B5C:  CMP             R0, R5
F2B5E:  BNE             loc_F2B56
F2B60:  LDR             R0, [R4]
F2B62:  B               loc_F2B66
F2B64:  MOV             R0, R5; void *
F2B66:  STR             R5, [R4,#4]
F2B68:  BLX             j__ZdlPv; operator delete(void *)
F2B6C:  MOV             R0, R4
F2B6E:  POP             {R4,R5,R7,PC}
