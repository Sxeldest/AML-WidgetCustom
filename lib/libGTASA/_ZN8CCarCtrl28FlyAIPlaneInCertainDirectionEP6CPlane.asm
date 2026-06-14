; =========================================================
; Game Engine Function: _ZN8CCarCtrl28FlyAIPlaneInCertainDirectionEP6CPlane
; Address            : 0x2F9140 - 0x2F97CA
; =========================================================

2F9140:  PUSH            {R4-R7,LR}
2F9142:  ADD             R7, SP, #0xC
2F9144:  PUSH.W          {R8-R11}
2F9148:  SUB             SP, SP, #4
2F914A:  VPUSH           {D8-D14}
2F914E:  SUB             SP, SP, #8
2F9150:  MOV             R4, R0
2F9152:  LDR.W           R0, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x2F9162)
2F9156:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2F9166)
2F915A:  MOVW            R3, #0x4DD3
2F915E:  ADD             R0, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
2F9160:  LDRH            R2, [R4,#0x24]
2F9162:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2F9164:  MOVT            R3, #0x1062
2F9168:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds ...
2F916A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2F916C:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds
2F916E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2F9170:  ADD             R0, R2
2F9172:  ADD             R1, R2
2F9174:  UMULL.W         R6, R5, R0, R3
2F9178:  MOV.W           R6, #0x3E8
2F917C:  UMULL.W         R2, R3, R1, R3
2F9180:  LSRS            R2, R5, #6
2F9182:  MLS.W           R0, R2, R6, R0
2F9186:  LSRS            R2, R3, #6; float
2F9188:  MLS.W           R1, R2, R6, R1
2F918C:  CMP             R1, R0
2F918E:  BCS.W           loc_2F9376
2F9192:  LDR             R1, [R4,#0x14]
2F9194:  LDRD.W          R0, R1, [R1,#0x10]; float
2F9198:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F919C:  ADDW            R11, R4, #0x9C8
2F91A0:  LDRSB.W         R1, [R4,#0x3BF]
2F91A4:  VMOV            S0, R0
2F91A8:  VLDR            S2, [R11]
2F91AC:  CMP             R1, #0x12
2F91AE:  BEQ             loc_2F91C2
2F91B0:  CMP             R1, #0x11
2F91B2:  BEQ             loc_2F91C8
2F91B4:  CMP             R1, #0x10
2F91B6:  VMOV.F32        S16, S2
2F91BA:  IT EQ
2F91BC:  VMOVEQ.F32      S16, S0
2F91C0:  B               loc_2F91D0
2F91C2:  VMOV.F32        S4, #2.0
2F91C6:  B               loc_2F91CC
2F91C8:  VMOV.F32        S4, #-2.0
2F91CC:  VADD.F32        S16, S0, S4
2F91D0:  VLDR            S4, =3.1416
2F91D4:  VSUB.F32        S0, S0, S16
2F91D8:  MOVS            R0, #0
2F91DA:  ADDW            R10, R4, #0x9CC
2F91DE:  VADD.F32        S2, S2, S4
2F91E2:  MOVT            R0, #0x43FA
2F91E6:  STR.W           R0, [R4,#0x9C0]
2F91EA:  VCMPE.F32       S0, S4
2F91EE:  VMRS            APSR_nzcv, FPSCR
2F91F2:  VSTR            S2, [R10]
2F91F6:  BLE             loc_2F920A
2F91F8:  VLDR            S2, =-6.2832
2F91FC:  VADD.F32        S0, S0, S2
2F9200:  VCMPE.F32       S0, S4
2F9204:  VMRS            APSR_nzcv, FPSCR
2F9208:  BGT             loc_2F91FC
2F920A:  VLDR            S2, =-3.1416
2F920E:  ADD.W           R6, R4, #0x9C0
2F9212:  VCMPE.F32       S0, S2
2F9216:  VMRS            APSR_nzcv, FPSCR
2F921A:  BGE             loc_2F922E
2F921C:  VLDR            S4, =6.2832
2F9220:  VADD.F32        S0, S0, S4
2F9224:  VCMPE.F32       S0, S2
2F9228:  VMRS            APSR_nzcv, FPSCR
2F922C:  BLT             loc_2F9220
2F922E:  VMOV.F32        S2, #1.5
2F9232:  ADDW            R0, R4, #0x9BC
2F9236:  VABS.F32        S4, S0
2F923A:  ADR.W           R5, dword_2F97E8
2F923E:  VLDR            S20, =150.0
2F9242:  VMUL.F32        S18, S0, S2
2F9246:  VLDR            S0, =0.5236
2F924A:  VLDR            S2, =0.0
2F924E:  VCMPE.F32       S4, S0
2F9252:  VMRS            APSR_nzcv, FPSCR
2F9256:  IT LT
2F9258:  VMOVLT.F32      S18, S2
2F925C:  STR             R0, [SP,#0x60+var_5C]
2F925E:  ADDW            R0, R4, #0x9C4
2F9262:  STR             R0, [SP,#0x60+var_60]
2F9264:  MOVS            R0, #1
2F9266:  MOV             R9, R0
2F9268:  ADD.W           R8, R5, #4
2F926C:  MOV.W           R0, R9,LSR#1
2F9270:  TST.W           R9, #1
2F9274:  VMOV            S0, R0
2F9278:  MOV             R0, R5
2F927A:  VCVT.F32.S32    S0, S0
2F927E:  IT EQ
2F9280:  MOVEQ           R0, R8
2F9282:  VLDR            S2, [R0]
2F9286:  VMUL.F32        S22, S2, S0
2F928A:  VCMPE.F32       S22, #0.0
2F928E:  VMRS            APSR_nzcv, FPSCR
2F9292:  BGE             loc_2F929E
2F9294:  VCMPE.F32       S22, S18
2F9298:  VMRS            APSR_nzcv, FPSCR
2F929C:  BGT             loc_2F92B2
2F929E:  VCMPE.F32       S22, #0.0
2F92A2:  VMRS            APSR_nzcv, FPSCR
2F92A6:  BLE             loc_2F92CE
2F92A8:  VCMPE.F32       S22, S18
2F92AC:  VMRS            APSR_nzcv, FPSCR
2F92B0:  BGE             loc_2F92CE
2F92B2:  VADD.F32        S0, S16, S22
2F92B6:  MOV             R0, R4; CPlane *
2F92B8:  VMOV            R1, S0; x
2F92BC:  BLX             j__Z16FindFlightHeightP6CPlanef; FindFlightHeight(CPlane *,float)
2F92C0:  VMOV            S0, R0
2F92C4:  VCMPE.F32       S0, S20
2F92C8:  VMRS            APSR_nzcv, FPSCR
2F92CC:  BLT             loc_2F92DA
2F92CE:  ADD.W           R0, R9, #1
2F92D2:  CMP.W           R9, #0x13
2F92D6:  BLT             loc_2F9266
2F92D8:  B               loc_2F9306
2F92DA:  VLDR            S2, =1.1
2F92DE:  VLDR            S4, [R11]
2F92E2:  VMUL.F32        S2, S22, S2
2F92E6:  VADD.F32        S2, S2, S4
2F92EA:  VSTR            S2, [R10]
2F92EE:  LDR             R0, [SP,#0x60+var_60]
2F92F0:  VLDR            S2, [R0]
2F92F4:  LDR             R0, [SP,#0x60+var_5C]
2F92F6:  VADD.F32        S0, S0, S2
2F92FA:  VLDR            S4, [R0]
2F92FE:  VMAX.F32        D0, D0, D2
2F9302:  VSTR            S0, [R6]
2F9306:  MOV             R9, R6
2F9308:  MOVS            R0, #1
2F930A:  MOV             R6, R0
2F930C:  TST.W           R6, #1
2F9310:  MOV.W           R0, R6,LSR#1
2F9314:  VMOV            S0, R0
2F9318:  MOV             R0, R5
2F931A:  VCVT.F32.S32    S0, S0
2F931E:  IT EQ
2F9320:  MOVEQ           R0, R8
2F9322:  VLDR            S2, [R0]
2F9326:  VMUL.F32        S22, S2, S0
2F932A:  VCMPE.F32       S22, #0.0
2F932E:  VMRS            APSR_nzcv, FPSCR
2F9332:  BGE             loc_2F933E
2F9334:  VCMPE.F32       S22, S18
2F9338:  VMRS            APSR_nzcv, FPSCR
2F933C:  BGT             loc_2F9370
2F933E:  VCMPE.F32       S22, #0.0
2F9342:  VMRS            APSR_nzcv, FPSCR
2F9346:  BLE             loc_2F9352
2F9348:  VCMPE.F32       S22, S18
2F934C:  VMRS            APSR_nzcv, FPSCR
2F9350:  BLT             loc_2F9370
2F9352:  VADD.F32        S0, S16, S22
2F9356:  MOV             R0, R4; CPlane *
2F9358:  VMOV            R1, S0; x
2F935C:  BLX             j__Z16FindFlightHeightP6CPlanef; FindFlightHeight(CPlane *,float)
2F9360:  VMOV            S0, R0
2F9364:  VCMPE.F32       S0, S20
2F9368:  VMRS            APSR_nzcv, FPSCR
2F936C:  BLT.W           loc_2F978E
2F9370:  ADDS            R0, R6, #1
2F9372:  CMP             R6, #0x13
2F9374:  BLT             loc_2F930A
2F9376:  LDR             R1, [R4,#0x14]
2F9378:  LDR.W           R6, [R4,#0x430]
2F937C:  LDRD.W          R0, R1, [R1,#0x10]; float
2F9380:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F9384:  LDR             R5, [R4,#0x14]
2F9386:  VMOV.F32        S16, #1.0
2F938A:  VLDR            S0, [R4,#0x48]
2F938E:  ADD.W           R1, R4, #0x7E8
2F9392:  VLDR            S2, [R4,#0x4C]
2F9396:  VMOV.F32        S22, #7.0
2F939A:  VLDR            S4, [R5,#0x10]
2F939E:  TST.W           R6, #0x80
2F93A2:  VLDR            S6, [R5,#0x14]
2F93A6:  VMUL.F32        S0, S4, S0
2F93AA:  VLDR            S4, =32.0
2F93AE:  VMUL.F32        S2, S6, S2
2F93B2:  IT EQ
2F93B4:  VMOVEQ.F32      S22, S4
2F93B8:  VLDR            S4, [R1]
2F93BC:  VCMPE.F32       S4, S16
2F93C0:  VMRS            APSR_nzcv, FPSCR
2F93C4:  VADD.F32        S0, S0, S2
2F93C8:  VLDR            S2, =60.0
2F93CC:  BLT             loc_2F9406
2F93CE:  ADDW            R1, R4, #0x7EC
2F93D2:  VLDR            S4, [R1]
2F93D6:  VCMPE.F32       S4, S16
2F93DA:  VMRS            APSR_nzcv, FPSCR
2F93DE:  BLT             loc_2F9406
2F93E0:  ADD.W           R1, R4, #0x7F0
2F93E4:  VLDR            S4, [R1]
2F93E8:  VCMPE.F32       S4, S16
2F93EC:  VMRS            APSR_nzcv, FPSCR
2F93F0:  BLT             loc_2F9406
2F93F2:  ADDW            R1, R4, #0x7F4
2F93F6:  VLDR            S4, [R1]
2F93FA:  VCMPE.F32       S4, S16
2F93FE:  VMRS            APSR_nzcv, FPSCR
2F9402:  BGE.W           loc_2F97BC
2F9406:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2F940E)
2F940A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2F940C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2F940E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2F9410:  STR.W           R1, [R4,#0x9D4]
2F9414:  MOV             R2, R1
2F9416:  VMUL.F32        S18, S0, S2
2F941A:  VMOV            S28, R0
2F941E:  SUBS            R0, R2, R1
2F9420:  CMP.W           R0, #0xFA0
2F9424:  BLS             loc_2F94E0
2F9426:  ADD.W           R0, R4, #0x9E0
2F942A:  VLDR            S0, [R0]
2F942E:  VCMP.F32        S0, S16
2F9432:  VMRS            APSR_nzcv, FPSCR
2F9436:  BEQ             loc_2F9440
2F9438:  MOV             R0, R4; this
2F943A:  BLX             j__ZN6CPlane9SetGearUpEv; CPlane::SetGearUp(void)
2F943E:  LDR             R5, [R4,#0x14]
2F9440:  VLDR            S20, =100.0
2F9444:  ADD.W           R1, R5, #0x30 ; '0'
2F9448:  VLDR            S0, [R4,#0x50]
2F944C:  CMP             R5, #0
2F944E:  LDR             R0, [R5,#0x18]; x
2F9450:  IT EQ
2F9452:  ADDEQ           R1, R4, #4
2F9454:  VMUL.F32        S0, S0, S20
2F9458:  VLDR            S2, [R1,#8]
2F945C:  VADD.F32        S24, S2, S0
2F9460:  BLX             asinf
2F9464:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2F9472)
2F9466:  ADD.W           R2, R4, #0x9C0
2F946A:  VMOV.F32        S4, #30.0
2F946E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2F9470:  VLDR            S0, [R2]
2F9474:  VMOV            S6, R0
2F9478:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
2F947A:  VSUB.F32        S0, S0, S24
2F947E:  VCMPE.F32       S18, S22
2F9482:  VMRS            APSR_nzcv, FPSCR
2F9486:  VLDR            S2, [R1]
2F948A:  ADD.W           R1, R4, #0x9D0
2F948E:  VDIV.F32        S2, S20, S2
2F9492:  VDIV.F32        S0, S0, S4
2F9496:  VLDR            S4, [R1]
2F949A:  VSUB.F32        S4, S6, S4
2F949E:  VMUL.F32        S2, S4, S2
2F94A2:  VLDR            S4, =0.4
2F94A6:  VMIN.F32        D16, D0, D2
2F94AA:  VLDR            S0, =-0.4
2F94AE:  VMOV.F32        S4, #0.25
2F94B2:  VMAX.F32        D0, D16, D0
2F94B6:  VADD.F32        S2, S6, S2
2F94BA:  VMIN.F32        D2, D0, D2
2F94BE:  IT LT
2F94C0:  VMOVLT.F32      S0, S4
2F94C4:  VMOV.F32        S4, #0.5
2F94C8:  STR.W           R0, [R4,#0x9D0]
2F94CC:  ADD.W           R0, R4, #0x9A0
2F94D0:  VSUB.F32        S0, S0, S2
2F94D4:  VMUL.F32        S20, S0, S4
2F94D8:  VSTR            S20, [R0]
2F94DC:  MOVS            R0, #0
2F94DE:  B               loc_2F94FC
2F94E0:  VCMPE.F32       S18, S22
2F94E4:  ADR             R0, dword_2F97FC
2F94E6:  VMRS            APSR_nzcv, FPSCR
2F94EA:  IT LT
2F94EC:  ADDLT           R0, #4
2F94EE:  VLDR            S20, [R0]
2F94F2:  ADD.W           R0, R4, #0x9A0
2F94F6:  VSTR            S20, [R0]
2F94FA:  MOVS            R0, #1
2F94FC:  ADDW            R1, R4, #0x9CC
2F9500:  VLDR            S24, =-3.1416
2F9504:  VLDR            S0, [R1]
2F9508:  VSUB.F32        S0, S0, S28
2F950C:  VCMPE.F32       S0, S24
2F9510:  VMRS            APSR_nzcv, FPSCR
2F9514:  BGE             loc_2F9528
2F9516:  VLDR            S2, =6.2832
2F951A:  VADD.F32        S0, S0, S2
2F951E:  VCMPE.F32       S0, S24
2F9522:  VMRS            APSR_nzcv, FPSCR
2F9526:  BLT             loc_2F951A
2F9528:  VLDR            S26, =3.1416
2F952C:  VCMPE.F32       S0, S26
2F9530:  VMRS            APSR_nzcv, FPSCR
2F9534:  BLE             loc_2F9548
2F9536:  VLDR            S2, =-6.2832
2F953A:  VADD.F32        S0, S0, S2
2F953E:  VCMPE.F32       S0, S26
2F9542:  VMRS            APSR_nzcv, FPSCR
2F9546:  BGT             loc_2F953A
2F9548:  CMP             R0, #1
2F954A:  BNE             loc_2F95A8
2F954C:  ADDW            R0, R4, #0x9B8
2F9550:  VMOV.F32        S2, #-10.0
2F9554:  VLDR            S0, [R0]
2F9558:  MOVS            R0, #0
2F955A:  STR.W           R0, [R4,#0x9A4]
2F955E:  ADDW            R0, R4, #0x99C
2F9562:  VSUB.F32        S0, S0, S28
2F9566:  VMUL.F32        S0, S0, S2
2F956A:  VMOV.F32        S2, #-1.0
2F956E:  VMIN.F32        D16, D0, D8
2F9572:  VMAX.F32        D0, D16, D1
2F9576:  VSTR            S0, [R0]
2F957A:  ADD.W           R0, R4, #0x9A0
2F957E:  B               loc_2F9746
2F9580:  DCFS 3.1416
2F9584:  DCFS -6.2832
2F9588:  DCFS -3.1416
2F958C:  DCFS 6.2832
2F9590:  DCFS 150.0
2F9594:  DCFS 0.5236
2F9598:  DCFS 0.0
2F959C:  DCFS 1.1
2F95A0:  DCFS 32.0
2F95A4:  DCFS 60.0
2F95A8:  VMOV.F32        S2, #-1.5
2F95AC:  VLDR            S4, =0.9
2F95B0:  ADDW            R0, R4, #0x42C
2F95B4:  VLDR            S6, =0.1
2F95B8:  VLDR            S8, =1.2
2F95BC:  LDRB            R0, [R0,#4]
2F95BE:  LSLS            R0, R0, #0x18
2F95C0:  VMUL.F32        S0, S0, S2
2F95C4:  VLDR            S2, =-0.9
2F95C8:  ADDW            R0, R4, #0x99C
2F95CC:  VMIN.F32        D16, D0, D2
2F95D0:  VMAX.F32        D1, D16, D1
2F95D4:  ITTTT MI
2F95D6:  VLDRMI          S0, =0.7
2F95DA:  VLDRMI          S4, =-0.7
2F95DE:  VMINMI.F32      D16, D1, D0
2F95E2:  VMAXMI.F32      D1, D16, D2
2F95E6:  VMOV.F32        S0, #4.0
2F95EA:  VABS.F32        S4, S2
2F95EE:  VNEG.F32        S28, S2
2F95F2:  VMUL.F32        S0, S2, S0
2F95F6:  VCMPE.F32       S4, S6
2F95FA:  VMRS            APSR_nzcv, FPSCR
2F95FE:  VMUL.F32        S4, S22, S8
2F9602:  VCMPE.F32       S18, S4
2F9606:  IT LT
2F9608:  VMOVLT.F32      S2, S0
2F960C:  VLDR            S0, =0.0
2F9610:  IT LT
2F9612:  VMOVLT.F32      S28, S0
2F9616:  VMRS            APSR_nzcv, FPSCR
2F961A:  VSTR            S2, [R0]
2F961E:  BGE             loc_2F9640
2F9620:  VMOV.F32        S2, #-0.5
2F9624:  VSUB.F32        S4, S4, S18
2F9628:  VMUL.F32        S2, S22, S2
2F962C:  VDIV.F32        S2, S4, S2
2F9630:  VADD.F32        S2, S2, S16
2F9634:  VLDR            S4, =0.0
2F9638:  VMAX.F32        D1, D1, D2
2F963C:  VMUL.F32        S28, S2, S28
2F9640:  CBZ             R5, loc_2F967E
2F9642:  VLDR            S0, [R5]
2F9646:  VLDR            S2, [R5,#4]
2F964A:  VMUL.F32        S0, S0, S0
2F964E:  VMUL.F32        S2, S2, S2
2F9652:  VADD.F32        S0, S0, S2
2F9656:  VLDR            S2, [R5,#0x28]
2F965A:  VCMPE.F32       S2, #0.0
2F965E:  VMRS            APSR_nzcv, FPSCR
2F9662:  VSQRT.F32       S0, S0
2F9666:  VNEG.F32        S4, S0
2F966A:  IT LT
2F966C:  VMOVLT.F32      S0, S4
2F9670:  LDR             R0, [R5,#8]; y
2F9672:  VMOV            R1, S0; x
2F9676:  BLX             atan2f
2F967A:  VMOV            S0, R0
2F967E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2F9688)
2F9680:  VMOV.F32        S2, #30.0
2F9684:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2F9686:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
2F9688:  VLDR            S4, [R0]
2F968C:  ADD.W           R0, R4, #0x9B0
2F9690:  VMAX.F32        D2, D2, D8
2F9694:  VDIV.F32        S2, S2, S4
2F9698:  VLDR            S4, [R0]
2F969C:  VSUB.F32        S4, S0, S4
2F96A0:  VMUL.F32        S2, S4, S2
2F96A4:  VADD.F32        S2, S0, S2
2F96A8:  VSUB.F32        S2, S28, S2
2F96AC:  VCMPE.F32       S2, S26
2F96B0:  VMRS            APSR_nzcv, FPSCR
2F96B4:  BLE             loc_2F96C8
2F96B6:  VLDR            S4, =-6.2832
2F96BA:  VADD.F32        S2, S2, S4
2F96BE:  VCMPE.F32       S2, S26
2F96C2:  VMRS            APSR_nzcv, FPSCR
2F96C6:  BGT             loc_2F96BA
2F96C8:  VCMPE.F32       S2, S24
2F96CC:  VMRS            APSR_nzcv, FPSCR
2F96D0:  BGE             loc_2F96E4
2F96D2:  VLDR            S4, =6.2832
2F96D6:  VADD.F32        S2, S2, S4
2F96DA:  VCMPE.F32       S2, S24
2F96DE:  VMRS            APSR_nzcv, FPSCR
2F96E2:  BLT             loc_2F96D6
2F96E4:  VMOV.F32        S6, #-1.0
2F96E8:  VLDR            S4, =0.23
2F96EC:  VNEG.F32        S8, S2
2F96F0:  VMUL.F32        S4, S0, S4
2F96F4:  VMOV.F64        D5, D8
2F96F8:  VCMPE.F32       S2, S6
2F96FC:  VMRS            APSR_nzcv, FPSCR
2F9700:  VCMPE.F32       S20, #0.0
2F9704:  VABS.F32        S4, S4
2F9708:  VADD.F32        S2, S4, S20
2F970C:  IT GT
2F970E:  VMOVGT.F32      S10, S8
2F9712:  VSTR            S0, [R0]
2F9716:  VMAX.F32        D0, D5, D3
2F971A:  ADDW            R0, R4, #0x9A4
2F971E:  VMRS            APSR_nzcv, FPSCR
2F9722:  VSTR            S0, [R0]
2F9726:  ADD.W           R0, R4, #0x9A0
2F972A:  VSTR            S2, [R0]
2F972E:  BGE             loc_2F9742
2F9730:  VMOV.F32        S0, #0.5
2F9734:  VMUL.F32        S0, S20, S0
2F9738:  VMIN.F32        D10, D1, D0
2F973C:  VSTR            S20, [R0]
2F9740:  B               loc_2F9746
2F9742:  VMOV            D10, D1
2F9746:  VMOV.F32        S0, #-1.0
2F974A:  VMIN.F32        D16, D10, D8
2F974E:  VMAX.F32        D0, D16, D0
2F9752:  VSTR            S0, [R0]
2F9756:  LDRB.W          R1, [R4,#0x3BF]
2F975A:  LDR.W           R2, [R4,#0x9AC]
2F975E:  CMP             R1, #0xF
2F9760:  STR.W           R2, [R4,#0x9A8]
2F9764:  BNE             loc_2F9780
2F9766:  VMOV.F32        S0, #20.0
2F976A:  MOV.W           R1, #0x3F800000
2F976E:  STR             R1, [R0]
2F9770:  VCMPE.F32       S18, S0
2F9774:  VMRS            APSR_nzcv, FPSCR
2F9778:  ITT LT
2F977A:  MOVLT           R0, #0
2F977C:  STRBLT.W        R0, [R4,#0x3BF]
2F9780:  ADD             SP, SP, #8
2F9782:  VPOP            {D8-D14}
2F9786:  ADD             SP, SP, #4
2F9788:  POP.W           {R8-R11}
2F978C:  POP             {R4-R7,PC}
2F978E:  VLDR            S2, =1.1
2F9792:  VLDR            S4, [R11]
2F9796:  VMUL.F32        S2, S22, S2
2F979A:  VADD.F32        S2, S2, S4
2F979E:  VSTR            S2, [R10]
2F97A2:  LDR             R0, [SP,#0x60+var_60]
2F97A4:  VLDR            S2, [R0]
2F97A8:  LDR             R0, [SP,#0x60+var_5C]
2F97AA:  VADD.F32        S0, S0, S2
2F97AE:  VLDR            S4, [R0]
2F97B2:  VMAX.F32        D0, D0, D2
2F97B6:  VSTR            S0, [R9]
2F97BA:  B               loc_2F9376
2F97BC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2F97C2)
2F97BE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2F97C0:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
2F97C2:  LDR.W           R1, [R4,#0x9D4]
2F97C6:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
2F97C8:  B               loc_2F9416
