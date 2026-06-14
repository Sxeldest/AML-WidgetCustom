; =========================================================
; Game Engine Function: sub_1897DA
; Address            : 0x1897DA - 0x189848
; =========================================================

1897DA:  PUSH            {R4-R7,LR}
1897DC:  ADD             R7, SP, #0xC
1897DE:  PUSH.W          {R8,R9,R11}
1897E2:  MOV             R4, R0
1897E4:  LDRD.W          R5, R0, [R0,#4]
1897E8:  MOV             R8, R1
1897EA:  CMP             R5, R0
1897EC:  BNE             loc_189838
1897EE:  MOVW            R1, #0xFFFE
1897F2:  LSLS            R0, R5, #1
1897F4:  MOVT            R1, #0x3FFF
1897F8:  CMP             R5, #0
1897FA:  IT EQ
1897FC:  MOVEQ           R0, #0x10
1897FE:  ANDS            R1, R0
189800:  STR             R0, [R4,#8]
189802:  SUBS            R1, R0, R1
189804:  MOV.W           R0, R0,LSL#2
189808:  IT NE
18980A:  MOVNE           R1, #1
18980C:  CMP             R1, #0
18980E:  IT NE
189810:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
189814:  BLX             j__Znaj; operator new[](uint)
189818:  LDR.W           R9, [R4]
18981C:  LSLS            R2, R5, #2; n
18981E:  MOV             R6, R0
189820:  MOV             R1, R9; src
189822:  BLX             j_memcpy
189826:  CMP.W           R9, #0
18982A:  BEQ             loc_189834
18982C:  MOV             R0, R9; void *
18982E:  BLX             j__ZdaPv; operator delete[](void *)
189832:  LDR             R5, [R4,#4]
189834:  STR             R6, [R4]
189836:  B               loc_18983A
189838:  LDR             R6, [R4]
18983A:  ADDS            R0, R5, #1
18983C:  STR.W           R8, [R6,R5,LSL#2]
189840:  STR             R0, [R4,#4]
189842:  POP.W           {R8,R9,R11}
189846:  POP             {R4-R7,PC}
