; =========================================================
; Game Engine Function: sub_15968C
; Address            : 0x15968C - 0x1596B2
; =========================================================

15968C:  PUSH            {R4,R5,R7,LR}
15968E:  ADD             R7, SP, #8
159690:  MOV             R4, R0
159692:  LDR             R0, [R0,#8]; void *
159694:  CBZ             R0, loc_1596A2
159696:  LDR             R5, [R0]
159698:  BLX             j__ZdlPv; operator delete(void *)
15969C:  CMP             R5, #0
15969E:  MOV             R0, R5
1596A0:  BNE             loc_159696
1596A2:  LDR             R0, [R4]; void *
1596A4:  MOVS            R1, #0
1596A6:  STR             R1, [R4]
1596A8:  CBZ             R0, loc_1596AE
1596AA:  BLX             j__ZdlPv; operator delete(void *)
1596AE:  MOV             R0, R4
1596B0:  POP             {R4,R5,R7,PC}
