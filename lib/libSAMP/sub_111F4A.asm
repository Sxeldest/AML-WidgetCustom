; =========================================================
; Game Engine Function: sub_111F4A
; Address            : 0x111F4A - 0x111F74
; =========================================================

111F4A:  PUSH            {R4,R5,R7,LR}
111F4C:  ADD             R7, SP, #8
111F4E:  LDR             R5, [R0]
111F50:  MOV             R4, R0
111F52:  CBZ             R5, loc_111F70
111F54:  LDR             R0, [R4,#4]
111F56:  CMP             R0, R5
111F58:  BEQ             loc_111F68
111F5A:  SUBS            R0, #8
111F5C:  BL              sub_111CE6
111F60:  CMP             R0, R5
111F62:  BNE             loc_111F5A
111F64:  LDR             R0, [R4]
111F66:  B               loc_111F6A
111F68:  MOV             R0, R5; void *
111F6A:  STR             R5, [R4,#4]
111F6C:  BLX             j__ZdlPv; operator delete(void *)
111F70:  MOV             R0, R4
111F72:  POP             {R4,R5,R7,PC}
