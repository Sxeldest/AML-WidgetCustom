; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociationD0Ev
; Address            : 0x389EC0 - 0x389F0E
; =========================================================

389EC0:  PUSH            {R4,R6,R7,LR}
389EC2:  ADD             R7, SP, #8
389EC4:  MOV             R4, R0
389EC6:  LDR             R0, =(_ZTV21CAnimBlendAssociation_ptr - 0x389ECC)
389EC8:  ADD             R0, PC; _ZTV21CAnimBlendAssociation_ptr
389ECA:  LDR             R1, [R0]; `vtable for'CAnimBlendAssociation ...
389ECC:  LDR             R0, [R4,#0x10]; this
389ECE:  ADDS            R1, #8; void *
389ED0:  STR             R1, [R4]
389ED2:  CMP             R0, #0
389ED4:  IT NE
389ED6:  BLXNE           j__ZN10CMemoryMgr9FreeAlignEPv; CMemoryMgr::FreeAlign(void *)
389EDA:  LDR             R0, [R4,#8]
389EDC:  CMP             R0, #0
389EDE:  ITT NE
389EE0:  LDRNE           R1, [R4,#4]
389EE2:  STRNE           R1, [R0]
389EE4:  LDR             R0, [R4,#4]
389EE6:  CMP             R0, #0
389EE8:  ITT NE
389EEA:  LDRNE           R1, [R4,#8]
389EEC:  STRNE           R1, [R0,#4]
389EEE:  LDRB.W          R0, [R4,#0x2F]
389EF2:  MOVS            R1, #0; int
389EF4:  STRD.W          R1, R1, [R4,#4]
389EF8:  LSLS            R0, R0, #0x19
389EFA:  BPL             loc_389F04
389EFC:  LDR             R0, [R4,#0x14]
389EFE:  LDR             R0, [R0,#0xC]; this
389F00:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
389F04:  MOV             R0, R4; void *
389F06:  POP.W           {R4,R6,R7,LR}
389F0A:  B.W             j__ZdlPv; operator delete(void *)
