; =========================================================
; Game Engine Function: _ZN8CVehicle16ProcessBikeWheelER7CVectorS1_S1_S1_iffffcPfP11tWheelState17eBikeWheelSpecialt
; Address            : 0x5832E8 - 0x5839B2
; =========================================================

5832E8:  PUSH            {R4-R7,LR}
5832EA:  ADD             R7, SP, #0xC
5832EC:  PUSH.W          {R8-R11}
5832F0:  SUB             SP, SP, #4
5832F2:  VPUSH           {D8-D15}
5832F6:  SUB             SP, SP, #0x28
5832F8:  VLDR            S24, [R7,#arg_C]
5832FC:  MOV             R6, R1
5832FE:  VLDR            S6, [R6]
583302:  MOV             R8, R2
583304:  VCMP.F32        S24, #0.0
583308:  VLDR            S8, [R3]
58330C:  VMRS            APSR_nzcv, FPSCR
583310:  LDR.W           R1, =(byte_A1305E - 0x583324)
583314:  VLDR            S4, [R6,#4]
583318:  VMUL.F32        S6, S8, S6
58331C:  VLDR            S10, [R3,#4]
583320:  ADD             R1, PC; byte_A1305E
583322:  LDR.W           R9, [R7,#arg_20]
583326:  MOV.W           R2, #0
58332A:  VMUL.F32        S4, S10, S4
58332E:  VLDR            S0, [R6,#8]
583332:  VLDR            S2, [R3,#8]
583336:  MOV             R11, R0
583338:  VLDR            S18, [R7,#arg_8]
58333C:  MOV.W           R5, #0
583340:  IT NE
583342:  MOVNE           R2, #1
583344:  STRB            R2, [R1]
583346:  BEQ             loc_583354
583348:  LDR.W           R1, =(byte_A1305F - 0x583352)
58334C:  MOVS            R2, #0
58334E:  ADD             R1, PC; byte_A1305F
583350:  STRB            R5, [R1]
583352:  B               loc_58337A
583354:  VCMP.F32        S18, #0.0
583358:  MOVS            R0, #0
58335A:  VMRS            APSR_nzcv, FPSCR
58335E:  VCMPE.F32       S18, #0.0
583362:  LDR.W           R1, =(byte_A1305F - 0x58336A)
583366:  ADD             R1, PC; byte_A1305F
583368:  IT NE
58336A:  MOVNE           R0, #1
58336C:  VMRS            APSR_nzcv, FPSCR
583370:  STRB            R0, [R1]
583372:  IT LT
583374:  MOVLT           R5, #1
583376:  MOV             R2, R5
583378:  MOV             R5, R0
58337A:  LDR.W           R0, =(byte_A13060 - 0x58338C)
58337E:  VMUL.F32        S0, S2, S0
583382:  VADD.F32        S2, S6, S4
583386:  LDR             R1, [R7,#arg_24]
583388:  ADD             R0, PC; byte_A13060
58338A:  VLDR            S4, [R7,#arg_10]
58338E:  STRB            R2, [R0]
583390:  LDR.W           R0, [R9]
583394:  CBZ             R0, loc_5833B8
583396:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5833A4)
58339A:  MOVS            R4, #1
58339C:  LDR.W           R2, =(byte_A1305D - 0x5833A6)
5833A0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5833A2:  ADD             R2, PC; byte_A1305D
5833A4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5833A6:  STRB            R4, [R2]
5833A8:  MOVS            R2, #0
5833AA:  STR.W           R2, [R9]
5833AE:  VLDR            S6, [R0]
5833B2:  VMUL.F32        S16, S6, S4
5833B6:  B               loc_5833DA
5833B8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5833C6)
5833BC:  MOVS            R4, #0
5833BE:  LDR.W           R2, =(byte_A1305D - 0x5833C8)
5833C2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5833C4:  ADD             R2, PC; byte_A1305D
5833C6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5833C8:  LDRB            R2, [R2]
5833CA:  STR.W           R4, [R9]
5833CE:  VLDR            S6, [R0]
5833D2:  CMP             R2, #1
5833D4:  VMUL.F32        S16, S6, S4
5833D8:  BNE             loc_5833E6
5833DA:  LDR.W           R0, [R11,#0x388]
5833DE:  VLDR            S4, [R0,#0xA4]
5833E2:  VMUL.F32        S16, S16, S4
5833E6:  VADD.F32        S20, S2, S0
5833EA:  LDR.W           R10, [R7,#arg_4]
5833EE:  ORR.W           R0, R1, #1
5833F2:  VLDR            S22, =0.0
5833F6:  CMP             R0, #3
5833F8:  BEQ             loc_583492
5833FA:  VLDR            S0, [R8]
5833FE:  VLDR            S6, [R3]
583402:  VLDR            S2, [R8,#4]
583406:  VLDR            S8, [R3,#4]
58340A:  VMUL.F32        S0, S6, S0
58340E:  VLDR            S4, [R8,#8]
583412:  VMUL.F32        S2, S8, S2
583416:  VLDR            S10, [R3,#8]
58341A:  VMUL.F32        S4, S10, S4
58341E:  VADD.F32        S0, S0, S2
583422:  VADD.F32        S0, S0, S4
583426:  VCMP.F32        S0, #0.0
58342A:  VMRS            APSR_nzcv, FPSCR
58342E:  BEQ             loc_583492
583430:  VMOV            S2, R10
583434:  LDR             R0, [R7,#arg_28]
583436:  VNEG.F32        S0, S0
58343A:  VCVT.F32.S32    S2, S2
58343E:  CMP             R0, #1
583440:  VDIV.F32        S22, S0, S2
583444:  BNE             loc_583492
583446:  LDR.W           R0, =(fBurstBikeSpeedMax_ptr - 0x583452)
58344A:  LDR.W           R1, =(fBurstBikeTyreMod_ptr - 0x583454)
58344E:  ADD             R0, PC; fBurstBikeSpeedMax_ptr
583450:  ADD             R1, PC; fBurstBikeTyreMod_ptr
583452:  LDR             R0, [R0]; fBurstBikeSpeedMax
583454:  LDR             R1, [R1]; fBurstBikeTyreMod
583456:  VLDR            S26, [R0]
58345A:  VLDR            S28, [R1]
58345E:  BLX             rand
583462:  VMOV            S0, R0
583466:  VLDR            S2, =4.6566e-10
58346A:  VADD.F32        S4, S28, S28
58346E:  LDR.W           R0, =(byte_A1305F - 0x58347A)
583472:  VCVT.F32.S32    S0, S0
583476:  ADD             R0, PC; byte_A1305F
583478:  LDRB            R5, [R0]
58347A:  VMUL.F32        S0, S0, S2
58347E:  VMIN.F32        D1, D10, D13
583482:  VMUL.F32        S0, S4, S0
583486:  VSUB.F32        S0, S0, S28
58348A:  VMUL.F32        S0, S2, S0
58348E:  VADD.F32        S22, S22, S0
583492:  CBZ             R5, loc_5834B2
583494:  VCMPE.F32       S22, #0.0
583498:  VMRS            APSR_nzcv, FPSCR
58349C:  BLE             loc_583556
58349E:  VCMPE.F32       S22, S16
5834A2:  VMRS            APSR_nzcv, FPSCR
5834A6:  ITE GT
5834A8:  VMOVGT.F32      S0, S16
5834AC:  VMOVLE.F32      S0, S22
5834B0:  B               loc_58361E
5834B2:  VCMP.F32        S20, #0.0
5834B6:  VMRS            APSR_nzcv, FPSCR
5834BA:  BEQ             loc_58356A
5834BC:  VMOV            S0, R10
5834C0:  LDR.W           R0, =(byte_A1305E - 0x5834D0)
5834C4:  VNEG.F32        S2, S20
5834C8:  VCVT.F32.S32    S0, S0
5834CC:  ADD             R0, PC; byte_A1305E
5834CE:  LDRB            R0, [R0]
5834D0:  CMP             R0, #0
5834D2:  VDIV.F32        S26, S2, S0
5834D6:  BNE.W           loc_5835F2
5834DA:  ADD.W           R0, R11, #0x4A0
5834DE:  VLDR            S2, =0.01
5834E2:  VLDR            S0, [R0]
5834E6:  VABS.F32        S0, S0
5834EA:  VCMPE.F32       S0, S2
5834EE:  VMRS            APSR_nzcv, FPSCR
5834F2:  BGE             loc_5835F2
5834F4:  VLDR            S0, =0.05
5834F8:  VCMPE.F32       S26, S0
5834FC:  VMRS            APSR_nzcv, FPSCR
583500:  BGE             loc_583574
583502:  VLDR            S0, =-0.05
583506:  VCMPE.F32       S26, S0
58350A:  VMRS            APSR_nzcv, FPSCR
58350E:  BLE             loc_583574
583510:  LDR.W           R0, [R11,#0x5A4]
583514:  CMP             R0, #0xA
583516:  BNE             loc_583574
583518:  LDR.W           R0, [R11,#0x464]
58351C:  CBZ             R0, loc_58352C
58351E:  MOVS            R0, #0; this
583520:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
583524:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
583528:  CMP             R0, #0
58352A:  BNE             loc_5835F2
58352C:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x58353C)
583530:  VMOV.F32        S0, #0.5
583534:  LDR.W           R1, [R11,#0x388]
583538:  ADD             R0, PC; mod_HandlingManager_ptr
58353A:  VLDR            S2, =200.0
58353E:  LDR             R0, [R0]; mod_HandlingManager
583540:  VLDR            S4, [R1,#4]
583544:  VLDR            S6, [R0,#4]
583548:  VADD.F32        S2, S4, S2
58354C:  VMUL.F32        S0, S6, S0
583550:  VDIV.F32        S24, S0, S2
583554:  B               loc_5835F2
583556:  VNEG.F32        S0, S16
58355A:  VCMPE.F32       S22, S0
58355E:  VMRS            APSR_nzcv, FPSCR
583562:  IT GE
583564:  VMOVGE.F32      S0, S22
583568:  B               loc_58361E
58356A:  VLDR            S18, =0.0
58356E:  VMOV.F32        S0, S22
583572:  B               loc_58361E
583574:  LDR.W           R0, [R11,#0x5A0]
583578:  CMP             R0, #9
58357A:  BNE             loc_5835A2
58357C:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x583588)
583580:  LDR.W           R1, [R11,#0x388]
583584:  ADD             R0, PC; mod_HandlingManager_ptr
583586:  VLDR            S0, =200.0
58358A:  VLDR            S4, =0.6
58358E:  LDR             R0, [R0]; mod_HandlingManager
583590:  VLDR            S2, [R1,#4]
583594:  VLDR            S6, [R0,#4]
583598:  VADD.F32        S0, S2, S0
58359C:  VMUL.F32        S2, S6, S4
5835A0:  B               loc_5835EE
5835A2:  LDR.W           R0, [R11,#0x388]
5835A6:  VLDR            S2, =500.0
5835AA:  VLDR            S0, [R0,#4]
5835AE:  VCMPE.F32       S0, S2
5835B2:  VMRS            APSR_nzcv, FPSCR
5835B6:  BGE             loc_5835CE
5835B8:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x5835C4)
5835BC:  VLDR            S2, =0.2
5835C0:  ADD             R0, PC; mod_HandlingManager_ptr
5835C2:  LDR             R0, [R0]; mod_HandlingManager
5835C4:  VLDR            S4, [R0,#4]
5835C8:  VMUL.F32        S2, S4, S2
5835CC:  B               loc_5835EE
5835CE:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x5835DA)
5835D2:  LDRH.W          R1, [R11,#0x26]
5835D6:  ADD             R0, PC; mod_HandlingManager_ptr
5835D8:  LDR             R0, [R0]; mod_HandlingManager
5835DA:  VLDR            S2, [R0,#4]
5835DE:  MOVW            R0, #0x1B9
5835E2:  CMP             R1, R0
5835E4:  ITT EQ
5835E6:  VLDREQ          S4, =0.2
5835EA:  VMULEQ.F32      S2, S2, S4
5835EE:  VDIV.F32        S24, S2, S0
5835F2:  VCMPE.F32       S24, S16
5835F6:  VMRS            APSR_nzcv, FPSCR
5835FA:  BLE.W           loc_58397C
5835FE:  VABS.F32        S0, S20
583602:  VLDR            S2, =0.005
583606:  VCMPE.F32       S0, S2
58360A:  VMRS            APSR_nzcv, FPSCR
58360E:  ITT GT
583610:  MOVGT           R0, #3
583612:  STRGT.W         R0, [R9]
583616:  VMOV.F32        S0, S22
58361A:  VMOV.F32        S18, S26
58361E:  VMUL.F32        S4, S18, S18
583622:  VLDR            S2, [R7,#arg_14]
583626:  VMUL.F32        S8, S0, S0
58362A:  VMUL.F32        S6, S16, S16
58362E:  VADD.F32        S4, S8, S4
583632:  VCMPE.F32       S4, S6
583636:  VMRS            APSR_nzcv, FPSCR
58363A:  BLE             loc_5836D4
58363C:  LDR.W           R0, [R9]
583640:  CMP             R0, #3
583642:  BEQ             loc_58366A
583644:  LDR             R0, =(byte_A1305F - 0x583650)
583646:  MOVS            R1, #2
583648:  VLDR            S6, =0.1
58364C:  ADD             R0, PC; byte_A1305F
58364E:  VCMPE.F32       S20, S6
583652:  LDRB            R0, [R0]
583654:  CMP             R0, #0
583656:  MOV.W           R0, #2
58365A:  IT NE
58365C:  MOVNE           R0, #1
58365E:  VMRS            APSR_nzcv, FPSCR
583662:  IT GE
583664:  MOVGE           R0, R1
583666:  STR.W           R0, [R9]
58366A:  VSQRT.F32       S4, S4
58366E:  LDR             R0, =(byte_A1305D - 0x583678)
583670:  LDR.W           R1, [R11,#0x388]
583674:  ADD             R0, PC; byte_A1305D
583676:  LDRB            R0, [R0]
583678:  CMP             R0, #0
58367A:  VDIV.F32        S4, S16, S4
58367E:  VMOV.F32        S8, #1.0
583682:  VLDR            S6, [R1,#0xA4]
583686:  IT NE
583688:  VMOVNE.F32      S6, S8
58368C:  VCMPE.F32       S2, S8
583690:  VMUL.F32        S4, S4, S6
583694:  VMRS            APSR_nzcv, FPSCR
583698:  VMUL.F32        S0, S0, S4
58369C:  VMUL.F32        S18, S18, S4
5836A0:  VMUL.F32        S6, S0, S2
5836A4:  IT LT
5836A6:  VMOVLT.F32      S0, S6
5836AA:  B               loc_58371A
5836AC:  DCFS 0.0
5836B0:  DCFS 4.6566e-10
5836B4:  DCFS 0.01
5836B8:  DCFS 0.05
5836BC:  DCFS -0.05
5836C0:  DCFS 200.0
5836C4:  DCFS 0.6
5836C8:  DCFS 500.0
5836CC:  DCFS 0.2
5836D0:  DCFS 0.005
5836D4:  VMOV.F32        S8, #1.0
5836D8:  VCMPE.F32       S2, S8
5836DC:  VMRS            APSR_nzcv, FPSCR
5836E0:  BGE             loc_58371A
5836E2:  LDR             R0, =(byte_A1305D - 0x5836E8)
5836E4:  ADD             R0, PC; byte_A1305D
5836E6:  LDRB            R0, [R0]
5836E8:  CMP             R0, #0
5836EA:  ITTT EQ
5836EC:  LDREQ.W         R0, [R11,#0x388]
5836F0:  VLDREQ          S8, [R0,#0xA4]
5836F4:  VMULEQ.F32      S2, S8, S2
5836F8:  VMUL.F32        S6, S6, S2
5836FC:  VMUL.F32        S6, S2, S6
583700:  VCMPE.F32       S4, S6
583704:  VMRS            APSR_nzcv, FPSCR
583708:  BLE             loc_58371A
58370A:  VSQRT.F32       S4, S4
58370E:  VMUL.F32        S2, S16, S2
583712:  VDIV.F32        S2, S2, S4
583716:  VMUL.F32        S0, S0, S2
58371A:  VCMP.F32        S18, #0.0
58371E:  MOVS            R1, #0
583720:  VMRS            APSR_nzcv, FPSCR
583724:  VCMP.F32        S0, #0.0
583728:  MOV.W           R0, #0
58372C:  IT NE
58372E:  MOVNE           R1, #1
583730:  VMRS            APSR_nzcv, FPSCR
583734:  IT NE
583736:  MOVNE           R0, #1
583738:  ORRS            R0, R1
58373A:  BEQ.W           loc_58396E
58373E:  VLDR            S2, [R6]
583742:  VLDR            S4, [R6,#4]
583746:  VLDR            S6, [R6,#8]
58374A:  VMUL.F32        S2, S18, S2
58374E:  VLDR            S8, [R8]
583752:  VMUL.F32        S4, S18, S4
583756:  VLDR            S10, [R8,#4]
58375A:  VMUL.F32        S6, S18, S6
58375E:  VLDR            S12, [R8,#8]
583762:  VMUL.F32        S8, S0, S8
583766:  VMUL.F32        S10, S0, S10
58376A:  ADD             R6, SP, #0x88+var_6C
58376C:  VMUL.F32        S0, S0, S12
583770:  LDR.W           R9, [R7,#arg_18]
583774:  MOV             R0, R6; this
583776:  LDR             R5, [R7,#arg_0]
583778:  VADD.F32        S18, S8, S2
58377C:  VADD.F32        S16, S10, S4
583780:  VADD.F32        S20, S0, S6
583784:  VSTR            S16, [SP,#0x88+var_68]
583788:  VSTR            S18, [SP,#0x88+var_6C]
58378C:  VSTR            S20, [SP,#0x88+var_64]
583790:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
583794:  ADD             R0, SP, #0x88+var_78; CVector *
583796:  MOV             R1, R5; CVector *
583798:  MOV             R2, R6
58379A:  VLDR            S22, [R11,#0x90]
58379E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5837A2:  VMUL.F32        S2, S18, S18
5837A6:  VLDR            S28, [SP,#0x88+var_6C]
5837AA:  VMUL.F32        S0, S16, S16
5837AE:  VLDR            S30, [SP,#0x88+var_68]
5837B2:  VMUL.F32        S4, S20, S20
5837B6:  VLDR            S17, [SP,#0x88+var_64]
5837BA:  MOV             R0, R11
5837BC:  VLDR            S18, [SP,#0x88+var_78]
5837C0:  VLDR            S20, [SP,#0x88+var_74]
5837C4:  VLDR            S24, [SP,#0x88+var_70]
5837C8:  VLDR            S26, [R11,#0x94]
5837CC:  VADD.F32        S0, S2, S0
5837D0:  VADD.F32        S0, S0, S4
5837D4:  VSQRT.F32       S16, S0
5837D8:  VMUL.F32        S0, S16, S22
5837DC:  VMUL.F32        S2, S0, S28
5837E0:  VMUL.F32        S4, S0, S30
5837E4:  VMUL.F32        S0, S0, S17
5837E8:  VMOV            R1, S2
5837EC:  VMOV            R2, S4
5837F0:  VMOV            R3, S0
5837F4:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5837F8:  VMUL.F32        S0, S20, S20
5837FC:  LDR.W           R0, [R11,#0x14]
583800:  VMUL.F32        S2, S18, S18
583804:  VLDR            S8, [R5,#8]
583808:  VMUL.F32        S4, S24, S24
58380C:  CMP.W           R9, #1
583810:  VLDR            S6, [R0,#0x14]
583814:  VLDR            S12, [R0]
583818:  VLDR            S1, [R0,#4]
58381C:  VLDR            S10, [R0,#0x18]
583820:  VLDR            S14, [R0,#8]
583824:  VADD.F32        S0, S2, S0
583828:  VMOV.F32        S2, #1.0
58382C:  VADD.F32        S0, S0, S4
583830:  VDIV.F32        S4, S2, S22
583834:  VDIV.F32        S0, S0, S26
583838:  VADD.F32        S0, S4, S0
58383C:  VLDR            S4, [R5,#4]
583840:  VMUL.F32        S9, S4, S6
583844:  VDIV.F32        S0, S2, S0
583848:  VMUL.F32        S7, S16, S0
58384C:  VLDR            S0, [R5]
583850:  VLDR            S2, [R0,#0x10]
583854:  VMUL.F32        S16, S8, S10
583858:  VMUL.F32        S11, S0, S2
58385C:  VMUL.F32        S3, S30, S7
583860:  VMUL.F32        S5, S28, S7
583864:  VMUL.F32        S7, S17, S7
583868:  VADD.F32        S9, S11, S9
58386C:  VMUL.F32        S13, S3, S1
583870:  VMUL.F32        S15, S5, S12
583874:  VMUL.F32        S11, S7, S14
583878:  VADD.F32        S16, S9, S16
58387C:  VADD.F32        S13, S15, S13
583880:  VADD.F32        S18, S13, S11
583884:  BNE             loc_583898
583886:  LDR             R1, =(byte_A1305E - 0x58388E)
583888:  LDR             R2, =(byte_A13060 - 0x583890)
58388A:  ADD             R1, PC; byte_A1305E
58388C:  ADD             R2, PC; byte_A13060
58388E:  LDRB            R1, [R1]
583890:  LDRB            R2, [R2]
583892:  ORRS            R1, R2
583894:  LSLS            R1, R1, #0x18
583896:  BNE             loc_583938
583898:  VMUL.F32        S6, S12, S0
58389C:  VLDR            S12, [R0,#8]
5838A0:  VMUL.F32        S2, S1, S4
5838A4:  VMUL.F32        S10, S14, S8
5838A8:  VMUL.F32        S9, S18, S12
5838AC:  VADD.F32        S2, S6, S2
5838B0:  VLDR            S6, [R0]
5838B4:  VMUL.F32        S14, S18, S6
5838B8:  VADD.F32        S2, S2, S10
5838BC:  VLDR            S10, [R0,#4]
5838C0:  LDR             R0, =(fTweakBikeWheelTurnForce_ptr - 0x5838CA)
5838C2:  VMUL.F32        S1, S18, S10
5838C6:  ADD             R0, PC; fTweakBikeWheelTurnForce_ptr
5838C8:  VSUB.F32        S14, S5, S14
5838CC:  LDR             R0, [R0]; fTweakBikeWheelTurnForce
5838CE:  VMUL.F32        S10, S2, S10
5838D2:  VLDR            S5, [R0]
5838D6:  VMUL.F32        S12, S2, S12
5838DA:  VSUB.F32        S1, S3, S1
5838DE:  MOV             R0, R11
5838E0:  VSUB.F32        S3, S7, S9
5838E4:  VMUL.F32        S14, S5, S14
5838E8:  VMUL.F32        S2, S2, S6
5838EC:  VSUB.F32        S4, S4, S10
5838F0:  VSUB.F32        S6, S8, S12
5838F4:  VMUL.F32        S1, S5, S1
5838F8:  VMUL.F32        S3, S5, S3
5838FC:  VMOV            R1, S14
583900:  VSUB.F32        S0, S0, S2
583904:  VMOV            R2, S1
583908:  VMOV            R3, S3
58390C:  VSTR            S0, [SP,#0x88+var_88]
583910:  VSTR            S4, [SP,#0x88+var_84]
583914:  VSTR            S6, [SP,#0x88+var_80]
583918:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58391C:  LDR.W           R0, [R11,#0x14]
583920:  VLDR            S12, [R0]
583924:  VLDR            S1, [R0,#4]
583928:  VLDR            S14, [R0,#8]
58392C:  VLDR            S2, [R0,#0x10]
583930:  VLDR            S6, [R0,#0x14]
583934:  VLDR            S10, [R0,#0x18]
583938:  VMUL.F32        S0, S18, S12
58393C:  MOV             R0, R11
58393E:  VMUL.F32        S4, S18, S1
583942:  VMUL.F32        S8, S18, S14
583946:  VMUL.F32        S2, S16, S2
58394A:  VMOV            R1, S0
58394E:  VMOV            R2, S4
583952:  VMOV            R3, S8
583956:  VMUL.F32        S0, S16, S10
58395A:  VSTR            S2, [SP,#0x88+var_88]
58395E:  VMUL.F32        S4, S16, S6
583962:  VSTR            S4, [SP,#0x88+var_84]
583966:  VSTR            S0, [SP,#0x88+var_80]
58396A:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58396E:  ADD             SP, SP, #0x28 ; '('
583970:  VPOP            {D8-D15}
583974:  ADD             SP, SP, #4
583976:  POP.W           {R8-R11}
58397A:  POP             {R4-R7,PC}
58397C:  VCMPE.F32       S26, #0.0
583980:  VMRS            APSR_nzcv, FPSCR
583984:  BLE             loc_58399C
583986:  VCMPE.F32       S26, S24
58398A:  VMRS            APSR_nzcv, FPSCR
58398E:  BLE.W           loc_583616
583992:  VMOV.F32        S0, S22
583996:  VMOV.F32        S18, S24
58399A:  B               loc_58361E
58399C:  VNEG.F32        S18, S24
5839A0:  VCMPE.F32       S26, S18
5839A4:  VMRS            APSR_nzcv, FPSCR
5839A8:  BGE.W           loc_583616
5839AC:  VMOV.F32        S0, S22
5839B0:  B               loc_58361E
