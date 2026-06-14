; =========================================================
; Game Engine Function: _ZN27CAnimBlendStaticAssociation17FreeSequenceArrayEv
; Address            : 0x389A28 - 0x389A34
; =========================================================

389A28:  LDR             R0, [R0,#0xC]; this
389A2A:  CMP             R0, #0
389A2C:  IT NE
389A2E:  BNE.W           j_j__ZN10CMemoryMgr4FreeEPv; j_CMemoryMgr::Free(void *)
389A32:  BX              LR
