; =========================================================
; Game Engine Function: _ZN10FxSphere_cnwEji
; Address            : 0x36DD28 - 0x36DD44
; =========================================================

36DD28:  MOV             R2, R0
36DD2A:  CMP             R1, #0
36DD2C:  ITT NE
36DD2E:  MOVNE           R0, R2; byte_count
36DD30:  BNE.W           sub_19CF58
36DD34:  LDR             R0, =(g_fxMan_ptr - 0x36DD3E)
36DD36:  MOV             R1, R2; int
36DD38:  MOVS            R2, #4; int
36DD3A:  ADD             R0, PC; g_fxMan_ptr
36DD3C:  LDR             R0, [R0]; g_fxMan
36DD3E:  ADDS            R0, #0xAC; this
36DD40:  B.W             j_j__ZN14FxMemoryPool_c6GetMemEii; j_FxMemoryPool_c::GetMem(int,int)
