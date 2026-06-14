; =========================================================
; Game Engine Function: sub_18B8FA
; Address            : 0x18B8FA - 0x18B968
; =========================================================

18B8FA:  PUSH            {R4-R7,LR}
18B8FC:  ADD             R7, SP, #0xC
18B8FE:  PUSH.W          {R8,R9,R11}
18B902:  MOV             R4, R0
18B904:  LDRD.W          R5, R0, [R0,#4]
18B908:  MOV             R8, R1
18B90A:  CMP             R5, R0
18B90C:  BNE             loc_18B958
18B90E:  MOVW            R1, #0xFFFE
18B912:  LSLS            R0, R5, #1
18B914:  MOVT            R1, #0x3FFF
18B918:  CMP             R5, #0
18B91A:  IT EQ
18B91C:  MOVEQ           R0, #0x10
18B91E:  ANDS            R1, R0
18B920:  STR             R0, [R4,#8]
18B922:  SUBS            R1, R0, R1
18B924:  MOV.W           R0, R0,LSL#2
18B928:  IT NE
18B92A:  MOVNE           R1, #1
18B92C:  CMP             R1, #0
18B92E:  IT NE
18B930:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18B934:  BLX             j__Znaj; operator new[](uint)
18B938:  LDR.W           R9, [R4]
18B93C:  LSLS            R2, R5, #2; n
18B93E:  MOV             R6, R0
18B940:  MOV             R1, R9; src
18B942:  BLX             j_memcpy
18B946:  CMP.W           R9, #0
18B94A:  BEQ             loc_18B954
18B94C:  MOV             R0, R9; void *
18B94E:  BLX             j__ZdaPv; operator delete[](void *)
18B952:  LDR             R5, [R4,#4]
18B954:  STR             R6, [R4]
18B956:  B               loc_18B95A
18B958:  LDR             R6, [R4]
18B95A:  ADDS            R0, R5, #1
18B95C:  STR.W           R8, [R6,R5,LSL#2]
18B960:  STR             R0, [R4,#4]
18B962:  POP.W           {R8,R9,R11}
18B966:  POP             {R4-R7,PC}
