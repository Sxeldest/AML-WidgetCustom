; =========================================================
; Game Engine Function: sub_12860E
; Address            : 0x12860E - 0x128624
; =========================================================

12860E:  PUSH            {R4,R6,R7,LR}
128610:  ADD             R7, SP, #8
128612:  MOV             R4, R0
128614:  LDR             R0, [R0]; void *
128616:  MOVS            R1, #0
128618:  STR             R1, [R4]
12861A:  CBZ             R0, loc_128620
12861C:  BLX             j__ZdaPv; operator delete[](void *)
128620:  MOV             R0, R4
128622:  POP             {R4,R6,R7,PC}
