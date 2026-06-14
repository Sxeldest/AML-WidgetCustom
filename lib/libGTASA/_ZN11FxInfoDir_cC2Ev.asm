; =========================================================
; Game Engine Function: _ZN11FxInfoDir_cC2Ev
; Address            : 0x36B70C - 0x36B744
; =========================================================

36B70C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoDir_c::FxInfoDir_c(void)'
36B70E:  ADD             R7, SP, #8
36B710:  MOV             R4, R0
36B712:  LDR             R0, =(_ZTV11FxInfoDir_c_ptr - 0x36B718)
36B714:  ADD             R0, PC; _ZTV11FxInfoDir_c_ptr
36B716:  LDR             R0, [R0]; `vtable for'FxInfoDir_c ...
36B718:  ADDS            R0, #8
36B71A:  STR             R0, [R4]
36B71C:  ADD.W           R0, R4, #8; this
36B720:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36B724:  LDR             R0, =(g_fxMan_ptr - 0x36B732)
36B726:  MOVS            R1, #3
36B728:  STRB            R1, [R4,#0xE]
36B72A:  MOVW            R1, #0x4040
36B72E:  ADD             R0, PC; g_fxMan_ptr
36B730:  STRH            R1, [R4,#4]
36B732:  MOVS            R1, #0xC; int
36B734:  MOVS            R2, #4; int
36B736:  LDR             R0, [R0]; g_fxMan
36B738:  ADDS            R0, #0xAC; this
36B73A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B73E:  STR             R0, [R4,#0x14]
36B740:  MOV             R0, R4
36B742:  POP             {R4,R6,R7,PC}
