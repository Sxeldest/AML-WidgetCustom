; =========================================================
; Game Engine Function: sub_1108D4
; Address            : 0x1108D4 - 0x1108EA
; =========================================================

1108D4:  PUSH            {R4,R6,R7,LR}
1108D6:  ADD             R7, SP, #8
1108D8:  MOV             R4, R0
1108DA:  LDR             R0, [R0,#4]
1108DC:  CBZ             R0, loc_1108E6
1108DE:  BL              sub_110A50
1108E2:  BLX             j__ZdlPv; operator delete(void *)
1108E6:  MOV             R0, R4
1108E8:  POP             {R4,R6,R7,PC}
