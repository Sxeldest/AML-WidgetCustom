; =========================================================
; Game Engine Function: sub_1879FC
; Address            : 0x1879FC - 0x187A22
; =========================================================

1879FC:  PUSH            {R4,R6,R7,LR}
1879FE:  ADD             R7, SP, #8
187A00:  MOV             R4, R0
187A02:  LDR             R0, [R0,#8]
187A04:  CBZ             R0, locret_187A20
187A06:  CMP.W           R0, #0x200
187A0A:  BLS             loc_187A1C
187A0C:  CBNZ            R1, loc_187A1C
187A0E:  LDR             R0, [R4]; void *
187A10:  CBZ             R0, loc_187A16
187A12:  BLX             j__ZdaPv; operator delete[](void *)
187A16:  MOVS            R0, #0
187A18:  STR             R0, [R4]
187A1A:  STR             R0, [R4,#8]
187A1C:  MOVS            R0, #0
187A1E:  STR             R0, [R4,#4]
187A20:  POP             {R4,R6,R7,PC}
