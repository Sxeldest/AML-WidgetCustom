; =========================================================
; Game Engine Function: alAuxiliaryEffectSlotfv
; Address            : 0x23E740 - 0x23E7E0
; =========================================================

23E740:  PUSH            {R4,R5,R7,LR}
23E742:  ADD             R7, SP, #8
23E744:  MOV             R5, R0
23E746:  CMP             R1, #2
23E748:  BNE             loc_23E756
23E74A:  LDR             R2, [R2]
23E74C:  MOV             R0, R5
23E74E:  MOVS            R1, #2
23E750:  POP.W           {R4,R5,R7,LR}
23E754:  B               alAuxiliaryEffectSlotf
23E756:  BLX             j_GetContextRef
23E75A:  MOV             R4, R0
23E75C:  CMP             R4, #0
23E75E:  IT EQ
23E760:  POPEQ           {R4,R5,R7,PC}
23E762:  ADD.W           R0, R4, #0x2C ; ','
23E766:  MOV             R1, R5
23E768:  BLX             j_LookupUIntMapKey
23E76C:  LDR             R1, =(TrapALError_ptr - 0x23E774)
23E76E:  CMP             R0, #0
23E770:  ADD             R1, PC; TrapALError_ptr
23E772:  LDR             R1, [R1]; TrapALError
23E774:  LDRB            R1, [R1]
23E776:  BEQ             loc_23E7A4
23E778:  CMP             R1, #0
23E77A:  ITT NE
23E77C:  MOVNE           R0, #5; sig
23E77E:  BLXNE           raise
23E782:  LDREX.W         R0, [R4,#0x50]
23E786:  CBNZ            R0, loc_23E7CE
23E788:  ADD.W           R0, R4, #0x50 ; 'P'
23E78C:  MOVW            R1, #0xA002
23E790:  DMB.W           ISH
23E794:  STREX.W         R2, R1, [R0]
23E798:  CBZ             R2, loc_23E7D2
23E79A:  LDREX.W         R2, [R0]
23E79E:  CMP             R2, #0
23E7A0:  BEQ             loc_23E794
23E7A2:  B               loc_23E7CE
23E7A4:  CMP             R1, #0
23E7A6:  ITT NE
23E7A8:  MOVNE           R0, #5; sig
23E7AA:  BLXNE           raise
23E7AE:  LDREX.W         R0, [R4,#0x50]
23E7B2:  CBNZ            R0, loc_23E7CE
23E7B4:  ADD.W           R0, R4, #0x50 ; 'P'
23E7B8:  MOVW            R1, #0xA001
23E7BC:  DMB.W           ISH
23E7C0:  STREX.W         R2, R1, [R0]
23E7C4:  CBZ             R2, loc_23E7D2
23E7C6:  LDREX.W         R2, [R0]
23E7CA:  CMP             R2, #0
23E7CC:  BEQ             loc_23E7C0
23E7CE:  CLREX.W
23E7D2:  DMB.W           ISH
23E7D6:  MOV             R0, R4
23E7D8:  POP.W           {R4,R5,R7,LR}
23E7DC:  B.W             ALCcontext_DecRef
