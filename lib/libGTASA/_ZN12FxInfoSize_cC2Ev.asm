; =========================================================
; Game Engine Function: _ZN12FxInfoSize_cC2Ev
; Address            : 0x36B458 - 0x36B490
; =========================================================

36B458:  PUSH            {R4,R6,R7,LR}
36B45A:  ADD             R7, SP, #8
36B45C:  MOV             R4, R0
36B45E:  LDR             R0, =(_ZTV12FxInfoSize_c_ptr - 0x36B464)
36B460:  ADD             R0, PC; _ZTV12FxInfoSize_c_ptr
36B462:  LDR             R0, [R0]; `vtable for'FxInfoSize_c ...
36B464:  ADDS            R0, #8
36B466:  STR             R0, [R4]
36B468:  ADD.W           R0, R4, #8; this
36B46C:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36B470:  LDR             R0, =(g_fxMan_ptr - 0x36B47E)
36B472:  MOVS            R1, #4
36B474:  STRB            R1, [R4,#0xE]
36B476:  MOVW            R1, #0x4002
36B47A:  ADD             R0, PC; g_fxMan_ptr
36B47C:  STRH            R1, [R4,#4]
36B47E:  MOVS            R1, #0x10; int
36B480:  MOVS            R2, #4; int
36B482:  LDR             R0, [R0]; g_fxMan
36B484:  ADDS            R0, #0xAC; this
36B486:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B48A:  STR             R0, [R4,#0x14]
36B48C:  MOV             R0, R4
36B48E:  POP             {R4,R6,R7,PC}
