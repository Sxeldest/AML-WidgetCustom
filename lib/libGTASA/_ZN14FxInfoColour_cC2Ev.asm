; =========================================================
; Game Engine Function: _ZN14FxInfoColour_cC2Ev
; Address            : 0x36B3A8 - 0x36B3E0
; =========================================================

36B3A8:  PUSH            {R4,R6,R7,LR}
36B3AA:  ADD             R7, SP, #8
36B3AC:  MOV             R4, R0
36B3AE:  LDR             R0, =(_ZTV14FxInfoColour_c_ptr - 0x36B3B4)
36B3B0:  ADD             R0, PC; _ZTV14FxInfoColour_c_ptr
36B3B2:  LDR             R0, [R0]; `vtable for'FxInfoColour_c ...
36B3B4:  ADDS            R0, #8
36B3B6:  STR             R0, [R4]
36B3B8:  ADD.W           R0, R4, #8; this
36B3BC:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
36B3C0:  LDR             R0, =(g_fxMan_ptr - 0x36B3CE)
36B3C2:  MOVS            R1, #4
36B3C4:  STRB            R1, [R4,#0xE]
36B3C6:  MOVW            R1, #0x4001
36B3CA:  ADD             R0, PC; g_fxMan_ptr
36B3CC:  STRH            R1, [R4,#4]
36B3CE:  MOVS            R1, #0x10; int
36B3D0:  MOVS            R2, #4; int
36B3D2:  LDR             R0, [R0]; g_fxMan
36B3D4:  ADDS            R0, #0xAC; this
36B3D6:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B3DA:  STR             R0, [R4,#0x14]
36B3DC:  MOV             R0, R4
36B3DE:  POP             {R4,R6,R7,PC}
