; =========================================================
; Game Engine Function: _ZN12FxInfoFlat_cC2Ev
; Address            : 0x36B664 - 0x36B69C
; =========================================================

36B664:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoFlat_c::FxInfoFlat_c(void)'
36B666:  ADD             R7, SP, #8
36B668:  MOV             R4, R0
36B66A:  LDR             R0, =(_ZTV12FxInfoFlat_c_ptr - 0x36B670)
36B66C:  ADD             R0, PC; _ZTV12FxInfoFlat_c_ptr
36B66E:  LDR             R0, [R0]; `vtable for'FxInfoFlat_c ...
36B670:  ADDS            R0, #8
36B672:  STR             R0, [R4]
36B674:  ADD.W           R0, R4, #8; this
36B678:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36B67C:  LDR             R0, =(g_fxMan_ptr - 0x36B68A)
36B67E:  MOVS            R1, #9
36B680:  STRB            R1, [R4,#0xE]
36B682:  MOVW            R1, #0x4020
36B686:  ADD             R0, PC; g_fxMan_ptr
36B688:  STRH            R1, [R4,#4]
36B68A:  MOVS            R1, #0x24 ; '$'; int
36B68C:  MOVS            R2, #4; int
36B68E:  LDR             R0, [R0]; g_fxMan
36B690:  ADDS            R0, #0xAC; this
36B692:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B696:  STR             R0, [R4,#0x14]
36B698:  MOV             R0, R4
36B69A:  POP             {R4,R6,R7,PC}
