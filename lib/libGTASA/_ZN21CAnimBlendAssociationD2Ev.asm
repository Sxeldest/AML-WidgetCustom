; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociationD2Ev
; Address            : 0x389E68 - 0x389EB0
; =========================================================

389E68:  PUSH            {R4,R6,R7,LR}
389E6A:  ADD             R7, SP, #8
389E6C:  MOV             R4, R0
389E6E:  LDR             R0, =(_ZTV21CAnimBlendAssociation_ptr - 0x389E74)
389E70:  ADD             R0, PC; _ZTV21CAnimBlendAssociation_ptr
389E72:  LDR             R1, [R0]; `vtable for'CAnimBlendAssociation ...
389E74:  LDR             R0, [R4,#0x10]; this
389E76:  ADDS            R1, #8; void *
389E78:  STR             R1, [R4]
389E7A:  CMP             R0, #0
389E7C:  IT NE
389E7E:  BLXNE           j__ZN10CMemoryMgr9FreeAlignEPv; CMemoryMgr::FreeAlign(void *)
389E82:  LDR             R0, [R4,#8]
389E84:  CMP             R0, #0
389E86:  ITT NE
389E88:  LDRNE           R1, [R4,#4]
389E8A:  STRNE           R1, [R0]
389E8C:  LDR             R0, [R4,#4]
389E8E:  CMP             R0, #0
389E90:  ITT NE
389E92:  LDRNE           R1, [R4,#8]
389E94:  STRNE           R1, [R0,#4]
389E96:  LDRB.W          R0, [R4,#0x2F]
389E9A:  MOVS            R1, #0; int
389E9C:  STRD.W          R1, R1, [R4,#4]
389EA0:  LSLS            R0, R0, #0x19
389EA2:  BPL             loc_389EAC
389EA4:  LDR             R0, [R4,#0x14]
389EA6:  LDR             R0, [R0,#0xC]; this
389EA8:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
389EAC:  MOV             R0, R4
389EAE:  POP             {R4,R6,R7,PC}
