; =========================================================
; Game Engine Function: sub_15B774
; Address            : 0x15B774 - 0x15B79A
; =========================================================

15B774:  PUSH            {R4,R5,R7,LR}
15B776:  ADD             R7, SP, #8
15B778:  MOV             R4, R0
15B77A:  LDR             R0, [R0,#8]; void *
15B77C:  CBZ             R0, loc_15B78A
15B77E:  LDR             R5, [R0]
15B780:  BLX             j__ZdlPv; operator delete(void *)
15B784:  CMP             R5, #0
15B786:  MOV             R0, R5
15B788:  BNE             loc_15B77E
15B78A:  LDR             R0, [R4]; void *
15B78C:  MOVS            R1, #0
15B78E:  STR             R1, [R4]
15B790:  CBZ             R0, loc_15B796
15B792:  BLX             j__ZdlPv; operator delete(void *)
15B796:  MOV             R0, R4
15B798:  POP             {R4,R5,R7,PC}
