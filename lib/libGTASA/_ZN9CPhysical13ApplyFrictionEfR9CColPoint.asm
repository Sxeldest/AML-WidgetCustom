; =========================================================
; Game Engine Function: _ZN9CPhysical13ApplyFrictionEfR9CColPoint
; Address            : 0x3FE258 - 0x3FE6AC
; =========================================================

3FE258:  PUSH            {R4-R7,LR}
3FE25A:  ADD             R7, SP, #0xC
3FE25C:  PUSH.W          {R8-R11}
3FE260:  SUB             SP, SP, #4
3FE262:  VPUSH           {D8-D14}
3FE266:  SUB             SP, SP, #0x68
3FE268:  MOV             R5, R0
3FE26A:  MOV             R4, R2
3FE26C:  LDR             R0, [R5,#0x44]
3FE26E:  TST.W           R0, #4
3FE272:  BNE.W           loc_3FE64E
3FE276:  VMOV            S18, R1
3FE27A:  LSLS            R0, R0, #0x1B
3FE27C:  BMI.W           loc_3FE580
3FE280:  LDR             R0, [R5,#0x14]
3FE282:  MOV             R1, R5
3FE284:  VLDR            S0, [R4]
3FE288:  VLDR            S2, [R4,#4]
3FE28C:  VLDR            S6, [R0,#0x30]
3FE290:  VLDR            S8, [R0,#0x34]
3FE294:  VSUB.F32        S20, S0, S6
3FE298:  VLDR            S10, [R0,#0x38]
3FE29C:  VSUB.F32        S22, S2, S8
3FE2A0:  VLDR            S4, [R4,#8]
3FE2A4:  ADD             R0, SP, #0xC0+var_64
3FE2A6:  VSUB.F32        S24, S4, S10
3FE2AA:  VMOV            R6, S20
3FE2AE:  VMOV            R8, S22
3FE2B2:  VSTR            S24, [SP,#0xC0+var_C0]
3FE2B6:  MOV             R2, R6
3FE2B8:  MOV             R3, R8
3FE2BA:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
3FE2BE:  VLDR            S0, [R4,#0x10]
3FE2C2:  VLDR            S6, [SP,#0xC0+var_64]
3FE2C6:  VLDR            S2, [R4,#0x14]
3FE2CA:  VLDR            S8, [SP,#0xC0+var_60]
3FE2CE:  VMUL.F32        S14, S6, S0
3FE2D2:  VLDR            S4, [R4,#0x18]
3FE2D6:  VMUL.F32        S12, S8, S2
3FE2DA:  VLDR            S10, [SP,#0xC0+var_5C]
3FE2DE:  VMUL.F32        S1, S10, S4
3FE2E2:  VADD.F32        S12, S14, S12
3FE2E6:  VADD.F32        S12, S12, S1
3FE2EA:  VMUL.F32        S2, S2, S12
3FE2EE:  VMUL.F32        S0, S0, S12
3FE2F2:  VMUL.F32        S4, S4, S12
3FE2F6:  VSUB.F32        S2, S8, S2
3FE2FA:  VSUB.F32        S0, S6, S0
3FE2FE:  VSUB.F32        S4, S10, S4
3FE302:  VMUL.F32        S6, S2, S2
3FE306:  VMUL.F32        S8, S0, S0
3FE30A:  VMUL.F32        S10, S4, S4
3FE30E:  VADD.F32        S6, S8, S6
3FE312:  VADD.F32        S6, S10, S6
3FE316:  VSQRT.F32       S16, S6
3FE31A:  VCMPE.F32       S16, #0.0
3FE31E:  VMRS            APSR_nzcv, FPSCR
3FE322:  BLE.W           loc_3FE64E
3FE326:  VMOV.F32        S26, #1.0
3FE32A:  ADD.W           R2, R5, #0xA8
3FE32E:  ADD             R0, SP, #0xC0+var_7C; CMatrix *
3FE330:  VMOV            R9, S24
3FE334:  VDIV.F32        S6, S26, S16
3FE338:  VMUL.F32        S2, S2, S6
3FE33C:  VMUL.F32        S0, S0, S6
3FE340:  VMUL.F32        S4, S4, S6
3FE344:  VSTR            S2, [SP,#0xC0+var_70+4]
3FE348:  VSTR            S0, [SP,#0xC0+var_70]
3FE34C:  VSTR            S4, [SP,#0xC0+var_68]
3FE350:  LDR             R1, [R5,#0x14]; CVector *
3FE352:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FE356:  VLDR            S0, [SP,#0xC0+var_7C]
3FE35A:  ADD             R0, SP, #0xC0+var_88; CVector *
3FE35C:  VLDR            S2, [SP,#0xC0+var_78]
3FE360:  ADD             R1, SP, #0xC0+var_94; CVector *
3FE362:  VLDR            S4, [SP,#0xC0+var_74]
3FE366:  VSUB.F32        S0, S20, S0
3FE36A:  VSUB.F32        S2, S22, S2
3FE36E:  ADD             R2, SP, #0xC0+var_70
3FE370:  VSUB.F32        S4, S24, S4
3FE374:  VLDR            S28, [R5,#0x90]
3FE378:  VSTR            S0, [SP,#0xC0+var_94]
3FE37C:  VSTR            S2, [SP,#0xC0+var_90]
3FE380:  VSTR            S4, [SP,#0xC0+var_8C]
3FE384:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FE388:  VLDR            S0, [SP,#0xC0+var_88]
3FE38C:  MOV             R0, R5
3FE38E:  VLDR            S2, [SP,#0xC0+var_88+4]
3FE392:  VMUL.F32        S0, S0, S0
3FE396:  VLDR            S4, [SP,#0xC0+var_80]
3FE39A:  VMUL.F32        S2, S2, S2
3FE39E:  VMUL.F32        S4, S4, S4
3FE3A2:  VADD.F32        S0, S0, S2
3FE3A6:  VLDR            S2, [R5,#0x94]
3FE3AA:  VADD.F32        S0, S0, S4
3FE3AE:  VDIV.F32        S4, S26, S28
3FE3B2:  VDIV.F32        S0, S0, S2
3FE3B6:  VADD.F32        S0, S4, S0
3FE3BA:  VDIV.F32        S0, S26, S0
3FE3BE:  VMUL.F32        S0, S16, S0
3FE3C2:  VCMPE.F32       S0, S18
3FE3C6:  VMRS            APSR_nzcv, FPSCR
3FE3CA:  IT GT
3FE3CC:  VMOVGT.F32      S0, S18
3FE3D0:  VLDR            S2, [SP,#0xC0+var_70]
3FE3D4:  VLDR            S4, [SP,#0xC0+var_70+4]
3FE3D8:  VLDR            S6, [SP,#0xC0+var_68]
3FE3DC:  VNMUL.F32       S2, S0, S2
3FE3E0:  VNMUL.F32       S4, S0, S4
3FE3E4:  STMEA.W         SP, {R6,R8,R9}
3FE3E8:  VNMUL.F32       S0, S0, S6
3FE3EC:  VMOV            R1, S2
3FE3F0:  VMOV            R2, S4
3FE3F4:  VMOV            R3, S0
3FE3F8:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
3FE3FC:  VLDR            S18, =0.1
3FE400:  VCMPE.F32       S16, S18
3FE404:  VMRS            APSR_nzcv, FPSCR
3FE408:  BLE.W           loc_3FE64A
3FE40C:  LDR             R0, =(g_surfaceInfos_ptr - 0x3FE416)
3FE40E:  LDRB.W          R1, [R4,#0x23]; unsigned int
3FE412:  ADD             R0, PC; g_surfaceInfos_ptr
3FE414:  LDR             R0, [R0]; g_surfaceInfos ; this
3FE416:  BLX             j__ZN14SurfaceInfos_c17GetFrictionEffectEj; SurfaceInfos_c::GetFrictionEffect(uint)
3FE41A:  CMP             R0, #0
3FE41C:  BEQ.W           loc_3FE64A
3FE420:  LDR             R0, =(g_surfaceInfos_ptr - 0x3FE42A)
3FE422:  LDRB.W          R1, [R4,#0x20]; unsigned int
3FE426:  ADD             R0, PC; g_surfaceInfos_ptr
3FE428:  LDR             R0, [R0]; g_surfaceInfos ; this
3FE42A:  BLX             j__ZN14SurfaceInfos_c17GetFrictionEffectEj; SurfaceInfos_c::GetFrictionEffect(uint)
3FE42E:  LDRB.W          R1, [R5,#0x3A]
3FE432:  CMP             R0, #1
3FE434:  AND.W           R1, R1, #7
3FE438:  IT NE
3FE43A:  CMPNE           R1, #2
3FE43C:  BNE.W           loc_3FE64A
3FE440:  CMP             R1, #2
3FE442:  ITT EQ
3FE444:  LDREQ.W         R0, [R5,#0x5A4]
3FE448:  CMPEQ           R0, #0xA
3FE44A:  BEQ.W           loc_3FE65E
3FE44E:  VLDR            D16, [SP,#0xC0+var_70]
3FE452:  ADD.W           R2, R5, #0x48 ; 'H'
3FE456:  LDR             R0, [SP,#0xC0+var_68]
3FE458:  ADD             R5, SP, #0xC0+var_94
3FE45A:  STR             R0, [SP,#0xC0+var_80]
3FE45C:  ADD.W           R1, R4, #0x10; CVector *
3FE460:  VSTR            D16, [SP,#0xC0+var_88]
3FE464:  MOV             R0, R5; CVector *
3FE466:  VLDR            S0, [R4,#0x10]
3FE46A:  VLDR            S2, [R4,#0x14]
3FE46E:  VLDR            S4, [R4,#0x18]
3FE472:  VMUL.F32        S0, S0, S18
3FE476:  VMUL.F32        S2, S2, S18
3FE47A:  VLDR            S6, [SP,#0xC0+var_88]
3FE47E:  VMUL.F32        S4, S4, S18
3FE482:  VLDR            S8, [SP,#0xC0+var_88+4]
3FE486:  VLDR            S10, [SP,#0xC0+var_80]
3FE48A:  VLDR            S20, [SP,#0xC0+var_70]
3FE48E:  VLDR            S22, [SP,#0xC0+var_70+4]
3FE492:  VLDR            S24, [SP,#0xC0+var_68]
3FE496:  VADD.F32        S0, S0, S6
3FE49A:  VADD.F32        S2, S2, S8
3FE49E:  VADD.F32        S4, S4, S10
3FE4A2:  VSTR            S0, [SP,#0xC0+var_88]
3FE4A6:  VSTR            S2, [SP,#0xC0+var_88+4]
3FE4AA:  VSTR            S4, [SP,#0xC0+var_80]
3FE4AE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FE4B2:  MOV             R0, R5; this
3FE4B4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3FE4B8:  VMOV.F32        S0, #0.25
3FE4BC:  LDR             R0, =(g_fx_ptr - 0x3FE4CA)
3FE4BE:  VLDR            S18, =0.4
3FE4C2:  MOV.W           R9, #8
3FE4C6:  ADD             R0, PC; g_fx_ptr
3FE4C8:  LDR             R6, [R0]; g_fx
3FE4CA:  VMUL.F32        S0, S16, S0
3FE4CE:  VMUL.F32        S2, S0, S24
3FE4D2:  VMUL.F32        S4, S0, S22
3FE4D6:  VMUL.F32        S0, S0, S20
3FE4DA:  VLDR            S20, =-0.2
3FE4DE:  VMOV            R10, S2
3FE4E2:  VMOV            R11, S4
3FE4E6:  VMOV            R8, S0
3FE4EA:  VMOV.F32        S0, #12.5
3FE4EE:  VMUL.F32        S0, S16, S0
3FE4F2:  VLDR            S16, =4.6566e-10
3FE4F6:  VMOV            R5, S0
3FE4FA:  BLX             rand
3FE4FE:  VMOV            S0, R0
3FE502:  MOVS            R0, #1
3FE504:  ADD             R1, SP, #0xC0+var_A0
3FE506:  ADD             R2, SP, #0xC0+var_88
3FE508:  VCVT.F32.S32    S0, S0
3FE50C:  VLDR            S2, [SP,#0xC0+var_94]
3FE510:  VLDR            S4, [SP,#0xC0+var_90]
3FE514:  MOV             R3, R5
3FE516:  VLDR            S6, [SP,#0xC0+var_8C]
3FE51A:  VLDR            S8, [R4,#4]
3FE51E:  VLDR            S10, [R4,#8]
3FE522:  VMUL.F32        S0, S0, S16
3FE526:  VMUL.F32        S0, S0, S18
3FE52A:  VADD.F32        S0, S0, S20
3FE52E:  VMUL.F32        S6, S6, S0
3FE532:  VMUL.F32        S4, S4, S0
3FE536:  VMUL.F32        S0, S2, S0
3FE53A:  VLDR            S2, [R4]
3FE53E:  VADD.F32        S6, S6, S10
3FE542:  VADD.F32        S4, S8, S4
3FE546:  VADD.F32        S0, S2, S0
3FE54A:  VSTR            S6, [SP,#0xC0+var_98]
3FE54E:  VSTR            S4, [SP,#0xC0+var_9C]
3FE552:  VSTR            S0, [SP,#0xC0+var_A0]
3FE556:  STMEA.W         SP, {R0,R8,R11}
3FE55A:  MOVS            R0, #0
3FE55C:  STR.W           R10, [SP,#0xC0+var_B4]
3FE560:  STR             R0, [SP,#0xC0+var_B0]
3FE562:  MOV             R0, #0x3DCCCCCD
3FE56A:  STR             R0, [SP,#0xC0+var_AC]
3FE56C:  MOV.W           R0, #0x3F800000
3FE570:  STR             R0, [SP,#0xC0+var_A8]
3FE572:  MOV             R0, R6
3FE574:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
3FE578:  SUBS.W          R9, R9, #1
3FE57C:  BNE             loc_3FE4FA
3FE57E:  B               loc_3FE64A
3FE580:  VLDR            S0, [R4,#0x10]
3FE584:  VLDR            S6, [R5,#0x48]
3FE588:  VLDR            S2, [R4,#0x14]
3FE58C:  VLDR            S8, [R5,#0x4C]
3FE590:  VMUL.F32        S14, S6, S0
3FE594:  VLDR            S4, [R4,#0x18]
3FE598:  VMUL.F32        S12, S8, S2
3FE59C:  VLDR            S10, [R5,#0x50]
3FE5A0:  VMUL.F32        S1, S10, S4
3FE5A4:  VADD.F32        S12, S14, S12
3FE5A8:  VADD.F32        S12, S12, S1
3FE5AC:  VMUL.F32        S2, S2, S12
3FE5B0:  VMUL.F32        S14, S0, S12
3FE5B4:  VMUL.F32        S4, S4, S12
3FE5B8:  VSUB.F32        S0, S8, S2
3FE5BC:  VSUB.F32        S2, S6, S14
3FE5C0:  VSUB.F32        S4, S10, S4
3FE5C4:  VMUL.F32        S6, S0, S0
3FE5C8:  VMUL.F32        S8, S2, S2
3FE5CC:  VMUL.F32        S4, S4, S4
3FE5D0:  VADD.F32        S6, S8, S6
3FE5D4:  VADD.F32        S4, S4, S6
3FE5D8:  VSQRT.F32       S4, S4
3FE5DC:  VCMPE.F32       S4, #0.0
3FE5E0:  VMRS            APSR_nzcv, FPSCR
3FE5E4:  BLE             loc_3FE64E
3FE5E6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE5F4)
3FE5E8:  VMOV.F32        S1, #1.0
3FE5EC:  VLDR            S12, [R5,#0x90]
3FE5F0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE5F2:  VLDR            S6, [R5,#0x60]
3FE5F6:  VLDR            S8, [R5,#0x64]
3FE5FA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FE5FC:  VLDR            S10, [R5,#0x68]
3FE600:  VLDR            S14, [R0]
3FE604:  VDIV.F32        S12, S14, S12
3FE608:  VMUL.F32        S12, S12, S18
3FE60C:  VDIV.F32        S14, S1, S4
3FE610:  VCMPE.F32       S4, S12
3FE614:  VMRS            APSR_nzcv, FPSCR
3FE618:  VMUL.F32        S2, S2, S14
3FE61C:  VMUL.F32        S0, S0, S14
3FE620:  IT GT
3FE622:  VMOVGT.F32      S4, S12
3FE626:  VMUL.F32        S2, S2, S4
3FE62A:  VMUL.F32        S0, S0, S4
3FE62E:  VLDR            S4, =0.0
3FE632:  VADD.F32        S4, S10, S4
3FE636:  VSUB.F32        S2, S6, S2
3FE63A:  VSUB.F32        S0, S8, S0
3FE63E:  VSTR            S2, [R5,#0x60]
3FE642:  VSTR            S0, [R5,#0x64]
3FE646:  VSTR            S4, [R5,#0x68]
3FE64A:  MOVS            R0, #1
3FE64C:  B               loc_3FE650
3FE64E:  MOVS            R0, #0
3FE650:  ADD             SP, SP, #0x68 ; 'h'
3FE652:  VPOP            {D8-D14}
3FE656:  ADD             SP, SP, #4
3FE658:  POP.W           {R8-R11}
3FE65C:  POP             {R4-R7,PC}
3FE65E:  LDR.W           R0, [R5,#0x464]
3FE662:  CMP             R0, #0
3FE664:  BEQ.W           loc_3FE44E
3FE668:  LDR             R0, [R5,#0x14]
3FE66A:  VLDR            S0, [R4,#0x10]
3FE66E:  VLDR            S2, [R4,#0x14]
3FE672:  VLDR            S6, [R0]
3FE676:  VLDR            S8, [R0,#4]
3FE67A:  VMUL.F32        S0, S0, S6
3FE67E:  VLDR            S4, [R4,#0x18]
3FE682:  VMUL.F32        S2, S2, S8
3FE686:  VLDR            S10, [R0,#8]
3FE68A:  VMUL.F32        S4, S4, S10
3FE68E:  VADD.F32        S0, S0, S2
3FE692:  VLDR            S2, =0.8667
3FE696:  VADD.F32        S0, S0, S4
3FE69A:  VABS.F32        S0, S0
3FE69E:  VCMPE.F32       S0, S2
3FE6A2:  VMRS            APSR_nzcv, FPSCR
3FE6A6:  BGE.W           loc_3FE44E
3FE6AA:  B               loc_3FE64A
