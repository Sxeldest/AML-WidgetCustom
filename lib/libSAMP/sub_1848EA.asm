; =========================================================
; Game Engine Function: sub_1848EA
; Address            : 0x1848EA - 0x184910
; =========================================================

1848EA:  PUSH            {R4,R6,R7,LR}
1848EC:  ADD             R7, SP, #8
1848EE:  MOV             R4, R0
1848F0:  LDR             R0, [R0,#8]
1848F2:  CBZ             R0, locret_18490E
1848F4:  CMP.W           R0, #0x200
1848F8:  BLS             loc_18490A
1848FA:  CBNZ            R1, loc_18490A
1848FC:  LDR             R0, [R4]; void *
1848FE:  CBZ             R0, loc_184904
184900:  BLX             j__ZdaPv; operator delete[](void *)
184904:  MOVS            R0, #0
184906:  STR             R0, [R4]
184908:  STR             R0, [R4,#8]
18490A:  MOVS            R0, #0
18490C:  STR             R0, [R4,#4]
18490E:  POP             {R4,R6,R7,PC}
