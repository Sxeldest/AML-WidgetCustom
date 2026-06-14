; =========================================================
; Game Engine Function: _ZN16FxInfoRotSpeed_cC2Ev
; Address            : 0x36B2AC - 0x36B2E4
; =========================================================

36B2AC:  PUSH            {R4,R6,R7,LR}
36B2AE:  ADD             R7, SP, #8
36B2B0:  MOV             R4, R0
36B2B2:  LDR             R0, =(_ZTV16FxInfoRotSpeed_c_ptr - 0x36B2B8)
36B2B4:  ADD             R0, PC; _ZTV16FxInfoRotSpeed_c_ptr
36B2B6:  LDR             R0, [R0]; `vtable for'FxInfoRotSpeed_c ...
36B2B8:  ADDS            R0, #8
36B2BA:  STR             R0, [R4]
36B2BC:  ADD.W           R0, R4, #8; this
36B2C0:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36B2C4:  LDR             R0, =(g_fxMan_ptr - 0x36B2D2)
36B2C6:  MOVS            R1, #4
36B2C8:  STRB            R1, [R4,#0xE]
36B2CA:  MOV.W           R1, #0x2100
36B2CE:  ADD             R0, PC; g_fxMan_ptr
36B2D0:  STRH            R1, [R4,#4]
36B2D2:  MOVS            R1, #0x10; int
36B2D4:  MOVS            R2, #4; int
36B2D6:  LDR             R0, [R0]; g_fxMan
36B2D8:  ADDS            R0, #0xAC; this
36B2DA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B2DE:  STR             R0, [R4,#0x14]
36B2E0:  MOV             R0, R4
36B2E2:  POP             {R4,R6,R7,PC}
