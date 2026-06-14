; =========================================================
; Game Engine Function: INT123_fi_set
; Address            : 0x2286D2 - 0x22871E
; =========================================================

2286D2:  PUSH            {R4-R7,LR}
2286D4:  ADD             R7, SP, #0xC
2286D6:  PUSH.W          {R8}
2286DA:  MOV             R4, R3
2286DC:  MOV             R8, R1
2286DE:  MOV             R1, R4; byte_count
2286E0:  MOV             R6, R2
2286E2:  MOV             R5, R0
2286E4:  BLX             j_INT123_fi_resize
2286E8:  ADDS            R0, #1
2286EA:  BEQ             loc_228702
2286EC:  CMP.W           R8, #0
2286F0:  STR             R6, [R5,#4]
2286F2:  BEQ             loc_22870C
2286F4:  LDR             R0, [R5]; void *
2286F6:  LSLS            R2, R4, #2; size_t
2286F8:  MOV             R1, R8; void *
2286FA:  BLX             memcpy_0
2286FE:  LDR             R6, [R5,#4]
228700:  B               loc_22870E
228702:  MOV.W           R0, #0xFFFFFFFF
228706:  POP.W           {R8}
22870A:  POP             {R4-R7,PC}
22870C:  MOVS            R4, #0
22870E:  MUL.W           R0, R6, R4
228712:  STR             R4, [R5,#0x10]
228714:  STR             R0, [R5,#8]
228716:  MOVS            R0, #0
228718:  POP.W           {R8}
22871C:  POP             {R4-R7,PC}
