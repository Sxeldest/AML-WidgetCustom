; =========================================================
; Game Engine Function: _ZN10FxSystem_c11AddParticleEP11RwMatrixTagP5RwV3dfP11FxPrtMult_cfffh
; Address            : 0x36E40C - 0x36E4DE
; =========================================================

36E40C:  PUSH            {R4-R7,LR}
36E40E:  ADD             R7, SP, #0xC
36E410:  PUSH.W          {R8-R11}
36E414:  SUB             SP, SP, #4
36E416:  VPUSH           {D8-D9}
36E41A:  SUB             SP, SP, #0x10
36E41C:  MOV             R8, R3
36E41E:  MOV             R11, R2
36E420:  MOV             R9, R1
36E422:  MOV             R4, R0
36E424:  BLX             rand
36E428:  UXTH            R0, R0
36E42A:  VLDR            S2, =0.000015259
36E42E:  VMOV            S0, R0
36E432:  LDR             R0, =(g_fx_ptr - 0x36E43C)
36E434:  VCVT.F32.S32    S0, S0
36E438:  ADD             R0, PC; g_fx_ptr
36E43A:  LDR             R0, [R0]; g_fx ; this
36E43C:  VMUL.F32        S0, S0, S2
36E440:  VLDR            S2, =100.0
36E444:  VMUL.F32        S0, S0, S2
36E448:  VCVT.S32.F32    S0, S0
36E44C:  VMOV            R5, S0
36E450:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36E454:  CBNZ            R0, loc_36E45A
36E456:  CMP             R5, #0x32 ; '2'
36E458:  BLT             loc_36E4D0
36E45A:  LDR             R0, =(g_fx_ptr - 0x36E460)
36E45C:  ADD             R0, PC; g_fx_ptr
36E45E:  LDR             R0, [R0]; g_fx ; this
36E460:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36E464:  CMP             R5, #0x18
36E466:  BGT             loc_36E46C
36E468:  CMP             R0, #1
36E46A:  BEQ             loc_36E4D0
36E46C:  VLDR            S0, [R7,#arg_C]
36E470:  VMOV.F32        S16, #1.0
36E474:  VLDR            S2, [R7,#arg_8]
36E478:  LDR             R0, [R4,#8]
36E47A:  VCMPE.F32       S2, S0
36E47E:  VMRS            APSR_nzcv, FPSCR
36E482:  VSUB.F32        S4, S16, S0
36E486:  VADD.F32        S4, S4, S2
36E48A:  IT LT
36E48C:  VMOVLT.F32      S16, S4
36E490:  LDRSB.W         R0, [R0,#0x1B]
36E494:  CMP             R0, #1
36E496:  BLT             loc_36E4D0
36E498:  LDR.W           R10, [R7,#arg_10]
36E49C:  MOVS            R5, #0
36E49E:  VLDR            S18, [R7,#arg_4]
36E4A2:  LDR             R0, [R4,#0x7C]
36E4A4:  MOV             R2, R11
36E4A6:  MOV             R3, R8
36E4A8:  LDR.W           R0, [R0,R5,LSL#2]
36E4AC:  LDR             R1, [R0]
36E4AE:  LDR             R6, [R1,#0x18]
36E4B0:  LDR             R1, [R7,#arg_0]
36E4B2:  STR.W           R10, [SP,#0x40+var_34]
36E4B6:  VSTR            S18, [SP,#0x40+var_3C]
36E4BA:  VSTR            S16, [SP,#0x40+var_38]
36E4BE:  STR             R1, [SP,#0x40+var_40]
36E4C0:  MOV             R1, R9
36E4C2:  BLX             R6
36E4C4:  LDR             R0, [R4,#8]
36E4C6:  ADDS            R5, #1
36E4C8:  LDRSB.W         R0, [R0,#0x1B]
36E4CC:  CMP             R5, R0
36E4CE:  BLT             loc_36E4A2
36E4D0:  ADD             SP, SP, #0x10
36E4D2:  VPOP            {D8-D9}
36E4D6:  ADD             SP, SP, #4
36E4D8:  POP.W           {R8-R11}
36E4DC:  POP             {R4-R7,PC}
