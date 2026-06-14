; =========================================================
; Game Engine Function: sub_1613B8
; Address            : 0x1613B8 - 0x1613D4
; =========================================================

1613B8:  PUSH            {R4,R5,R7,LR}
1613BA:  ADD             R7, SP, #8
1613BC:  MOV             R4, R0
1613BE:  LDR             R0, [R0,#4]
1613C0:  CBZ             R0, loc_1613C4
1613C2:  POP             {R4,R5,R7,PC}
1613C4:  MOVS            R0, #8; unsigned int
1613C6:  BLX             j__Znwj; operator new(uint)
1613CA:  MOV             R5, R0
1613CC:  BL              sub_161248
1613D0:  STR             R5, [R4,#4]
1613D2:  POP             {R4,R5,R7,PC}
