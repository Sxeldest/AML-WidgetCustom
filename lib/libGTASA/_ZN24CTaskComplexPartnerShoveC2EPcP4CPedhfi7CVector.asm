; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerShoveC2EPcP4CPedhfi7CVector
; Address            : 0x535A94 - 0x535B18
; =========================================================

535A94:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexPartnerShove::CTaskComplexPartnerShove(char *, CPed *, unsigned char, float, int, CVector)'
535A96:  ADD             R7, SP, #0xC
535A98:  PUSH.W          {R8}
535A9C:  MOV             R6, R3
535A9E:  MOV             R5, R2
535AA0:  MOV             R4, R0
535AA2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
535AA6:  LDR             R1, =(_ZTV19CTaskComplexPartner_ptr - 0x535AB6)
535AA8:  CMP             R5, #0
535AAA:  LDRD.W          R8, R0, [R7,#arg_4]
535AAE:  LDRD.W          R3, R2, [R7,#arg_C]
535AB2:  ADD             R1, PC; _ZTV19CTaskComplexPartner_ptr
535AB4:  VLDR            S0, [R7,#arg_0]
535AB8:  STRB.W          R6, [R4,#0x58]
535ABC:  MOV.W           R6, #0
535AC0:  VSTR            S0, [R4,#0x3C]
535AC4:  STRB.W          R6, [R4,#0x5D]
535AC8:  STRB.W          R8, [R4,#0x5B]
535ACC:  STRD.W          R0, R3, [R4,#0x40]
535AD0:  LDR             R0, [R1]; `vtable for'CTaskComplexPartner ...
535AD2:  MOVW            R1, #0xFF01
535AD6:  STR             R2, [R4,#0x48]
535AD8:  STRB.W          R6, [R4,#0x5C]
535ADC:  ADD.W           R0, R0, #8
535AE0:  STRH.W          R1, [R4,#0x59]
535AE4:  MOV             R1, R4
535AE6:  STRB.W          R6, [R4,#0x6E]
535AEA:  STRB.W          R6, [R4,#0x5E]
535AEE:  STR             R0, [R4]
535AF0:  STR.W           R5, [R1,#0x38]!; CEntity **
535AF4:  ITT NE
535AF6:  MOVNE           R0, R5; this
535AF8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535AFC:  LDR             R0, =(_ZTV24CTaskComplexPartnerShove_ptr - 0x535B0A)
535AFE:  MOVW            R1, #0x4B9
535B02:  STRB.W          R8, [R4,#0x5B]
535B06:  ADD             R0, PC; _ZTV24CTaskComplexPartnerShove_ptr
535B08:  STR             R1, [R4,#0x34]
535B0A:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerShove ...
535B0C:  ADDS            R0, #8
535B0E:  STR             R0, [R4]
535B10:  MOV             R0, R4
535B12:  POP.W           {R8}
535B16:  POP             {R4-R7,PC}
