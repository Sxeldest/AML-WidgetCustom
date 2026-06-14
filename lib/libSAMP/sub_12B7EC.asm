; =========================================================
; Game Engine Function: sub_12B7EC
; Address            : 0x12B7EC - 0x12B830
; =========================================================

12B7EC:  PUSH            {R4,R5,R7,LR}
12B7EE:  ADD             R7, SP, #8
12B7F0:  MOV             R4, R0
12B7F2:  LDR             R0, [R0,#0x20]; void *
12B7F4:  MOV             R5, R1
12B7F6:  CBZ             R0, loc_12B80A
12B7F8:  LDR             R1, [R5,#0x10]
12B7FA:  LDR             R2, [R4,#0x24]
12B7FC:  CMP             R2, R1
12B7FE:  IT GE
12B800:  POPGE           {R4,R5,R7,PC}
12B802:  BLX             j__ZdlPv; operator delete(void *)
12B806:  MOVS            R0, #0
12B808:  STR             R0, [R4,#0x20]
12B80A:  LDR             R0, [R5,#0x10]
12B80C:  MOVW            R1, #0x2710
12B810:  ADD             R1, R0
12B812:  MOVS            R0, #0x1C
12B814:  STR             R1, [R4,#0x24]
12B816:  UMULL.W         R0, R2, R1, R0
12B81A:  CMP             R2, #0
12B81C:  IT NE
12B81E:  MOVNE           R2, #1
12B820:  CMP             R2, #0
12B822:  IT NE
12B824:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
12B828:  BLX             j__Znaj; operator new[](uint)
12B82C:  STR             R0, [R4,#0x20]
12B82E:  POP             {R4,R5,R7,PC}
