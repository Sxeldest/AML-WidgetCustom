; =========================================================
; Game Engine Function: alGetAuxiliaryEffectSlotf
; Address            : 0x23E950 - 0x23EA02
; =========================================================

23E950:  PUSH            {R4-R7,LR}
23E952:  ADD             R7, SP, #0xC
23E954:  PUSH.W          {R8}
23E958:  MOV             R8, R2
23E95A:  MOV             R6, R1
23E95C:  MOV             R5, R0
23E95E:  BLX             j_GetContextRef
23E962:  MOV             R4, R0
23E964:  CBZ             R4, loc_23E980
23E966:  ADD.W           R0, R4, #0x2C ; ','
23E96A:  MOV             R1, R5
23E96C:  BLX             j_LookupUIntMapKey
23E970:  CBZ             R0, loc_23E986
23E972:  CMP             R6, #2
23E974:  BNE             loc_23E9BA
23E976:  LDR.W           R0, [R0,#0xB8]
23E97A:  STR.W           R0, [R8]
23E97E:  B               loc_23E9F4
23E980:  POP.W           {R8}
23E984:  POP             {R4-R7,PC}
23E986:  LDR             R0, =(TrapALError_ptr - 0x23E98C)
23E988:  ADD             R0, PC; TrapALError_ptr
23E98A:  LDR             R0, [R0]; TrapALError
23E98C:  LDRB            R0, [R0]
23E98E:  CMP             R0, #0
23E990:  ITT NE
23E992:  MOVNE           R0, #5; sig
23E994:  BLXNE           raise
23E998:  LDREX.W         R0, [R4,#0x50]
23E99C:  CBNZ            R0, loc_23E9EC
23E99E:  ADD.W           R0, R4, #0x50 ; 'P'
23E9A2:  MOVW            R1, #0xA001
23E9A6:  DMB.W           ISH
23E9AA:  STREX.W         R2, R1, [R0]
23E9AE:  CBZ             R2, loc_23E9F0
23E9B0:  LDREX.W         R2, [R0]
23E9B4:  CMP             R2, #0
23E9B6:  BEQ             loc_23E9AA
23E9B8:  B               loc_23E9EC
23E9BA:  LDR             R0, =(TrapALError_ptr - 0x23E9C0)
23E9BC:  ADD             R0, PC; TrapALError_ptr
23E9BE:  LDR             R0, [R0]; TrapALError
23E9C0:  LDRB            R0, [R0]
23E9C2:  CMP             R0, #0
23E9C4:  ITT NE
23E9C6:  MOVNE           R0, #5; sig
23E9C8:  BLXNE           raise
23E9CC:  LDREX.W         R0, [R4,#0x50]
23E9D0:  CBNZ            R0, loc_23E9EC
23E9D2:  ADD.W           R0, R4, #0x50 ; 'P'
23E9D6:  MOVW            R1, #0xA002
23E9DA:  DMB.W           ISH
23E9DE:  STREX.W         R2, R1, [R0]
23E9E2:  CBZ             R2, loc_23E9F0
23E9E4:  LDREX.W         R2, [R0]
23E9E8:  CMP             R2, #0
23E9EA:  BEQ             loc_23E9DE
23E9EC:  CLREX.W
23E9F0:  DMB.W           ISH
23E9F4:  MOV             R0, R4
23E9F6:  POP.W           {R8}
23E9FA:  POP.W           {R4-R7,LR}
23E9FE:  B.W             ALCcontext_DecRef
