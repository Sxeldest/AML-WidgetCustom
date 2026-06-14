; =========================================================
; Game Engine Function: sub_F4D7A
; Address            : 0xF4D7A - 0xF4D98
; =========================================================

F4D7A:  PUSH            {R4,R5,R7,LR}
F4D7C:  ADD             R7, SP, #8
F4D7E:  MOV             R4, R0
F4D80:  LDR             R0, [R0,#4]
F4D82:  CBZ             R0, loc_F4D86
F4D84:  POP             {R4,R5,R7,PC}
F4D86:  MOVW            R0, #0xBF4; unsigned int
F4D8A:  BLX             j__Znwj; operator new(uint)
F4D8E:  MOV             R5, R0
F4D90:  BL              sub_F4398
F4D94:  STR             R5, [R4,#4]
F4D96:  POP             {R4,R5,R7,PC}
