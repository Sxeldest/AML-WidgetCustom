; =========================================================
; Game Engine Function: _ZN13FxInfoTrail_cC2Ev
; Address            : 0x36B5C8 - 0x36B600
; =========================================================

36B5C8:  PUSH            {R4,R6,R7,LR}
36B5CA:  ADD             R7, SP, #8
36B5CC:  MOV             R4, R0
36B5CE:  LDR             R0, =(_ZTV13FxInfoTrail_c_ptr - 0x36B5D4)
36B5D0:  ADD             R0, PC; _ZTV13FxInfoTrail_c_ptr
36B5D2:  LDR             R0, [R0]; `vtable for'FxInfoTrail_c ...
36B5D4:  ADDS            R0, #8
36B5D6:  STR             R0, [R4]
36B5D8:  ADD.W           R0, R4, #8; this
36B5DC:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
36B5E0:  LDR             R0, =(g_fxMan_ptr - 0x36B5EE)
36B5E2:  MOVS            R1, #2
36B5E4:  STRB            R1, [R4,#0xE]
36B5E6:  MOVW            R1, #0x4010
36B5EA:  ADD             R0, PC; g_fxMan_ptr
36B5EC:  STRH            R1, [R4,#4]
36B5EE:  MOVS            R1, #8; int
36B5F0:  MOVS            R2, #4; int
36B5F2:  LDR             R0, [R0]; g_fxMan
36B5F4:  ADDS            R0, #0xAC; this
36B5F6:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B5FA:  STR             R0, [R4,#0x14]
36B5FC:  MOV             R0, R4
36B5FE:  POP             {R4,R6,R7,PC}
