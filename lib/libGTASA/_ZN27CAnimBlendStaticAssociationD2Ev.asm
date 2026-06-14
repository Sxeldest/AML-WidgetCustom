; =========================================================
; Game Engine Function: _ZN27CAnimBlendStaticAssociationD2Ev
; Address            : 0x389A04 - 0x389A22
; =========================================================

389A04:  PUSH            {R4,R6,R7,LR}
389A06:  ADD             R7, SP, #8
389A08:  MOV             R4, R0
389A0A:  LDR             R0, =(_ZTV27CAnimBlendStaticAssociation_ptr - 0x389A10)
389A0C:  ADD             R0, PC; _ZTV27CAnimBlendStaticAssociation_ptr
389A0E:  LDR             R1, [R0]; `vtable for'CAnimBlendStaticAssociation ...
389A10:  LDR             R0, [R4,#0xC]; this
389A12:  ADDS            R1, #8; void *
389A14:  STR             R1, [R4]
389A16:  CMP             R0, #0
389A18:  IT NE
389A1A:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
389A1E:  MOV             R0, R4
389A20:  POP             {R4,R6,R7,PC}
