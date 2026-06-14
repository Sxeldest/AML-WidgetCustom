; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity14ProcessVehicleEP9CPhysical
; Address            : 0x3AE3D8 - 0x3AEA38
; =========================================================

3AE3D8:  PUSH            {R4-R7,LR}
3AE3DA:  ADD             R7, SP, #0xC
3AE3DC:  PUSH.W          {R8}
3AE3E0:  VPUSH           {D8}
3AE3E4:  SUB             SP, SP, #0x58; float
3AE3E6:  MOV             R4, R0
3AE3E8:  VMOV.I32        Q8, #0
3AE3EC:  ADD             R0, SP, #0x70+var_64
3AE3EE:  MOV             R5, R1
3AE3F0:  ADD.W           R1, R0, #0xC
3AE3F4:  ADDS            R0, #0x18
3AE3F6:  VST1.32         {D16-D17}, [R1]
3AE3FA:  VST1.32         {D16-D17}, [R0]
3AE3FE:  MOV.W           R0, #0xFFFFFFFF
3AE402:  STRD.W          R0, R0, [SP,#0x70+var_64]
3AE406:  MOVS            R0, #0
3AE408:  STRB.W          R0, [SP,#0x70+var_5C]
3AE40C:  STRD.W          R0, R0, [SP,#0x70+var_28]
3AE410:  STRD.W          R0, R0, [SP,#0x70+var_38]
3AE414:  STR.W           R0, [SP,#0x70+var_2E]
3AE418:  STR.W           R0, [SP,#0x70+var_34+2]
3AE41C:  STR             R5, [SP,#0x70+var_54]
3AE41E:  LDR.W           R0, [R5,#0x388]
3AE422:  CMP             R0, #0
3AE424:  IT NE
3AE426:  ADDNE           R0, #0x2C ; ','
3AE428:  STR             R0, [SP,#0x70+var_50]
3AE42A:  LDRSH.W         R0, [R5,#0x26]
3AE42E:  SUB.W           R0, R0, #0x190
3AE432:  STR             R0, [SP,#0x70+var_4C]
3AE434:  LDRB.W          R0, [R5,#0x3A]
3AE438:  AND.W           R0, R0, #0xF8
3AE43C:  CMP             R0, #0x10
3AE43E:  BNE             loc_3AE44E
3AE440:  VLDR            S0, =50.0
3AE444:  VLDR            S2, [R5,#0x3CC]
3AE448:  VDIV.F32        S0, S2, S0
3AE44C:  B               loc_3AE47C
3AE44E:  LDR             R0, [R5,#0x14]
3AE450:  VLDR            S0, [R5,#0x48]
3AE454:  VLDR            S2, [R5,#0x4C]
3AE458:  VLDR            S6, [R0,#0x10]
3AE45C:  VLDR            S8, [R0,#0x14]
3AE460:  VMUL.F32        S0, S0, S6
3AE464:  VLDR            S4, [R5,#0x50]
3AE468:  VMUL.F32        S2, S2, S8
3AE46C:  VLDR            S10, [R0,#0x18]
3AE470:  VMUL.F32        S4, S4, S10
3AE474:  VADD.F32        S0, S0, S2
3AE478:  VADD.F32        S0, S0, S4
3AE47C:  VSTR            S0, [SP,#0x70+var_48]
3AE480:  LDR.W           R0, [R5,#0x5A0]
3AE484:  LDR.W           R1, [R5,#0x5A4]
3AE488:  STRD.W          R1, R0, [SP,#0x70+var_64]
3AE48C:  LDRSB.W         R1, [R4,#0x80]
3AE490:  CMP             R1, #9; switch 10 cases
3AE492:  BHI.W           def_3AE496; jumptable 003AE496 default case, case 7
3AE496:  TBH.W           [PC,R1,LSL#1]; switch jump
3AE49A:  DCW 0xA; jump table for switch statement
3AE49C:  DCW 0x17
3AE49E:  DCW 0x29
3AE4A0:  DCW 0x3B
3AE4A2:  DCW 0x61
3AE4A4:  DCW 0x6E
3AE4A6:  DCW 0x7B
3AE4A8:  DCW 0x2C9
3AE4AA:  DCW 0xA1
3AE4AC:  DCW 0xB4
3AE4AE:  ADD.W           R1, R5, #0x4A0; jumptable 003AE496 case 0
3AE4B2:  CMP             R0, #9
3AE4B4:  VLDR            S0, [R1]
3AE4B8:  BEQ.W           loc_3AE6CC
3AE4BC:  CMP             R0, #0
3AE4BE:  BNE.W           loc_3AE748
3AE4C2:  ADDW            R0, R5, #0x978
3AE4C6:  B               loc_3AE6D0
3AE4C8:  LDRB.W          R1, [R4,#0xA8]; jumptable 003AE496 case 1
3AE4CC:  CMP             R1, #1
3AE4CE:  BEQ.W           def_3AE496; jumptable 003AE496 default case, case 7
3AE4D2:  ADD.W           R1, R5, #0x4A0
3AE4D6:  CMP             R0, #9
3AE4D8:  VLDR            S0, [R1]
3AE4DC:  BEQ.W           loc_3AE816
3AE4E0:  CMP             R0, #0
3AE4E2:  BNE.W           loc_3AE86E
3AE4E6:  ADDW            R0, R5, #0x978
3AE4EA:  B               loc_3AE81A
3AE4EC:  LDRB.W          R1, [R4,#0xA8]; jumptable 003AE496 case 2
3AE4F0:  CMP             R1, #1
3AE4F2:  BEQ.W           def_3AE496; jumptable 003AE496 default case, case 7
3AE4F6:  ADD.W           R1, R5, #0x4A0
3AE4FA:  CMP             R0, #9
3AE4FC:  VLDR            S0, [R1]
3AE500:  BEQ.W           loc_3AE83A
3AE504:  CMP             R0, #0
3AE506:  BNE.W           loc_3AE8EE
3AE50A:  ADDW            R0, R5, #0x978
3AE50E:  B               loc_3AE83E
3AE510:  ADD             R1, SP, #0x70+var_64; jumptable 003AE496 case 3
3AE512:  MOV             R0, R4
3AE514:  BLX             j__ZN21CAEVehicleAudioEntity17ProcessBoatEngineER14cVehicleParams; CAEVehicleAudioEntity::ProcessBoatEngine(cVehicleParams &)
3AE518:  MOV             R0, R4
3AE51A:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AE51E:  VLDR            S2, [SP,#0x70+var_48]
3AE522:  VMOV.F32        S0, #0.75
3AE526:  LDR             R0, [SP,#0x70+var_54]
3AE528:  VABS.F32        S2, S2
3AE52C:  LDRB.W          R0, [R0,#0x5C0]
3AE530:  LSLS            R0, R0, #0x1F
3AE532:  VMIN.F32        D1, D1, D0
3AE536:  VDIV.F32        S16, S2, S0
3AE53A:  VLDR            S2, =0.0
3AE53E:  VMOV.F32        S0, S16
3AE542:  IT EQ
3AE544:  VMOVEQ.F32      S0, S2
3AE548:  VLDR            S2, =0.00001
3AE54C:  VCMPE.F32       S0, S2
3AE550:  VMRS            APSR_nzcv, FPSCR
3AE554:  BGE             loc_3AE60C
3AE556:  VLDR            S0, =-100.0
3AE55A:  B               loc_3AE634
3AE55C:  ADD.W           R1, R5, #0x4A0; jumptable 003AE496 case 4
3AE560:  CMP             R0, #9
3AE562:  VLDR            S0, [R1]
3AE566:  BEQ.W           loc_3AE6F0
3AE56A:  CMP             R0, #0
3AE56C:  BNE.W           loc_3AE7C0
3AE570:  ADDW            R0, R5, #0x978
3AE574:  B               loc_3AE6F4
3AE576:  ADD.W           R1, R5, #0x4A0; jumptable 003AE496 case 5
3AE57A:  CMP             R0, #9
3AE57C:  VLDR            S0, [R1]
3AE580:  BEQ.W           loc_3AE714
3AE584:  CMP             R0, #0
3AE586:  BNE.W           loc_3AE7F8
3AE58A:  ADDW            R0, R5, #0x978
3AE58E:  B               loc_3AE718
3AE590:  ADD             R1, SP, #0x70+var_64; jumptable 003AE496 case 6
3AE592:  MOV             R0, R4
3AE594:  BLX             j__ZN21CAEVehicleAudioEntity15ProcessAircraftER14cVehicleParams; CAEVehicleAudioEntity::ProcessAircraft(cVehicleParams &)
3AE598:  MOV             R0, R4
3AE59A:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AE59E:  VLDR            S2, [SP,#0x70+var_48]
3AE5A2:  VMOV.F32        S0, #0.75
3AE5A6:  LDR             R0, [SP,#0x70+var_54]
3AE5A8:  VABS.F32        S2, S2
3AE5AC:  LDRB.W          R0, [R0,#0x5C0]
3AE5B0:  LSLS            R0, R0, #0x1F
3AE5B2:  VMIN.F32        D1, D1, D0
3AE5B6:  VDIV.F32        S16, S2, S0
3AE5BA:  VLDR            S2, =0.0
3AE5BE:  VMOV.F32        S0, S16
3AE5C2:  IT EQ
3AE5C4:  VMOVEQ.F32      S0, S2
3AE5C8:  VLDR            S2, =0.00001
3AE5CC:  VCMPE.F32       S0, S2
3AE5D0:  VMRS            APSR_nzcv, FPSCR
3AE5D4:  BGE             loc_3AE64C
3AE5D6:  VLDR            S0, =-100.0
3AE5DA:  B               loc_3AE674
3AE5DC:  ADD             R5, SP, #0x70+var_64; jumptable 003AE496 case 8
3AE5DE:  MOV             R0, R4
3AE5E0:  MOV             R1, R5
3AE5E2:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessTrainTrackSoundER14cVehicleParams; CAEVehicleAudioEntity::ProcessTrainTrackSound(cVehicleParams &)
3AE5E6:  MOV             R0, R4
3AE5E8:  MOV             R1, R5
3AE5EA:  LDRB.W          R6, [R4,#0xA5]
3AE5EE:  BLX             j__ZN21CAEVehicleAudioEntity23ProcessDummyTrainEngineER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyTrainEngine(cVehicleParams &)
3AE5F2:  CMP             R6, #0
3AE5F4:  BEQ.W           def_3AE496; jumptable 003AE496 default case, case 7
3AE5F8:  ADD             R1, SP, #0x70+var_64
3AE5FA:  MOV             R0, R4
3AE5FC:  BLX             j__ZN21CAEVehicleAudioEntity24ProcessPlayerTrainBrakesER14cVehicleParams; CAEVehicleAudioEntity::ProcessPlayerTrainBrakes(cVehicleParams &)
3AE600:  B               def_3AE496; jumptable 003AE496 default case, case 7
3AE602:  ADD             R1, SP, #0x70+var_64; jumptable 003AE496 case 9
3AE604:  MOV             R0, R4; this
3AE606:  BLX             j__ZN21CAEVehicleAudioEntity21ProcessSpecialVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessSpecialVehicle(cVehicleParams &)
3AE60A:  B               def_3AE496; jumptable 003AE496 default case, case 7
3AE60C:  VMOV            R0, S0; this
3AE610:  LDRB.W          R5, [R4,#0x80]
3AE614:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AE618:  VMOV.F32        S0, #20.0
3AE61C:  CMP             R5, #6
3AE61E:  VMOV            S2, R0
3AE622:  VMUL.F32        S0, S2, S0
3AE626:  ITE NE
3AE628:  VMOVNE.F32      S2, #3.0
3AE62C:  VMOVEQ.F32      S2, #12.0
3AE630:  VADD.F32        S0, S0, S2
3AE634:  VLDR            S2, =0.2
3AE638:  VMOV.F32        S6, #6.0
3AE63C:  VLDR            S4, =0.8
3AE640:  VMUL.F32        S2, S16, S2
3AE644:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3AE64C)
3AE648:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3AE64A:  B               loc_3AE68A
3AE64C:  VMOV            R0, S0; this
3AE650:  LDRB.W          R5, [R4,#0x80]
3AE654:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AE658:  VMOV.F32        S0, #20.0
3AE65C:  CMP             R5, #6
3AE65E:  VMOV            S2, R0
3AE662:  VMUL.F32        S0, S2, S0
3AE666:  ITE NE
3AE668:  VMOVNE.F32      S2, #3.0
3AE66C:  VMOVEQ.F32      S2, #12.0
3AE670:  VADD.F32        S0, S0, S2
3AE674:  VLDR            S2, =0.2
3AE678:  VMOV.F32        S6, #6.0
3AE67C:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3AE68C)
3AE680:  VMUL.F32        S2, S16, S2
3AE684:  VLDR            S4, =0.8
3AE688:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3AE68A:  VADD.F32        S2, S2, S4
3AE68E:  VMOV.F32        S8, #0.5
3AE692:  LDR             R0, [R0]; CWeather::UnderWaterness ...
3AE694:  VLDR            S4, =0.185
3AE698:  VADD.F32        S6, S0, S6
3AE69C:  MOVS            R1, #6; __int16
3AE69E:  MOVS            R2, #2; __int16
3AE6A0:  VLDR            S10, [R0]
3AE6A4:  VMUL.F32        S4, S2, S4
3AE6A8:  MOV             R0, R4; this
3AE6AA:  MOVS            R3, #3; __int16
3AE6AC:  VCMPE.F32       S10, S8
3AE6B0:  VMRS            APSR_nzcv, FPSCR
3AE6B4:  ITT LT
3AE6B6:  VMOVLT.F32      S6, S0
3AE6BA:  VMOVLT.F32      S4, S2
3AE6BE:  VSTR            S4, [SP,#0x70+var_70]
3AE6C2:  VSTR            S6, [SP,#0x70+var_6C]
3AE6C6:  BLX             j__ZN21CAEVehicleAudioEntity15UpdateBoatSoundEsssff; CAEVehicleAudioEntity::UpdateBoatSound(short,short,short,float,float)
3AE6CA:  B               def_3AE496; jumptable 003AE496 default case, case 7
3AE6CC:  ADDW            R0, R5, #0x81C
3AE6D0:  VABS.F32        S0, S0
3AE6D4:  VLDR            S2, [R0]
3AE6D8:  VCMPE.F32       S0, S2
3AE6DC:  VMRS            APSR_nzcv, FPSCR
3AE6E0:  BLE             loc_3AE738
3AE6E2:  VLDR            S4, =0.09
3AE6E6:  VADD.F32        S2, S2, S4
3AE6EA:  VMIN.F32        D0, D1, D0
3AE6EE:  B               loc_3AE744
3AE6F0:  ADDW            R0, R5, #0x81C
3AE6F4:  VABS.F32        S0, S0
3AE6F8:  VLDR            S2, [R0]
3AE6FC:  VCMPE.F32       S0, S2
3AE700:  VMRS            APSR_nzcv, FPSCR
3AE704:  BLE             loc_3AE7B0
3AE706:  VLDR            S4, =0.09
3AE70A:  VADD.F32        S2, S2, S4
3AE70E:  VMIN.F32        D0, D1, D0
3AE712:  B               loc_3AE7BC
3AE714:  ADDW            R0, R5, #0x81C
3AE718:  VABS.F32        S0, S0
3AE71C:  VLDR            S2, [R0]
3AE720:  VCMPE.F32       S0, S2
3AE724:  VMRS            APSR_nzcv, FPSCR
3AE728:  BLE             loc_3AE7E8
3AE72A:  VLDR            S4, =0.09
3AE72E:  VADD.F32        S2, S2, S4
3AE732:  VMIN.F32        D0, D1, D0
3AE736:  B               loc_3AE7F4
3AE738:  VLDR            S4, =-0.07
3AE73C:  VADD.F32        S2, S2, S4
3AE740:  VMAX.F32        D0, D1, D0
3AE744:  VSTR            S0, [R0]
3AE748:  LDRB.W          R0, [R4,#0xA8]
3AE74C:  CMP             R0, #1
3AE74E:  BEQ.W           def_3AE496; jumptable 003AE496 default case, case 7
3AE752:  ADD             R1, SP, #0x70+var_64
3AE754:  MOV             R0, R4; this
3AE756:  BLX             j__ZN21CAEVehicleAudioEntity23ProcessVehicleRoadNoiseER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleRoadNoise(cVehicleParams &)
3AE75A:  LDRB.W          R0, [R4,#0xA5]
3AE75E:  CMP             R0, #0
3AE760:  BEQ             loc_3AE812
3AE762:  LDR             R6, [SP,#0x70+var_54]
3AE764:  VMOV.F32        S16, #1.0
3AE768:  VLDR            S0, =-100.0
3AE76C:  MOVW            R8, #0xFFFF
3AE770:  LDRB.W          R0, [R6,#0x42C]
3AE774:  LSLS            R0, R0, #0x1B
3AE776:  BPL.W           loc_3AE986
3AE77A:  ADD.W           R0, R6, #0x4A0
3AE77E:  VLDR            S2, [R0]
3AE782:  VCMPE.F32       S2, #0.0
3AE786:  VMRS            APSR_nzcv, FPSCR
3AE78A:  BLT             loc_3AE796
3AE78C:  LDRB.W          R0, [R6,#0x4C0]
3AE790:  CMP             R0, #0
3AE792:  BNE.W           loc_3AE986
3AE796:  LDRB.W          R0, [R6,#0x975]
3AE79A:  CMP             R0, #0
3AE79C:  BEQ.W           loc_3AE91E
3AE7A0:  LDR             R0, [SP,#0x70+var_50]
3AE7A2:  VLDR            S4, [SP,#0x70+var_48]
3AE7A6:  VLDR            S6, [R0,#0x60]
3AE7AA:  VDIV.F32        S4, S4, S6
3AE7AE:  B               loc_3AE93A
3AE7B0:  VLDR            S4, =-0.07
3AE7B4:  VADD.F32        S2, S2, S4
3AE7B8:  VMAX.F32        D0, D1, D0
3AE7BC:  VSTR            S0, [R0]
3AE7C0:  ADD             R1, SP, #0x70+var_64
3AE7C2:  MOV             R0, R4
3AE7C4:  BLX             j__ZN21CAEVehicleAudioEntity15ProcessAircraftER14cVehicleParams; CAEVehicleAudioEntity::ProcessAircraft(cVehicleParams &)
3AE7C8:  MOV             R0, R4
3AE7CA:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AE7CE:  B               def_3AE496; jumptable 003AE496 default case, case 7
3AE7D0:  DCFS 50.0
3AE7D4:  DCFS 0.0
3AE7D8:  DCFS 0.00001
3AE7DC:  DCFS -100.0
3AE7E0:  DCFS 0.2
3AE7E4:  DCFS 0.8
3AE7E8:  VLDR            S4, =-0.07
3AE7EC:  VADD.F32        S2, S2, S4
3AE7F0:  VMAX.F32        D0, D1, D0
3AE7F4:  VSTR            S0, [R0]
3AE7F8:  ADD             R5, SP, #0x70+var_64
3AE7FA:  MOV             R0, R4
3AE7FC:  MOV             R1, R5
3AE7FE:  BLX             j__ZN21CAEVehicleAudioEntity15ProcessAircraftER14cVehicleParams; CAEVehicleAudioEntity::ProcessAircraft(cVehicleParams &)
3AE802:  MOV             R0, R4
3AE804:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AE808:  MOV             R0, R4
3AE80A:  MOV             R1, R5
3AE80C:  BLX             j__ZN21CAEVehicleAudioEntity18ProcessMovingPartsER14cVehicleParams; CAEVehicleAudioEntity::ProcessMovingParts(cVehicleParams &)
3AE810:  B               def_3AE496; jumptable 003AE496 default case, case 7
3AE812:  LDR             R6, [SP,#0x70+var_54]
3AE814:  B               loc_3AE998
3AE816:  ADDW            R0, R5, #0x81C
3AE81A:  VABS.F32        S0, S0
3AE81E:  VLDR            S2, [R0]
3AE822:  VCMPE.F32       S0, S2
3AE826:  VMRS            APSR_nzcv, FPSCR
3AE82A:  BLE             loc_3AE85E
3AE82C:  VLDR            S4, =0.09
3AE830:  VADD.F32        S2, S2, S4
3AE834:  VMIN.F32        D0, D1, D0
3AE838:  B               loc_3AE86A
3AE83A:  ADDW            R0, R5, #0x81C
3AE83E:  VABS.F32        S0, S0
3AE842:  VLDR            S2, [R0]
3AE846:  VCMPE.F32       S0, S2
3AE84A:  VMRS            APSR_nzcv, FPSCR
3AE84E:  BLE             loc_3AE8DE
3AE850:  VLDR            S4, =0.09
3AE854:  VADD.F32        S2, S2, S4
3AE858:  VMIN.F32        D0, D1, D0
3AE85C:  B               loc_3AE8EA
3AE85E:  VLDR            S4, =-0.07
3AE862:  VADD.F32        S2, S2, S4
3AE866:  VMAX.F32        D0, D1, D0
3AE86A:  VSTR            S0, [R0]
3AE86E:  ADD             R1, SP, #0x70+var_64
3AE870:  MOV             R0, R4; this
3AE872:  BLX             j__ZN21CAEVehicleAudioEntity23ProcessVehicleRoadNoiseER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleRoadNoise(cVehicleParams &)
3AE876:  LDR             R0, [SP,#0x70+var_54]
3AE878:  LDRB.W          R0, [R0,#0x3A]
3AE87C:  AND.W           R0, R0, #0xF8
3AE880:  CMP             R0, #0x10
3AE882:  BEQ             loc_3AE88C
3AE884:  ADD             R1, SP, #0x70+var_64
3AE886:  MOV             R0, R4
3AE888:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleSkiddingER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSkidding(cVehicleParams &)
3AE88C:  ADD             R1, SP, #0x70+var_64
3AE88E:  MOV             R0, R4
3AE890:  BLX             j__ZN21CAEVehicleAudioEntity28ProcessVehicleSirenAlarmHornER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSirenAlarmHorn(cVehicleParams &)
3AE894:  LDRB.W          R0, [R4,#0xA5]
3AE898:  ADD             R1, SP, #0x70+var_64
3AE89A:  CBZ             R0, loc_3AE8A4
3AE89C:  MOV             R0, R4
3AE89E:  BLX             j__ZN21CAEVehicleAudioEntity26ProcessPlayerVehicleEngineER14cVehicleParams; CAEVehicleAudioEntity::ProcessPlayerVehicleEngine(cVehicleParams &)
3AE8A2:  B               loc_3AE8AA
3AE8A4:  MOV             R0, R4
3AE8A6:  BLX             j__ZN21CAEVehicleAudioEntity25ProcessDummyVehicleEngineER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyVehicleEngine(cVehicleParams &)
3AE8AA:  LDR             R0, [SP,#0x70+var_54]
3AE8AC:  LDRB.W          R0, [R0,#0x3A]
3AE8B0:  AND.W           R1, R0, #0xF8
3AE8B4:  CMP             R1, #0x10
3AE8B6:  BEQ             loc_3AE8C6
3AE8B8:  ADD             R1, SP, #0x70+var_64
3AE8BA:  MOV             R0, R4; this
3AE8BC:  BLX             j__ZN21CAEVehicleAudioEntity19ProcessEngineDamageER14cVehicleParams; CAEVehicleAudioEntity::ProcessEngineDamage(cVehicleParams &)
3AE8C0:  LDR             R0, [SP,#0x70+var_54]
3AE8C2:  LDRB.W          R0, [R0,#0x3A]
3AE8C6:  AND.W           R0, R0, #0xF8
3AE8CA:  CMP             R0, #0x10
3AE8CC:  BEQ             loc_3AE8D6
3AE8CE:  ADD             R1, SP, #0x70+var_64
3AE8D0:  MOV             R0, R4; this
3AE8D2:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleFlatTyreER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleFlatTyre(cVehicleParams &)
3AE8D6:  MOV             R0, R4
3AE8D8:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AE8DC:  B               loc_3AE916
3AE8DE:  VLDR            S4, =-0.07
3AE8E2:  VADD.F32        S2, S2, S4
3AE8E6:  VMAX.F32        D0, D1, D0
3AE8EA:  VSTR            S0, [R0]
3AE8EE:  ADD             R6, SP, #0x70+var_64
3AE8F0:  MOV             R0, R4
3AE8F2:  MOV             R1, R6
3AE8F4:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleSkiddingER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSkidding(cVehicleParams &)
3AE8F8:  MOV             R0, R4
3AE8FA:  MOV             R1, R6
3AE8FC:  BLX             j__ZN21CAEVehicleAudioEntity28ProcessVehicleSirenAlarmHornER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSirenAlarmHorn(cVehicleParams &)
3AE900:  LDRB.W          R0, [R4,#0xA5]
3AE904:  ADD             R1, SP, #0x70+var_64
3AE906:  CBZ             R0, loc_3AE910
3AE908:  MOV             R0, R4
3AE90A:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessPlayerBicycleER14cVehicleParams; CAEVehicleAudioEntity::ProcessPlayerBicycle(cVehicleParams &)
3AE90E:  B               loc_3AE916
3AE910:  MOV             R0, R4
3AE912:  BLX             j__ZN21CAEVehicleAudioEntity19ProcessDummyBicycleER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyBicycle(cVehicleParams &)
3AE916:  LDR             R0, [SP,#0x70+var_48]
3AE918:  STR.W           R0, [R5,#0x7CC]
3AE91C:  B               def_3AE496; jumptable 003AE496 default case, case 7
3AE91E:  ADDW            R0, R6, #0x978
3AE922:  LDRB.W          R1, [R6,#0x976]; float
3AE926:  VLDR            S4, [R0]
3AE92A:  CMP             R1, #0
3AE92C:  ITTT NE
3AE92E:  VLDRNE          S6, =0.4
3AE932:  VMULNE.F32      S4, S4, S6
3AE936:  VSTRNE          S4, [R0]
3AE93A:  VCMPE.F32       S2, #0.0
3AE93E:  VLDR            S6, =0.2
3AE942:  VABS.F32        S4, S4
3AE946:  VMRS            APSR_nzcv, FPSCR
3AE94A:  VMOV.F32        S8, #0.75
3AE94E:  MOV.W           R8, #0x14
3AE952:  VMUL.F32        S6, S4, S6
3AE956:  VCMPE.F32       S4, #0.0
3AE95A:  VADD.F32        S16, S6, S8
3AE95E:  IT LT
3AE960:  MOVLT.W         R8, #0x13
3AE964:  VMRS            APSR_nzcv, FPSCR
3AE968:  BLE             loc_3AE986
3AE96A:  VMOV            R0, S4; this
3AE96E:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AE972:  VMOV.F32        S0, #20.0
3AE976:  VMOV            S2, R0
3AE97A:  VMOV.F32        S4, #-6.0
3AE97E:  VMUL.F32        S0, S2, S0
3AE982:  VADD.F32        S0, S0, S4
3AE986:  VMOV            R2, S16; float
3AE98A:  SXTH.W          R1, R8; __int16
3AE98E:  VMOV            R3, S0; float
3AE992:  MOV             R0, R4; this
3AE994:  BLX             j__ZN21CAEVehicleAudioEntity16PlayReverseSoundEsff; CAEVehicleAudioEntity::PlayReverseSound(short,float,float)
3AE998:  LDRB.W          R0, [R6,#0x3A]
3AE99C:  AND.W           R0, R0, #0xF8
3AE9A0:  CMP             R0, #0x10
3AE9A2:  BEQ             loc_3AE9AE
3AE9A4:  ADD             R1, SP, #0x70+var_64
3AE9A6:  MOV             R0, R4
3AE9A8:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleSkiddingER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSkidding(cVehicleParams &)
3AE9AC:  LDR             R6, [SP,#0x70+var_54]
3AE9AE:  LDRB.W          R0, [R6,#0x3A]
3AE9B2:  AND.W           R0, R0, #0xF8
3AE9B6:  CMP             R0, #0x10
3AE9B8:  BEQ             loc_3AE9C2
3AE9BA:  ADD             R1, SP, #0x70+var_64
3AE9BC:  MOV             R0, R4; this
3AE9BE:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleFlatTyreER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleFlatTyre(cVehicleParams &)
3AE9C2:  ADD             R1, SP, #0x70+var_64
3AE9C4:  MOV             R0, R4
3AE9C6:  BLX             j__ZN21CAEVehicleAudioEntity28ProcessVehicleSirenAlarmHornER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSirenAlarmHorn(cVehicleParams &)
3AE9CA:  LDRB.W          R0, [R4,#0xA5]
3AE9CE:  ADD             R1, SP, #0x70+var_64
3AE9D0:  CBZ             R0, loc_3AE9DA
3AE9D2:  MOV             R0, R4
3AE9D4:  BLX             j__ZN21CAEVehicleAudioEntity26ProcessPlayerVehicleEngineER14cVehicleParams; CAEVehicleAudioEntity::ProcessPlayerVehicleEngine(cVehicleParams &)
3AE9D8:  B               loc_3AE9E0
3AE9DA:  MOV             R0, R4
3AE9DC:  BLX             j__ZN21CAEVehicleAudioEntity25ProcessDummyVehicleEngineER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyVehicleEngine(cVehicleParams &)
3AE9E0:  LDR             R0, [SP,#0x70+var_54]
3AE9E2:  LDRB.W          R0, [R0,#0x3A]
3AE9E6:  AND.W           R0, R0, #0xF8
3AE9EA:  CMP             R0, #0x10
3AE9EC:  BEQ             loc_3AE9F6
3AE9EE:  ADD             R1, SP, #0x70+var_64
3AE9F0:  MOV             R0, R4; this
3AE9F2:  BLX             j__ZN21CAEVehicleAudioEntity19ProcessEngineDamageER14cVehicleParams; CAEVehicleAudioEntity::ProcessEngineDamage(cVehicleParams &)
3AE9F6:  MOV             R0, R4
3AE9F8:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AE9FC:  LDR             R0, [SP,#0x70+var_54]
3AE9FE:  LDR.W           R0, [R0,#0x5A0]
3AEA02:  CBNZ            R0, loc_3AEA0C
3AEA04:  ADD             R1, SP, #0x70+var_64
3AEA06:  MOV             R0, R4; this
3AEA08:  BLX             j__ZN21CAEVehicleAudioEntity12ProcessNitroER14cVehicleParams; CAEVehicleAudioEntity::ProcessNitro(cVehicleParams &)
3AEA0C:  ADD             R1, SP, #0x70+var_64
3AEA0E:  MOV             R0, R4
3AEA10:  BLX             j__ZN21CAEVehicleAudioEntity18ProcessMovingPartsER14cVehicleParams; CAEVehicleAudioEntity::ProcessMovingParts(cVehicleParams &)
3AEA14:  LDR             R0, [SP,#0x70+var_54]
3AEA16:  LDRH            R0, [R0,#0x26]
3AEA18:  CMP.W           R0, #0x214
3AEA1C:  BNE             loc_3AEA26
3AEA1E:  ADD             R1, SP, #0x70+var_64
3AEA20:  MOV             R0, R4
3AEA22:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessPlayerCombineER14cVehicleParams; CAEVehicleAudioEntity::ProcessPlayerCombine(cVehicleParams &)
3AEA26:  LDR             R0, [SP,#0x70+var_48]
3AEA28:  STR.W           R0, [R5,#0x8C4]
3AEA2C:  ADD             SP, SP, #0x58 ; 'X'; jumptable 003AE496 default case, case 7
3AEA2E:  VPOP            {D8}
3AEA32:  POP.W           {R8}
3AEA36:  POP             {R4-R7,PC}
