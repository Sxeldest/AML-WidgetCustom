; =========================================================
; Game Engine Function: _ZN12SelectScreen16SettingSelection6RenderEPS_9CVector2DS2_f
; Address            : 0x2A423C - 0x2A442C
; =========================================================

2A423C:  PUSH            {R4-R7,LR}
2A423E:  ADD             R7, SP, #0xC
2A4240:  PUSH.W          {R8-R11}
2A4244:  SUB             SP, SP, #4
2A4246:  VPUSH           {D8-D12}
2A424A:  SUB             SP, SP, #0x38
2A424C:  MOV             R6, R0
2A424E:  MOV             R9, R1
2A4250:  LDR             R0, [R6]
2A4252:  MOV             R5, R3
2A4254:  MOV             R10, R2
2A4256:  LDR             R1, [R0,#0xC]
2A4258:  MOV             R0, R6
2A425A:  BLX             R1
2A425C:  MOV             R4, R0
2A425E:  LDR             R0, [R6]
2A4260:  LDR             R1, [R0,#0x14]
2A4262:  MOV             R0, R6
2A4264:  BLX             R1
2A4266:  MOV             R11, R0
2A4268:  LDR             R0, [R6]
2A426A:  ADD.W           R8, SP, #0x80+var_4C
2A426E:  MOV             R1, R6
2A4270:  LDR             R2, [R0,#0x10]
2A4272:  MOV             R0, R8
2A4274:  BLX             R2
2A4276:  VMOV.F32        S0, #0.5
2A427A:  VLDR            S2, [R7,#arg_4]
2A427E:  VMOV.F32        S4, #-8.0
2A4282:  VLDR            S6, [R7,#arg_8]
2A4286:  VMOV            S8, R4
2A428A:  VLDR            S16, [R7,#arg_0]
2A428E:  MOVS            R4, #0
2A4290:  MOVS            R0, #2
2A4292:  STRD.W          R4, R4, [SP,#0x80+var_64]
2A4296:  MOV             R1, R9
2A4298:  MOV             R2, R11
2A429A:  MOVS            R3, #0
2A429C:  VMUL.F32        S0, S2, S0
2A42A0:  VMOV            S2, R5
2A42A4:  MOVS            R5, #1
2A42A6:  VADD.F32        S20, S0, S2
2A42AA:  VMOV.F32        S0, #16.0
2A42AE:  VADD.F32        S2, S6, S6
2A42B2:  VADD.F32        S4, S20, S4
2A42B6:  VADD.F32        S22, S2, S0
2A42BA:  VMUL.F32        S0, S8, S16
2A42BE:  VSUB.F32        S24, S4, S6
2A42C2:  VSTR            S22, [SP,#0x80+var_68]
2A42C6:  VSTR            S0, [SP,#0x80+var_6C]
2A42CA:  STRD.W          R0, R8, [SP,#0x80+var_80]; float
2A42CE:  ADD             R0, SP, #0x80+var_54
2A42D0:  STRD.W          R5, R10, [SP,#0x80+var_78]
2A42D4:  VSTR            S24, [SP,#0x80+var_70]
2A42D8:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A42DC:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A42E6)
2A42DE:  VLDR            S0, =0.6
2A42E2:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A42E4:  LDR             R0, [R6,#8]
2A42E6:  VMUL.F32        S18, S16, S0
2A42EA:  LDR             R1, [R1]; MobileSettings::settings ...
2A42EC:  ADD.W           R1, R1, R0,LSL#5
2A42F0:  LDR             R1, [R1,#0x1C]
2A42F2:  CMP             R1, #1
2A42F4:  BEQ             loc_2A4390
2A42F6:  CMP             R1, #0
2A42F8:  BNE.W           loc_2A441E
2A42FC:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4302)
2A42FE:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A4300:  LDR             R1, [R1]; MobileSettings::settings ...
2A4302:  ADD.W           R2, R1, R0,LSL#5
2A4306:  LDR             R1, [R2,#8]
2A4308:  LDR             R2, [R2,#0x10]
2A430A:  CMP             R1, R2
2A430C:  BLT.W           loc_2A441E
2A4310:  LDR             R3, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4316)
2A4312:  ADD             R3, PC; _ZN14MobileSettings8settingsE_ptr
2A4314:  LDR             R3, [R3]; MobileSettings::settings ...
2A4316:  ADD.W           R3, R3, R0,LSL#5
2A431A:  LDR             R3, [R3,#0x14]
2A431C:  CMP             R1, R3
2A431E:  BGT             loc_2A441E
2A4320:  LDR             R3, =(_ZN14MobileSettings8settingsE_ptr - 0x2A432E)
2A4322:  SUBS            R1, R1, R2
2A4324:  MOVS            R2, #0xF0; unsigned __int8
2A4326:  VMOV            R6, S22
2A432A:  ADD             R3, PC; _ZN14MobileSettings8settingsE_ptr
2A432C:  VMOV            R5, S24
2A4330:  LDR             R3, [R3]; MobileSettings::settings ...
2A4332:  ADD.W           R0, R3, R0,LSL#5
2A4336:  MOVS            R3, #0xF0; unsigned __int8
2A4338:  LDR             R0, [R0,#4]
2A433A:  LDR.W           R4, [R0,R1,LSL#2]
2A433E:  MOVS            R0, #0xFF
2A4340:  STR             R0, [SP,#0x80+var_80]; unsigned __int8
2A4342:  ADD             R0, SP, #0x80+var_58; this
2A4344:  MOVS            R1, #0xF0; unsigned __int8
2A4346:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A434A:  LDR             R0, =(TheText_ptr - 0x2A4352)
2A434C:  MOV             R1, R4; CKeyGen *
2A434E:  ADD             R0, PC; TheText_ptr
2A4350:  LDR             R0, [R0]; TheText ; this
2A4352:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A4356:  VMOV            S0, R10
2A435A:  MOV             R2, R0
2A435C:  VSUB.F32        S2, S16, S18
2A4360:  LDR             R0, [SP,#0x80+var_58]
2A4362:  VADD.F32        S0, S18, S0
2A4366:  STR             R0, [SP,#0x80+var_4C]
2A4368:  MOVS            R0, #0
2A436A:  MOVS            R1, #2
2A436C:  STRD.W          R6, R0, [SP,#0x80+var_68]
2A4370:  MOVS            R3, #2
2A4372:  STR             R0, [SP,#0x80+var_60]
2A4374:  MOVS            R0, #1
2A4376:  VSTR            S2, [SP,#0x80+var_6C]
2A437A:  STR             R5, [SP,#0x80+var_70]
2A437C:  VSTR            S0, [SP,#0x80+var_74]
2A4380:  STRD.W          R1, R8, [SP,#0x80+var_80]
2A4384:  MOV             R1, R9
2A4386:  STR             R0, [SP,#0x80+var_78]
2A4388:  ADD             R0, SP, #0x80+var_54
2A438A:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A438E:  B               loc_2A441E
2A4390:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A439A)
2A4392:  VMOV            S6, R10
2A4396:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A4398:  VADD.F32        S16, S6, S16
2A439C:  VADD.F32        S18, S18, S6
2A43A0:  VLDR            S6, =0.0
2A43A4:  LDR             R1, [R1]; MobileSettings::settings ...
2A43A6:  ADD.W           R0, R1, R0,LSL#5
2A43AA:  VLDR            S0, [R0,#8]
2A43AE:  VLDR            S2, [R0,#0x10]
2A43B2:  VMOV            R3, S16; int
2A43B6:  VLDR            S4, [R0,#0x14]
2A43BA:  VMOV            R1, S18; int
2A43BE:  VCVT.F32.S32    S2, S2
2A43C2:  MOVS            R0, #0xFF
2A43C4:  VCVT.F32.S32    S4, S4
2A43C8:  VCVT.F32.S32    S0, S0
2A43CC:  VSUB.F32        S4, S4, S2
2A43D0:  VSUB.F32        S0, S0, S2
2A43D4:  VMOV.F32        S2, #-9.0
2A43D8:  VDIV.F32        S0, S0, S4
2A43DC:  VADD.F32        S2, S20, S2
2A43E0:  VCMPE.F32       S0, #0.0
2A43E4:  VMRS            APSR_nzcv, FPSCR
2A43E8:  VMOV.F32        S4, #1.0
2A43EC:  VMOV            R2, S2; int
2A43F0:  VMOV.F32        S2, #9.0
2A43F4:  VMIN.F32        D2, D0, D2
2A43F8:  VADD.F32        S2, S20, S2
2A43FC:  IT LT
2A43FE:  VMOVLT.F32      S4, S6
2A4402:  STRD.W          R5, R0, [SP,#0x80+var_78]; int
2A4406:  MOV             R0, R9; int
2A4408:  STR             R4, [SP,#0x80+var_70]
2A440A:  VSTR            S2, [SP,#0x80+var_80]
2A440E:  VSTR            S4, [SP,#0x80+var_7C]
2A4412:  BLX             j__ZN10MenuScreen10DrawSliderE9CVector2DS0_fbhb; MenuScreen::DrawSlider(CVector2D,CVector2D,float,bool,uchar,bool)
2A4416:  VSTR            S18, [R6,#0x10]
2A441A:  VSTR            S16, [R6,#0x14]
2A441E:  ADD             SP, SP, #0x38 ; '8'
2A4420:  VPOP            {D8-D12}
2A4424:  ADD             SP, SP, #4
2A4426:  POP.W           {R8-R11}
2A442A:  POP             {R4-R7,PC}
