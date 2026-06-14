; =========================================================
; Game Engine Function: sub_1211BC
; Address            : 0x1211BC - 0x1211D8
; =========================================================

1211BC:  PUSH            {R4,R5,R7,LR}
1211BE:  ADD             R7, SP, #8
1211C0:  MOV             R4, R0
1211C2:  LDR             R0, [R0,#4]
1211C4:  CBZ             R0, loc_1211C8
1211C6:  POP             {R4,R5,R7,PC}
1211C8:  MOVS            R0, #1; unsigned int
1211CA:  BLX             j__Znwj; operator new(uint)
1211CE:  MOV             R5, R0
1211D0:  BL              sub_120F28
1211D4:  STR             R5, [R4,#4]
1211D6:  POP             {R4,R5,R7,PC}
