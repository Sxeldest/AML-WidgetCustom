; =========================================================
; Game Engine Function: _ZN20FxInfoColourBright_cC2Ev
; Address            : 0x36B960 - 0x36B998
; =========================================================

36B960:  PUSH            {R4,R6,R7,LR}
36B962:  ADD             R7, SP, #8
36B964:  MOV             R4, R0
36B966:  LDR             R0, =(_ZTV20FxInfoColourBright_c_ptr - 0x36B96C)
36B968:  ADD             R0, PC; _ZTV20FxInfoColourBright_c_ptr
36B96A:  LDR             R0, [R0]; `vtable for'FxInfoColourBright_c ...
36B96C:  ADDS            R0, #8
36B96E:  STR             R0, [R4]
36B970:  ADD.W           R0, R4, #8; this
36B974:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
36B978:  LDR             R0, =(g_fxMan_ptr - 0x36B986)
36B97A:  MOVS            R1, #5
36B97C:  STRB            R1, [R4,#0xE]
36B97E:  MOV.W           R1, #0x4400
36B982:  ADD             R0, PC; g_fxMan_ptr
36B984:  STRH            R1, [R4,#4]
36B986:  MOVS            R1, #0x14; int
36B988:  MOVS            R2, #4; int
36B98A:  LDR             R0, [R0]; g_fxMan
36B98C:  ADDS            R0, #0xAC; this
36B98E:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36B992:  STR             R0, [R4,#0x14]
36B994:  MOV             R0, R4
36B996:  POP             {R4,R6,R7,PC}
