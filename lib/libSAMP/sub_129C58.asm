; =========================================================
; Game Engine Function: sub_129C58
; Address            : 0x129C58 - 0x129C74
; =========================================================

129C58:  PUSH            {R4,R5,R7,LR}
129C5A:  ADD             R7, SP, #8
129C5C:  MOV             R4, R0
129C5E:  LDR             R0, [R0,#4]
129C60:  CBZ             R0, loc_129C64
129C62:  POP             {R4,R5,R7,PC}
129C64:  MOVS            R0, #1; unsigned int
129C66:  BLX             j__Znwj; operator new(uint)
129C6A:  MOV             R5, R0
129C6C:  BL              sub_129B60
129C70:  STR             R5, [R4,#4]
129C72:  POP             {R4,R5,R7,PC}
