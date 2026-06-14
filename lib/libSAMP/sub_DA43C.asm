; =========================================================
; Game Engine Function: sub_DA43C
; Address            : 0xDA43C - 0xDA452
; =========================================================

DA43C:  PUSH            {R4,R6,R7,LR}
DA43E:  ADD             R7, SP, #8
DA440:  MOV             R4, R0
DA442:  LDR             R0, [R0]; void *
DA444:  MOVS            R1, #0
DA446:  STR             R1, [R4]
DA448:  CBZ             R0, loc_DA44E
DA44A:  BLX             j__ZdlPv; operator delete(void *)
DA44E:  MOV             R0, R4
DA450:  POP             {R4,R6,R7,PC}
