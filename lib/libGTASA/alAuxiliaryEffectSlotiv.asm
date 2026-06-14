; =========================================================
; Game Engine Function: alAuxiliaryEffectSlotiv
; Address            : 0x23E580 - 0x23E622
; =========================================================

23E580:  PUSH            {R4,R5,R7,LR}
23E582:  ADD             R7, SP, #8
23E584:  MOV             R5, R0
23E586:  ORR.W           R0, R1, #2
23E58A:  CMP             R0, #3
23E58C:  BNE             loc_23E598
23E58E:  LDR             R2, [R2]
23E590:  MOV             R0, R5
23E592:  POP.W           {R4,R5,R7,LR}
23E596:  B               alAuxiliaryEffectSloti
23E598:  BLX             j_GetContextRef
23E59C:  MOV             R4, R0
23E59E:  CMP             R4, #0
23E5A0:  IT EQ
23E5A2:  POPEQ           {R4,R5,R7,PC}
23E5A4:  ADD.W           R0, R4, #0x2C ; ','
23E5A8:  MOV             R1, R5
23E5AA:  BLX             j_LookupUIntMapKey
23E5AE:  LDR             R1, =(TrapALError_ptr - 0x23E5B6)
23E5B0:  CMP             R0, #0
23E5B2:  ADD             R1, PC; TrapALError_ptr
23E5B4:  LDR             R1, [R1]; TrapALError
23E5B6:  LDRB            R1, [R1]
23E5B8:  BEQ             loc_23E5E6
23E5BA:  CMP             R1, #0
23E5BC:  ITT NE
23E5BE:  MOVNE           R0, #5; sig
23E5C0:  BLXNE           raise
23E5C4:  LDREX.W         R0, [R4,#0x50]
23E5C8:  CBNZ            R0, loc_23E610
23E5CA:  ADD.W           R0, R4, #0x50 ; 'P'
23E5CE:  MOVW            R1, #0xA002
23E5D2:  DMB.W           ISH
23E5D6:  STREX.W         R2, R1, [R0]
23E5DA:  CBZ             R2, loc_23E614
23E5DC:  LDREX.W         R2, [R0]
23E5E0:  CMP             R2, #0
23E5E2:  BEQ             loc_23E5D6
23E5E4:  B               loc_23E610
23E5E6:  CMP             R1, #0
23E5E8:  ITT NE
23E5EA:  MOVNE           R0, #5; sig
23E5EC:  BLXNE           raise
23E5F0:  LDREX.W         R0, [R4,#0x50]
23E5F4:  CBNZ            R0, loc_23E610
23E5F6:  ADD.W           R0, R4, #0x50 ; 'P'
23E5FA:  MOVW            R1, #0xA001
23E5FE:  DMB.W           ISH
23E602:  STREX.W         R2, R1, [R0]
23E606:  CBZ             R2, loc_23E614
23E608:  LDREX.W         R2, [R0]
23E60C:  CMP             R2, #0
23E60E:  BEQ             loc_23E602
23E610:  CLREX.W
23E614:  DMB.W           ISH
23E618:  MOV             R0, R4
23E61A:  POP.W           {R4,R5,R7,LR}
23E61E:  B.W             ALCcontext_DecRef
