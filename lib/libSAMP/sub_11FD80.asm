; =========================================================
; Game Engine Function: sub_11FD80
; Address            : 0x11FD80 - 0x11FD9C
; =========================================================

11FD80:  PUSH            {R4,R5,R7,LR}
11FD82:  ADD             R7, SP, #8
11FD84:  MOV             R4, R0
11FD86:  LDR             R0, [R0,#4]
11FD88:  CBZ             R0, loc_11FD8C
11FD8A:  POP             {R4,R5,R7,PC}
11FD8C:  MOVS            R0, #4; unsigned int
11FD8E:  BLX             j__Znwj; operator new(uint)
11FD92:  MOV             R5, R0
11FD94:  BL              sub_11FAE0
11FD98:  STR             R5, [R4,#4]
11FD9A:  POP             {R4,R5,R7,PC}
