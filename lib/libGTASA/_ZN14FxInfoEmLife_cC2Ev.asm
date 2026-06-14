; =========================================================
; Game Engine Function: _ZN14FxInfoEmLife_cC2Ev
; Address            : 0x36A5F4 - 0x36A62C
; =========================================================

36A5F4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoEmLife_c::FxInfoEmLife_c(void)'
36A5F6:  ADD             R7, SP, #8
36A5F8:  MOV             R4, R0
36A5FA:  LDR             R0, =(_ZTV14FxInfoEmLife_c_ptr - 0x36A600)
36A5FC:  ADD             R0, PC; _ZTV14FxInfoEmLife_c_ptr
36A5FE:  LDR             R0, [R0]; `vtable for'FxInfoEmLife_c ...
36A600:  ADDS            R0, #8
36A602:  STR             R0, [R4]
36A604:  ADD.W           R0, R4, #8; this
36A608:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
36A60C:  LDR             R0, =(g_fxMan_ptr - 0x36A61A)
36A60E:  MOVS            R1, #2
36A610:  STRB            R1, [R4,#0xE]
36A612:  MOV.W           R1, #0x1040
36A616:  ADD             R0, PC; g_fxMan_ptr
36A618:  STRH            R1, [R4,#4]
36A61A:  MOVS            R1, #8; int
36A61C:  MOVS            R2, #4; int
36A61E:  LDR             R0, [R0]; g_fxMan
36A620:  ADDS            R0, #0xAC; this
36A622:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A626:  STR             R0, [R4,#0x14]
36A628:  MOV             R0, R4
36A62A:  POP             {R4,R6,R7,PC}
