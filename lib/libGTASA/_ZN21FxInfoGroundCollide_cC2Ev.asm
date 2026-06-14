; =========================================================
; Game Engine Function: _ZN21FxInfoGroundCollide_cC2Ev
; Address            : 0x36ADBC - 0x36ADF4
; =========================================================

36ADBC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoGroundCollide_c::FxInfoGroundCollide_c(void)'
36ADBE:  ADD             R7, SP, #8
36ADC0:  MOV             R4, R0
36ADC2:  LDR             R0, =(_ZTV21FxInfoGroundCollide_c_ptr - 0x36ADC8)
36ADC4:  ADD             R0, PC; _ZTV21FxInfoGroundCollide_c_ptr
36ADC6:  LDR             R0, [R0]; `vtable for'FxInfoGroundCollide_c ...
36ADC8:  ADDS            R0, #8
36ADCA:  STR             R0, [R4]
36ADCC:  ADD.W           R0, R4, #8; this
36ADD0:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36ADD4:  LDR             R0, =(g_fxMan_ptr - 0x36ADE2)
36ADD6:  MOVS            R1, #3
36ADD8:  STRB            R1, [R4,#0xE]
36ADDA:  MOVW            R1, #0x2020
36ADDE:  ADD             R0, PC; g_fxMan_ptr
36ADE0:  STRH            R1, [R4,#4]
36ADE2:  MOVS            R1, #0xC; int
36ADE4:  MOVS            R2, #4; int
36ADE6:  LDR             R0, [R0]; g_fxMan
36ADE8:  ADDS            R0, #0xAC; this
36ADEA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36ADEE:  STR             R0, [R4,#0x14]
36ADF0:  MOV             R0, R4
36ADF2:  POP             {R4,R6,R7,PC}
