; =========================================================
; Game Engine Function: alSourcePlayv
; Address            : 0x25A754 - 0x25A8D8
; =========================================================

25A754:  PUSH            {R4-R7,LR}
25A756:  ADD             R7, SP, #0xC
25A758:  PUSH.W          {R8-R10}
25A75C:  MOV             R5, R1
25A75E:  MOV             R6, R0
25A760:  BLX             j_GetContextRef
25A764:  MOV             R8, R0
25A766:  CMP.W           R8, #0
25A76A:  BEQ             loc_25A812
25A76C:  CMP             R6, #0
25A76E:  BLT             loc_25A818
25A770:  BEQ             loc_25A78C
25A772:  ADD.W           R9, R8, #8
25A776:  MOVS            R4, #0
25A778:  LDR.W           R1, [R5,R4,LSL#2]
25A77C:  MOV             R0, R9
25A77E:  BLX             j_LookupUIntMapKey
25A782:  CMP             R0, #0
25A784:  BEQ             loc_25A850
25A786:  ADDS            R4, #1
25A788:  CMP             R4, R6
25A78A:  BLT             loc_25A778
25A78C:  LDR.W           R0, [R8,#0x88]
25A790:  MOV             R9, #0x161AC
25A798:  LDR.W           R1, [R0,R9]
25A79C:  LDR             R1, [R1,#0x2C]
25A79E:  BLX             R1
25A7A0:  LDRD.W          R0, R1, [R8,#0x74]
25A7A4:  SUBS            R0, R1, R0
25A7A6:  CMP             R0, R6
25A7A8:  BGE             loc_25A7D2
25A7AA:  LSLS            R4, R1, #1
25A7AC:  CMP             R4, #1
25A7AE:  BLT             loc_25A884
25A7B0:  LDR.W           R0, [R8,#0x70]; ptr
25A7B4:  LSLS            R1, R1, #3; size
25A7B6:  BLX             realloc
25A7BA:  CMP             R0, #0
25A7BC:  BEQ             loc_25A884
25A7BE:  LDR.W           R1, [R8,#0x74]
25A7C2:  STR.W           R4, [R8,#0x78]
25A7C6:  STR.W           R0, [R8,#0x70]
25A7CA:  SUBS            R0, R4, R1
25A7CC:  CMP             R0, R6
25A7CE:  MOV             R1, R4
25A7D0:  BLT             loc_25A7AA
25A7D2:  CMP             R6, #1
25A7D4:  BLT             loc_25A804
25A7D6:  ADD.W           R4, R8, #8
25A7DA:  MOVW            R10, #0x1012
25A7DE:  LDR             R1, [R5]
25A7E0:  MOV             R0, R4
25A7E2:  BLX             j_LookupUIntMapKey
25A7E6:  LDR.W           R1, [R8,#0x6C]
25A7EA:  CBZ             R1, loc_25A7F2
25A7EC:  STR.W           R10, [R0,#0x84]
25A7F0:  B               loc_25A7FC
25A7F2:  MOV             R1, R8
25A7F4:  MOVW            R2, #0x1012
25A7F8:  BLX             j_SetSourceState
25A7FC:  SUBS            R6, #1
25A7FE:  ADD.W           R5, R5, #4
25A802:  BNE             loc_25A7DE
25A804:  LDR.W           R0, [R8,#0x88]
25A808:  LDR.W           R1, [R0,R9]
25A80C:  LDR             R1, [R1,#0x30]
25A80E:  BLX             R1
25A810:  B               loc_25A8CA
25A812:  POP.W           {R8-R10}
25A816:  POP             {R4-R7,PC}
25A818:  LDR             R0, =(TrapALError_ptr - 0x25A81E)
25A81A:  ADD             R0, PC; TrapALError_ptr
25A81C:  LDR             R0, [R0]; TrapALError
25A81E:  LDRB            R0, [R0]
25A820:  CMP             R0, #0
25A822:  ITT NE
25A824:  MOVNE           R0, #5; sig
25A826:  BLXNE           raise
25A82A:  LDREX.W         R0, [R8,#0x50]
25A82E:  CMP             R0, #0
25A830:  BNE             loc_25A8C2
25A832:  ADD.W           R0, R8, #0x50 ; 'P'
25A836:  MOVW            R1, #0xA003
25A83A:  DMB.W           ISH
25A83E:  STREX.W         R2, R1, [R0]
25A842:  CMP             R2, #0
25A844:  BEQ             loc_25A8C6
25A846:  LDREX.W         R2, [R0]
25A84A:  CMP             R2, #0
25A84C:  BEQ             loc_25A83E
25A84E:  B               loc_25A8C2
25A850:  LDR             R0, =(TrapALError_ptr - 0x25A856)
25A852:  ADD             R0, PC; TrapALError_ptr
25A854:  LDR             R0, [R0]; TrapALError
25A856:  LDRB            R0, [R0]
25A858:  CMP             R0, #0
25A85A:  ITT NE
25A85C:  MOVNE           R0, #5; sig
25A85E:  BLXNE           raise
25A862:  LDREX.W         R0, [R8,#0x50]
25A866:  CBNZ            R0, loc_25A8C2
25A868:  ADD.W           R0, R8, #0x50 ; 'P'
25A86C:  MOVW            R1, #0xA001
25A870:  DMB.W           ISH
25A874:  STREX.W         R2, R1, [R0]
25A878:  CBZ             R2, loc_25A8C6
25A87A:  LDREX.W         R2, [R0]
25A87E:  CMP             R2, #0
25A880:  BEQ             loc_25A874
25A882:  B               loc_25A8C2
25A884:  LDR.W           R0, [R8,#0x88]
25A888:  LDR.W           R1, [R0,R9]
25A88C:  LDR             R1, [R1,#0x30]
25A88E:  BLX             R1
25A890:  LDR             R0, =(TrapALError_ptr - 0x25A896)
25A892:  ADD             R0, PC; TrapALError_ptr
25A894:  LDR             R0, [R0]; TrapALError
25A896:  LDRB            R0, [R0]
25A898:  CMP             R0, #0
25A89A:  ITT NE
25A89C:  MOVNE           R0, #5; sig
25A89E:  BLXNE           raise
25A8A2:  LDREX.W         R0, [R8,#0x50]
25A8A6:  CBNZ            R0, loc_25A8C2
25A8A8:  ADD.W           R0, R8, #0x50 ; 'P'
25A8AC:  MOVW            R1, #0xA005
25A8B0:  DMB.W           ISH
25A8B4:  STREX.W         R2, R1, [R0]
25A8B8:  CBZ             R2, loc_25A8C6
25A8BA:  LDREX.W         R2, [R0]
25A8BE:  CMP             R2, #0
25A8C0:  BEQ             loc_25A8B4
25A8C2:  CLREX.W
25A8C6:  DMB.W           ISH
25A8CA:  MOV             R0, R8
25A8CC:  POP.W           {R8-R10}
25A8D0:  POP.W           {R4-R7,LR}
25A8D4:  B.W             ALCcontext_DecRef
