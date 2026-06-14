; =========================================================
; Game Engine Function: sub_128624
; Address            : 0x128624 - 0x12863A
; =========================================================

128624:  PUSH            {R4,R6,R7,LR}
128626:  ADD             R7, SP, #8
128628:  MOV             R4, R0
12862A:  LDR             R0, [R0]; void *
12862C:  MOVS            R1, #0
12862E:  STR             R1, [R4]
128630:  CBZ             R0, loc_128636
128632:  BLX             j__ZdaPv; operator delete[](void *)
128636:  MOV             R0, R4
128638:  POP             {R4,R6,R7,PC}
