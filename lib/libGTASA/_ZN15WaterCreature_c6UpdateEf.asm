; =========================================================
; Game Engine Function: _ZN15WaterCreature_c6UpdateEf
; Address            : 0x5922BC - 0x592B58
; =========================================================

5922BC:  PUSH            {R4-R7,LR}
5922BE:  ADD             R7, SP, #0xC
5922C0:  PUSH.W          {R8,R9,R11}
5922C4:  VPUSH           {D8-D14}
5922C8:  SUB             SP, SP, #0xC0; float
5922CA:  MOV             R8, R0
5922CC:  LDR.W           R0, =(_ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr - 0x5922DA)
5922D0:  LDRB.W          R2, [R8,#0xC]
5922D4:  MOVS            R3, #0x2C ; ','
5922D6:  ADD             R0, PC; _ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr
5922D8:  VMOV            S16, R1
5922DC:  LDR             R0, [R0]; WaterCreatureManager_c::ms_waterCreatureInfos ...
5922DE:  SMLABB.W        R0, R2, R3, R0
5922E2:  LDR.W           R2, [R8,#0x1C]
5922E6:  CMP             R2, #0
5922E8:  BEQ             loc_592394
5922EA:  VLDR            S18, [R0,#0x14]
5922EE:  VLDR            S22, [R0,#0x18]
5922F2:  LDR             R0, [R2,#8]
5922F4:  VLDR            S0, [R8,#0x20]
5922F8:  VLDR            S2, [R8,#0x24]
5922FC:  LDR             R1, [R0,#0x14]
5922FE:  VLDR            S4, [R8,#0x28]
592302:  ADD.W           R2, R1, #0x30 ; '0'
592306:  CMP             R1, #0
592308:  IT EQ
59230A:  ADDEQ           R2, R0, #4
59230C:  LDR.W           R0, [R8,#8]
592310:  VLDR            S6, [R2]
592314:  VLDR            S8, [R2,#4]
592318:  VLDR            S10, [R2,#8]
59231C:  VADD.F32        S0, S6, S0
592320:  VADD.F32        S2, S8, S2
592324:  LDR             R1, [R0,#0x14]
592326:  VADD.F32        S4, S10, S4
59232A:  ADD.W           R2, R1, #0x30 ; '0'
59232E:  CMP             R1, #0
592330:  IT EQ
592332:  ADDEQ           R2, R0, #4
592334:  ADD             R0, SP, #0x110+var_D0; this
592336:  VLDR            S6, [R2]
59233A:  VLDR            S8, [R2,#4]
59233E:  VLDR            S10, [R2,#8]
592342:  VSUB.F32        S0, S0, S6
592346:  VSUB.F32        S2, S2, S8
59234A:  VSUB.F32        S4, S4, S10
59234E:  VSTR            S2, [SP,#0x110+var_CC]
592352:  VSTR            S0, [SP,#0x110+var_D0]
592356:  VSTR            S4, [SP,#0x110+var_C8]
59235A:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
59235E:  VMOV            S20, R0
592362:  VCMPE.F32       S20, #0.0
592366:  VMRS            APSR_nzcv, FPSCR
59236A:  BLE.W           loc_592482
59236E:  LDRD.W          R0, R1, [SP,#0x110+var_D0]; float
592372:  MOVS            R2, #0; float
592374:  MOVS            R3, #0; float
592376:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
59237A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
59237E:  LDR.W           R2, [R8,#8]
592382:  MOV             R1, R0
592384:  VMOV            S0, R1; x
592388:  LDR             R0, [R2,#0x14]; this
59238A:  CMP             R0, #0
59238C:  BEQ             loc_59247E
59238E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
592392:  B               loc_592482
592394:  LDRB.W          R1, [R8,#0x30]
592398:  VLDR            S18, [R0,#0x20]
59239C:  VLDR            S20, [R0,#0x28]
5923A0:  CBNZ            R1, loc_5923FA
5923A2:  LDRB.W          R1, [R8,#0xE]
5923A6:  CBNZ            R1, loc_5923FA
5923A8:  VLDR            S24, [R0,#0x24]
5923AC:  BLX             rand
5923B0:  VMOV            S0, R0
5923B4:  VLDR            S22, =4.6566e-10
5923B8:  VLDR            S2, =0.0
5923BC:  VCVT.F32.S32    S0, S0
5923C0:  VMUL.F32        S0, S0, S22
5923C4:  VADD.F32        S0, S0, S2
5923C8:  VCMPE.F32       S0, S24
5923CC:  VMRS            APSR_nzcv, FPSCR
5923D0:  BGE             loc_5923FA
5923D2:  BLX             rand
5923D6:  VMOV            S0, R0
5923DA:  VLDR            S2, =6.2832
5923DE:  MOVS            R4, #1
5923E0:  VCVT.F32.S32    S0, S0
5923E4:  VMUL.F32        S0, S0, S22
5923E8:  VMUL.F32        S0, S0, S2
5923EC:  VLDR            S2, =-3.1416
5923F0:  VADD.F32        S0, S0, S2
5923F4:  VSTR            S0, [R8,#0x2C]
5923F8:  B               loc_5923FC
5923FA:  MOVS            R4, #0
5923FC:  LDR.W           R0, [R8,#8]
592400:  LDR             R1, [R0,#0x14]
592402:  ADD.W           R2, R1, #0x30 ; '0'
592406:  CMP             R1, #0
592408:  IT EQ
59240A:  ADDEQ           R2, R0, #4
59240C:  VLDR            D16, [R2]
592410:  LDR             R0, [R2,#8]
592412:  STR             R0, [SP,#0x110+var_D8]
592414:  VSTR            D16, [SP,#0x110+var_E0]
592418:  BLX             rand
59241C:  VCMPE.F32       S20, #0.0
592420:  VMRS            APSR_nzcv, FPSCR
592424:  BLE.W           loc_592662
592428:  UXTH            R0, R0
59242A:  VLDR            S2, =0.000015259
59242E:  VMOV            S0, R0
592432:  CMP             R4, #0
592434:  VCVT.F32.S32    S0, S0
592438:  VMUL.F32        S0, S0, S2
59243C:  VLDR            S2, =100.0
592440:  VMUL.F32        S0, S0, S2
592444:  VCVT.S32.F32    S0, S0
592448:  BNE             loc_59245C
59244A:  VMOV            R0, S0
59244E:  CMP             R0, #0xA
592450:  BLT             loc_59245C
592452:  LDRB.W          R0, [R8,#0x30]
592456:  CMP             R0, #0
592458:  BEQ.W           loc_592662
59245C:  LDR.W           R1, [R8,#8]
592460:  LDR             R0, [R1,#0x14]
592462:  ADD.W           R4, R0, #0x30 ; '0'
592466:  CMP             R0, #0
592468:  IT EQ
59246A:  ADDEQ           R4, R1, #4
59246C:  BEQ.W           loc_5925D4
592470:  VLDR            S2, [R0,#0x10]
592474:  VLDR            S4, [R0,#0x14]
592478:  VLDR            S0, [R0,#0x18]
59247C:  B               loc_5925F4
59247E:  VSTR            S0, [R2,#0x10]
592482:  BLX             rand
592486:  UXTH            R0, R0
592488:  VLDR            S2, =0.000015259
59248C:  VMOV            S0, R0
592490:  VCVT.F32.S32    S0, S0
592494:  VMUL.F32        S0, S0, S2
592498:  VLDR            S2, =100.0
59249C:  VMUL.F32        S0, S0, S2
5924A0:  VCVT.S32.F32    S0, S0
5924A4:  VMOV            R0, S0
5924A8:  CMP             R0, #5
5924AA:  BGE             loc_5924D8
5924AC:  LDR.W           R0, [R8,#0x1C]
5924B0:  VLDR            S24, [R0,#0x14]
5924B4:  BLX             rand
5924B8:  VMOV            S0, R0
5924BC:  VLDR            S2, =4.6566e-10
5924C0:  VSUB.F32        S4, S24, S22
5924C4:  VCVT.F32.S32    S0, S0
5924C8:  VMUL.F32        S0, S0, S2
5924CC:  VMUL.F32        S0, S4, S0
5924D0:  VADD.F32        S0, S22, S0
5924D4:  VSTR            S0, [R8,#0x14]
5924D8:  LDR.W           R1, [R8,#0x1C]
5924DC:  VMOV.F32        S2, #2.0
5924E0:  ADD.W           R0, R8, #0x14
5924E4:  LDRSB.W         R2, [R1,#0xE]
5924E8:  CMP             R2, #0
5924EA:  IT GT
5924EC:  ADDGT.W         R0, R1, #0x18
5924F0:  VCMPE.F32       S20, S2
5924F4:  VLDR            S0, [R0]
5924F8:  VMRS            APSR_nzcv, FPSCR
5924FC:  BLE             loc_592512
5924FE:  VMOV.F32        S2, #-2.0
592502:  VLDR            S4, =1.1
592506:  VADD.F32        S2, S20, S2
59250A:  VMUL.F32        S2, S2, S4
59250E:  VMUL.F32        S0, S2, S0
592512:  VLDR            S2, =-0.01
592516:  VMUL.F32        S0, S0, S16
59251A:  VLDR            S22, =0.0
59251E:  VADD.F32        S2, S20, S2
592522:  LDR.W           R4, [R8,#8]
592526:  LDR             R0, [R4,#0x14]
592528:  ADD.W           R1, R0, #0x30 ; '0'
59252C:  CMP             R0, #0
59252E:  VMAX.F32        D16, D1, D11
592532:  IT EQ
592534:  ADDEQ           R1, R4, #4
592536:  VLDR            S26, [R1]
59253A:  CMP             R0, #0
59253C:  VLDR            S28, [R1,#4]
592540:  VLDR            S16, [R1,#8]
592544:  VMIN.F32        D12, D0, D16
592548:  BEQ             loc_59257A
59254A:  VLDR            S0, [R0,#0x10]
59254E:  VLDR            S2, [R0,#0x14]
592552:  VMUL.F32        S0, S24, S0
592556:  VLDR            S4, [R0,#0x18]
59255A:  VMUL.F32        S2, S24, S2
59255E:  VADD.F32        S0, S26, S0
592562:  VADD.F32        S2, S28, S2
592566:  VSTR            S0, [R0,#0x30]
59256A:  VMUL.F32        S0, S24, S4
59256E:  LDR             R0, [R4,#0x14]
592570:  VSTR            S2, [R0,#0x34]
592574:  LDR             R0, [R4,#0x14]
592576:  ADDS            R0, #0x38 ; '8'
592578:  B               loc_5925B2
59257A:  LDR             R5, [R4,#0x10]
59257C:  MOV             R0, R5; x
59257E:  BLX.W           sinf
592582:  MOV             R6, R0
592584:  MOV             R0, R5; x
592586:  BLX.W           cosf
59258A:  VMOV            S0, R0
59258E:  ADD.W           R0, R4, #0xC
592592:  VMOV            S2, R6
592596:  VMUL.F32        S0, S24, S0
59259A:  VMUL.F32        S2, S2, S24
59259E:  VADD.F32        S4, S28, S0
5925A2:  VSUB.F32        S2, S26, S2
5925A6:  VMUL.F32        S0, S24, S22
5925AA:  VSTR            S2, [R4,#4]
5925AE:  VSTR            S4, [R4,#8]
5925B2:  VMOV.F32        S2, #5.0
5925B6:  VADD.F32        S0, S16, S0
5925BA:  VMUL.F32        S2, S18, S2
5925BE:  VSTR            S0, [R0]
5925C2:  VCMPE.F32       S20, S2
5925C6:  VMRS            APSR_nzcv, FPSCR
5925CA:  ITT GT
5925CC:  MOVGT           R0, #0
5925CE:  STRGT.W         R0, [R8,#0x1C]
5925D2:  B               loc_5929B4
5925D4:  LDR             R5, [R1,#0x10]
5925D6:  MOV             R0, R5; x
5925D8:  BLX.W           sinf
5925DC:  MOV             R6, R0
5925DE:  MOV             R0, R5; x
5925E0:  BLX.W           cosf
5925E4:  VMOV            S4, R0
5925E8:  EOR.W           R0, R6, #0x80000000
5925EC:  VLDR            S0, =0.0
5925F0:  VMOV            S2, R0
5925F4:  VMUL.F32        S4, S20, S4
5925F8:  VLDR            S8, [R4,#4]
5925FC:  VMUL.F32        S2, S20, S2
592600:  VLDR            S6, [R4]
592604:  VMUL.F32        S0, S20, S0
592608:  VLDR            S10, [R4,#8]
59260C:  MOVS            R4, #0
59260E:  MOVS            R0, #1
592610:  ADD             R1, SP, #0x110+var_EC
592612:  ADD             R2, SP, #0x110+var_D0
592614:  ADD             R3, SP, #0x110+var_F0
592616:  VADD.F32        S4, S4, S8
59261A:  VADD.F32        S2, S2, S6
59261E:  VADD.F32        S0, S0, S10
592622:  VSTR            S4, [SP,#0x110+var_E8]
592626:  VSTR            S2, [SP,#0x110+var_EC]
59262A:  VSTR            S0, [SP,#0x110+var_E4]
59262E:  STRD.W          R0, R4, [SP,#0x110+var_110]; float
592632:  ADD             R0, SP, #0x110+var_E0
592634:  STRD.W          R4, R4, [SP,#0x110+var_108]; CVector *
592638:  STRD.W          R4, R4, [SP,#0x110+var_100]
59263C:  STRD.W          R4, R4, [SP,#0x110+var_F8]
592640:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
592644:  CMP             R0, #1
592646:  BNE             loc_59265E
592648:  LDRD.W          R0, R1, [SP,#0x110+var_C0]; float
59264C:  MOVS            R2, #0; float
59264E:  MOVS            R3, #0; float
592650:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
592654:  BLX.W           j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
592658:  MOVS            R4, #1
59265A:  STR.W           R0, [R8,#0x2C]
59265E:  STRB.W          R4, [R8,#0x30]
592662:  LDR.W           R4, [R8,#8]
592666:  LDR             R0, [R4,#0x14]
592668:  CBZ             R0, loc_59267C
59266A:  LDRD.W          R2, R1, [R0,#0x10]; x
59266E:  EOR.W           R0, R2, #0x80000000; y
592672:  BLX.W           atan2f
592676:  VMOV            S0, R0
59267A:  B               loc_592680
59267C:  VLDR            S0, [R4,#0x10]
592680:  VLDR            S2, =3.1416
592684:  VADD.F32        S4, S0, S2
592688:  VLDR            S2, [R8,#0x2C]
59268C:  VCMPE.F32       S4, S2
592690:  VMRS            APSR_nzcv, FPSCR
592694:  BGE             loc_59269C
592696:  VLDR            S4, =-6.2832
59269A:  B               loc_5926B2
59269C:  VLDR            S4, =-3.1416
5926A0:  VADD.F32        S4, S0, S4
5926A4:  VCMPE.F32       S4, S2
5926A8:  VMRS            APSR_nzcv, FPSCR
5926AC:  BLE             loc_5926BA
5926AE:  VLDR            S4, =6.2832
5926B2:  VADD.F32        S2, S2, S4
5926B6:  VSTR            S2, [R8,#0x2C]
5926BA:  VSUB.F32        S2, S2, S0
5926BE:  VABS.F32        S4, S2
5926C2:  VCMPE.F32       S4, S18
5926C6:  VMRS            APSR_nzcv, FPSCR
5926CA:  BLE             loc_5926DE
5926CC:  VCMPE.F32       S2, #0.0
5926D0:  VMRS            APSR_nzcv, FPSCR
5926D4:  ITE LT
5926D6:  VSUBLT.F32      S0, S0, S18
5926DA:  VADDGE.F32      S0, S18, S0
5926DE:  LDR             R0, [R4,#0x14]; this
5926E0:  CBZ             R0, loc_59271C
5926E2:  VMOV            R1, S0; x
5926E6:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
5926EA:  B               loc_592720
5926EC:  DCFS 4.6566e-10
5926F0:  DCFS 0.0
5926F4:  DCFS 6.2832
5926F8:  DCFS -3.1416
5926FC:  DCFS 0.000015259
592700:  DCFS 100.0
592704:  DCFS 1.1
592708:  DCFS -0.01
59270C:  DCFS 3.1416
592710:  DCFS -6.2832
592714:  DCFS 1000.0
592718:  DCFS 1500.0
59271C:  VSTR            S0, [R4,#0x10]
592720:  LDRB.W          R0, [R8,#0x30]
592724:  CMP             R0, #0
592726:  BEQ             loc_5927BA
592728:  MOV             R5, R8
59272A:  LDRB.W          R0, [R5,#0xE]!
59272E:  CMP             R0, #0
592730:  BNE.W           loc_5928A8
592734:  BLX             rand
592738:  UXTH            R0, R0
59273A:  VLDR            S18, =0.000015259
59273E:  VMOV            S0, R0
592742:  VLDR            S2, =1000.0
592746:  VCVT.F32.S32    S0, S0
59274A:  VMUL.F32        S0, S0, S18
59274E:  VMUL.F32        S0, S0, S2
592752:  VCVT.S32.F32    S0, S0
592756:  VMOV            R0, S0
59275A:  CMP             R0, #7
59275C:  BGT.W           loc_5928A6
592760:  BLX             rand
592764:  UXTH            R0, R0
592766:  VMOV.F32        S2, #10.0
59276A:  VMOV            S0, R0
59276E:  MOVS            R0, #0
592770:  VCVT.F32.S32    S0, S0
592774:  VMUL.F32        S0, S0, S18
592778:  VMUL.F32        S0, S0, S2
59277C:  VCVT.S32.F32    S0, S0
592780:  STRH.W          R0, [R8,#0x10]
592784:  VMOV            R0, S0
592788:  ADDS            R0, #5
59278A:  STRB.W          R0, [R8,#0xE]
59278E:  BLX             rand
592792:  UXTH            R0, R0
592794:  VLDR            S2, =1500.0
592798:  VMOV            S0, R0
59279C:  VCVT.F32.S32    S0, S0
5927A0:  VMUL.F32        S0, S0, S18
5927A4:  VMUL.F32        S0, S0, S2
5927A8:  VCVT.S32.F32    S0, S0
5927AC:  VMOV            R0, S0
5927B0:  ADD.W           R0, R0, #0x3E8
5927B4:  STRH.W          R0, [R8,#0x12]
5927B8:  B               loc_5928A6
5927BA:  MOVS            R0, #0; int
5927BC:  MOVS            R4, #0
5927BE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5927C2:  LDR             R1, [R0,#0x14]
5927C4:  VLDR            S0, [SP,#0x110+var_E0]
5927C8:  ADD.W           R2, R1, #0x30 ; '0'
5927CC:  CMP             R1, #0
5927CE:  VLDR            S2, [SP,#0x110+var_E0+4]
5927D2:  VLDR            S4, [SP,#0x110+var_D8]
5927D6:  IT EQ
5927D8:  ADDEQ           R2, R0, #4
5927DA:  VLDR            S6, [R2]
5927DE:  ADD             R0, SP, #0x110+var_D0; this
5927E0:  VLDR            S8, [R2,#4]
5927E4:  VLDR            S10, [R2,#8]
5927E8:  VSUB.F32        S0, S0, S6
5927EC:  VSUB.F32        S2, S2, S8
5927F0:  VSUB.F32        S4, S4, S10
5927F4:  VSTR            S4, [SP,#0x110+var_C8]
5927F8:  VSTR            S2, [SP,#0x110+var_CC]
5927FC:  VSTR            S0, [SP,#0x110+var_D0]
592800:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
592804:  VMOV.F32        S0, #5.0
592808:  VMOV            S2, R0
59280C:  VCMPE.F32       S2, S0
592810:  VMRS            APSR_nzcv, FPSCR
592814:  BGE             loc_5928A2
592816:  BLX             rand
59281A:  UXTH            R0, R0
59281C:  VLDR            S18, =0.000015259
592820:  VMOV            S0, R0
592824:  MOV             R5, R8
592826:  VMOV.F32        S2, #15.0
59282A:  VCVT.F32.S32    S0, S0
59282E:  VMUL.F32        S0, S0, S18
592832:  VMUL.F32        S0, S0, S2
592836:  VCVT.S32.F32    S0, S0
59283A:  VMOV            R0, S0
59283E:  ADDS            R0, #0x23 ; '#'
592840:  STRB.W          R0, [R5,#0xE]!
592844:  STRH            R4, [R5,#2]
592846:  BLX             rand
59284A:  UXTH            R0, R0
59284C:  VLDR            S2, =2500.0
592850:  VMOV            S0, R0
592854:  MOVS            R2, #0; float
592856:  MOVS            R3, #0; float
592858:  VCVT.F32.S32    S0, S0
59285C:  VMUL.F32        S0, S0, S18
592860:  VMUL.F32        S0, S0, S2
592864:  VCVT.S32.F32    S0, S0
592868:  VMOV            R0, S0
59286C:  ADD.W           R0, R0, #0x7D0
592870:  STRH            R0, [R5,#4]
592872:  LDRD.W          R0, R1, [SP,#0x110+var_D0]; float
592876:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
59287A:  BLX.W           j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
59287E:  MOV             R1, R0
592880:  LDRB.W          R0, [R5,#-2]
592884:  STR.W           R1, [R5,#0x1E]
592888:  CMP             R0, #2
59288A:  BHI             loc_5928A6
59288C:  LDR.W           R2, [R8,#8]
592890:  VMOV            S0, R1; x
592894:  LDR             R0, [R2,#0x14]; this
592896:  CMP             R0, #0
592898:  BEQ.W           loc_592B52
59289C:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
5928A0:  B               loc_5928A6
5928A2:  ADD.W           R5, R8, #0xE
5928A6:  LDRB            R0, [R5]
5928A8:  VLDR            S18, [R8,#0x14]
5928AC:  SXTB            R0, R0
5928AE:  CMP             R0, #1
5928B0:  BLT             loc_59291E
5928B2:  VLDR            S0, =1000.0
5928B6:  VMOV.F32        S4, #1.0
5928BA:  LDRH.W          R2, [R8,#0x12]
5928BE:  VMUL.F32        S0, S16, S0
5928C2:  LDRH.W          R1, [R8,#0x10]
5928C6:  VLDR            S6, =0.1
5928CA:  VMOV            S2, R2
5928CE:  VCVT.U32.F32    S0, S0
5928D2:  VCVT.F32.U32    S2, S2
5928D6:  VMOV            R3, S0
5928DA:  ADD             R1, R3
5928DC:  UXTH            R3, R1
5928DE:  CMP             R3, R2
5928E0:  VMOV            S0, R3
5928E4:  VCVT.F32.S32    S0, S0
5928E8:  VDIV.F32        S0, S0, S2
5928EC:  VMOV            S2, R0
5928F0:  VSUB.F32        S0, S4, S0
5928F4:  VCVT.F32.S32    S2, S2
5928F8:  STRH.W          R1, [R8,#0x10]
5928FC:  ITT CS
5928FE:  MOVCS           R0, #0
592900:  STRBCS          R0, [R5]
592902:  VMUL.F32        S2, S2, S6
592906:  VLDR            S6, =0.0
59290A:  VMAX.F32        D0, D0, D3
59290E:  VMUL.F32        S0, S2, S0
592912:  VMUL.F32        S0, S18, S0
592916:  VADD.F32        S18, S18, S0
59291A:  VSTR            S18, [R8,#0x18]
59291E:  LDR.W           R4, [R8,#8]
592922:  LDR             R6, [R4,#0x14]
592924:  CBZ             R6, loc_592934
592926:  VLDR            S4, [R6,#0x10]
59292A:  VLDR            S2, [R6,#0x14]
59292E:  VLDR            S0, [R6,#0x18]
592932:  B               loc_592954
592934:  LDR             R5, [R4,#0x10]
592936:  MOV             R0, R5; x
592938:  BLX.W           sinf
59293C:  MOV             R9, R0
59293E:  MOV             R0, R5; x
592940:  BLX.W           cosf
592944:  VMOV            S2, R0
592948:  EOR.W           R0, R9, #0x80000000
59294C:  VLDR            S0, =0.0
592950:  VMOV            S4, R0
592954:  VMUL.F32        S4, S4, S16
592958:  VLDR            S6, [SP,#0x110+var_E0]
59295C:  VMUL.F32        S2, S2, S16
592960:  VLDR            S8, [SP,#0x110+var_E0+4]
592964:  VMUL.F32        S0, S0, S16
592968:  VLDR            S10, [SP,#0x110+var_D8]
59296C:  CMP             R6, #0
59296E:  VMUL.F32        S4, S18, S4
592972:  VMUL.F32        S2, S18, S2
592976:  VMUL.F32        S0, S18, S0
59297A:  VADD.F32        S4, S6, S4
59297E:  VADD.F32        S2, S2, S8
592982:  VADD.F32        S0, S0, S10
592986:  VSTR            S4, [SP,#0x110+var_E0]
59298A:  VSTR            S2, [SP,#0x110+var_E0+4]
59298E:  VSTR            S0, [SP,#0x110+var_D8]
592992:  BEQ             loc_5929A4
592994:  VSTR            S4, [R6,#0x30]
592998:  LDR             R0, [R4,#0x14]
59299A:  VSTR            S2, [R0,#0x34]
59299E:  LDR             R0, [R4,#0x14]
5929A0:  ADDS            R0, #0x38 ; '8'
5929A2:  B               loc_5929B0
5929A4:  ADD.W           R0, R4, #0xC
5929A8:  VSTR            S4, [R4,#4]
5929AC:  VSTR            S2, [R4,#8]
5929B0:  VSTR            S0, [R0]
5929B4:  LDRB.W          R0, [R8,#0xC]
5929B8:  SUBS            R0, #3
5929BA:  UXTB            R0, R0
5929BC:  CMP             R0, #2
5929BE:  BCS             loc_592A0C
5929C0:  MOV             R4, R8
5929C2:  ADD             R3, SP, #0x110+var_D0; float
5929C4:  LDR.W           R0, [R4,#8]!
5929C8:  LDR             R1, [R0,#0x14]
5929CA:  ADD.W           R2, R1, #0x30 ; '0'
5929CE:  CMP             R1, #0
5929D0:  IT EQ
5929D2:  ADDEQ           R2, R0, #4
5929D4:  MOVS            R0, #0
5929D6:  LDRD.W          R6, R5, [R2]
5929DA:  MOVS            R1, #(stderr+1)
5929DC:  LDR             R2, [R2,#8]; float
5929DE:  STRD.W          R1, R0, [SP,#0x110+var_110]; float *
5929E2:  MOV             R1, R5; float
5929E4:  MOV             R0, R6; this
5929E6:  BLX.W           j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
5929EA:  CMP             R0, #1
5929EC:  BNE             loc_592A1C
5929EE:  VLDR            S0, =-0.2
5929F2:  VLDR            S2, [SP,#0x110+var_D0]
5929F6:  LDR             R0, [R4]
5929F8:  VADD.F32        S0, S2, S0
5929FC:  LDR             R1, [R0,#0x14]
5929FE:  CBZ             R1, loc_592A12
592A00:  STR             R6, [R1,#0x30]
592A02:  LDR             R1, [R0,#0x14]
592A04:  STR             R5, [R1,#0x34]
592A06:  LDR             R0, [R0,#0x14]
592A08:  ADDS            R0, #0x38 ; '8'
592A0A:  B               loc_592A18
592A0C:  ADD.W           R4, R8, #8
592A10:  B               loc_592A1C
592A12:  STRD.W          R6, R5, [R0,#4]
592A16:  ADDS            R0, #0xC
592A18:  VSTR            S0, [R0]
592A1C:  LDR             R2, [R4]
592A1E:  LDR             R0, [R2,#0x18]
592A20:  CBZ             R0, loc_592A36
592A22:  LDR             R1, [R0,#4]
592A24:  LDR             R0, [R2,#0x14]
592A26:  ADDS            R1, #0x10
592A28:  CBZ             R0, loc_592A30
592A2A:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
592A2E:  B               loc_592A36
592A30:  ADDS            R0, R2, #4
592A32:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
592A36:  LDR             R0, [R4]; this
592A38:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
592A3C:  LDR             R0, [R4]; this
592A3E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
592A42:  LDR             R0, [R4]; this
592A44:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
592A48:  LDR             R0, =(TheCamera_ptr - 0x592A50)
592A4A:  LDR             R1, [R4]
592A4C:  ADD             R0, PC; TheCamera_ptr
592A4E:  LDR             R0, [R0]; TheCamera
592A50:  LDR             R3, [R1,#0x14]
592A52:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
592A54:  ADD.W           R6, R2, #0x30 ; '0'
592A58:  CMP             R2, #0
592A5A:  IT EQ
592A5C:  ADDEQ           R6, R0, #4
592A5E:  ADD.W           R0, R3, #0x30 ; '0'
592A62:  CMP             R3, #0
592A64:  VLDR            S0, [R6]
592A68:  VLDR            S2, [R6,#4]
592A6C:  VLDR            S4, [R6,#8]
592A70:  IT EQ
592A72:  ADDEQ           R0, R1, #4
592A74:  VLDR            S6, [R0]
592A78:  VLDR            S8, [R0,#4]
592A7C:  VSUB.F32        S6, S6, S0
592A80:  VLDR            S10, [R0,#8]
592A84:  VSUB.F32        S8, S8, S2
592A88:  VSUB.F32        S10, S10, S4
592A8C:  VMUL.F32        S6, S6, S6
592A90:  VMUL.F32        S8, S8, S8
592A94:  VMUL.F32        S10, S10, S10
592A98:  VADD.F32        S6, S6, S8
592A9C:  VADD.F32        S8, S6, S10
592AA0:  VLDR            S6, =3600.0
592AA4:  VCMPE.F32       S8, S6
592AA8:  VMRS            APSR_nzcv, FPSCR
592AAC:  BLE             loc_592B46
592AAE:  LDR             R0, =(g_waterCreatureMan_ptr - 0x592ABC)
592AB0:  MOVW            R1, #(dword_A15D5C - 0xA14350)
592AB4:  LDR.W           R2, [R8,#0x1C]
592AB8:  ADD             R0, PC; g_waterCreatureMan_ptr
592ABA:  CMP             R2, #0
592ABC:  LDR             R0, [R0]; g_waterCreatureMan
592ABE:  IT EQ
592AC0:  MOVEQ           R2, R8
592AC2:  LDR             R6, [R0,R1]
592AC4:  ADD             R1, SP, #0x110+var_D0
592AC6:  MOVS            R0, #0
592AC8:  B               loc_592AD0
592ACA:  STR.W           R3, [R1,R0,LSL#2]
592ACE:  ADDS            R0, #1
592AD0:  MOV             R3, R6
592AD2:  CBZ             R3, loc_592AE2
592AD4:  LDR             R6, [R3,#4]
592AD6:  CMP             R2, R3
592AD8:  ITT NE
592ADA:  LDRNE           R5, [R3,#0x1C]
592ADC:  CMPNE           R5, R2
592ADE:  BNE             loc_592AD0
592AE0:  B               loc_592ACA
592AE2:  CMP             R0, #1
592AE4:  BLT             loc_592B46
592AE6:  MOVS            R2, #0
592AE8:  LDR.W           R3, [R1,R2,LSL#2]
592AEC:  LDR             R3, [R3,#8]
592AEE:  LDR             R6, [R3,#0x14]
592AF0:  ADD.W           R5, R6, #0x30 ; '0'
592AF4:  CMP             R6, #0
592AF6:  IT EQ
592AF8:  ADDEQ           R5, R3, #4
592AFA:  VLDR            S8, [R5]
592AFE:  VLDR            S10, [R5,#4]
592B02:  VSUB.F32        S8, S8, S0
592B06:  VLDR            S12, [R5,#8]
592B0A:  VSUB.F32        S10, S10, S2
592B0E:  VSUB.F32        S12, S12, S4
592B12:  VMUL.F32        S8, S8, S8
592B16:  VMUL.F32        S10, S10, S10
592B1A:  VMUL.F32        S12, S12, S12
592B1E:  VADD.F32        S8, S8, S10
592B22:  VADD.F32        S8, S8, S12
592B26:  VCMPE.F32       S8, S6
592B2A:  VMRS            APSR_nzcv, FPSCR
592B2E:  BLE             loc_592B46
592B30:  ADDS            R2, #1
592B32:  CMP             R2, R0
592B34:  BLT             loc_592AE8
592B36:  MOVS            R2, #0
592B38:  MOVS            R3, #1
592B3A:  LDR.W           R6, [R1,R2,LSL#2]
592B3E:  ADDS            R2, #1
592B40:  CMP             R0, R2
592B42:  STRB            R3, [R6,#0xD]
592B44:  BNE             loc_592B3A
592B46:  ADD             SP, SP, #0xC0
592B48:  VPOP            {D8-D14}
592B4C:  POP.W           {R8,R9,R11}
592B50:  POP             {R4-R7,PC}
592B52:  VSTR            S0, [R2,#0x10]
592B56:  B               loc_5928A6
