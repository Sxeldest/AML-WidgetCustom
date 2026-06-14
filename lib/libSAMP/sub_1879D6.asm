; =========================================================
; Game Engine Function: sub_1879D6
; Address            : 0x1879D6 - 0x1879FC
; =========================================================

1879D6:  PUSH            {R4,R6,R7,LR}
1879D8:  ADD             R7, SP, #8
1879DA:  MOV             R4, R0
1879DC:  LDR             R0, [R0,#8]
1879DE:  CBZ             R0, locret_1879FA
1879E0:  CMP.W           R0, #0x200
1879E4:  BLS             loc_1879F6
1879E6:  CBNZ            R1, loc_1879F6
1879E8:  LDR             R0, [R4]; void *
1879EA:  CBZ             R0, loc_1879F0
1879EC:  BLX             j__ZdaPv; operator delete[](void *)
1879F0:  MOVS            R0, #0
1879F2:  STR             R0, [R4]
1879F4:  STR             R0, [R4,#8]
1879F6:  MOVS            R0, #0
1879F8:  STR             R0, [R4,#4]
1879FA:  POP             {R4,R6,R7,PC}
