; =========================================================
; Game Engine Function: sub_11DC84
; Address            : 0x11DC84 - 0x11DCA0
; =========================================================

11DC84:  PUSH            {R4,R5,R7,LR}
11DC86:  ADD             R7, SP, #8
11DC88:  MOV             R4, R0
11DC8A:  LDR             R0, [R0,#4]
11DC8C:  CBZ             R0, loc_11DC90
11DC8E:  POP             {R4,R5,R7,PC}
11DC90:  MOVS            R0, #4; unsigned int
11DC92:  BLX             j__Znwj; operator new(uint)
11DC96:  MOV             R5, R0
11DC98:  BL              sub_11DAB8
11DC9C:  STR             R5, [R4,#4]
11DC9E:  POP             {R4,R5,R7,PC}
