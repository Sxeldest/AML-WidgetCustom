; =========================================================
; Game Engine Function: _ZN13FxInfoForce_cC2Ev
; Address            : 0x36A954 - 0x36A98C
; =========================================================

36A954:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoForce_c::FxInfoForce_c(void)'
36A956:  ADD             R7, SP, #8
36A958:  MOV             R4, R0
36A95A:  LDR             R0, =(_ZTV13FxInfoForce_c_ptr - 0x36A960)
36A95C:  ADD             R0, PC; _ZTV13FxInfoForce_c_ptr
36A95E:  LDR             R0, [R0]; `vtable for'FxInfoForce_c ...
36A960:  ADDS            R0, #8
36A962:  STR             R0, [R4]
36A964:  ADD.W           R0, R4, #8; this
36A968:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36A96C:  LDR             R0, =(g_fxMan_ptr - 0x36A97A)
36A96E:  MOVS            R1, #3
36A970:  STRB            R1, [R4,#0xE]
36A972:  MOVW            R1, #0x2002
36A976:  ADD             R0, PC; g_fxMan_ptr
36A978:  STRH            R1, [R4,#4]
36A97A:  MOVS            R1, #0xC; int
36A97C:  MOVS            R2, #4; int
36A97E:  LDR             R0, [R0]; g_fxMan
36A980:  ADDS            R0, #0xAC; this
36A982:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A986:  STR             R0, [R4,#0x14]
36A988:  MOV             R0, R4
36A98A:  POP             {R4,R6,R7,PC}
