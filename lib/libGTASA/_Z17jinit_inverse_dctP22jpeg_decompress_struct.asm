; =========================================================
; Game Engine Function: _Z17jinit_inverse_dctP22jpeg_decompress_struct
; Address            : 0x47C738 - 0x47C79C
; =========================================================

47C738:  PUSH            {R4-R7,LR}
47C73A:  ADD             R7, SP, #0xC
47C73C:  PUSH.W          {R8,R9,R11}
47C740:  MOV             R4, R0
47C742:  MOVS            R1, #1
47C744:  LDR             R0, [R4,#4]
47C746:  MOVS            R2, #0x24 ; '$'
47C748:  LDR             R3, [R0]
47C74A:  MOV             R0, R4
47C74C:  BLX             R3
47C74E:  LDR             R1, =(sub_47C7A0+1 - 0x47C758)
47C750:  STR.W           R0, [R4,#0x19C]
47C754:  ADD             R1, PC; sub_47C7A0
47C756:  STR             R1, [R0]
47C758:  LDR             R1, [R4,#0x24]
47C75A:  CMP             R1, #1
47C75C:  BLT             loc_47C796
47C75E:  LDR.W           R1, [R4,#0xC4]
47C762:  ADD.W           R8, R0, #0x14
47C766:  MOVS            R5, #0
47C768:  MOV.W           R9, #0xFFFFFFFF
47C76C:  ADD.W           R6, R1, #0x50 ; 'P'
47C770:  LDR             R0, [R4,#4]
47C772:  MOVS            R1, #1
47C774:  MOV.W           R2, #0x100
47C778:  LDR             R3, [R0]
47C77A:  MOV             R0, R4
47C77C:  BLX             R3
47C77E:  MOV.W           R1, #0x100
47C782:  STR.W           R0, [R6],#0x54
47C786:  BLX             j___aeabi_memclr8_1
47C78A:  STR.W           R9, [R8,R5,LSL#2]
47C78E:  ADDS            R5, #1
47C790:  LDR             R0, [R4,#0x24]
47C792:  CMP             R5, R0
47C794:  BLT             loc_47C770
47C796:  POP.W           {R8,R9,R11}
47C79A:  POP             {R4-R7,PC}
