; =========================================================
; Game Engine Function: _ZN18FxInfoEmRotation_cC2Ev
; Address            : 0x36A724 - 0x36A75C
; =========================================================

36A724:  PUSH            {R4,R6,R7,LR}
36A726:  ADD             R7, SP, #8
36A728:  MOV             R4, R0
36A72A:  LDR             R0, =(_ZTV18FxInfoEmRotation_c_ptr - 0x36A730)
36A72C:  ADD             R0, PC; _ZTV18FxInfoEmRotation_c_ptr
36A72E:  LDR             R0, [R0]; `vtable for'FxInfoEmRotation_c ...
36A730:  ADDS            R0, #8
36A732:  STR             R0, [R4]
36A734:  ADD.W           R0, R4, #8; this
36A738:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36A73C:  LDR             R0, =(g_fxMan_ptr - 0x36A74A)
36A73E:  MOVS            R1, #2
36A740:  STRB            R1, [R4,#0xE]
36A742:  MOV.W           R1, #0x1200
36A746:  ADD             R0, PC; g_fxMan_ptr
36A748:  STRH            R1, [R4,#4]
36A74A:  MOVS            R1, #8; int
36A74C:  MOVS            R2, #4; int
36A74E:  LDR             R0, [R0]; g_fxMan
36A750:  ADDS            R0, #0xAC; this
36A752:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A756:  STR             R0, [R4,#0x14]
36A758:  MOV             R0, R4
36A75A:  POP             {R4,R6,R7,PC}
