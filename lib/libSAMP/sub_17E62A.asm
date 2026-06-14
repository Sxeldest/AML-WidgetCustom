; =========================================================
; Game Engine Function: sub_17E62A
; Address            : 0x17E62A - 0x17E650
; =========================================================

17E62A:  PUSH            {R4,R6,R7,LR}
17E62C:  ADD             R7, SP, #8
17E62E:  MOV             R4, R0
17E630:  LDR             R0, [R0,#8]
17E632:  CBZ             R0, locret_17E64E
17E634:  CMP.W           R0, #0x200
17E638:  BLS             loc_17E64A
17E63A:  CBNZ            R1, loc_17E64A
17E63C:  LDR             R0, [R4]; void *
17E63E:  CBZ             R0, loc_17E644
17E640:  BLX             j__ZdaPv; operator delete[](void *)
17E644:  MOVS            R0, #0
17E646:  STR             R0, [R4]
17E648:  STR             R0, [R4,#8]
17E64A:  MOVS            R0, #0
17E64C:  STR             R0, [R4,#4]
17E64E:  POP             {R4,R6,R7,PC}
