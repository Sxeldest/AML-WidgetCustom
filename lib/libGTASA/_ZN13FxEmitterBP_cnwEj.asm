; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_cnwEj
; Address            : 0x366CF0 - 0x366D00
; =========================================================

366CF0:  MOV             R1, R0; int
366CF2:  LDR             R0, =(g_fxMan_ptr - 0x366CFA)
366CF4:  MOVS            R2, #4; int
366CF6:  ADD             R0, PC; g_fxMan_ptr
366CF8:  LDR             R0, [R0]; g_fxMan
366CFA:  ADDS            R0, #0xAC; this
366CFC:  B.W             j_j__ZN14FxMemoryPool_c6GetMemEii; j_FxMemoryPool_c::GetMem(int,int)
