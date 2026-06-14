; =========================================================
; Game Engine Function: sub_1103D4
; Address            : 0x1103D4 - 0x1103F0
; =========================================================

1103D4:  PUSH            {R4,R5,R7,LR}
1103D6:  ADD             R7, SP, #8
1103D8:  MOV             R4, R0
1103DA:  LDR             R0, [R0,#4]
1103DC:  CBZ             R0, loc_1103E0
1103DE:  POP             {R4,R5,R7,PC}
1103E0:  MOVS            R0, #4; unsigned int
1103E2:  BLX             j__Znwj; operator new(uint)
1103E6:  MOV             R5, R0
1103E8:  BL              sub_1101C4
1103EC:  STR             R5, [R4,#4]
1103EE:  POP             {R4,R5,R7,PC}
