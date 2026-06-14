; =========================================================
; Game Engine Function: _ZN14FxInfoEmSize_cC2Ev
; Address            : 0x36A44C - 0x36A484
; =========================================================

36A44C:  PUSH            {R4,R6,R7,LR}
36A44E:  ADD             R7, SP, #8
36A450:  MOV             R4, R0
36A452:  LDR             R0, =(_ZTV14FxInfoEmSize_c_ptr - 0x36A458)
36A454:  ADD             R0, PC; _ZTV14FxInfoEmSize_c_ptr
36A456:  LDR             R0, [R0]; `vtable for'FxInfoEmSize_c ...
36A458:  ADDS            R0, #8
36A45A:  STR             R0, [R4]
36A45C:  ADD.W           R0, R4, #8; this
36A460:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36A464:  LDR             R0, =(g_fxMan_ptr - 0x36A472)
36A466:  MOVS            R1, #7
36A468:  STRB            R1, [R4,#0xE]
36A46A:  MOVW            R1, #0x1004
36A46E:  ADD             R0, PC; g_fxMan_ptr
36A470:  STRH            R1, [R4,#4]
36A472:  MOVS            R1, #0x1C; int
36A474:  MOVS            R2, #4; int
36A476:  LDR             R0, [R0]; g_fxMan
36A478:  ADDS            R0, #0xAC; this
36A47A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A47E:  STR             R0, [R4,#0x14]
36A480:  MOV             R0, R4
36A482:  POP             {R4,R6,R7,PC}
