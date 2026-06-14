; =========================================================
; Game Engine Function: _ZN23CTaskSimplePickUpEntityC2EP7CEntityPK7CVectorhhP10CAnimBlockP19CAnimBlendHierarchyif
; Address            : 0x54225C - 0x542318
; =========================================================

54225C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimplePickUpEntity::CTaskSimplePickUpEntity(CEntity *, CVector const*, unsigned char, unsigned char, CAnimBlock *, CAnimBlendHierarchy *, int, float)'
54225E:  ADD             R7, SP, #0xC
542260:  PUSH.W          {R8,R9,R11}
542264:  VPUSH           {D8}
542268:  MOV             R8, R3
54226A:  MOV             R6, R2
54226C:  MOV             R5, R1
54226E:  MOV             R4, R0
542270:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
542274:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x542280)
542276:  MOVS            R2, #0
542278:  LDR             R1, [R7,#arg_0]
54227A:  CMP             R6, #0
54227C:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
54227E:  STRD.W          R2, R2, [R4,#0x10]
542282:  STRB            R1, [R4,#0x19]
542284:  MOV.W           R1, #0xBF
542288:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
54228A:  ADD.W           R9, R7, #0xC
54228E:  STRB.W          R8, [R4,#0x18]
542292:  STRD.W          R2, R1, [R4,#0x1C]
542296:  MOV.W           R1, #0x100
54229A:  ADD.W           R0, R0, #8
54229E:  STR             R2, [R4,#0x24]
5422A0:  STR             R2, [R4,#0x38]
5422A2:  STRH            R1, [R4,#0x34]
5422A4:  MOV             R1, R4
5422A6:  STRB.W          R2, [R4,#0x36]
5422AA:  STR             R0, [R4]
5422AC:  MOV             R0, R4
5422AE:  STR.W           R2, [R0,#0xC]!
5422B2:  STR.W           R5, [R1,#8]!; CEntity **
5422B6:  VLDR            S16, [R7,#arg_10]
5422BA:  ITTTT NE
5422BC:  VLDRNE          D16, [R6]
5422C0:  LDRNE           R2, [R6,#8]
5422C2:  STRNE           R2, [R0,#8]
5422C4:  VSTRNE          D16, [R0]
5422C8:  CMP             R5, #0
5422CA:  LDM.W           R9, {R6,R8,R9}
5422CE:  BEQ             loc_5422DE
5422D0:  LDR             R0, [R5,#0x1C]
5422D2:  ORR.W           R0, R0, #0x400
5422D6:  STR             R0, [R5,#0x1C]
5422D8:  LDR             R0, [R1]; this
5422DA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5422DE:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x5422E6)
5422E0:  STR             R6, [R4,#0x2C]
5422E2:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
5422E4:  STR.W           R9, [R4,#0x28]
5422E8:  STR.W           R8, [R4,#0x30]
5422EC:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
5422EE:  SUBS            R0, R6, R0
5422F0:  ASRS            R0, R0, #5; this
5422F2:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
5422F6:  LDR             R0, =(_ZTV23CTaskSimplePickUpEntity_ptr - 0x542300)
5422F8:  VSTR            S16, [R4,#0x3C]
5422FC:  ADD             R0, PC; _ZTV23CTaskSimplePickUpEntity_ptr
5422FE:  LDR             R0, [R0]; `vtable for'CTaskSimplePickUpEntity ...
542300:  ADDS            R0, #8
542302:  STR             R0, [R4]
542304:  MOVS            R0, #0
542306:  STRD.W          R0, R0, [R4,#0x40]
54230A:  STR             R0, [R4,#0x48]
54230C:  MOV             R0, R4
54230E:  VPOP            {D8}
542312:  POP.W           {R8,R9,R11}
542316:  POP             {R4-R7,PC}
