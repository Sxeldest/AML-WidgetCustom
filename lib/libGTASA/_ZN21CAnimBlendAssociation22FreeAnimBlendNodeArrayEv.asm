; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation22FreeAnimBlendNodeArrayEv
; Address            : 0x389EB4 - 0x389EC0
; =========================================================

389EB4:  LDR             R0, [R0,#0x10]; this
389EB6:  CMP             R0, #0
389EB8:  IT NE
389EBA:  BNE.W           j_j__ZN10CMemoryMgr9FreeAlignEPv; j_CMemoryMgr::FreeAlign(void *)
389EBE:  BX              LR
