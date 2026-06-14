; =========================================================
; Game Engine Function: _ZN14CTrafficLights21ShouldCarStopForLightEP8CVehicleb
; Address            : 0x362410 - 0x362956
; =========================================================

362410:  PUSH            {R4-R7,LR}
362412:  ADD             R7, SP, #0xC
362414:  PUSH.W          {R8-R11}
362418:  SUB             SP, SP, #4
36241A:  MOV             R5, R1
36241C:  MOV             R4, R0
36241E:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
362422:  CMP             R0, #3
362424:  BEQ.W           loc_36292E
362428:  MOV             R0, R4; this
36242A:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
36242E:  CMP             R0, #5
362430:  BEQ.W           loc_36292E
362434:  LDRH.W          R0, [R4,#0x3A8]
362438:  MOVW            R8, #0xFFFF
36243C:  CMP             R0, R8
36243E:  BEQ.W           loc_3625EA
362442:  LDR.W           R1, =(ThePaths_ptr - 0x36244A)
362446:  ADD             R1, PC; ThePaths_ptr
362448:  LDR             R2, [R1]; ThePaths
36244A:  LSRS            R1, R0, #0xA
36244C:  ADD.W           R2, R2, R1,LSL#2
362450:  LDR.W           R2, [R2,#0x804]
362454:  CMP             R2, #0
362456:  BEQ.W           loc_3625EA
36245A:  LDR.W           R2, =(ThePaths_ptr - 0x362466)
36245E:  BFC.W           R0, #0xA, #0x16
362462:  ADD             R2, PC; ThePaths_ptr
362464:  RSB.W           R10, R0, R0,LSL#3
362468:  LDR             R2, [R2]; ThePaths
36246A:  ADD.W           R1, R2, R1,LSL#2
36246E:  LDR.W           R9, [R1,#0x924]
362472:  ADD.W           R11, R9, R10,LSL#1
362476:  MOV             R6, R11
362478:  LDRH.W          R2, [R6,#0xB]!
36247C:  ANDS.W          R0, R2, #0x300
362480:  BEQ.W           loc_3625EA
362484:  LDRH.W          R1, [R4,#0x394]
362488:  LSLS            R2, R2, #0x19
36248A:  LDRH.W          R3, [R11,#4]
36248E:  BMI             loc_3624A2
362490:  CMP             R3, R1
362492:  BNE             loc_3624B6
362494:  LDRH.W          R1, [R4,#0x396]
362498:  LDRH.W          R2, [R11,#6]
36249C:  CMP             R2, R1
36249E:  BNE             loc_3624B6
3624A0:  B               loc_3625EA
3624A2:  CMP             R3, R1
3624A4:  BNE.W           loc_3625EA
3624A8:  LDRH.W          R1, [R4,#0x396]
3624AC:  LDRH.W          R2, [R11,#6]
3624B0:  CMP             R2, R1
3624B2:  BNE.W           loc_3625EA
3624B6:  CMP             R5, #0
3624B8:  BEQ             loc_36254E
3624BA:  LDRSH.W         R0, [R9,R10,LSL#1]
3624BE:  VMOV.F32        S0, #0.125
3624C2:  VLDR            S6, =0.01
3624C6:  VMOV            S2, R0
3624CA:  VCVT.F32.S32    S2, S2
3624CE:  LDRSH.W         R0, [R11,#2]
3624D2:  VMOV            S4, R0
3624D6:  VCVT.F32.S32    S4, S4
3624DA:  LDRSB.W         R0, [R11,#8]
3624DE:  LDR             R1, [R4,#0x14]
3624E0:  VMUL.F32        S2, S2, S0
3624E4:  VMOV            S8, R0
3624E8:  ADD.W           R2, R1, #0x30 ; '0'
3624EC:  CMP             R1, #0
3624EE:  VCVT.F32.S32    S8, S8
3624F2:  LDRSB.W         R0, [R11,#9]
3624F6:  VMUL.F32        S0, S4, S0
3624FA:  VMOV            S10, R0
3624FE:  VCVT.F32.S32    S10, S10
362502:  IT EQ
362504:  ADDEQ           R2, R4, #4
362506:  VLDR            S4, [R2]
36250A:  VLDR            S12, [R2,#4]
36250E:  VMUL.F32        S8, S8, S6
362512:  VSUB.F32        S2, S4, S2
362516:  LDRB.W          R0, [R4,#0x3B9]
36251A:  VSUB.F32        S0, S12, S0
36251E:  CMP             R0, #0xFF
362520:  VMUL.F32        S4, S10, S6
362524:  VMUL.F32        S2, S2, S8
362528:  VMUL.F32        S0, S0, S4
36252C:  VADD.F32        S0, S2, S0
362530:  VCMPE.F32       S0, #0.0
362534:  BEQ             loc_3625D4
362536:  VMRS            APSR_nzcv, FPSCR
36253A:  BGE             loc_3625EA
36253C:  VMOV.F32        S2, #-12.0
362540:  VCMPE.F32       S0, S2
362544:  VMRS            APSR_nzcv, FPSCR
362548:  BGT.W           loc_3628B6
36254C:  B               loc_3625EA
36254E:  CMP.W           R0, #0x100
362552:  BNE             loc_362588
362554:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x36255C)
362558:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
36255A:  LDR             R0, [R0]; this
36255C:  STR             R0, [SP,#0x20+var_20]
36255E:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362562:  LDR             R1, [SP,#0x20+var_20]
362564:  LDRB.W          R1, [R1,#0x25]
362568:  CMP             R1, #0
36256A:  IT EQ
36256C:  CMPEQ           R0, #0
36256E:  BNE             loc_362588
362570:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x36257C)
362574:  MOVW            R1, #0x7FF0
362578:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
36257A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
36257C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
36257E:  ANDS            R0, R1
362580:  MOVW            R1, #0x270F
362584:  CMP             R0, R1
362586:  BHI             loc_3624BA
362588:  LDRH            R0, [R6]
36258A:  AND.W           R0, R0, #0x300
36258E:  CMP.W           R0, #0x200
362592:  BNE.W           loc_36292E
362596:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x36259E)
36259A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
36259C:  LDR             R6, [R0]; CCheat::m_aCheatsActive ...
36259E:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
3625A2:  LDRB.W          R2, [R6,#(byte_796819 - 0x7967F4)]
3625A6:  MOV             R1, R0
3625A8:  MOVS            R0, #0
3625AA:  CMP             R2, #0
3625AC:  IT EQ
3625AE:  CMPEQ           R1, #0
3625B0:  BNE.W           loc_362930
3625B4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3625C0)
3625B8:  MOVW            R1, #0x1770
3625BC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3625BE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3625C0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3625C2:  UBFX.W          R0, R0, #1, #0xE
3625C6:  SUBS            R0, R0, R1
3625C8:  MOVW            R1, #0x1388
3625CC:  CMP             R0, R1
3625CE:  BCS.W           loc_3624BA
3625D2:  B               loc_36292E
3625D4:  VMRS            APSR_nzcv, FPSCR
3625D8:  BLE             loc_3625EA
3625DA:  VMOV.F32        S2, #12.0
3625DE:  VCMPE.F32       S0, S2
3625E2:  VMRS            APSR_nzcv, FPSCR
3625E6:  BLT.W           loc_3628B6
3625EA:  LDRH.W          R0, [R4,#0x3AA]
3625EE:  CMP             R0, R8
3625F0:  BEQ.W           loc_362790
3625F4:  LDR             R1, =(ThePaths_ptr - 0x3625FA)
3625F6:  ADD             R1, PC; ThePaths_ptr
3625F8:  LDR             R2, [R1]; ThePaths
3625FA:  LSRS            R1, R0, #0xA
3625FC:  ADD.W           R2, R2, R1,LSL#2
362600:  LDR.W           R2, [R2,#0x804]
362604:  CMP             R2, #0
362606:  BEQ.W           loc_362790
36260A:  LDR             R2, =(ThePaths_ptr - 0x362614)
36260C:  BFC.W           R0, #0xA, #0x16
362610:  ADD             R2, PC; ThePaths_ptr
362612:  RSB.W           R10, R0, R0,LSL#3
362616:  LDR             R2, [R2]; ThePaths
362618:  ADD.W           R1, R2, R1,LSL#2
36261C:  LDR.W           R9, [R1,#0x924]
362620:  ADD.W           R11, R9, R10,LSL#1
362624:  MOV             R6, R11
362626:  LDRH.W          R2, [R6,#0xB]!
36262A:  ANDS.W          R0, R2, #0x300
36262E:  BEQ.W           loc_362790
362632:  LDRH.W          R1, [R4,#0x398]
362636:  LSLS            R2, R2, #0x19
362638:  LDRH.W          R3, [R11,#4]
36263C:  BMI             loc_362650
36263E:  CMP             R3, R1
362640:  BNE             loc_362664
362642:  LDRH.W          R1, [R4,#0x39A]
362646:  LDRH.W          R2, [R11,#6]
36264A:  CMP             R2, R1
36264C:  BNE             loc_362664
36264E:  B               loc_362790
362650:  CMP             R3, R1
362652:  BNE.W           loc_362790
362656:  LDRH.W          R1, [R4,#0x39A]
36265A:  LDRH.W          R2, [R11,#6]
36265E:  CMP             R2, R1
362660:  BNE.W           loc_362790
362664:  CMP             R5, #0
362666:  BEQ             loc_3626FC
362668:  LDRSH.W         R0, [R9,R10,LSL#1]
36266C:  VMOV.F32        S0, #0.125
362670:  VLDR            S6, =0.01
362674:  VMOV            S2, R0
362678:  VCVT.F32.S32    S2, S2
36267C:  LDRSH.W         R0, [R11,#2]
362680:  VMOV            S4, R0
362684:  VCVT.F32.S32    S4, S4
362688:  LDRSB.W         R0, [R11,#8]
36268C:  LDR             R1, [R4,#0x14]
36268E:  VMUL.F32        S2, S2, S0
362692:  VMOV            S8, R0
362696:  ADD.W           R2, R1, #0x30 ; '0'
36269A:  CMP             R1, #0
36269C:  VCVT.F32.S32    S8, S8
3626A0:  LDRSB.W         R0, [R11,#9]
3626A4:  VMUL.F32        S0, S4, S0
3626A8:  VMOV            S10, R0
3626AC:  VCVT.F32.S32    S10, S10
3626B0:  IT EQ
3626B2:  ADDEQ           R2, R4, #4
3626B4:  VLDR            S4, [R2]
3626B8:  VLDR            S12, [R2,#4]
3626BC:  VMUL.F32        S8, S8, S6
3626C0:  VSUB.F32        S2, S4, S2
3626C4:  LDRB.W          R0, [R4,#0x3BA]
3626C8:  VSUB.F32        S0, S12, S0
3626CC:  CMP             R0, #0xFF
3626CE:  VMUL.F32        S4, S10, S6
3626D2:  VMUL.F32        S2, S2, S8
3626D6:  VMUL.F32        S0, S0, S4
3626DA:  VADD.F32        S0, S2, S0
3626DE:  VCMPE.F32       S0, #0.0
3626E2:  BEQ             loc_36277A
3626E4:  VMRS            APSR_nzcv, FPSCR
3626E8:  BGE             loc_362790
3626EA:  VMOV.F32        S2, #-12.0
3626EE:  VCMPE.F32       S0, S2
3626F2:  VMRS            APSR_nzcv, FPSCR
3626F6:  BGT.W           loc_3628B6
3626FA:  B               loc_362790
3626FC:  CMP.W           R0, #0x100
362700:  BNE             loc_362732
362702:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x362708)
362704:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
362706:  LDR             R0, [R0]; this
362708:  STR             R0, [SP,#0x20+var_20]
36270A:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
36270E:  LDR             R1, [SP,#0x20+var_20]
362710:  LDRB.W          R1, [R1,#0x25]
362714:  CMP             R1, #0
362716:  IT EQ
362718:  CMPEQ           R0, #0
36271A:  BNE             loc_362732
36271C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362726)
36271E:  MOVW            R1, #0x7FF0
362722:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362724:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362726:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362728:  ANDS            R0, R1
36272A:  MOVW            R1, #0x270F
36272E:  CMP             R0, R1
362730:  BHI             loc_362668
362732:  LDRH            R0, [R6]
362734:  AND.W           R0, R0, #0x300
362738:  CMP.W           R0, #0x200
36273C:  BNE.W           loc_36292E
362740:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x362746)
362742:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
362744:  LDR             R6, [R0]; CCheat::m_aCheatsActive ...
362746:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
36274A:  LDRB.W          R2, [R6,#(byte_796819 - 0x7967F4)]
36274E:  MOV             R1, R0
362750:  MOVS            R0, #0
362752:  CMP             R2, #0
362754:  IT EQ
362756:  CMPEQ           R1, #0
362758:  BNE.W           loc_362930
36275C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362766)
36275E:  MOVW            R1, #0x1770
362762:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362764:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362766:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362768:  UBFX.W          R0, R0, #1, #0xE
36276C:  SUBS            R0, R0, R1
36276E:  MOVW            R1, #0x1388
362772:  CMP             R0, R1
362774:  BCC.W           loc_36292E
362778:  B               loc_362668
36277A:  VMRS            APSR_nzcv, FPSCR
36277E:  BLE             loc_362790
362780:  VMOV.F32        S2, #12.0
362784:  VCMPE.F32       S0, S2
362788:  VMRS            APSR_nzcv, FPSCR
36278C:  BLT.W           loc_3628B6
362790:  LDRH.W          R0, [R4,#0x3AC]
362794:  CMP             R0, R8
362796:  BEQ.W           loc_36292E
36279A:  LDR             R1, =(ThePaths_ptr - 0x3627A0)
36279C:  ADD             R1, PC; ThePaths_ptr
36279E:  LDR             R2, [R1]; ThePaths
3627A0:  LSRS            R1, R0, #0xA
3627A2:  ADD.W           R2, R2, R1,LSL#2
3627A6:  LDR.W           R2, [R2,#0x804]
3627AA:  CMP             R2, #0
3627AC:  BEQ.W           loc_36292E
3627B0:  LDRB.W          R2, [R4,#0x3A]
3627B4:  AND.W           R2, R2, #0xF8
3627B8:  CMP             R2, #0x18
3627BA:  BNE.W           loc_36292E
3627BE:  LDR             R2, =(ThePaths_ptr - 0x3627C8)
3627C0:  BFC.W           R0, #0xA, #0x16
3627C4:  ADD             R2, PC; ThePaths_ptr
3627C6:  RSB.W           R9, R0, R0,LSL#3
3627CA:  LDR             R2, [R2]; ThePaths
3627CC:  ADD.W           R1, R2, R1,LSL#2
3627D0:  LDR.W           R8, [R1,#0x924]
3627D4:  ADD.W           R10, R8, R9,LSL#1
3627D8:  MOV             R6, R10
3627DA:  LDRH.W          R3, [R6,#0xB]!
3627DE:  ANDS.W          R0, R3, #0x300
3627E2:  BEQ.W           loc_36292E
3627E6:  LDRH.W          R1, [R4,#0x39C]
3627EA:  LSLS            R3, R3, #0x19
3627EC:  LDRH.W          R2, [R10,#4]
3627F0:  BMI             loc_36280C
3627F2:  CMP             R2, R1
3627F4:  BNE             loc_362820
3627F6:  LDRH.W          R1, [R4,#0x39E]
3627FA:  LDRH.W          R2, [R10,#6]
3627FE:  CMP             R2, R1
362800:  BEQ.W           loc_36292E
362804:  B               loc_362820
362806:  ALIGN 4
362808:  DCFS 0.01
36280C:  CMP             R2, R1
36280E:  BNE.W           loc_36292E
362812:  LDRH.W          R1, [R4,#0x39E]
362816:  LDRH.W          R2, [R10,#6]
36281A:  CMP             R2, R1
36281C:  BNE.W           loc_36292E
362820:  CMP             R5, #0
362822:  BEQ             loc_3628BA
362824:  LDRSH.W         R0, [R8,R9,LSL#1]
362828:  VMOV.F32        S0, #0.125
36282C:  VLDR            S6, =0.01
362830:  VMOV            S2, R0
362834:  VCVT.F32.S32    S2, S2
362838:  LDRSH.W         R0, [R10,#2]
36283C:  VMOV            S4, R0
362840:  VCVT.F32.S32    S4, S4
362844:  LDRSB.W         R0, [R10,#8]
362848:  LDR             R1, [R4,#0x14]
36284A:  VMUL.F32        S2, S2, S0
36284E:  VMOV            S8, R0
362852:  ADD.W           R2, R1, #0x30 ; '0'
362856:  CMP             R1, #0
362858:  VCVT.F32.S32    S8, S8
36285C:  LDRSB.W         R0, [R10,#9]
362860:  VMUL.F32        S0, S4, S0
362864:  VMOV            S10, R0
362868:  VCVT.F32.S32    S10, S10
36286C:  IT EQ
36286E:  ADDEQ           R2, R4, #4
362870:  VLDR            S4, [R2]
362874:  VLDR            S12, [R2,#4]
362878:  VMUL.F32        S8, S8, S6
36287C:  VSUB.F32        S2, S4, S2
362880:  LDRB.W          R0, [R4,#0x3B8]
362884:  VSUB.F32        S0, S12, S0
362888:  CMP             R0, #0xFF
36288A:  VMUL.F32        S4, S10, S6
36288E:  VMUL.F32        S2, S2, S8
362892:  VMUL.F32        S0, S0, S4
362896:  VADD.F32        S0, S2, S0
36289A:  BEQ             loc_362938
36289C:  VCMPE.F32       S0, #0.0
3628A0:  MOVS            R0, #0
3628A2:  VMRS            APSR_nzcv, FPSCR
3628A6:  BGE             loc_362930
3628A8:  VMOV.F32        S2, #-6.0
3628AC:  VCMPE.F32       S0, S2
3628B0:  VMRS            APSR_nzcv, FPSCR
3628B4:  BLE             loc_362930
3628B6:  MOVS            R0, #1
3628B8:  B               loc_362930
3628BA:  CMP.W           R0, #0x100
3628BE:  BNE             loc_3628EC
3628C0:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3628C6)
3628C2:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
3628C4:  LDR             R5, [R0]; CCheat::m_aCheatsActive ...
3628C6:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
3628CA:  LDRB.W          R1, [R5,#(byte_796819 - 0x7967F4)]
3628CE:  CMP             R1, #0
3628D0:  IT EQ
3628D2:  CMPEQ           R0, #0
3628D4:  BNE             loc_3628EC
3628D6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3628E0)
3628D8:  MOVW            R1, #0x7FF0
3628DC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3628DE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3628E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3628E2:  ANDS            R0, R1
3628E4:  MOVW            R1, #0x270F
3628E8:  CMP             R0, R1
3628EA:  BHI             loc_362824
3628EC:  LDRH            R0, [R6]
3628EE:  AND.W           R0, R0, #0x300
3628F2:  CMP.W           R0, #0x200
3628F6:  BNE             loc_36292E
3628F8:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3628FE)
3628FA:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
3628FC:  LDR             R5, [R0]; CCheat::m_aCheatsActive ...
3628FE:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362902:  LDRB.W          R2, [R5,#(byte_796819 - 0x7967F4)]
362906:  MOV             R1, R0
362908:  MOVS            R0, #0
36290A:  CMP             R2, #0
36290C:  IT EQ
36290E:  CMPEQ           R1, #0
362910:  BNE             loc_362930
362912:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x36291C)
362914:  MOVW            R1, #0x1770
362918:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
36291A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
36291C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
36291E:  UBFX.W          R0, R0, #1, #0xE
362922:  SUBS            R0, R0, R1
362924:  MOVW            R1, #0x1388
362928:  CMP             R0, R1
36292A:  BCS.W           loc_362824
36292E:  MOVS            R0, #0
362930:  ADD             SP, SP, #4
362932:  POP.W           {R8-R11}
362936:  POP             {R4-R7,PC}
362938:  VCMPE.F32       S0, #0.0
36293C:  MOVS            R0, #0
36293E:  VMRS            APSR_nzcv, FPSCR
362942:  BLE             loc_362930
362944:  VMOV.F32        S2, #6.0
362948:  VCMPE.F32       S0, S2
36294C:  VMRS            APSR_nzcv, FPSCR
362950:  IT LT
362952:  MOVLT           R0, #1
362954:  B               loc_362930
