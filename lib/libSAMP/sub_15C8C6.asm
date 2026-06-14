; =========================================================
; Game Engine Function: sub_15C8C6
; Address            : 0x15C8C6 - 0x15C8E2
; =========================================================

15C8C6:  PUSH            {R4,R6,R7,LR}
15C8C8:  ADD             R7, SP, #8
15C8CA:  LDR             R1, [R0,#8]
15C8CC:  MOV             R4, R0
15C8CE:  BL              sub_15C8E2
15C8D2:  LDR             R0, [R4]; void *
15C8D4:  MOVS            R1, #0
15C8D6:  STR             R1, [R4]
15C8D8:  CBZ             R0, loc_15C8DE
15C8DA:  BLX             j__ZdlPv; operator delete(void *)
15C8DE:  MOV             R0, R4
15C8E0:  POP             {R4,R6,R7,PC}
