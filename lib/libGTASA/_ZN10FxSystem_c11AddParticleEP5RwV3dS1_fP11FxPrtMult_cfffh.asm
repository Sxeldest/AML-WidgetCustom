; =========================================================
; Game Engine Function: _ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh
; Address            : 0x36E324 - 0x36E3FA
; =========================================================

36E324:  PUSH            {R4-R7,LR}
36E326:  ADD             R7, SP, #0xC
36E328:  PUSH.W          {R8-R11}
36E32C:  SUB             SP, SP, #4
36E32E:  VPUSH           {D8-D9}
36E332:  SUB             SP, SP, #0x10
36E334:  MOV             R8, R3
36E336:  MOV             R11, R2
36E338:  MOV             R9, R1
36E33A:  MOV             R4, R0
36E33C:  BLX             rand
36E340:  UXTH            R0, R0
36E342:  VLDR            S2, =0.000015259
36E346:  VMOV            S0, R0
36E34A:  LDR             R0, =(g_fx_ptr - 0x36E354)
36E34C:  VCVT.F32.S32    S0, S0
36E350:  ADD             R0, PC; g_fx_ptr
36E352:  LDR             R0, [R0]; g_fx ; this
36E354:  VMUL.F32        S0, S0, S2
36E358:  VLDR            S2, =100.0
36E35C:  VMUL.F32        S0, S0, S2
36E360:  VCVT.S32.F32    S0, S0
36E364:  VMOV            R5, S0
36E368:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36E36C:  CBNZ            R0, loc_36E372
36E36E:  CMP             R5, #0x32 ; '2'
36E370:  BLT             loc_36E3EC
36E372:  LDR             R0, =(g_fx_ptr - 0x36E378)
36E374:  ADD             R0, PC; g_fx_ptr
36E376:  LDR             R0, [R0]; g_fx ; this
36E378:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36E37C:  CMP             R5, #0x18
36E37E:  BGT             loc_36E384
36E380:  CMP             R0, #1
36E382:  BEQ             loc_36E3EC
36E384:  VLDR            S0, [R7,#arg_C]
36E388:  VMOV.F32        S16, #1.0
36E38C:  VLDR            S2, [R7,#arg_8]
36E390:  LDR             R1, [R4,#8]
36E392:  VCMPE.F32       S2, S0
36E396:  VMRS            APSR_nzcv, FPSCR
36E39A:  VSUB.F32        S4, S16, S0
36E39E:  VADD.F32        S4, S4, S2
36E3A2:  IT LT
36E3A4:  VMOVLT.F32      S16, S4
36E3A8:  LDRSB.W         R0, [R1,#0x1B]
36E3AC:  CMP             R0, #1
36E3AE:  BLT             loc_36E3EC
36E3B0:  LDR.W           R10, [R7,#arg_10]
36E3B4:  MOVS            R5, #0
36E3B6:  VLDR            S18, [R7,#arg_4]
36E3BA:  LDR             R0, [R4,#0x7C]
36E3BC:  LDR.W           R0, [R0,R5,LSL#2]
36E3C0:  LDRB            R2, [R0,#0xC]
36E3C2:  CBZ             R2, loc_36E3E2
36E3C4:  LDR             R1, [R0]
36E3C6:  MOV             R2, R11
36E3C8:  MOV             R3, R8
36E3CA:  LDR             R6, [R1,#0x14]
36E3CC:  LDR             R1, [R7,#arg_0]
36E3CE:  STR.W           R10, [SP,#0x40+var_34]
36E3D2:  VSTR            S18, [SP,#0x40+var_3C]
36E3D6:  VSTR            S16, [SP,#0x40+var_38]
36E3DA:  STR             R1, [SP,#0x40+var_40]
36E3DC:  MOV             R1, R9
36E3DE:  BLX             R6
36E3E0:  LDR             R1, [R4,#8]
36E3E2:  LDRSB.W         R0, [R1,#0x1B]
36E3E6:  ADDS            R5, #1
36E3E8:  CMP             R5, R0
36E3EA:  BLT             loc_36E3BA
36E3EC:  ADD             SP, SP, #0x10
36E3EE:  VPOP            {D8-D9}
36E3F2:  ADD             SP, SP, #4
36E3F4:  POP.W           {R8-R11}
36E3F8:  POP             {R4-R7,PC}
