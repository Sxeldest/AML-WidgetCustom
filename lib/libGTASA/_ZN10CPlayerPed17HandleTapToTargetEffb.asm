; =========================================================
; Game Engine Function: _ZN10CPlayerPed17HandleTapToTargetEffb
; Address            : 0x4C842C - 0x4C8CE0
; =========================================================

4C842C:  PUSH            {R4-R7,LR}
4C842E:  ADD             R7, SP, #0xC
4C8430:  PUSH.W          {R8-R11}
4C8434:  SUB             SP, SP, #4
4C8436:  VPUSH           {D8-D15}
4C843A:  SUB             SP, SP, #0x58
4C843C:  MOV             R6, R0
4C843E:  LDR.W           R0, =(RsGlobal_ptr - 0x4C844A)
4C8442:  STR             R3, [SP,#0xB8+var_A4]
4C8444:  MOV             R9, R1
4C8446:  ADD             R0, PC; RsGlobal_ptr
4C8448:  LDRSB.W         R1, [R6,#0x71C]
4C844C:  ADDW            R5, R6, #0x5A4
4C8450:  MOV             R11, R2
4C8452:  LDR             R0, [R0]; RsGlobal
4C8454:  VLDR            S0, [R0,#4]
4C8458:  VLDR            S2, [R0,#8]
4C845C:  RSB.W           R0, R1, R1,LSL#3
4C8460:  VCVT.F32.S32    S22, S0
4C8464:  LDR.W           R4, [R5,R0,LSL#2]
4C8468:  MOV             R0, R6; this
4C846A:  VCVT.F32.S32    S26, S2
4C846E:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4C8472:  MOV             R1, R0
4C8474:  MOV             R0, R4
4C8476:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C847A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4C8484)
4C847E:  LDR             R0, [R0]
4C8480:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
4C8482:  LDR             R1, [R1]; CPools::ms_pPedPool ...
4C8484:  LDR.W           R8, [R1]; CPools::ms_pPedPool
4C8488:  LDRSB.W         R1, [R6,#0x71C]
4C848C:  STR             R0, [SP,#0xB8+var_9C]
4C848E:  LDR.W           R10, [R8,#8]
4C8492:  RSB.W           R0, R1, R1,LSL#3
4C8496:  LDR.W           R4, [R5,R0,LSL#2]
4C849A:  MOV             R0, R6
4C849C:  MOV             R1, R4
4C849E:  BLX             j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
4C84A2:  MOV             R1, R0
4C84A4:  MOV             R0, R4
4C84A6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C84AA:  VMOV.F32        S24, #0.125
4C84AE:  VLDR            S20, [R0,#4]
4C84B2:  VMOV            S16, R11
4C84B6:  CMP.W           R10, #1
4C84BA:  VMOV            S18, R9
4C84BE:  STR             R6, [SP,#0xB8+var_98]
4C84C0:  BLT.W           loc_4C8768
4C84C4:  VLDR            S0, =0.05
4C84C8:  VMUL.F32        S26, S26, S24
4C84CC:  LDR.W           R0, =(RsGlobal_ptr - 0x4C84E4)
4C84D0:  VMOV.F32        S30, #0.5
4C84D4:  VMUL.F32        S28, S22, S0
4C84D8:  VLDR            S22, =0.0
4C84DC:  VMOV.F32        S17, #20.0
4C84E0:  ADD             R0, PC; RsGlobal_ptr
4C84E2:  NEGS            R5, R6
4C84E4:  VLDR            S19, =0.04
4C84E8:  LDR             R0, [R0]; RsGlobal
4C84EA:  MOVS            R4, #0
4C84EC:  STR             R0, [SP,#0xB8+var_AC]
4C84EE:  MOVS            R0, #0
4C84F0:  VLDR            S21, =0.35
4C84F4:  MOV.W           R9, #0
4C84F8:  VLDR            S25, =0.65
4C84FC:  VLDR            S27, =0.66
4C8500:  STR             R0, [SP,#0xB8+var_A0]
4C8502:  MOVS            R0, #0
4C8504:  STR             R0, [SP,#0xB8+var_A8]
4C8506:  LDR.W           R0, [R8,#4]
4C850A:  LDRSB.W         R0, [R0,R9]
4C850E:  CMP             R0, #0
4C8510:  BLT.W           loc_4C8740
4C8514:  LDR.W           R0, [R8]
4C8518:  ADDS.W          R11, R0, R4
4C851C:  ITT NE
4C851E:  ADDNE           R0, R5
4C8520:  ADDSNE.W        R0, R0, R4
4C8524:  BEQ.W           loc_4C8740
4C8528:  LDRB.W          R0, [R11,#0x48B]
4C852C:  LSLS            R0, R0, #0x1B
4C852E:  BMI.W           loc_4C8740
4C8532:  LDR.W           R0, [R11,#0x44C]
4C8536:  SUB.W           R1, R0, #0x36 ; '6'
4C853A:  CMP             R1, #2
4C853C:  BCC.W           loc_4C8740
4C8540:  SUBS            R0, #0x32 ; '2'
4C8542:  CMP             R0, #1
4C8544:  BHI             loc_4C855C
4C8546:  LDR.W           R0, [R11,#0x590]
4C854A:  CMP             R0, #0
4C854C:  BEQ.W           loc_4C8740
4C8550:  LDR.W           R0, [R0,#0x5A4]
4C8554:  SUBS            R0, #9
4C8556:  CMP             R0, #1
4C8558:  BHI.W           loc_4C8740
4C855C:  LDR             R0, [SP,#0xB8+var_98]; this
4C855E:  LDRSB.W         R1, [R0,#0x71C]
4C8562:  RSB.W           R1, R1, R1,LSL#3
4C8566:  ADD.W           R1, R0, R1,LSL#2
4C856A:  LDR.W           R6, [R1,#0x5A4]
4C856E:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4C8572:  MOV             R1, R0
4C8574:  MOV             R0, R6
4C8576:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C857A:  LDR             R0, [R0]
4C857C:  CBNZ            R0, loc_4C85A2
4C857E:  LDR.W           R0, [R11,#0x59C]
4C8582:  CMP             R0, #8
4C8584:  BEQ             loc_4C85A2
4C8586:  LDR             R1, [SP,#0xB8+var_98]
4C8588:  LDRSB.W         R0, [R1,#0x71C]
4C858C:  RSB.W           R0, R0, R0,LSL#3
4C8590:  ADD.W           R0, R1, R0,LSL#2
4C8594:  LDR.W           R0, [R0,#0x5A4]
4C8598:  CMP             R0, #8
4C859A:  IT NE
4C859C:  CMPNE           R0, #4
4C859E:  BNE.W           loc_4C8740
4C85A2:  LDR             R3, [SP,#0xB8+var_98]
4C85A4:  LDR.W           R1, [R11,#0x14]
4C85A8:  LDR             R0, [R3,#0x14]
4C85AA:  ADD.W           R2, R0, #0x30 ; '0'
4C85AE:  CMP             R0, #0
4C85B0:  IT EQ
4C85B2:  ADDEQ           R2, R3, #4
4C85B4:  ADD.W           R0, R1, #0x30 ; '0'
4C85B8:  CMP             R1, #0
4C85BA:  VLDR            D16, [R2]
4C85BE:  IT EQ
4C85C0:  ADDEQ.W         R0, R11, #4
4C85C4:  VLDR            D17, [R0]
4C85C8:  VSUB.F32        D16, D17, D16
4C85CC:  VMUL.F32        D0, D16, D16
4C85D0:  VADD.F32        S0, S0, S1
4C85D4:  VSQRT.F32       S29, S0
4C85D8:  VCMPE.F32       S29, S20
4C85DC:  VMRS            APSR_nzcv, FPSCR
4C85E0:  BGT.W           loc_4C8740
4C85E4:  ADD             R1, SP, #0xB8+var_70; CVector *
4C85E6:  ADD             R2, SP, #0xB8+var_7C; CVector *
4C85E8:  MOVS            R6, #0
4C85EA:  MOV             R0, R11; this
4C85EC:  MOVS            R3, #1; bool
4C85EE:  STRD.W          R6, R6, [SP,#0xB8+var_70+4]
4C85F2:  STRD.W          R6, R6, [SP,#0xB8+var_7C]
4C85F6:  STRD.W          R6, R6, [SP,#0xB8+var_74]
4C85FA:  BLX             j__ZN4CPed23GetHeadAndFootPositionsER7CVectorS1_b; CPed::GetHeadAndFootPositions(CVector &,CVector &,bool)
4C85FE:  ADD             R0, SP, #0xB8+var_70
4C8600:  ADD             R1, SP, #0xB8+var_88
4C8602:  STRD.W          R6, R6, [SP,#0xB8+var_84]
4C8606:  MOVS            R2, #0
4C8608:  STRD.W          R6, R6, [SP,#0xB8+var_94]
4C860C:  MOVS            R3, #0
4C860E:  STRD.W          R6, R6, [SP,#0xB8+var_8C]
4C8612:  MOVS            R6, #1
4C8614:  STRD.W          R6, R6, [SP,#0xB8+var_B8]
4C8618:  BLX             j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
4C861C:  CMP             R0, #1
4C861E:  BNE.W           loc_4C8740
4C8622:  ADD             R0, SP, #0xB8+var_7C
4C8624:  ADD             R1, SP, #0xB8+var_94
4C8626:  MOVS            R2, #0
4C8628:  MOVS            R3, #0
4C862A:  STRD.W          R6, R6, [SP,#0xB8+var_B8]
4C862E:  BLX             j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
4C8632:  CMP             R0, #1
4C8634:  BNE.W           loc_4C8740
4C8638:  LDR.W           R0, [R11,#0x44C]
4C863C:  VMOV.F32        S0, S28
4C8640:  CMP             R0, #0x32 ; '2'
4C8642:  IT EQ
4C8644:  VMOVEQ.F32      S0, S26
4C8648:  VMUL.F32        S6, S0, S30
4C864C:  VLDR            S0, [SP,#0xB8+var_90]
4C8650:  VADD.F32        S4, S6, S0
4C8654:  VCMPE.F32       S4, S16
4C8658:  VMRS            APSR_nzcv, FPSCR
4C865C:  ITTTT GT
4C865E:  VLDRGT          S2, [SP,#0xB8+var_94]
4C8662:  VADDGT.F32      S8, S6, S2
4C8666:  VCMPEGT.F32     S8, S18
4C866A:  VMRSGT          APSR_nzcv, FPSCR
4C866E:  BLE             loc_4C8740
4C8670:  VLDR            S2, [SP,#0xB8+var_88]
4C8674:  VSUB.F32        S10, S2, S6
4C8678:  VCMPE.F32       S10, S18
4C867C:  VMRS            APSR_nzcv, FPSCR
4C8680:  ITTTT LT
4C8682:  VLDRLT          S2, [SP,#0xB8+var_84]
4C8686:  VSUBLT.F32      S6, S2, S6
4C868A:  VCMPELT.F32     S6, S16
4C868E:  VMRSLT          APSR_nzcv, FPSCR
4C8692:  BGE             loc_4C8740
4C8694:  VADD.F32        S4, S6, S4
4C8698:  LDR             R0, [SP,#0xB8+var_AC]
4C869A:  VADD.F32        S6, S10, S8
4C869E:  VLDR            S8, [SP,#0xB8+var_80]
4C86A2:  VLDR            S10, [SP,#0xB8+var_8C]
4C86A6:  VADD.F32        S8, S10, S8
4C86AA:  VMUL.F32        S4, S4, S30
4C86AE:  VMUL.F32        S6, S6, S30
4C86B2:  VMUL.F32        S8, S8, S30
4C86B6:  VSUB.F32        S4, S4, S16
4C86BA:  VSUB.F32        S6, S6, S18
4C86BE:  VMUL.F32        S8, S8, S8
4C86C2:  VMUL.F32        S4, S4, S4
4C86C6:  VMUL.F32        S6, S6, S6
4C86CA:  VADD.F32        S4, S6, S4
4C86CE:  VLDR            S6, [R0,#4]
4C86D2:  VCVT.F32.S32    S6, S6
4C86D6:  VADD.F32        S4, S4, S8
4C86DA:  VDIV.F32        S8, S29, S17
4C86DE:  VSQRT.F32       S4, S4
4C86E2:  VMUL.F32        S6, S6, S19
4C86E6:  VDIV.F32        S4, S4, S6
4C86EA:  VMOV.F32        S6, #1.0
4C86EE:  VMOV.F64        D5, D3
4C86F2:  VMIN.F32        D2, D2, D5
4C86F6:  VMIN.F32        D3, D4, D5
4C86FA:  VSUB.F32        S4, S10, S4
4C86FE:  VSUB.F32        S6, S10, S6
4C8702:  VMUL.F32        S4, S4, S25
4C8706:  VMUL.F32        S6, S6, S21
4C870A:  VADD.F32        S4, S6, S4
4C870E:  VCMPE.F32       S4, S22
4C8712:  VMRS            APSR_nzcv, FPSCR
4C8716:  BLT             loc_4C8740
4C8718:  VSUB.F32        S2, S2, S0
4C871C:  MOVS            R0, #0
4C871E:  VSUB.F32        S0, S16, S0
4C8722:  VMOV            D11, D2
4C8726:  VDIV.F32        S0, S0, S2
4C872A:  VCMPE.F32       S0, S27
4C872E:  VMRS            APSR_nzcv, FPSCR
4C8732:  IT GT
4C8734:  MOVGT           R0, #1
4C8736:  LDR             R1, [SP,#0xB8+var_A8]
4C8738:  STR.W           R11, [SP,#0xB8+var_A0]
4C873C:  ORRS            R1, R0
4C873E:  STR             R1, [SP,#0xB8+var_A8]
4C8740:  ADD.W           R9, R9, #1
4C8744:  ADDW            R4, R4, #0x7CC
4C8748:  CMP             R10, R9
4C874A:  BNE.W           loc_4C8506
4C874E:  B               loc_4C8774
4C8750:  DCFS 0.05
4C8754:  DCFS 0.0
4C8758:  DCFS 0.04
4C875C:  DCFS 0.35
4C8760:  DCFS 0.65
4C8764:  DCFS 0.66
4C8768:  VLDR            S22, =0.0
4C876C:  MOVS            R0, #0
4C876E:  STR             R0, [SP,#0xB8+var_A8]
4C8770:  MOVS            R0, #0
4C8772:  STR             R0, [SP,#0xB8+var_A0]
4C8774:  LDR             R0, [SP,#0xB8+var_9C]
4C8776:  LDR             R4, [SP,#0xB8+var_98]
4C8778:  CBNZ            R0, loc_4C8790
4C877A:  LDRSB.W         R0, [R4,#0x71C]
4C877E:  RSB.W           R0, R0, R0,LSL#3
4C8782:  ADD.W           R0, R4, R0,LSL#2
4C8786:  LDR.W           R0, [R0,#0x5A4]
4C878A:  CMP             R0, #8
4C878C:  BNE.W           loc_4C8C26
4C8790:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4C8798)
4C8794:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4C8796:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4C8798:  LDR             R5, [R0]; CPools::ms_pObjectPool
4C879A:  LDR.W           R9, [R5,#8]
4C879E:  CMP.W           R9, #1
4C87A2:  BLT.W           loc_4C89C0
4C87A6:  LDR.W           R0, =(RsGlobal_ptr - 0x4C87BA)
4C87AA:  VMOV.F32        S26, #0.5
4C87AE:  VMOV.F32        S17, #20.0
4C87B2:  VLDR            S27, =0.04
4C87B6:  ADD             R0, PC; RsGlobal_ptr
4C87B8:  VMOV.F32        S28, #1.0
4C87BC:  VLDR            S19, =0.35
4C87C0:  MOV.W           R11, #0
4C87C4:  LDR             R0, [R0]; RsGlobal
4C87C6:  MOV.W           R10, #0
4C87CA:  STR             R0, [SP,#0xB8+var_AC]
4C87CC:  LDR.W           R0, =(RsGlobal_ptr - 0x4C87D8)
4C87D0:  VLDR            S21, =0.65
4C87D4:  ADD             R0, PC; RsGlobal_ptr
4C87D6:  LDR             R0, [R0]; RsGlobal
4C87D8:  STR             R0, [SP,#0xB8+var_B0]
4C87DA:  LDR             R0, [R5,#4]
4C87DC:  LDRSB.W         R0, [R0,R10]
4C87E0:  CMP             R0, #0
4C87E2:  BLT.W           loc_4C89B2
4C87E6:  LDR             R0, [R5]
4C87E8:  ADDS.W          R6, R0, R11
4C87EC:  BEQ.W           loc_4C89B2
4C87F0:  MOV             R0, R6; this
4C87F2:  BLX             j__ZN7CObject14CanBeTargettedEv; CObject::CanBeTargetted(void)
4C87F6:  CMP             R0, #0
4C87F8:  BEQ.W           loc_4C89B2
4C87FC:  LDRB.W          R0, [R6,#0x144]
4C8800:  LSLS            R0, R0, #0x19
4C8802:  BMI.W           loc_4C89B2
4C8806:  LDR             R0, [R6,#0x18]
4C8808:  CMP             R0, #0
4C880A:  BEQ.W           loc_4C89B2
4C880E:  LDR             R0, [R6,#0x14]
4C8810:  ADD.W           R8, R6, #4
4C8814:  LDRSB.W         R1, [R4,#0x71C]
4C8818:  CMP             R0, #0
4C881A:  MOV             R2, R8
4C881C:  IT NE
4C881E:  ADDNE.W         R2, R0, #0x30 ; '0'
4C8822:  RSB.W           R0, R1, R1,LSL#3
4C8826:  VLD1.32         {D15}, [R2]!
4C882A:  ADD.W           R0, R4, R0,LSL#2
4C882E:  VLDR            S25, [R2]
4C8832:  LDR.W           R4, [R0,#0x5A4]
4C8836:  LDR             R0, [SP,#0xB8+var_98]
4C8838:  MOV             R1, R4
4C883A:  BLX             j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
4C883E:  MOV             R1, R0
4C8840:  MOV             R0, R4
4C8842:  LDR             R4, [SP,#0xB8+var_98]
4C8844:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C8848:  LDRB            R1, [R0,#0x18]
4C884A:  LDR             R0, [R4,#0x14]
4C884C:  LSLS            R1, R1, #0x1E
4C884E:  BMI             loc_4C8878
4C8850:  VLDR            D16, [R0,#0x30]
4C8854:  VSUB.F32        D16, D15, D16
4C8858:  VLDR            S2, [R0,#0x38]
4C885C:  VSUB.F32        S2, S2, S25
4C8860:  VMUL.F32        D0, D16, D16
4C8864:  VADD.F32        S0, S0, S1
4C8868:  VSQRT.F32       S0, S0
4C886C:  VCMPE.F32       S2, S0
4C8870:  VMRS            APSR_nzcv, FPSCR
4C8874:  BGT.W           loc_4C89B2
4C8878:  LDR             R1, [R6,#0x14]
4C887A:  ADD.W           R2, R0, #0x30 ; '0'
4C887E:  CMP             R0, #0
4C8880:  MOV             R0, R8
4C8882:  IT EQ
4C8884:  ADDEQ           R2, R4, #4
4C8886:  CMP             R1, #0
4C8888:  VLDR            D16, [R2]
4C888C:  IT NE
4C888E:  ADDNE.W         R0, R1, #0x30 ; '0'
4C8892:  VLDR            D17, [R0]
4C8896:  VSUB.F32        D16, D17, D16
4C889A:  VMUL.F32        D0, D16, D16
4C889E:  VADD.F32        S0, S0, S1
4C88A2:  VSQRT.F32       S25, S0
4C88A6:  VCMPE.F32       S25, S20
4C88AA:  VMRS            APSR_nzcv, FPSCR
4C88AE:  BGT.W           loc_4C89B2
4C88B2:  MOVS            R0, #0
4C88B4:  MOVS            R1, #1
4C88B6:  STRD.W          R0, R0, [SP,#0xB8+var_70]
4C88BA:  MOVS            R2, #0
4C88BC:  STR             R0, [SP,#0xB8+var_68]
4C88BE:  MOVS            R3, #0
4C88C0:  LDR             R0, [R6,#0x14]
4C88C2:  STRD.W          R1, R1, [SP,#0xB8+var_B8]
4C88C6:  ADD             R1, SP, #0xB8+var_70
4C88C8:  CMP             R0, #0
4C88CA:  IT NE
4C88CC:  ADDNE.W         R8, R0, #0x30 ; '0'
4C88D0:  MOV             R0, R8
4C88D2:  BLX             j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
4C88D6:  CMP             R0, #1
4C88D8:  BNE             loc_4C89B2
4C88DA:  LDR             R0, [SP,#0xB8+var_AC]
4C88DC:  VLDR            S0, [R0,#8]
4C88E0:  VCVT.F32.S32    S0, S0
4C88E4:  VLDR            S4, [SP,#0xB8+var_70+4]
4C88E8:  VMUL.F32        S0, S0, S24
4C88EC:  VMUL.F32        S2, S0, S26
4C88F0:  VADD.F32        S0, S4, S2
4C88F4:  VCMPE.F32       S0, S16
4C88F8:  VMRS            APSR_nzcv, FPSCR
4C88FC:  ITTTT GT
4C88FE:  VLDRGT          S8, [SP,#0xB8+var_70]
4C8902:  VADDGT.F32      S6, S8, S2
4C8906:  VCMPEGT.F32     S6, S18
4C890A:  VMRSGT          APSR_nzcv, FPSCR
4C890E:  BLE             loc_4C89B2
4C8910:  VSUB.F32        S8, S8, S2
4C8914:  VCMPE.F32       S8, S18
4C8918:  VMRS            APSR_nzcv, FPSCR
4C891C:  ITTT LT
4C891E:  VSUBLT.F32      S2, S4, S2
4C8922:  VCMPELT.F32     S2, S16
4C8926:  VMRSLT          APSR_nzcv, FPSCR
4C892A:  BGE             loc_4C89B2
4C892C:  VADD.F32        S0, S2, S0
4C8930:  VLDR            S4, [SP,#0xB8+var_68]
4C8934:  VADD.F32        S2, S8, S6
4C8938:  LDR             R0, [SP,#0xB8+var_B0]
4C893A:  VADD.F32        S4, S4, S4
4C893E:  VMUL.F32        S0, S0, S26
4C8942:  VMUL.F32        S2, S2, S26
4C8946:  VMUL.F32        S4, S4, S26
4C894A:  VSUB.F32        S0, S0, S16
4C894E:  VSUB.F32        S2, S2, S18
4C8952:  VMUL.F32        S4, S4, S4
4C8956:  VMUL.F32        S0, S0, S0
4C895A:  VMUL.F32        S2, S2, S2
4C895E:  VADD.F32        S0, S2, S0
4C8962:  VLDR            S2, [R0,#4]
4C8966:  VCVT.F32.S32    S2, S2
4C896A:  LDR             R0, [SP,#0xB8+var_A0]
4C896C:  VADD.F32        S0, S0, S4
4C8970:  VDIV.F32        S4, S25, S17
4C8974:  VSQRT.F32       S0, S0
4C8978:  VMUL.F32        S2, S2, S27
4C897C:  VDIV.F32        S0, S0, S2
4C8980:  VMIN.F32        D0, D0, D14
4C8984:  VMIN.F32        D1, D2, D14
4C8988:  VSUB.F32        S0, S28, S0
4C898C:  VSUB.F32        S2, S28, S2
4C8990:  VMUL.F32        S0, S0, S21
4C8994:  VMUL.F32        S2, S2, S19
4C8998:  VADD.F32        S0, S2, S0
4C899C:  VMAX.F32        D1, D0, D11
4C89A0:  VCMPE.F32       S0, S22
4C89A4:  VMRS            APSR_nzcv, FPSCR
4C89A8:  VMOV            D11, D1
4C89AC:  IT GE
4C89AE:  MOVGE           R0, R6
4C89B0:  STR             R0, [SP,#0xB8+var_A0]
4C89B2:  ADD.W           R10, R10, #1
4C89B6:  ADD.W           R11, R11, #0x1A4
4C89BA:  CMP             R9, R10
4C89BC:  BNE.W           loc_4C87DA
4C89C0:  LDR             R0, [SP,#0xB8+var_9C]
4C89C2:  CMP             R0, #0
4C89C4:  BEQ.W           loc_4C8C26
4C89C8:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x4C89CE)
4C89CA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
4C89CC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
4C89CE:  LDR             R5, [R0]; CPools::ms_pVehiclePool
4C89D0:  LDR.W           R9, [R5,#8]
4C89D4:  CMP.W           R9, #1
4C89D8:  BLT.W           loc_4C8C26
4C89DC:  LDR             R0, =(RsGlobal_ptr - 0x4C89EE)
4C89DE:  VMOV.F32        S26, #0.5
4C89E2:  VMOV.F32        S28, #20.0
4C89E6:  ADD.W           R8, SP, #0xB8+var_70
4C89EA:  ADD             R0, PC; RsGlobal_ptr
4C89EC:  VMOV.F32        S30, #1.0
4C89F0:  VLDR            S24, =0.04
4C89F4:  MOV.W           R11, #0
4C89F8:  LDR             R0, [R0]; RsGlobal
4C89FA:  MOV.W           R10, #0
4C89FE:  STR             R0, [SP,#0xB8+var_9C]
4C8A00:  LDR             R0, =(RsGlobal_ptr - 0x4C8A0A)
4C8A02:  VLDR            S17, =0.35
4C8A06:  ADD             R0, PC; RsGlobal_ptr
4C8A08:  VLDR            S19, =0.65
4C8A0C:  LDR             R0, [R0]; RsGlobal
4C8A0E:  STR             R0, [SP,#0xB8+var_AC]
4C8A10:  LDR             R0, [R5,#4]
4C8A12:  LDRSB.W         R0, [R0,R10]
4C8A16:  CMP             R0, #0
4C8A18:  BLT.W           loc_4C8C18
4C8A1C:  LDR             R0, [R5]
4C8A1E:  ADDS.W          R6, R0, R11
4C8A22:  BEQ.W           loc_4C8C18
4C8A26:  MOV             R0, R8; this
4C8A28:  MOV             R1, R6
4C8A2A:  BLX             j__ZN8CVehicle18GetGasTankPositionEv; CVehicle::GetGasTankPosition(void)
4C8A2E:  LDR             R1, [R6,#0x14]
4C8A30:  VLDR            S21, [SP,#0xB8+var_70]
4C8A34:  ADD.W           R0, R1, #0x30 ; '0'
4C8A38:  CMP             R1, #0
4C8A3A:  IT EQ
4C8A3C:  ADDEQ           R0, R6, #4
4C8A3E:  VLDR            S0, [R0]
4C8A42:  VCMP.F32        S21, S0
4C8A46:  VMRS            APSR_nzcv, FPSCR
4C8A4A:  BNE             loc_4C8A72
4C8A4C:  VLDR            S0, [SP,#0xB8+var_70+4]
4C8A50:  VLDR            S2, [R0,#4]
4C8A54:  VCMP.F32        S0, S2
4C8A58:  VMRS            APSR_nzcv, FPSCR
4C8A5C:  BNE             loc_4C8A72
4C8A5E:  VLDR            S0, [SP,#0xB8+var_68]
4C8A62:  VLDR            S2, [R0,#8]
4C8A66:  VCMP.F32        S0, S2
4C8A6A:  VMRS            APSR_nzcv, FPSCR
4C8A6E:  BEQ.W           loc_4C8C18
4C8A72:  LDRB.W          R0, [R6,#0x42E]
4C8A76:  LSLS            R0, R0, #0x1A
4C8A78:  BPL.W           loc_4C8C18
4C8A7C:  ADDW            R0, R6, #0x4CC
4C8A80:  VLDR            S0, [R0]
4C8A84:  VCMPE.F32       S0, #0.0
4C8A88:  VMRS            APSR_nzcv, FPSCR
4C8A8C:  BLE.W           loc_4C8C18
4C8A90:  LDRSB.W         R0, [R4,#0x71C]
4C8A94:  VLDR            S27, [SP,#0xB8+var_70+4]
4C8A98:  VLDR            S25, [SP,#0xB8+var_68]
4C8A9C:  RSB.W           R0, R0, R0,LSL#3
4C8AA0:  ADD.W           R0, R4, R0,LSL#2
4C8AA4:  LDR.W           R4, [R0,#0x5A4]
4C8AA8:  LDR             R0, [SP,#0xB8+var_98]
4C8AAA:  MOV             R1, R4
4C8AAC:  BLX             j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
4C8AB0:  MOV             R1, R0
4C8AB2:  MOV             R0, R4
4C8AB4:  LDR             R4, [SP,#0xB8+var_98]
4C8AB6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C8ABA:  LDRB            R1, [R0,#0x18]
4C8ABC:  LDR             R0, [R4,#0x14]
4C8ABE:  LSLS            R1, R1, #0x1E
4C8AC0:  BMI             loc_4C8AF6
4C8AC2:  VLDR            S0, [R0,#0x30]
4C8AC6:  VLDR            S2, [R0,#0x34]
4C8ACA:  VSUB.F32        S0, S21, S0
4C8ACE:  VLDR            S4, [R0,#0x38]
4C8AD2:  VSUB.F32        S2, S27, S2
4C8AD6:  VMUL.F32        S0, S0, S0
4C8ADA:  VMUL.F32        S2, S2, S2
4C8ADE:  VADD.F32        S0, S0, S2
4C8AE2:  VSUB.F32        S2, S4, S25
4C8AE6:  VSQRT.F32       S0, S0
4C8AEA:  VCMPE.F32       S2, S0
4C8AEE:  VMRS            APSR_nzcv, FPSCR
4C8AF2:  BGT.W           loc_4C8C18
4C8AF6:  ADD.W           R1, R0, #0x30 ; '0'
4C8AFA:  CMP             R0, #0
4C8AFC:  VLDR            D16, [SP,#0xB8+var_70]
4C8B00:  IT EQ
4C8B02:  ADDEQ           R1, R4, #4
4C8B04:  VLDR            D17, [R1]
4C8B08:  VSUB.F32        D16, D16, D17
4C8B0C:  VMUL.F32        D0, D16, D16
4C8B10:  VADD.F32        S0, S0, S1
4C8B14:  VSQRT.F32       S21, S0
4C8B18:  VCMPE.F32       S21, S20
4C8B1C:  VMRS            APSR_nzcv, FPSCR
4C8B20:  BGT             loc_4C8C18
4C8B22:  MOVS            R0, #0
4C8B24:  ADD             R1, SP, #0xB8+var_7C
4C8B26:  STRD.W          R0, R0, [SP,#0xB8+var_7C]
4C8B2A:  MOVS            R2, #0
4C8B2C:  STR             R0, [SP,#0xB8+var_74]
4C8B2E:  MOVS            R0, #1
4C8B30:  STRD.W          R0, R0, [SP,#0xB8+var_B8]
4C8B34:  MOV             R0, R8
4C8B36:  MOVS            R3, #0
4C8B38:  BLX             j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
4C8B3C:  CMP             R0, #1
4C8B3E:  BNE             loc_4C8C18
4C8B40:  LDR             R0, [SP,#0xB8+var_9C]
4C8B42:  VLDR            S0, [R0,#8]
4C8B46:  VCVT.F32.S32    S0, S0
4C8B4A:  VLDR            S4, [SP,#0xB8+var_78]
4C8B4E:  VMUL.F32        S0, S0, S24
4C8B52:  VMUL.F32        S2, S0, S26
4C8B56:  VADD.F32        S0, S4, S2
4C8B5A:  VCMPE.F32       S0, S16
4C8B5E:  VMRS            APSR_nzcv, FPSCR
4C8B62:  ITTTT GT
4C8B64:  VLDRGT          S8, [SP,#0xB8+var_7C]
4C8B68:  VADDGT.F32      S6, S8, S2
4C8B6C:  VCMPEGT.F32     S6, S18
4C8B70:  VMRSGT          APSR_nzcv, FPSCR
4C8B74:  BLE             loc_4C8C18
4C8B76:  VSUB.F32        S8, S8, S2
4C8B7A:  VCMPE.F32       S8, S18
4C8B7E:  VMRS            APSR_nzcv, FPSCR
4C8B82:  ITTT LT
4C8B84:  VSUBLT.F32      S2, S4, S2
4C8B88:  VCMPELT.F32     S2, S16
4C8B8C:  VMRSLT          APSR_nzcv, FPSCR
4C8B90:  BGE             loc_4C8C18
4C8B92:  VADD.F32        S0, S2, S0
4C8B96:  VLDR            S4, [SP,#0xB8+var_74]
4C8B9A:  VADD.F32        S2, S8, S6
4C8B9E:  LDR             R0, [SP,#0xB8+var_AC]
4C8BA0:  VADD.F32        S4, S4, S4
4C8BA4:  VMUL.F32        S0, S0, S26
4C8BA8:  VMUL.F32        S2, S2, S26
4C8BAC:  VMUL.F32        S4, S4, S26
4C8BB0:  VSUB.F32        S0, S0, S16
4C8BB4:  VSUB.F32        S2, S2, S18
4C8BB8:  VMUL.F32        S4, S4, S4
4C8BBC:  VMUL.F32        S0, S0, S0
4C8BC0:  VMUL.F32        S2, S2, S2
4C8BC4:  VADD.F32        S0, S2, S0
4C8BC8:  VLDR            S2, [R0,#4]
4C8BCC:  VCVT.F32.S32    S2, S2
4C8BD0:  LDR             R0, [SP,#0xB8+var_A0]
4C8BD2:  VADD.F32        S0, S0, S4
4C8BD6:  VDIV.F32        S4, S21, S28
4C8BDA:  VSQRT.F32       S0, S0
4C8BDE:  VMUL.F32        S2, S2, S24
4C8BE2:  VDIV.F32        S0, S0, S2
4C8BE6:  VMIN.F32        D0, D0, D15
4C8BEA:  VMIN.F32        D1, D2, D15
4C8BEE:  VSUB.F32        S0, S30, S0
4C8BF2:  VSUB.F32        S2, S30, S2
4C8BF6:  VMUL.F32        S0, S0, S19
4C8BFA:  VMUL.F32        S2, S2, S17
4C8BFE:  VADD.F32        S0, S2, S0
4C8C02:  VMAX.F32        D1, D0, D11
4C8C06:  VCMPE.F32       S0, S22
4C8C0A:  VMRS            APSR_nzcv, FPSCR
4C8C0E:  VMOV            D11, D1
4C8C12:  IT GE
4C8C14:  MOVGE           R0, R6
4C8C16:  STR             R0, [SP,#0xB8+var_A0]
4C8C18:  ADD.W           R10, R10, #1
4C8C1C:  ADDW            R11, R11, #0xA2C
4C8C20:  CMP             R9, R10
4C8C22:  BNE.W           loc_4C8A10
4C8C26:  LDRSB.W         R0, [R4,#0x71C]
4C8C2A:  RSB.W           R0, R0, R0,LSL#3
4C8C2E:  ADD.W           R0, R4, R0,LSL#2
4C8C32:  LDR.W           R0, [R0,#0x5A4]
4C8C36:  CMP             R0, #0x29 ; ')'
4C8C38:  BNE             loc_4C8CA0
4C8C3A:  MOV             R0, R4; this
4C8C3C:  BLX             j__ZN10CPlayerPed21FindSprayableBuildingEv; CPlayerPed::FindSprayableBuilding(void)
4C8C40:  CMP             R0, #0
4C8C42:  LDR             R5, [SP,#0xB8+var_A0]
4C8C44:  IT NE
4C8C46:  MOVNE           R5, R0
4C8C48:  LDR             R0, [SP,#0xB8+var_A4]
4C8C4A:  CMP             R0, #0
4C8C4C:  BNE             loc_4C8CD2
4C8C4E:  CBZ             R5, loc_4C8CAA
4C8C50:  LDRB.W          R0, [R5,#0x3A]
4C8C54:  AND.W           R0, R0, #7
4C8C58:  CMP             R0, #2
4C8C5A:  MOV             R0, R5
4C8C5C:  IT NE
4C8C5E:  MOVNE           R0, #0; this
4C8C60:  BLX             j__ZN8CVehicle23SetTappedGasTankVehicleEP7CEntity; CVehicle::SetTappedGasTankVehicle(CEntity *)
4C8C64:  LDR.W           R0, [R4,#0x720]
4C8C68:  CMP             R5, R0
4C8C6A:  BEQ             loc_4C8CB0
4C8C6C:  LDR.W           R0, [R4,#0x444]
4C8C70:  MOVS            R1, #1
4C8C72:  STRB.W          R1, [R0,#0x85]
4C8C76:  MOV             R0, R4; this
4C8C78:  MOV             R1, R5; CEntity *
4C8C7A:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C8C7E:  LDR             R0, =(AudioEngine_ptr - 0x4C8C8C)
4C8C80:  MOVS            R1, #0x21 ; '!'; int
4C8C82:  MOVS            R2, #0; float
4C8C84:  MOV.W           R3, #0x3F800000; float
4C8C88:  ADD             R0, PC; AudioEngine_ptr
4C8C8A:  LDR             R0, [R0]; AudioEngine ; this
4C8C8C:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
4C8C90:  LDR             R0, =(_ZN10CPlayerPed17bSwipeTargetHeadsE_ptr - 0x4C8C98)
4C8C92:  LDR             R1, [SP,#0xB8+var_A8]
4C8C94:  ADD             R0, PC; _ZN10CPlayerPed17bSwipeTargetHeadsE_ptr
4C8C96:  AND.W           R1, R1, #1
4C8C9A:  LDR             R0, [R0]; CPlayerPed::bSwipeTargetHeads ...
4C8C9C:  STRB            R1, [R0]; CPlayerPed::bSwipeTargetHeads
4C8C9E:  B               loc_4C8CD2
4C8CA0:  LDRD.W          R0, R5, [SP,#0xB8+var_A4]
4C8CA4:  CMP             R0, #0
4C8CA6:  BEQ             loc_4C8C4E
4C8CA8:  B               loc_4C8CD2
4C8CAA:  MOVS            R0, #0; this
4C8CAC:  BLX             j__ZN8CVehicle23SetTappedGasTankVehicleEP7CEntity; CVehicle::SetTappedGasTankVehicle(CEntity *)
4C8CB0:  LDR.W           R0, [R4,#0x59C]
4C8CB4:  CMP             R0, #1
4C8CB6:  BHI             loc_4C8CD2
4C8CB8:  MOV             R0, R4; this
4C8CBA:  MOVS            R1, #0; CEntity *
4C8CBC:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C8CC0:  LDR             R0, =(TheCamera_ptr - 0x4C8CC6)
4C8CC2:  ADD             R0, PC; TheCamera_ptr
4C8CC4:  LDR             R0, [R0]; TheCamera ; this
4C8CC6:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
4C8CCA:  LDR.W           R0, [R4,#0x59C]; this
4C8CCE:  BLX             j__ZN14CWeaponEffects14ClearCrossHairEi; CWeaponEffects::ClearCrossHair(int)
4C8CD2:  ADD             SP, SP, #0x58 ; 'X'
4C8CD4:  VPOP            {D8-D15}
4C8CD8:  ADD             SP, SP, #4
4C8CDA:  POP.W           {R8-R11}
4C8CDE:  POP             {R4-R7,PC}
