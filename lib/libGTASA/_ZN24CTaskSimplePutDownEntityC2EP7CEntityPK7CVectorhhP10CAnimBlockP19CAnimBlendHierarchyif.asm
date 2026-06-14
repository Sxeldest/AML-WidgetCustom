; =========================================================
; Game Engine Function: _ZN24CTaskSimplePutDownEntityC2EP7CEntityPK7CVectorhhP10CAnimBlockP19CAnimBlendHierarchyif
; Address            : 0x5423F8 - 0x5424AC
; =========================================================

5423F8:  PUSH            {R4-R7,LR}
5423FA:  ADD             R7, SP, #0xC
5423FC:  PUSH.W          {R8,R9,R11}
542400:  VPUSH           {D8}
542404:  MOV             R8, R3
542406:  MOV             R6, R2
542408:  MOV             R5, R1
54240A:  MOV             R4, R0
54240C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
542410:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x54241C)
542412:  MOVS            R2, #0
542414:  LDR             R1, [R7,#arg_0]
542416:  CMP             R6, #0
542418:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
54241A:  STRD.W          R2, R2, [R4,#0x10]
54241E:  STRB            R1, [R4,#0x19]
542420:  MOV.W           R1, #0xBF
542424:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
542426:  ADD.W           R9, R7, #0xC
54242A:  STRB.W          R8, [R4,#0x18]
54242E:  STRD.W          R2, R1, [R4,#0x1C]
542432:  MOV.W           R1, #0x100
542436:  ADD.W           R0, R0, #8
54243A:  STR             R2, [R4,#0x24]
54243C:  STR             R2, [R4,#0x38]
54243E:  STRH            R1, [R4,#0x34]
542440:  MOV             R1, R4
542442:  STRB.W          R2, [R4,#0x36]
542446:  STR             R0, [R4]
542448:  MOV             R0, R4
54244A:  STR.W           R2, [R0,#0xC]!
54244E:  STR.W           R5, [R1,#8]!; CEntity **
542452:  VLDR            S16, [R7,#arg_10]
542456:  ITTTT NE
542458:  VLDRNE          D16, [R6]
54245C:  LDRNE           R2, [R6,#8]
54245E:  STRNE           R2, [R0,#8]
542460:  VSTRNE          D16, [R0]
542464:  CMP             R5, #0
542466:  LDM.W           R9, {R6,R8,R9}
54246A:  BEQ             loc_54247A
54246C:  LDR             R0, [R5,#0x1C]
54246E:  ORR.W           R0, R0, #0x400
542472:  STR             R0, [R5,#0x1C]
542474:  LDR             R0, [R1]; this
542476:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54247A:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x542482)
54247C:  STR             R6, [R4,#0x2C]
54247E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
542480:  STR.W           R9, [R4,#0x28]
542484:  STR.W           R8, [R4,#0x30]
542488:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
54248A:  SUBS            R0, R6, R0
54248C:  ASRS            R0, R0, #5; this
54248E:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
542492:  LDR             R0, =(_ZTV24CTaskSimplePutDownEntity_ptr - 0x54249C)
542494:  VSTR            S16, [R4,#0x3C]
542498:  ADD             R0, PC; _ZTV24CTaskSimplePutDownEntity_ptr
54249A:  LDR             R0, [R0]; `vtable for'CTaskSimplePutDownEntity ...
54249C:  ADDS            R0, #8
54249E:  STR             R0, [R4]
5424A0:  MOV             R0, R4
5424A2:  VPOP            {D8}
5424A6:  POP.W           {R8,R9,R11}
5424AA:  POP             {R4-R7,PC}
