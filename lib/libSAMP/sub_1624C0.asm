; =========================================================
; Game Engine Function: sub_1624C0
; Address            : 0x1624C0 - 0x1624DC
; =========================================================

1624C0:  PUSH            {R4,R5,R7,LR}
1624C2:  ADD             R7, SP, #8
1624C4:  MOV             R4, R0
1624C6:  LDR             R0, [R0,#4]
1624C8:  CBZ             R0, loc_1624CC
1624CA:  POP             {R4,R5,R7,PC}
1624CC:  MOVS            R0, #8; unsigned int
1624CE:  BLX             j__Znwj; operator new(uint)
1624D2:  MOV             R5, R0
1624D4:  BL              sub_162350
1624D8:  STR             R5, [R4,#4]
1624DA:  POP             {R4,R5,R7,PC}
