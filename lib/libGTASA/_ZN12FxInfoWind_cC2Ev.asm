; =========================================================
; Game Engine Function: _ZN12FxInfoWind_cC2Ev
; Address            : 0x36B05C - 0x36B094
; =========================================================

36B05C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoWind_c::FxInfoWind_c(void)'
36B05E:  ADD             R7, SP, #8
36B060:  MOV             R4, R0
36B062:  LDR             R0, =(_ZTV12FxInfoWind_c_ptr - 0x36B068)
36B064:  ADD             R0, PC; _ZTV12FxInfoWind_c_ptr
36B066:  LDR             R0, [R0]; `vtable for'FxInfoWind_c ...
36B068:  ADDS            R0, #8
36B06A:  STR             R0, [R4]
36B06C:  ADD.W           R0, R4, #8; this
36B070:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36B074:  LDR             R0, =(g_fxMan_ptr - 0x36B082)
36B076:  MOVS            R1, #1
36B078:  STRB            R1, [R4,#0xE]
36B07A:  MOV.W           R1, #0x2040
36B07E:  ADD             R0, PC; g_fxMan_ptr
36B080:  STRH            R1, [R4,#4]
36B082:  MOVS            R1, #4; int
36B084:  MOVS            R2, #4; int
36B086:  LDR             R0, [R0]; g_fxMan
36B088:  ADDS            R0, #0xAC; this
36B08A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B08E:  STR             R0, [R4,#0x14]
36B090:  MOV             R0, R4
36B092:  POP             {R4,R6,R7,PC}
