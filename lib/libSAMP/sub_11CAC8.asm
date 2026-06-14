; =========================================================
; Game Engine Function: sub_11CAC8
; Address            : 0x11CAC8 - 0x11CAE4
; =========================================================

11CAC8:  PUSH            {R4,R5,R7,LR}
11CACA:  ADD             R7, SP, #8
11CACC:  MOV             R4, R0
11CACE:  LDR             R0, [R0,#4]
11CAD0:  CBZ             R0, loc_11CAD4
11CAD2:  POP             {R4,R5,R7,PC}
11CAD4:  MOVS            R0, #1; unsigned int
11CAD6:  BLX             j__Znwj; operator new(uint)
11CADA:  MOV             R5, R0
11CADC:  BL              sub_11C974
11CAE0:  STR             R5, [R4,#4]
11CAE2:  POP             {R4,R5,R7,PC}
