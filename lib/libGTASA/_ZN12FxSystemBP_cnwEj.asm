; =========================================================
; Game Engine Function: _ZN12FxSystemBP_cnwEj
; Address            : 0x36DF34 - 0x36DF44
; =========================================================

36DF34:  MOV             R1, R0; int
36DF36:  LDR             R0, =(g_fxMan_ptr - 0x36DF3E)
36DF38:  MOVS            R2, #4; int
36DF3A:  ADD             R0, PC; g_fxMan_ptr
36DF3C:  LDR             R0, [R0]; g_fxMan
36DF3E:  ADDS            R0, #0xAC; this
36DF40:  B.W             j_j__ZN14FxMemoryPool_c6GetMemEii; j_FxMemoryPool_c::GetMem(int,int)
