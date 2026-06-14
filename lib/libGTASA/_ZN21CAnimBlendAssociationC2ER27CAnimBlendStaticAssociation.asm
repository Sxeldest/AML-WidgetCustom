; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociationC2ER27CAnimBlendStaticAssociation
; Address            : 0x389D70 - 0x389DBC
; =========================================================

389D70:  PUSH            {R4,R6,R7,LR}
389D72:  ADD             R7, SP, #8
389D74:  MOV             R4, R0
389D76:  ADR             R0, dword_389DC0
389D78:  VLD1.64         {D16-D17}, [R0@128]
389D7C:  ADD.W           R3, R4, #0x18
389D80:  MOVS            R2, #0
389D82:  LDR             R0, =(_ZTV21CAnimBlendAssociation_ptr - 0x389D8A)
389D84:  STR             R2, [R4,#0x10]
389D86:  ADD             R0, PC; _ZTV21CAnimBlendAssociation_ptr
389D88:  STR             R2, [R4,#0x28]
389D8A:  STR             R2, [R4,#0x30]
389D8C:  LDR             R0, [R0]; `vtable for'CAnimBlendAssociation ...
389D8E:  STR             R2, [R4,#4]
389D90:  ADDS            R0, #8
389D92:  VST1.32         {D16-D17}, [R3]
389D96:  STR             R2, [R4,#8]
389D98:  STR             R0, [R4]
389D9A:  MOV             R0, R4; this
389D9C:  BLX             j__ZN21CAnimBlendAssociation4InitER27CAnimBlendStaticAssociation; CAnimBlendAssociation::Init(CAnimBlendStaticAssociation &)
389DA0:  LDRB.W          R0, [R4,#0x2F]
389DA4:  LSLS            R0, R0, #0x19
389DA6:  BMI             loc_389DB8
389DA8:  LDR             R0, [R4,#0x14]
389DAA:  LDR             R0, [R0,#0xC]; this
389DAC:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
389DB0:  LDRH            R0, [R4,#0x2E]
389DB2:  ORR.W           R0, R0, #0x4000
389DB6:  STRH            R0, [R4,#0x2E]
389DB8:  MOV             R0, R4
389DBA:  POP             {R4,R6,R7,PC}
