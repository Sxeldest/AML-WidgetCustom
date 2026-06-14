; =========================================================
; Game Engine Function: _Z31_rwOpenGLLightsLocalLightEnablePK7RpLight
; Address            : 0x222344 - 0x222552
; =========================================================

222344:  PUSH            {R4-R7,LR}
222346:  ADD             R7, SP, #0xC
222348:  PUSH.W          {R8,R9,R11}
22234C:  VPUSH           {D8-D10}
222350:  SUB             SP, SP, #0x20
222352:  MOV             R4, R0
222354:  LDRB.W          R0, [R4,#0x3E]
222358:  CMP             R0, #0
22235A:  BEQ             loc_222410
22235C:  MOV.W           R8, #0
222360:  VLDR            S16, [R4,#0x14]
222364:  VCMP.F32        S16, #0.0
222368:  VMRS            APSR_nzcv, FPSCR
22236C:  BEQ             loc_222468
22236E:  ORR.W           R9, R8, #0x4000
222372:  ADD.W           R2, R4, #0x18; float *
222376:  MOVW            R1, #0x1201; unsigned int
22237A:  MOV             R0, R9; unsigned int
22237C:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
222380:  LDR             R0, [R4,#4]
222382:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
222386:  MOV             R6, R0
222388:  ADD.W           R2, R6, #0x30 ; '0'
22238C:  LDM             R2, {R0-R2}
22238E:  STRD.W          R0, R1, [SP,#0x50+var_40]
222392:  MOV.W           R0, #0x3F800000
222396:  STRD.W          R2, R0, [SP,#0x50+var_38]
22239A:  ADD             R2, SP, #0x50+var_40; float *
22239C:  MOV             R0, R9; unsigned int
22239E:  MOVW            R1, #0x1203; unsigned int
2223A2:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
2223A6:  LDR             R0, =(dword_6BD6FC - 0x2223B0)
2223A8:  MOVW            R1, #0x1207; unsigned int
2223AC:  ADD             R0, PC; dword_6BD6FC
2223AE:  LDR             R0, [R0]
2223B0:  ADDS            R5, R4, R0
2223B2:  MOV             R0, R9; unsigned int
2223B4:  LDR             R2, [R5,#4]; float
2223B6:  VLDR            S18, [R5,#8]
2223BA:  VLDR            S20, [R5,#0xC]
2223BE:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2223C2:  VMOV.F32        S0, #1.0
2223C6:  MOV             R0, R9; unsigned int
2223C8:  MOVW            R1, #0x1208; unsigned int
2223CC:  VDIV.F32        S16, S0, S16
2223D0:  VMUL.F32        S0, S16, S18
2223D4:  VMOV            R2, S0; float
2223D8:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2223DC:  VMUL.F32        S0, S16, S20
2223E0:  MOV             R0, R9; unsigned int
2223E2:  MOVW            R1, #0x1209; unsigned int
2223E6:  VMUL.F32        S0, S16, S0
2223EA:  VMOV            R2, S0; float
2223EE:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2223F2:  LDRB            R0, [R4,#1]
2223F4:  CMP             R0, #0x82
2223F6:  BEQ             loc_22246C
2223F8:  CMP             R0, #0x81
2223FA:  BEQ             loc_2224AC
2223FC:  CMP             R0, #0x80
2223FE:  BNE.W           loc_22251A
222402:  MOVS            R2, #0
222404:  MOV             R0, R9
222406:  MOVT            R2, #0x4334
22240A:  MOVW            R1, #0x1206
22240E:  B               loc_2224EA
222410:  LDR             R0, =(openglLightApplied_ptr - 0x222416)
222412:  ADD             R0, PC; openglLightApplied_ptr
222414:  LDR             R0, [R0]; openglLightApplied
222416:  LDR             R0, [R0,#(dword_6BD6B4 - 0x6BD6B0)]
222418:  CMP             R0, #0
22241A:  BEQ.W           loc_222528
22241E:  LDR             R0, =(openglLightApplied_ptr - 0x222424)
222420:  ADD             R0, PC; openglLightApplied_ptr
222422:  LDR             R0, [R0]; openglLightApplied
222424:  LDR             R0, [R0,#(dword_6BD6B8 - 0x6BD6B0)]
222426:  CMP             R0, #0
222428:  BEQ.W           loc_22252E
22242C:  LDR             R0, =(openglLightApplied_ptr - 0x222432)
22242E:  ADD             R0, PC; openglLightApplied_ptr
222430:  LDR             R0, [R0]; openglLightApplied
222432:  LDR             R0, [R0,#(dword_6BD6BC - 0x6BD6B0)]
222434:  CMP             R0, #0
222436:  BEQ             loc_222534
222438:  LDR             R0, =(openglLightApplied_ptr - 0x22243E)
22243A:  ADD             R0, PC; openglLightApplied_ptr
22243C:  LDR             R0, [R0]; openglLightApplied
22243E:  LDR             R0, [R0,#(dword_6BD6C0 - 0x6BD6B0)]
222440:  CMP             R0, #0
222442:  BEQ             loc_22253A
222444:  LDR             R0, =(openglLightApplied_ptr - 0x22244A)
222446:  ADD             R0, PC; openglLightApplied_ptr
222448:  LDR             R0, [R0]; openglLightApplied
22244A:  LDR             R0, [R0,#(dword_6BD6C4 - 0x6BD6B0)]
22244C:  CMP             R0, #0
22244E:  BEQ             loc_222540
222450:  LDR             R0, =(openglLightApplied_ptr - 0x222456)
222452:  ADD             R0, PC; openglLightApplied_ptr
222454:  LDR             R0, [R0]; openglLightApplied
222456:  LDR             R0, [R0,#(dword_6BD6C8 - 0x6BD6B0)]
222458:  CMP             R0, #0
22245A:  BEQ             loc_222546
22245C:  LDR             R0, =(openglLightApplied_ptr - 0x222462)
22245E:  ADD             R0, PC; openglLightApplied_ptr
222460:  LDR             R0, [R0]; openglLightApplied
222462:  LDR             R0, [R0,#(dword_6BD6CC - 0x6BD6B0)]
222464:  CMP             R0, #0
222466:  BEQ             loc_22254C
222468:  MOVS            R0, #1
22246A:  B               loc_22251C
22246C:  ADD.W           R2, R6, #0x20 ; ' '
222470:  ADD             R3, SP, #0x50+var_4C
222472:  LDM             R2, {R0-R2}
222474:  STM             R3!, {R0-R2}
222476:  ADD             R2, SP, #0x50+var_4C; float *
222478:  MOV             R0, R9; unsigned int
22247A:  MOVW            R1, #0x1204; unsigned int
22247E:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
222482:  MOV             R0, R4
222484:  BLX             j__Z19RpLightGetConeAnglePK7RpLight; RpLightGetConeAngle(RpLight const*)
222488:  VMOV            S2, R0
22248C:  VLDR            S0, =57.296
222490:  MOV             R0, R9; unsigned int
222492:  MOVW            R1, #0x1206; unsigned int
222496:  VMUL.F32        S0, S2, S0
22249A:  VMOV            R2, S0; float
22249E:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2224A2:  LDR             R2, [R5]
2224A4:  MOV             R0, R9
2224A6:  MOVW            R1, #0x1205
2224AA:  B               loc_2224EA
2224AC:  ADD.W           R2, R6, #0x20 ; ' '
2224B0:  ADD             R3, SP, #0x50+var_4C
2224B2:  LDM             R2, {R0-R2}
2224B4:  STM             R3!, {R0-R2}
2224B6:  ADD             R2, SP, #0x50+var_4C; float *
2224B8:  MOV             R0, R9; unsigned int
2224BA:  MOVW            R1, #0x1204; unsigned int
2224BE:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
2224C2:  MOV             R0, R4
2224C4:  BLX             j__Z19RpLightGetConeAnglePK7RpLight; RpLightGetConeAngle(RpLight const*)
2224C8:  VMOV            S2, R0
2224CC:  VLDR            S0, =57.296
2224D0:  MOV             R0, R9; unsigned int
2224D2:  MOVW            R1, #0x1206; unsigned int
2224D6:  VMUL.F32        S0, S2, S0
2224DA:  VMOV            R2, S0; float
2224DE:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2224E2:  MOV             R0, R9; unsigned int
2224E4:  MOVW            R1, #0x1205; unsigned int
2224E8:  MOVS            R2, #0; float
2224EA:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2224EE:  LDR             R0, =(dword_6BD720 - 0x2224F4)
2224F0:  ADD             R0, PC; dword_6BD720
2224F2:  LDR             R0, [R0]
2224F4:  LDR.W           R0, [R0,R8,LSL#2]
2224F8:  CBNZ            R0, loc_22250C
2224FA:  MOV             R0, R9; unsigned int
2224FC:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
222500:  LDR             R0, =(dword_6BD720 - 0x222508)
222502:  MOVS            R1, #1
222504:  ADD             R0, PC; dword_6BD720
222506:  LDR             R0, [R0]
222508:  STR.W           R1, [R0,R8,LSL#2]
22250C:  LDR             R0, =(openglLightApplied_ptr - 0x222512)
22250E:  ADD             R0, PC; openglLightApplied_ptr
222510:  LDR             R1, [R0]; openglLightApplied
222512:  MOVS            R0, #1
222514:  STR.W           R0, [R1,R8,LSL#2]
222518:  B               loc_22251C
22251A:  MOVS            R0, #0
22251C:  ADD             SP, SP, #0x20 ; ' '
22251E:  VPOP            {D8-D10}
222522:  POP.W           {R8,R9,R11}
222526:  POP             {R4-R7,PC}
222528:  MOV.W           R8, #1
22252C:  B               loc_222360
22252E:  MOV.W           R8, #2
222532:  B               loc_222360
222534:  MOV.W           R8, #3
222538:  B               loc_222360
22253A:  MOV.W           R8, #4
22253E:  B               loc_222360
222540:  MOV.W           R8, #5
222544:  B               loc_222360
222546:  MOV.W           R8, #6
22254A:  B               loc_222360
22254C:  MOV.W           R8, #7
222550:  B               loc_222360
