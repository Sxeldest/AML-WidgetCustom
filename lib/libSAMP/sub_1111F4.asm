; =========================================================
; Game Engine Function: sub_1111F4
; Address            : 0x1111F4 - 0x111210
; =========================================================

1111F4:  PUSH            {R4,R5,R7,LR}
1111F6:  ADD             R7, SP, #8
1111F8:  MOV             R4, R0
1111FA:  LDR             R0, [R0,#4]
1111FC:  CBZ             R0, loc_111200
1111FE:  POP             {R4,R5,R7,PC}
111200:  MOVS            R0, #4; unsigned int
111202:  BLX             j__Znwj; operator new(uint)
111206:  MOV             R5, R0
111208:  BL              sub_110E28
11120C:  STR             R5, [R4,#4]
11120E:  POP             {R4,R5,R7,PC}
