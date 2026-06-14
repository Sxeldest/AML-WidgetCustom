; =========================================================
; Game Engine Function: sub_18B7BC
; Address            : 0x18B7BC - 0x18B82A
; =========================================================

18B7BC:  PUSH            {R4-R7,LR}
18B7BE:  ADD             R7, SP, #0xC
18B7C0:  PUSH.W          {R8,R9,R11}
18B7C4:  MOV             R4, R0
18B7C6:  LDRD.W          R5, R0, [R0,#4]
18B7CA:  MOV             R8, R1
18B7CC:  CMP             R5, R0
18B7CE:  BNE             loc_18B81A
18B7D0:  MOVW            R1, #0xFFFE
18B7D4:  LSLS            R0, R5, #1
18B7D6:  MOVT            R1, #0x3FFF
18B7DA:  CMP             R5, #0
18B7DC:  IT EQ
18B7DE:  MOVEQ           R0, #0x10
18B7E0:  ANDS            R1, R0
18B7E2:  STR             R0, [R4,#8]
18B7E4:  SUBS            R1, R0, R1
18B7E6:  MOV.W           R0, R0,LSL#2
18B7EA:  IT NE
18B7EC:  MOVNE           R1, #1
18B7EE:  CMP             R1, #0
18B7F0:  IT NE
18B7F2:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18B7F6:  BLX             j__Znaj; operator new[](uint)
18B7FA:  LDR.W           R9, [R4]
18B7FE:  LSLS            R2, R5, #2; n
18B800:  MOV             R6, R0
18B802:  MOV             R1, R9; src
18B804:  BLX             j_memcpy
18B808:  CMP.W           R9, #0
18B80C:  BEQ             loc_18B816
18B80E:  MOV             R0, R9; void *
18B810:  BLX             j__ZdaPv; operator delete[](void *)
18B814:  LDR             R5, [R4,#4]
18B816:  STR             R6, [R4]
18B818:  B               loc_18B81C
18B81A:  LDR             R6, [R4]
18B81C:  ADDS            R0, R5, #1
18B81E:  STR.W           R8, [R6,R5,LSL#2]
18B822:  STR             R0, [R4,#4]
18B824:  POP.W           {R8,R9,R11}
18B828:  POP             {R4-R7,PC}
