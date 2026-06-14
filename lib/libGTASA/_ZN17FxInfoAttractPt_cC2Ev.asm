; =========================================================
; Game Engine Function: _ZN17FxInfoAttractPt_cC2Ev
; Address            : 0x36AAD0 - 0x36AB08
; =========================================================

36AAD0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoAttractPt_c::FxInfoAttractPt_c(void)'
36AAD2:  ADD             R7, SP, #8
36AAD4:  MOV             R4, R0
36AAD6:  LDR             R0, =(_ZTV17FxInfoAttractPt_c_ptr - 0x36AADC)
36AAD8:  ADD             R0, PC; _ZTV17FxInfoAttractPt_c_ptr
36AADA:  LDR             R0, [R0]; `vtable for'FxInfoAttractPt_c ...
36AADC:  ADDS            R0, #8
36AADE:  STR             R0, [R4]
36AAE0:  ADD.W           R0, R4, #8; this
36AAE4:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36AAE8:  LDR             R0, =(g_fxMan_ptr - 0x36AAF6)
36AAEA:  MOVS            R1, #4
36AAEC:  STRB            R1, [R4,#0xE]
36AAEE:  MOVW            R1, #0x2008
36AAF2:  ADD             R0, PC; g_fxMan_ptr
36AAF4:  STRH            R1, [R4,#4]
36AAF6:  MOVS            R1, #0x10; int
36AAF8:  MOVS            R2, #4; int
36AAFA:  LDR             R0, [R0]; g_fxMan
36AAFC:  ADDS            R0, #0xAC; this
36AAFE:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36AB02:  STR             R0, [R4,#0x14]
36AB04:  MOV             R0, R4
36AB06:  POP             {R4,R6,R7,PC}
