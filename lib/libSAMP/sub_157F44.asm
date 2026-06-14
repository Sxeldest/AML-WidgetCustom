; =========================================================
; Game Engine Function: sub_157F44
; Address            : 0x157F44 - 0x157F84
; =========================================================

157F44:  PUSH            {R4-R7,LR}
157F46:  ADD             R7, SP, #0xC
157F48:  PUSH.W          {R8}
157F4C:  LDR             R4, [R0]
157F4E:  MOV             R8, R0
157F50:  CBZ             R4, loc_157F7C
157F52:  LDR.W           R5, [R8,#4]
157F56:  CMP             R5, R4
157F58:  BEQ             loc_157F72
157F5A:  ADD.W           R6, R8, #8
157F5E:  SUBS            R5, #0x28 ; '('
157F60:  MOV             R0, R6
157F62:  MOV             R1, R5
157F64:  BL              sub_157F84
157F68:  CMP             R5, R4
157F6A:  BNE             loc_157F5E
157F6C:  LDR.W           R0, [R8]
157F70:  B               loc_157F74
157F72:  MOV             R0, R4; void *
157F74:  STR.W           R4, [R8,#4]
157F78:  BLX             j__ZdlPv; operator delete(void *)
157F7C:  MOV             R0, R8
157F7E:  POP.W           {R8}
157F82:  POP             {R4-R7,PC}
