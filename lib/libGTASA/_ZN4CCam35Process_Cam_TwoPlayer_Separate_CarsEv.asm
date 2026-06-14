; =========================================================
; Game Engine Function: _ZN4CCam35Process_Cam_TwoPlayer_Separate_CarsEv
; Address            : 0x3CB390 - 0x3CB846
; =========================================================

3CB390:  PUSH            {R4-R7,LR}
3CB392:  ADD             R7, SP, #0xC
3CB394:  PUSH.W          {R8-R11}
3CB398:  SUB             SP, SP, #4
3CB39A:  VPUSH           {D8-D15}
3CB39E:  SUB             SP, SP, #0x48
3CB3A0:  MOV             R4, R0
3CB3A2:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3CB3AC)
3CB3A6:  MOVS            R1, #0
3CB3A8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3CB3AA:  MOVT            R1, #0x42A0
3CB3AE:  STR.W           R1, [R4,#0x8C]
3CB3B2:  LDR             R0, [R0]; CWorld::Players ...
3CB3B4:  LDR             R1, [R0]; CWorld::Players
3CB3B6:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3CB3BA:  LDR.W           R9, [R1,#0x590]
3CB3BE:  LDR.W           R10, [R0,#0x590]
3CB3C2:  ADD.W           R8, R9, #4
3CB3C6:  LDR.W           R0, [R9,#0x14]
3CB3CA:  ADD.W           R11, R10, #4
3CB3CE:  LDR.W           R1, [R10,#0x14]
3CB3D2:  MOV             R2, R8
3CB3D4:  CMP             R0, #0
3CB3D6:  IT NE
3CB3D8:  ADDNE.W         R2, R0, #0x30 ; '0'
3CB3DC:  CMP             R1, #0
3CB3DE:  MOV             R0, R11
3CB3E0:  VLDR            S0, [R2]
3CB3E4:  VLDR            S2, [R2,#4]
3CB3E8:  VLDR            S4, [R2,#8]
3CB3EC:  IT NE
3CB3EE:  ADDNE.W         R0, R1, #0x30 ; '0'
3CB3F2:  VLDR            S6, [R0]
3CB3F6:  VLDR            S8, [R0,#4]
3CB3FA:  VLDR            S10, [R0,#8]
3CB3FE:  VSUB.F32        S0, S6, S0
3CB402:  VSUB.F32        S2, S8, S2
3CB406:  ADD             R0, SP, #0xA8+var_90; this
3CB408:  VSUB.F32        S4, S10, S4
3CB40C:  VSTR            S2, [SP,#0xA8+var_8C]
3CB410:  VSTR            S0, [SP,#0xA8+var_90]
3CB414:  VSTR            S4, [SP,#0xA8+var_88]
3CB418:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB41C:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3CB430)
3CB420:  VMOV.F32        S16, #1.0
3CB424:  LDRSH.W         R1, [R9,#0x26]
3CB428:  VMOV.F32        S0, #6.0
3CB42C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3CB42E:  MOV             R2, R8
3CB430:  VLDR            S4, [SP,#0xA8+var_90]
3CB434:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3CB436:  VLDR            S6, [SP,#0xA8+var_8C]
3CB43A:  VLDR            S8, [SP,#0xA8+var_88]
3CB43E:  LDR.W           R1, [R0,R1,LSL#2]
3CB442:  VMUL.F32        S24, S4, S0
3CB446:  VMUL.F32        S26, S6, S0
3CB44A:  LDR             R1, [R1,#0x2C]
3CB44C:  VMUL.F32        S28, S8, S0
3CB450:  VLDR            S2, [R1,#0x14]
3CB454:  LDR.W           R1, [R9,#0x14]
3CB458:  VADD.F32        S2, S2, S16
3CB45C:  CMP             R1, #0
3CB45E:  IT NE
3CB460:  ADDNE.W         R2, R1, #0x30 ; '0'
3CB464:  LDR.W           R1, [R10,#0x14]
3CB468:  VLDR            S12, [R2,#8]
3CB46C:  VLDR            S4, [R2]
3CB470:  CMP             R1, #0
3CB472:  VLDR            S10, [R2,#4]
3CB476:  MOV             R2, R11
3CB478:  VSUB.F32        S18, S4, S24
3CB47C:  IT NE
3CB47E:  ADDNE.W         R2, R1, #0x30 ; '0'
3CB482:  VADD.F32        S0, S12, S2
3CB486:  LDRSH.W         R1, [R10,#0x26]
3CB48A:  VSUB.F32        S20, S10, S26
3CB48E:  VLDR            S30, [R2]
3CB492:  VLDR            S17, [R2,#4]
3CB496:  VLDR            S19, [R2,#8]
3CB49A:  LDR.W           R0, [R0,R1,LSL#2]
3CB49E:  VSUB.F32        S2, S30, S18
3CB4A2:  VSUB.F32        S22, S0, S28
3CB4A6:  LDR             R0, [R0,#0x2C]
3CB4A8:  VSUB.F32        S0, S17, S20
3CB4AC:  VLDR            S21, [R0,#0x14]
3CB4B0:  ADD             R0, SP, #0xA8+var_6C; this
3CB4B2:  VSUB.F32        S4, S19, S22
3CB4B6:  VSTR            S0, [SP,#0xA8+var_68]
3CB4BA:  VSTR            S2, [SP,#0xA8+var_6C]
3CB4BE:  VSTR            S4, [SP,#0xA8+var_64]
3CB4C2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB4C6:  VADD.F32        S0, S21, S16
3CB4CA:  LDR.W           R0, [R9,#0x14]
3CB4CE:  VADD.F32        S24, S24, S30
3CB4D2:  MOV             R1, R8
3CB4D4:  VADD.F32        S26, S26, S17
3CB4D8:  CMP             R0, #0
3CB4DA:  IT NE
3CB4DC:  ADDNE.W         R1, R0, #0x30 ; '0'
3CB4E0:  ADD             R0, SP, #0xA8+var_78; this
3CB4E2:  VLDR            S2, [R1,#4]
3CB4E6:  VLDR            S4, [R1,#8]
3CB4EA:  VADD.F32        S0, S19, S0
3CB4EE:  VSUB.F32        S2, S2, S26
3CB4F2:  VADD.F32        S28, S28, S0
3CB4F6:  VLDR            S0, [R1]
3CB4FA:  VSUB.F32        S0, S0, S24
3CB4FE:  VSTR            S2, [SP,#0xA8+var_74]
3CB502:  VSUB.F32        S4, S4, S28
3CB506:  VSTR            S0, [SP,#0xA8+var_78]
3CB50A:  VSTR            S4, [SP,#0xA8+var_70]
3CB50E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB512:  VSUB.F32        S0, S24, S18
3CB516:  ADD             R5, SP, #0xA8+var_84
3CB518:  VSUB.F32        S2, S20, S26
3CB51C:  MOVS            R0, #0
3CB51E:  VSTR            S0, [SP,#0xA8+var_80]
3CB522:  VSTR            S2, [SP,#0xA8+var_84]
3CB526:  STR             R0, [SP,#0xA8+var_7C]
3CB528:  MOV             R0, R5; this
3CB52A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB52E:  MOV             R0, #0xBDCCCCCD
3CB536:  STR             R0, [SP,#0xA8+var_7C]
3CB538:  MOV             R0, R5; this
3CB53A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB53E:  LDR.W           R0, [R10,#0x14]
3CB542:  MOV             R2, R11
3CB544:  LDR.W           R1, [R9,#0x14]
3CB548:  CMP             R0, #0
3CB54A:  IT NE
3CB54C:  ADDNE.W         R2, R0, #0x30 ; '0'
3CB550:  CMP             R1, #0
3CB552:  MOV             R0, R8
3CB554:  VLDR            S0, [R2]
3CB558:  VLDR            S2, [R2,#4]
3CB55C:  VLDR            S4, [R2,#8]
3CB560:  IT NE
3CB562:  ADDNE.W         R0, R1, #0x30 ; '0'
3CB566:  VLDR            S6, [R0]
3CB56A:  VLDR            S8, [R0,#4]
3CB56E:  VSUB.F32        S0, S6, S0
3CB572:  VLDR            S6, [R4,#0xEC]
3CB576:  VSUB.F32        S2, S8, S2
3CB57A:  VLDR            S10, [R0,#8]
3CB57E:  VSUB.F32        S4, S10, S4
3CB582:  VMUL.F32        S0, S0, S0
3CB586:  VMUL.F32        S2, S2, S2
3CB58A:  VMUL.F32        S4, S4, S4
3CB58E:  VADD.F32        S0, S0, S2
3CB592:  VLDR            S2, =3.1416
3CB596:  VMUL.F32        S2, S6, S2
3CB59A:  VADD.F32        S0, S0, S4
3CB59E:  VMOV            R5, S2
3CB5A2:  VSQRT.F32       S30, S0
3CB5A6:  MOV             R0, R5; x
3CB5A8:  BLX             sinf
3CB5AC:  MOV             R6, R0
3CB5AE:  MOV             R0, R5; x
3CB5B0:  BLX             cosf
3CB5B4:  VMOV.F32        S0, #0.5
3CB5B8:  VLDR            S4, [SP,#0xA8+var_84]
3CB5BC:  VMOV            S2, R0
3CB5C0:  VLDR            S6, [SP,#0xA8+var_80]
3CB5C4:  VLDR            S8, [SP,#0xA8+var_7C]
3CB5C8:  VMOV.F32        S1, #0.75
3CB5CC:  ADD.W           R5, R4, #0x168
3CB5D0:  MOV             R0, R5; this
3CB5D2:  VMUL.F32        S2, S2, S0
3CB5D6:  VADD.F32        S0, S2, S0
3CB5DA:  VMOV            S2, R6
3CB5DE:  VMUL.F32        S8, S2, S8
3CB5E2:  VMUL.F32        S6, S2, S6
3CB5E6:  VMUL.F32        S4, S2, S4
3CB5EA:  VSUB.F32        S2, S16, S2
3CB5EE:  VSUB.F32        S10, S16, S0
3CB5F2:  VMUL.F32        S12, S22, S0
3CB5F6:  VMUL.F32        S5, S20, S0
3CB5FA:  VMUL.F32        S3, S8, S30
3CB5FE:  VMUL.F32        S9, S6, S30
3CB602:  VMUL.F32        S11, S18, S0
3CB606:  VMUL.F32        S15, S4, S30
3CB60A:  VMUL.F32        S14, S28, S10
3CB60E:  VMUL.F32        S7, S26, S10
3CB612:  VMUL.F32        S13, S24, S10
3CB616:  VADD.F32        S12, S12, S14
3CB61A:  VMUL.F32        S14, S3, S1
3CB61E:  VADD.F32        S3, S5, S7
3CB622:  VMUL.F32        S5, S9, S1
3CB626:  VADD.F32        S7, S11, S13
3CB62A:  VMUL.F32        S1, S15, S1
3CB62E:  VSUB.F32        S12, S12, S14
3CB632:  VSUB.F32        S14, S3, S5
3CB636:  VSUB.F32        S1, S7, S1
3CB63A:  VSTR            S12, [R4,#0x17C]
3CB63E:  VSTR            S14, [R4,#0x178]
3CB642:  VSTR            S1, [R4,#0x174]
3CB646:  VLDR            S14, [SP,#0xA8+var_74]
3CB64A:  VLDR            S1, [SP,#0xA8+var_70]
3CB64E:  VLDR            S5, [SP,#0xA8+var_68]
3CB652:  VMUL.F32        S14, S10, S14
3CB656:  VLDR            S7, [SP,#0xA8+var_64]
3CB65A:  VMUL.F32        S1, S10, S1
3CB65E:  VLDR            S12, [SP,#0xA8+var_78]
3CB662:  VMUL.F32        S5, S0, S5
3CB666:  VLDR            S3, [SP,#0xA8+var_6C]
3CB66A:  VMUL.F32        S7, S0, S7
3CB66E:  VMUL.F32        S10, S10, S12
3CB672:  VMUL.F32        S0, S0, S3
3CB676:  VADD.F32        S14, S5, S14
3CB67A:  VADD.F32        S12, S7, S1
3CB67E:  VADD.F32        S0, S0, S10
3CB682:  VMUL.F32        S10, S2, S12
3CB686:  VMUL.F32        S12, S2, S14
3CB68A:  VMUL.F32        S0, S2, S0
3CB68E:  VADD.F32        S2, S10, S8
3CB692:  VADD.F32        S6, S12, S6
3CB696:  VADD.F32        S0, S0, S4
3CB69A:  VSTR            S2, [R4,#0x170]
3CB69E:  VSTR            S6, [R4,#0x16C]
3CB6A2:  VSTR            S0, [R4,#0x168]
3CB6A6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB6AA:  LDR.W           R0, [R4,#0xE8]
3CB6AE:  CBZ             R0, loc_3CB6C6
3CB6B0:  LDR.W           R0, [R9,#0x14]
3CB6B4:  CMP             R0, #0
3CB6B6:  IT NE
3CB6B8:  ADDNE.W         R8, R0, #0x30 ; '0'
3CB6BC:  VLDR            D16, [R8]
3CB6C0:  LDR.W           R0, [R8,#8]
3CB6C4:  B               loc_3CB6DA
3CB6C6:  LDR.W           R0, [R10,#0x14]
3CB6CA:  CMP             R0, #0
3CB6CC:  IT NE
3CB6CE:  ADDNE.W         R11, R0, #0x30 ; '0'
3CB6D2:  LDR.W           R0, [R11,#8]
3CB6D6:  VLDR            D16, [R11]
3CB6DA:  ADD.W           R6, R4, #0x18C
3CB6DE:  STR.W           R0, [R4,#0x128]
3CB6E2:  MOV.W           R9, #0
3CB6E6:  MOV.W           R0, #0x3F800000
3CB6EA:  VSTR            D16, [R4,#0x120]
3CB6EE:  STRD.W          R9, R9, [R4,#0x18C]
3CB6F2:  STR.W           R0, [R4,#0x194]
3CB6F6:  MOV             R0, R6; this
3CB6F8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB6FC:  ADD.W           R8, SP, #0xA8+var_9C
3CB700:  MOV             R1, R6; CVector *
3CB702:  MOV             R2, R5
3CB704:  MOV             R0, R8; CVector *
3CB706:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CB70A:  MOV             R0, R8; this
3CB70C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB710:  MOV             R0, SP; CVector *
3CB712:  MOV             R1, R5; CVector *
3CB714:  MOV             R2, R8
3CB716:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CB71A:  VLDR            D16, [SP,#0xA8+var_A8]
3CB71E:  LDR             R0, [SP,#0xA8+var_A0]
3CB720:  STR.W           R0, [R4,#0x194]
3CB724:  MOV             R0, R6; this
3CB726:  VSTR            D16, [R4,#0x18C]
3CB72A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB72E:  LDR.W           R0, [R4,#0xE8]
3CB732:  MOV.W           R2, #0x194
3CB736:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3CB742)
3CB738:  MOVS            R6, #1
3CB73A:  MUL.W           R3, R0, R2
3CB73E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3CB740:  BIC.W           R0, R6, R0
3CB744:  LDR             R1, [R1]; CWorld::Players ...
3CB746:  SMULBB.W        R0, R0, R2
3CB74A:  LDR             R2, [R1,R3]
3CB74C:  LDR             R0, [R1,R0]
3CB74E:  LDR.W           R1, [R2,#0x590]
3CB752:  LDR.W           R6, [R0,#0x590]
3CB756:  VLDR            S18, [R1,#0x48]
3CB75A:  VLDR            S20, [R1,#0x4C]
3CB75E:  VLDR            S22, [R1,#0x50]
3CB762:  LDRD.W          R0, R1, [R5]
3CB766:  STMEA.W         SP, {R0,R1,R9}
3CB76A:  MOV             R0, SP; this
3CB76C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB770:  VLDR            S0, [SP,#0xA8+var_A8]
3CB774:  VLDR            S6, [SP,#0xA8+var_A8+4]
3CB778:  VMUL.F32        S8, S18, S0
3CB77C:  VLDR            S2, [SP,#0xA8+var_A0]
3CB780:  VMUL.F32        S4, S20, S6
3CB784:  VMUL.F32        S10, S22, S2
3CB788:  VADD.F32        S4, S8, S4
3CB78C:  VLDR            S8, =-0.13
3CB790:  VADD.F32        S4, S4, S10
3CB794:  VCMPE.F32       S4, S8
3CB798:  VMRS            APSR_nzcv, FPSCR
3CB79C:  BGE             loc_3CB7F0
3CB79E:  VLDR            S8, [R6,#0x48]
3CB7A2:  VLDR            S10, [R6,#0x4C]
3CB7A6:  VNMUL.F32       S8, S0, S8
3CB7AA:  VLDR            S12, [R6,#0x50]
3CB7AE:  VMUL.F32        S10, S10, S6
3CB7B2:  VMUL.F32        S12, S12, S2
3CB7B6:  VNEG.F32        S6, S6
3CB7BA:  VNEG.F32        S0, S0
3CB7BE:  VNEG.F32        S2, S2
3CB7C2:  VSUB.F32        S8, S8, S10
3CB7C6:  VSTR            S6, [SP,#0xA8+var_A8+4]
3CB7CA:  VSTR            S0, [SP,#0xA8+var_A8]
3CB7CE:  VSTR            S2, [SP,#0xA8+var_A0]
3CB7D2:  VSUB.F32        S8, S8, S12
3CB7D6:  VCMPE.F32       S4, S8
3CB7DA:  VMRS            APSR_nzcv, FPSCR
3CB7DE:  BGE             loc_3CB7F0
3CB7E0:  LDR.W           R0, [R4,#0xE8]
3CB7E4:  MOVS            R1, #1
3CB7E6:  BIC.W           R0, R1, R0
3CB7EA:  STR.W           R0, [R4,#0xE8]
3CB7EE:  B               loc_3CB7F4
3CB7F0:  LDR.W           R0, [R4,#0xE8]
3CB7F4:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CB800)
3CB7F6:  CMP             R0, #0
3CB7F8:  VLDR            S0, =0.04
3CB7FC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CB7FE:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3CB800:  VLDR            S2, [R1]
3CB804:  VMUL.F32        S0, S2, S0
3CB808:  VLDR            S2, [R4,#0xEC]
3CB80C:  BEQ             loc_3CB822
3CB80E:  VADD.F32        S0, S2, S0
3CB812:  VCMPE.F32       S0, S16
3CB816:  VMRS            APSR_nzcv, FPSCR
3CB81A:  IT LT
3CB81C:  VMOVLT.F32      S16, S0
3CB820:  B               loc_3CB834
3CB822:  VSUB.F32        S16, S2, S0
3CB826:  VCMPE.F32       S16, #0.0
3CB82A:  VMRS            APSR_nzcv, FPSCR
3CB82E:  IT LE
3CB830:  VLDRLE          S16, =0.0
3CB834:  VSTR            S16, [R4,#0xEC]
3CB838:  ADD             SP, SP, #0x48 ; 'H'
3CB83A:  VPOP            {D8-D15}
3CB83E:  ADD             SP, SP, #4
3CB840:  POP.W           {R8-R11}
3CB844:  POP             {R4-R7,PC}
