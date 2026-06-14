; =========================================================
; Game Engine Function: sub_F2D62
; Address            : 0xF2D62 - 0xF2D8C
; =========================================================

F2D62:  PUSH            {R4,R5,R7,LR}
F2D64:  ADD             R7, SP, #8
F2D66:  LDR             R5, [R0]
F2D68:  MOV             R4, R0
F2D6A:  CBZ             R5, loc_F2D88
F2D6C:  LDR             R0, [R4,#4]
F2D6E:  CMP             R0, R5
F2D70:  BEQ             loc_F2D80
F2D72:  SUBS            R0, #8
F2D74:  BL              sub_F2D2C
F2D78:  CMP             R0, R5
F2D7A:  BNE             loc_F2D72
F2D7C:  LDR             R0, [R4]
F2D7E:  B               loc_F2D82
F2D80:  MOV             R0, R5; void *
F2D82:  STR             R5, [R4,#4]
F2D84:  BLX             j__ZdlPv; operator delete(void *)
F2D88:  MOV             R0, R4
F2D8A:  POP             {R4,R5,R7,PC}
