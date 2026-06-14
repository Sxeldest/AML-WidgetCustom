; =========================================================
; Game Engine Function: sub_110A9C
; Address            : 0x110A9C - 0x110AB8
; =========================================================

110A9C:  PUSH            {R4,R5,R7,LR}
110A9E:  ADD             R7, SP, #8
110AA0:  MOV             R4, R0
110AA2:  LDR             R0, [R0,#4]
110AA4:  CBZ             R0, loc_110AA8
110AA6:  POP             {R4,R5,R7,PC}
110AA8:  MOVS            R0, #4; unsigned int
110AAA:  BLX             j__Znwj; operator new(uint)
110AAE:  MOV             R5, R0
110AB0:  BL              sub_1108EC
110AB4:  STR             R5, [R4,#4]
110AB6:  POP             {R4,R5,R7,PC}
