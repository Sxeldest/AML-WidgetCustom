; =========================================================
; Game Engine Function: _ZN14FxInfoJitter_cC2Ev
; Address            : 0x36B13C - 0x36B174
; =========================================================

36B13C:  PUSH            {R4,R6,R7,LR}
36B13E:  ADD             R7, SP, #8
36B140:  MOV             R4, R0
36B142:  LDR             R0, =(_ZTV14FxInfoJitter_c_ptr - 0x36B148)
36B144:  ADD             R0, PC; _ZTV14FxInfoJitter_c_ptr
36B146:  LDR             R0, [R0]; `vtable for'FxInfoJitter_c ...
36B148:  ADDS            R0, #8
36B14A:  STR             R0, [R4]
36B14C:  ADD.W           R0, R4, #8; this
36B150:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36B154:  LDR             R0, =(g_fxMan_ptr - 0x36B162)
36B156:  MOVS            R1, #1
36B158:  STRB            R1, [R4,#0xE]
36B15A:  MOV.W           R1, #0x2080
36B15E:  ADD             R0, PC; g_fxMan_ptr
36B160:  STRH            R1, [R4,#4]
36B162:  MOVS            R1, #4; int
36B164:  MOVS            R2, #4; int
36B166:  LDR             R0, [R0]; g_fxMan
36B168:  ADDS            R0, #0xAC; this
36B16A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B16E:  STR             R0, [R4,#0x14]
36B170:  MOV             R0, R4
36B172:  POP             {R4,R6,R7,PC}
