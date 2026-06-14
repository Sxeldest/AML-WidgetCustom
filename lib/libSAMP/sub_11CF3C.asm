; =========================================================
; Game Engine Function: sub_11CF3C
; Address            : 0x11CF3C - 0x11CF58
; =========================================================

11CF3C:  PUSH            {R4,R5,R7,LR}
11CF3E:  ADD             R7, SP, #8
11CF40:  MOV             R4, R0
11CF42:  LDR             R0, [R0,#4]
11CF44:  CBZ             R0, loc_11CF48
11CF46:  POP             {R4,R5,R7,PC}
11CF48:  MOVS            R0, #4; unsigned int
11CF4A:  BLX             j__Znwj; operator new(uint)
11CF4E:  MOV             R5, R0
11CF50:  BL              sub_11CD34
11CF54:  STR             R5, [R4,#4]
11CF56:  POP             {R4,R5,R7,PC}
