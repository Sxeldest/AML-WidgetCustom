; =========================================================
; Game Engine Function: sub_1816B2
; Address            : 0x1816B2 - 0x1816D8
; =========================================================

1816B2:  PUSH            {R4,R6,R7,LR}
1816B4:  ADD             R7, SP, #8
1816B6:  MOV             R4, R0
1816B8:  LDR             R0, [R0,#8]
1816BA:  CBZ             R0, locret_1816D6
1816BC:  CMP.W           R0, #0x200
1816C0:  BLS             loc_1816D2
1816C2:  CBNZ            R1, loc_1816D2
1816C4:  LDR             R0, [R4]; void *
1816C6:  CBZ             R0, loc_1816CC
1816C8:  BLX             j__ZdaPv; operator delete[](void *)
1816CC:  MOVS            R0, #0
1816CE:  STR             R0, [R4]
1816D0:  STR             R0, [R4,#8]
1816D2:  MOVS            R0, #0
1816D4:  STR             R0, [R4,#4]
1816D6:  POP             {R4,R6,R7,PC}
