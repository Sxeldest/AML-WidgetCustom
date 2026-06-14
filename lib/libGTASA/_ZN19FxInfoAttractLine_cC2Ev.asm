; =========================================================
; Game Engine Function: _ZN19FxInfoAttractLine_cC2Ev
; Address            : 0x36AC08 - 0x36AC40
; =========================================================

36AC08:  PUSH            {R4,R6,R7,LR}
36AC0A:  ADD             R7, SP, #8
36AC0C:  MOV             R4, R0
36AC0E:  LDR             R0, =(_ZTV19FxInfoAttractLine_c_ptr - 0x36AC14)
36AC10:  ADD             R0, PC; _ZTV19FxInfoAttractLine_c_ptr
36AC12:  LDR             R0, [R0]; `vtable for'FxInfoAttractLine_c ...
36AC14:  ADDS            R0, #8
36AC16:  STR             R0, [R4]
36AC18:  ADD.W           R0, R4, #8; this
36AC1C:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36AC20:  LDR             R0, =(g_fxMan_ptr - 0x36AC2E)
36AC22:  MOVS            R1, #7
36AC24:  STRB            R1, [R4,#0xE]
36AC26:  MOVW            R1, #0x2010
36AC2A:  ADD             R0, PC; g_fxMan_ptr
36AC2C:  STRH            R1, [R4,#4]
36AC2E:  MOVS            R1, #0x1C; int
36AC30:  MOVS            R2, #4; int
36AC32:  LDR             R0, [R0]; g_fxMan
36AC34:  ADDS            R0, #0xAC; this
36AC36:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36AC3A:  STR             R0, [R4,#0x14]
36AC3C:  MOV             R0, R4
36AC3E:  POP             {R4,R6,R7,PC}
