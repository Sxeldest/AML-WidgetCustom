; =========================================================
; Game Engine Function: sub_F58CC
; Address            : 0xF58CC - 0xF58E8
; =========================================================

F58CC:  PUSH            {R4,R5,R7,LR}
F58CE:  ADD             R7, SP, #8
F58D0:  MOV             R4, R0
F58D2:  LDR             R0, [R0,#4]
F58D4:  CBZ             R0, loc_F58D8
F58D6:  POP             {R4,R5,R7,PC}
F58D8:  MOVS            R0, #0x18; unsigned int
F58DA:  BLX             j__Znwj; operator new(uint)
F58DE:  MOV             R5, R0
F58E0:  BL              sub_F55CC
F58E4:  STR             R5, [R4,#4]
F58E6:  POP             {R4,R5,R7,PC}
