; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhhP10CAnimBlockP19CAnimBlendHierarchyi
; Address            : 0x5413F8 - 0x541492
; =========================================================

5413F8:  PUSH            {R4-R7,LR}
5413FA:  ADD             R7, SP, #0xC
5413FC:  PUSH.W          {R8,R9,R11}
541400:  MOV             R8, R3
541402:  MOV             R6, R2
541404:  MOV             R5, R1
541406:  MOV             R4, R0
541408:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54140C:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x541418)
54140E:  MOVS            R2, #0
541410:  LDR             R1, [R7,#arg_0]
541412:  CMP             R6, #0
541414:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
541416:  STRD.W          R2, R2, [R4,#0x10]
54141A:  STRB            R1, [R4,#0x19]
54141C:  MOV.W           R1, #0xBF
541420:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
541422:  ADD.W           R9, R7, #0xC
541426:  STRB.W          R8, [R4,#0x18]
54142A:  STRD.W          R2, R1, [R4,#0x1C]
54142E:  MOV.W           R1, #0x100
541432:  ADD.W           R0, R0, #8
541436:  STR             R2, [R4,#0x24]
541438:  STR             R2, [R4,#0x38]
54143A:  STRH            R1, [R4,#0x34]
54143C:  MOV             R1, R4
54143E:  STRB.W          R2, [R4,#0x36]
541442:  STR             R0, [R4]
541444:  MOV             R0, R4
541446:  STR.W           R2, [R0,#0xC]!
54144A:  STR.W           R5, [R1,#8]!; CEntity **
54144E:  ITTTT NE
541450:  VLDRNE          D16, [R6]
541454:  LDRNE           R2, [R6,#8]
541456:  STRNE           R2, [R0,#8]
541458:  VSTRNE          D16, [R0]
54145C:  CMP             R5, #0
54145E:  LDM.W           R9, {R6,R8,R9}
541462:  BEQ             loc_541472
541464:  LDR             R0, [R5,#0x1C]
541466:  ORR.W           R0, R0, #0x400
54146A:  STR             R0, [R5,#0x1C]
54146C:  LDR             R0, [R1]; this
54146E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
541472:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x54147A)
541474:  STR             R6, [R4,#0x2C]
541476:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
541478:  STR.W           R9, [R4,#0x28]
54147C:  STR.W           R8, [R4,#0x30]
541480:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
541482:  SUBS            R0, R6, R0
541484:  ASRS            R0, R0, #5; this
541486:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
54148A:  MOV             R0, R4
54148C:  POP.W           {R8,R9,R11}
541490:  POP             {R4-R7,PC}
