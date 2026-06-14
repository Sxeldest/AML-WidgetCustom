; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociationC2ERS_
; Address            : 0x389C40 - 0x389C8C
; =========================================================

389C40:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CAnimBlendAssociation::CAnimBlendAssociation(CAnimBlendAssociation&)'
389C42:  ADD             R7, SP, #8
389C44:  MOV             R4, R0
389C46:  ADR             R0, dword_389C90
389C48:  VLD1.64         {D16-D17}, [R0@128]
389C4C:  ADD.W           R3, R4, #0x18
389C50:  MOVS            R2, #0
389C52:  LDR             R0, =(_ZTV21CAnimBlendAssociation_ptr - 0x389C5A)
389C54:  STR             R2, [R4,#0x10]
389C56:  ADD             R0, PC; _ZTV21CAnimBlendAssociation_ptr
389C58:  STR             R2, [R4,#0x28]
389C5A:  STR             R2, [R4,#0x30]
389C5C:  LDR             R0, [R0]; `vtable for'CAnimBlendAssociation ...
389C5E:  STR             R2, [R4,#4]
389C60:  ADDS            R0, #8
389C62:  VST1.32         {D16-D17}, [R3]
389C66:  STR             R2, [R4,#8]
389C68:  STR             R0, [R4]
389C6A:  MOV             R0, R4; this
389C6C:  BLX             j__ZN21CAnimBlendAssociation4InitERS_; CAnimBlendAssociation::Init(CAnimBlendAssociation&)
389C70:  LDRB.W          R0, [R4,#0x2F]
389C74:  LSLS            R0, R0, #0x19
389C76:  BMI             loc_389C88
389C78:  LDR             R0, [R4,#0x14]
389C7A:  LDR             R0, [R0,#0xC]; this
389C7C:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
389C80:  LDRH            R0, [R4,#0x2E]
389C82:  ORR.W           R0, R0, #0x4000
389C86:  STRH            R0, [R4,#0x2E]
389C88:  MOV             R0, R4
389C8A:  POP             {R4,R6,R7,PC}
