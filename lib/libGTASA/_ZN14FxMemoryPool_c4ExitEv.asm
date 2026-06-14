; =========================================================
; Game Engine Function: _ZN14FxMemoryPool_c4ExitEv
; Address            : 0x36DAD2 - 0x36DADE
; =========================================================

36DAD2:  LDR             R0, [R0]; this
36DAD4:  CMP             R0, #0
36DAD6:  IT NE
36DAD8:  BNE.W           j_j__ZN10CMemoryMgr4FreeEPv; j_CMemoryMgr::Free(void *)
36DADC:  BX              LR
