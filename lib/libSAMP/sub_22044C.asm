; =========================================================
; Game Engine Function: sub_22044C
; Address            : 0x22044C - 0x220462
; =========================================================

22044C:  PUSH            {R4,R6,R7,LR}
22044E:  ADD             R7, SP, #8
220450:  MOV             R4, R0
220452:  LDR             R0, [R0]; void *
220454:  CBZ             R0, loc_22045E
220456:  BLX             j__ZdaPv; operator delete[](void *)
22045A:  MOVS            R0, #0
22045C:  STR             R0, [R4]
22045E:  MOV             R0, R4
220460:  POP             {R4,R6,R7,PC}
