; =========================================================
; Game Engine Function: sub_F3904
; Address            : 0xF3904 - 0xF3920
; =========================================================

F3904:  PUSH            {R4,R5,R7,LR}
F3906:  ADD             R7, SP, #8
F3908:  MOV             R4, R0
F390A:  LDR             R0, [R0,#4]
F390C:  CBZ             R0, loc_F3910
F390E:  POP             {R4,R5,R7,PC}
F3910:  MOVS            R0, #1; unsigned int
F3912:  BLX             j__Znwj; operator new(uint)
F3916:  MOV             R5, R0
F3918:  BL              sub_F32E0
F391C:  STR             R5, [R4,#4]
F391E:  POP             {R4,R5,R7,PC}
