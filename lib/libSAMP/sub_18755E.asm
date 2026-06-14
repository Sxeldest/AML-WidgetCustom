; =========================================================
; Game Engine Function: sub_18755E
; Address            : 0x18755E - 0x187574
; =========================================================

18755E:  PUSH            {R4,R6,R7,LR}
187560:  ADD             R7, SP, #8
187562:  MOV             R4, R0
187564:  LDR             R0, [R0,#8]
187566:  CBZ             R0, loc_187570
187568:  LDR             R0, [R4]; void *
18756A:  CBZ             R0, loc_187570
18756C:  BLX             j__ZdaPv; operator delete[](void *)
187570:  MOV             R0, R4
187572:  POP             {R4,R6,R7,PC}
