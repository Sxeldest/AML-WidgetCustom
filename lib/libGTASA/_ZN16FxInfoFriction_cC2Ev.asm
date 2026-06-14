; =========================================================
; Game Engine Function: _ZN16FxInfoFriction_cC2Ev
; Address            : 0x36AA10 - 0x36AA48
; =========================================================

36AA10:  PUSH            {R4,R6,R7,LR}
36AA12:  ADD             R7, SP, #8
36AA14:  MOV             R4, R0
36AA16:  LDR             R0, =(_ZTV16FxInfoFriction_c_ptr - 0x36AA1C)
36AA18:  ADD             R0, PC; _ZTV16FxInfoFriction_c_ptr
36AA1A:  LDR             R0, [R0]; `vtable for'FxInfoFriction_c ...
36AA1C:  ADDS            R0, #8
36AA1E:  STR             R0, [R4]
36AA20:  ADD.W           R0, R4, #8; this
36AA24:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36AA28:  LDR             R0, =(g_fxMan_ptr - 0x36AA36)
36AA2A:  MOVS            R1, #1
36AA2C:  STRB            R1, [R4,#0xE]
36AA2E:  MOVW            R1, #0x2004
36AA32:  ADD             R0, PC; g_fxMan_ptr
36AA34:  STRH            R1, [R4,#4]
36AA36:  MOVS            R1, #4; int
36AA38:  MOVS            R2, #4; int
36AA3A:  LDR             R0, [R0]; g_fxMan
36AA3C:  ADDS            R0, #0xAC; this
36AA3E:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36AA42:  STR             R0, [R4,#0x14]
36AA44:  MOV             R0, R4
36AA46:  POP             {R4,R6,R7,PC}
