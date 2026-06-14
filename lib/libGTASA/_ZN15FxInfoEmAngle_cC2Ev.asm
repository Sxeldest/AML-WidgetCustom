; =========================================================
; Game Engine Function: _ZN15FxInfoEmAngle_cC2Ev
; Address            : 0x36A590 - 0x36A5C8
; =========================================================

36A590:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoEmAngle_c::FxInfoEmAngle_c(void)'
36A592:  ADD             R7, SP, #8
36A594:  MOV             R4, R0
36A596:  LDR             R0, =(_ZTV15FxInfoEmAngle_c_ptr - 0x36A59C)
36A598:  ADD             R0, PC; _ZTV15FxInfoEmAngle_c_ptr
36A59A:  LDR             R0, [R0]; `vtable for'FxInfoEmAngle_c ...
36A59C:  ADDS            R0, #8
36A59E:  STR             R0, [R4]
36A5A0:  ADD.W           R0, R4, #8; this
36A5A4:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36A5A8:  LDR             R0, =(g_fxMan_ptr - 0x36A5B6)
36A5AA:  MOVS            R1, #2
36A5AC:  STRB            R1, [R4,#0xE]
36A5AE:  MOV.W           R1, #0x1020
36A5B2:  ADD             R0, PC; g_fxMan_ptr
36A5B4:  STRH            R1, [R4,#4]
36A5B6:  MOVS            R1, #8; int
36A5B8:  MOVS            R2, #4; int
36A5BA:  LDR             R0, [R0]; g_fxMan
36A5BC:  ADDS            R0, #0xAC; this
36A5BE:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A5C2:  STR             R0, [R4,#0x14]
36A5C4:  MOV             R0, R4
36A5C6:  POP             {R4,R6,R7,PC}
