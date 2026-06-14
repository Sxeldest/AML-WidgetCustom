; =========================================================
; Game Engine Function: _ZN13FxInfoEmPos_cC2Ev
; Address            : 0x36A658 - 0x36A690
; =========================================================

36A658:  PUSH            {R4,R6,R7,LR}; Alternative name is 'FxInfoEmPos_c::FxInfoEmPos_c(void)'
36A65A:  ADD             R7, SP, #8
36A65C:  MOV             R4, R0
36A65E:  LDR             R0, =(_ZTV13FxInfoEmPos_c_ptr - 0x36A664)
36A660:  ADD             R0, PC; _ZTV13FxInfoEmPos_c_ptr
36A662:  LDR             R0, [R0]; `vtable for'FxInfoEmPos_c ...
36A664:  ADDS            R0, #8
36A666:  STR             R0, [R4]
36A668:  ADD.W           R0, R4, #8; this
36A66C:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36A670:  LDR             R0, =(g_fxMan_ptr - 0x36A67E)
36A672:  MOVS            R1, #3
36A674:  STRB            R1, [R4,#0xE]
36A676:  MOV.W           R1, #0x1080
36A67A:  ADD             R0, PC; g_fxMan_ptr
36A67C:  STRH            R1, [R4,#4]
36A67E:  MOVS            R1, #0xC; int
36A680:  MOVS            R2, #4; int
36A682:  LDR             R0, [R0]; g_fxMan
36A684:  ADDS            R0, #0xAC; this
36A686:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A68A:  STR             R0, [R4,#0x14]
36A68C:  MOV             R0, R4
36A68E:  POP             {R4,R6,R7,PC}
