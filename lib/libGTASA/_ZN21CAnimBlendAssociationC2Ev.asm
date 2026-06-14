; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociationC2Ev
; Address            : 0x389A90 - 0x389AC2
; =========================================================

389A90:  LDR             R1, =(_ZTV21CAnimBlendAssociation_ptr - 0x389AA0); Alternative name is 'CAnimBlendAssociation::CAnimBlendAssociation(void)'
389A92:  ADR             R2, dword_389AD0
389A94:  VLD1.64         {D16-D17}, [R2@128]
389A98:  MOVW            R2, #0xFFFF
389A9C:  ADD             R1, PC; _ZTV21CAnimBlendAssociation_ptr
389A9E:  MOVS            R3, #0
389AA0:  STRH            R2, [R0,#0xE]
389AA2:  LDR             R1, [R1]; `vtable for'CAnimBlendAssociation ...
389AA4:  STRD.W          R3, R3, [R0,#0x10]
389AA8:  STR             R3, [R0,#0x28]
389AAA:  ADDS            R1, #8
389AAC:  STRH            R2, [R0,#0x2C]
389AAE:  ADD.W           R2, R0, #0x18
389AB2:  STRH            R3, [R0,#0x2E]
389AB4:  STR             R3, [R0,#0x30]
389AB6:  STR             R3, [R0,#4]
389AB8:  VST1.32         {D16-D17}, [R2]
389ABC:  STR             R3, [R0,#8]
389ABE:  STR             R1, [R0]
389AC0:  BX              LR
