; =========================================================
; Game Engine Function: sub_17E75C
; Address            : 0x17E75C - 0x17E820
; =========================================================

17E75C:  PUSH            {R4-R7,LR}
17E75E:  ADD             R7, SP, #0xC
17E760:  PUSH.W          {R8-R10}
17E764:  MOV             R6, R1
17E766:  LDRD.W          R1, R5, [R0]
17E76A:  MOV             R4, R0
17E76C:  CBZ             R5, loc_17E782
17E76E:  MOVS            R0, #0
17E770:  LDR.W           R2, [R1,R0,LSL#2]
17E774:  CBZ             R2, loc_17E77C
17E776:  LDR             R2, [R2]
17E778:  CMP             R2, R6
17E77A:  BEQ             loc_17E786
17E77C:  ADDS            R0, #1
17E77E:  CMP             R5, R0
17E780:  BNE             loc_17E770
17E782:  MOVS            R2, #0xFF
17E784:  B               loc_17E788
17E786:  UXTB            R2, R0
17E788:  CMP             R2, R6
17E78A:  BEQ             loc_17E81A
17E78C:  CMP             R2, #0xFF
17E78E:  BEQ             loc_17E7A2
17E790:  LDR.W           R0, [R1,R2,LSL#2]; void *
17E794:  MOVS            R3, #0
17E796:  STR.W           R3, [R1,R2,LSL#2]
17E79A:  CBZ             R0, loc_17E7A2
17E79C:  BLX             j__ZdlPv; operator delete(void *)
17E7A0:  LDR             R5, [R4,#4]
17E7A2:  MOVS            R0, #0xC; unsigned int
17E7A4:  BLX             j__Znwj; operator new(uint)
17E7A8:  MOV             R10, R0
17E7AA:  MOVS            R0, #0
17E7AC:  CMP             R5, R6
17E7AE:  STRD.W          R6, R0, [R10]
17E7B2:  BLS             loc_17E7C8
17E7B4:  LDR             R1, [R4]
17E7B6:  LDR.W           R0, [R1,R6,LSL#2]; void *
17E7BA:  CBZ             R0, loc_17E7C2
17E7BC:  BLX             j__ZdlPv; operator delete(void *)
17E7C0:  LDR             R1, [R4]
17E7C2:  ADD.W           R0, R1, R6,LSL#2
17E7C6:  B               loc_17E816
17E7C8:  LDR             R0, [R4,#8]
17E7CA:  CMP             R0, R6
17E7CC:  BHI             loc_17E7F8
17E7CE:  ADDS            R0, R6, #1
17E7D0:  STR             R0, [R4,#8]
17E7D2:  LSLS            R0, R0, #2; unsigned int
17E7D4:  BLX             j__Znaj; operator new[](uint)
17E7D8:  LDR.W           R9, [R4]
17E7DC:  LSLS            R2, R5, #2; n
17E7DE:  MOV             R8, R0
17E7E0:  MOV             R1, R9; src
17E7E2:  BLX             j_memcpy
17E7E6:  CMP.W           R9, #0
17E7EA:  BEQ             loc_17E7F4
17E7EC:  MOV             R0, R9; void *
17E7EE:  BLX             j__ZdaPv; operator delete[](void *)
17E7F2:  LDR             R5, [R4,#4]
17E7F4:  STR.W           R8, [R4]
17E7F8:  CMP             R5, R6
17E7FA:  BCS             loc_17E80C
17E7FC:  MOVS            R0, #0
17E7FE:  LDR             R1, [R4]
17E800:  STR.W           R0, [R1,R5,LSL#2]
17E804:  ADDS            R5, #1
17E806:  CMP             R6, R5
17E808:  BNE             loc_17E7FE
17E80A:  MOV             R5, R6
17E80C:  LDR             R0, [R4]
17E80E:  ADDS            R1, R5, #1
17E810:  STR             R1, [R4,#4]
17E812:  ADD.W           R0, R0, R5,LSL#2
17E816:  STR.W           R10, [R0]
17E81A:  POP.W           {R8-R10}
17E81E:  POP             {R4-R7,PC}
