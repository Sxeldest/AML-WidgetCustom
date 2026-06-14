; =========================================================
; Game Engine Function: _ZN14FxEmitterPrt_cnaEj
; Address            : 0x366CAC - 0x366CBC
; =========================================================

366CAC:  MOV             R1, R0; int
366CAE:  LDR             R0, =(g_fxMan_ptr - 0x366CB6)
366CB0:  MOVS            R2, #4; int
366CB2:  ADD             R0, PC; g_fxMan_ptr
366CB4:  LDR             R0, [R0]; g_fxMan
366CB6:  ADDS            R0, #0xAC; this
366CB8:  B.W             j_j__ZN14FxMemoryPool_c6GetMemEii; j_FxMemoryPool_c::GetMem(int,int)
