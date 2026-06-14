; =========================================================
; Game Engine Function: _ZN11CAutomobile17UpdateWheelMatrixEii
; Address            : 0x5594C4 - 0x559CB0
; =========================================================

5594C4:  PUSH            {R4-R7,LR}
5594C6:  ADD             R7, SP, #0xC
5594C8:  PUSH.W          {R8-R11}
5594CC:  SUB             SP, SP, #4
5594CE:  VPUSH           {D8-D11}
5594D2:  SUB             SP, SP, #0xC0
5594D4:  MOV             R9, R1
5594D6:  MOV             R4, R0
5594D8:  ADD.W           R6, R4, R9,LSL#2
5594DC:  MOV             R5, R2
5594DE:  LDR.W           R0, [R6,#0x65C]
5594E2:  CMP             R0, #0
5594E4:  BEQ.W           loc_55998C
5594E8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5594F8)
5594EC:  MOVS            R1, #0
5594EE:  STRD.W          R1, R1, [SP,#0x100+var_48]
5594F2:  MOVS            R2, #0xFF; unsigned __int8
5594F4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5594F6:  LDRSH.W         R1, [R4,#0x26]
5594FA:  MOVS            R3, #0xFF; unsigned __int8
5594FC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5594FE:  LDR.W           R0, [R0,R1,LSL#2]
559502:  MOVS            R1, #0xFF; unsigned __int8
559504:  STR             R0, [SP,#0x100+var_E4]
559506:  MOVS            R0, #0x20 ; ' '
559508:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
55950A:  ADD             R0, SP, #0x100+var_8C; this
55950C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
559510:  SUB.W           R1, R9, #2; switch 6 cases
559514:  CMP             R1, #5
559516:  BHI.W           def_559520; jumptable 00559520 default case
55951A:  ADDW            R0, R6, #0x65C
55951E:  STR             R5, [SP,#0x100+var_EC]
559520:  TBB.W           [PC,R1]; switch jump
559524:  DCB 0x21; jump table for switch statement
559525:  DCB 3
559526:  DCB 3
559527:  DCB 0x31
559528:  DCB 0x12
559529:  DCB 0x12
55952A:  LDR.W           R1, [R4,#0x390]; jumptable 00559520 cases 3,4
55952E:  TST.W           R1, #0x20
559532:  BNE             loc_5595A6
559534:  VMOV.F32        S16, #1.0
559538:  LSLS            R1, R1, #0x19
55953A:  BMI             loc_5595D8
55953C:  MOVS            R1, #0
55953E:  MOV.W           R11, #1
559542:  MOVS            R6, #3
559544:  STR             R1, [SP,#0x100+var_E8]
559546:  B               loc_55967C
559548:  LDR.W           R1, [R4,#0x390]; jumptable 00559520 cases 6,7
55954C:  TST.W           R1, #0x20
559550:  BNE             loc_5595C2
559552:  VMOV.F32        S16, #-1.0
559556:  LSLS            R1, R1, #0x19
559558:  BMI             loc_5595EC
55955A:  MOVS            R1, #0
55955C:  MOVS            R6, #1
55955E:  STR             R1, [SP,#0x100+var_E8]
559560:  MOV.W           R11, #1
559564:  B               loc_55967C
559566:  VMOV.F32        S16, #1.0; jumptable 00559520 case 2
55956A:  LDRB.W          R1, [R4,#0x390]
55956E:  LSLS            R1, R1, #0x1A
559570:  BMI             loc_559666
559572:  MOVS            R2, #1
559574:  ADD.W           R1, R4, #0x498
559578:  STR             R2, [SP,#0x100+var_E8]
55957A:  MOV.W           R11, #0
55957E:  VLDR            S22, [R1]
559582:  MOVS            R6, #2
559584:  B               loc_5595FE
559586:  VMOV.F32        S16, #-1.0; jumptable 00559520 case 5
55958A:  LDRB.W          R1, [R4,#0x390]
55958E:  LSLS            R1, R1, #0x1A
559590:  BMI             loc_559672
559592:  MOVS            R2, #1
559594:  ADD.W           R1, R4, #0x498
559598:  STR             R2, [SP,#0x100+var_E8]
55959A:  MOVS            R6, #0
55959C:  VLDR            S22, [R1]
5595A0:  MOV.W           R11, #0
5595A4:  B               loc_5595FE
5595A6:  ADD.W           R1, R4, #0x498
5595AA:  VMOV.F32        S16, #1.0
5595AE:  MOV.W           R11, #1
5595B2:  MOVS            R6, #3
5595B4:  VLDR            S0, [R1]
5595B8:  MOVS            R1, #0
5595BA:  STR             R1, [SP,#0x100+var_E8]
5595BC:  VNEG.F32        S22, S0
5595C0:  B               loc_5595FE
5595C2:  ADD.W           R1, R4, #0x498
5595C6:  VMOV.F32        S16, #-1.0
5595CA:  VLDR            S0, [R1]
5595CE:  MOVS            R1, #0
5595D0:  STR             R1, [SP,#0x100+var_E8]
5595D2:  VNEG.F32        S22, S0
5595D6:  B               loc_5595F8
5595D8:  MOVS            R2, #0
5595DA:  ADDW            R1, R4, #0x49C
5595DE:  STR             R2, [SP,#0x100+var_E8]
5595E0:  MOV.W           R11, #1
5595E4:  VLDR            S22, [R1]
5595E8:  MOVS            R6, #3
5595EA:  B               loc_5595FE
5595EC:  MOVS            R2, #0
5595EE:  ADDW            R1, R4, #0x49C
5595F2:  STR             R2, [SP,#0x100+var_E8]
5595F4:  VLDR            S22, [R1]
5595F8:  MOVS            R6, #1
5595FA:  MOV.W           R11, #1
5595FE:  VCMPE.F32       S16, #0.0
559602:  MOV.W           R10, #0
559606:  VMRS            APSR_nzcv, FPSCR
55960A:  IT LT
55960C:  MOVLT.W         R10, #1
559610:  LSLS            R1, R5, #0x1E
559612:  BMI             loc_55963E
559614:  VCMP.F32        S22, #0.0
559618:  VMRS            APSR_nzcv, FPSCR
55961C:  BEQ             loc_55963E
55961E:  VCMPE.F32       S16, #0.0
559622:  VMRS            APSR_nzcv, FPSCR
559626:  BGE             loc_559642
559628:  VCMPE.F32       S22, #0.0
55962C:  CMP.W           R11, #1
559630:  BNE.W           loc_55980C
559634:  VMRS            APSR_nzcv, FPSCR
559638:  BGT.W           loc_559812
55963C:  B               loc_55981A
55963E:  LDR             R5, [SP,#0x100+var_E4]
559640:  B               loc_559690
559642:  VCMPE.F32       S22, #0.0
559646:  CMP.W           R11, #1
55964A:  BNE.W           loc_55982A
55964E:  VMRS            APSR_nzcv, FPSCR
559652:  MOV.W           R11, #1
559656:  MOV.W           R10, #0
55965A:  ITT LT
55965C:  VLDRLT          S0, =0.6
559660:  VMULLT.F32      S22, S22, S0
559664:  B               loc_559840
559666:  MOVS            R1, #1
559668:  MOV.W           R11, #0
55966C:  STR             R1, [SP,#0x100+var_E8]
55966E:  MOVS            R6, #2
559670:  B               loc_55967C
559672:  MOVS            R1, #1
559674:  MOVS            R6, #0
559676:  STR             R1, [SP,#0x100+var_E8]
559678:  MOV.W           R11, #0
55967C:  VCMPE.F32       S16, #0.0
559680:  LDR             R5, [SP,#0x100+var_E4]
559682:  VMRS            APSR_nzcv, FPSCR
559686:  MOV.W           R10, #0
55968A:  IT LT
55968C:  MOVLT.W         R10, #1
559690:  VLDR            S0, =3.1416
559694:  CMP.W           R10, #0
559698:  VLDR            S22, =0.0
55969C:  IT NE
55969E:  VMOVNE.F32      S22, S0
5596A2:  LDR             R0, [R0]
5596A4:  MOVS            R2, #0
5596A6:  ADD.W           R1, R0, #0x10
5596AA:  ADD             R0, SP, #0x100+var_88
5596AC:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5596B0:  ADD.W           R8, R4, R6,LSL#2
5596B4:  LDRH.W          R0, [R5,#0x60]
5596B8:  VLDR            S18, [SP,#0x100+var_58]
5596BC:  MOVW            R1, #0xFFFF
5596C0:  LDR.W           R2, [R8,#0x84C]
5596C4:  CMP             R0, R1
5596C6:  VLDR            S20, [SP,#0x100+var_54]
5596CA:  BEQ             loc_5596E0
5596CC:  VMOV.F32        S2, #1.0
5596D0:  CMP.W           R11, #1
5596D4:  ITE NE
5596D6:  VLDRNE          S0, [R5,#0x58]
5596DA:  VLDREQ          S0, [R5,#0x5C]
5596DE:  B               loc_559714
5596E0:  ADDW            R0, R4, #0x45C
5596E4:  CMP.W           R11, #0
5596E8:  VLDR            S2, [R0]
5596EC:  BEQ             loc_559700
5596EE:  VLDR            S4, [R5,#0x58]
5596F2:  VLDR            S0, [R5,#0x5C]
5596F6:  VDIV.F32        S0, S0, S4
5596FA:  VMUL.F32        S0, S2, S0
5596FE:  B               loc_559708
559700:  VLDR            S4, [R5,#0x58]
559704:  VMOV.F32        S0, S2
559708:  VLDR            S6, =0.7
55970C:  VMUL.F32        S2, S2, S6
559710:  VDIV.F32        S2, S4, S2
559714:  LDRH            R0, [R4,#0x26]
559716:  CMP.W           R0, #0x214
55971A:  BNE             loc_55977E
55971C:  CMP.W           R9, #6
559720:  IT NE
559722:  CMPNE.W         R9, #3
559726:  BNE             loc_55977E
559728:  VLDR            S0, =1.7
55972C:  VMOV.F32        S12, #0.5
559730:  VLDR            S6, [R5,#0x5C]
559734:  CMP.W           R10, #0
559738:  VLDR            S8, =0.45
55973C:  VMOV            S10, R2
559740:  VSUB.F32        S6, S0, S6
559744:  VLDR            S4, [R5,#0x58]
559748:  VDIV.F32        S0, S0, S4
55974C:  VMUL.F32        S6, S6, S8
559750:  VLDR            S8, =-3.1416
559754:  VLDR            S4, =3.1416
559758:  VADD.F32        S8, S22, S8
55975C:  VADD.F32        S6, S6, S10
559760:  IT NE
559762:  VMOVNE.F32      S22, S8
559766:  CMP.W           R10, #0
55976A:  VMUL.F32        S22, S22, S12
55976E:  VMOV            R9, S6
559772:  VADD.F32        S4, S22, S4
559776:  IT NE
559778:  VMOVNE.F32      S22, S4
55977C:  B               loc_55979E
55977E:  VLDR            S4, =0.0
559782:  MOVW            R1, #0x201
559786:  CMP             R0, R1
559788:  VMOV.F32        S6, S22
55978C:  IT EQ
55978E:  VMOVEQ.F32      S6, S4
559792:  CMP.W           R9, #5
559796:  IT EQ
559798:  VMOVEQ.F32      S22, S6
55979C:  MOV             R9, R2
55979E:  LDR.W           R1, [R4,#0x5A4]
5597A2:  SUBS            R1, #1
5597A4:  CMP             R1, #2
5597A6:  BCS             loc_5597AE
5597A8:  VMOV.F32        S4, #1.0
5597AC:  B               loc_559852
5597AE:  CMP.W           R11, #1
5597B2:  BNE             loc_5597D2
5597B4:  LDR.W           R1, [R4,#0x390]
5597B8:  TST.W           R1, #0xF000
5597BC:  BEQ             loc_5597D2
5597BE:  LSLS            R2, R1, #0x13
5597C0:  BMI             loc_559806
5597C2:  LSLS            R2, R1, #0x12
5597C4:  BMI             loc_559844
5597C6:  LSLS            R2, R1, #0x11
5597C8:  BMI             loc_55984A
5597CA:  VMOV.F32        S4, #1.25
5597CE:  LSLS            R1, R1, #0x10
5597D0:  B               loc_5597F4
5597D2:  LDR             R1, [SP,#0x100+var_E8]
5597D4:  CMP             R1, #1
5597D6:  BNE             loc_559800
5597D8:  LDR.W           R1, [R4,#0x390]
5597DC:  TST.W           R1, #0xF00
5597E0:  BEQ             loc_559800
5597E2:  LSLS            R2, R1, #0x17
5597E4:  BMI             loc_559806
5597E6:  LSLS            R2, R1, #0x16
5597E8:  BMI             loc_559844
5597EA:  LSLS            R2, R1, #0x15
5597EC:  BMI             loc_55984A
5597EE:  VMOV.F32        S4, #1.25
5597F2:  LSLS            R1, R1, #0x14
5597F4:  VMUL.F32        S4, S2, S4
5597F8:  IT PL
5597FA:  VMOVPL.F32      S4, S2
5597FE:  B               loc_559852
559800:  VMOV.F32        S4, S2
559804:  B               loc_559852
559806:  VLDR            S4, =0.65
55980A:  B               loc_55984E
55980C:  VMRS            APSR_nzcv, FPSCR
559810:  BGE             loc_55981A
559812:  VLDR            S0, =0.6
559816:  VMUL.F32        S22, S22, S0
55981A:  VLDR            S0, =3.1416
55981E:  MOV.W           R10, #1
559822:  LDR             R5, [SP,#0x100+var_E4]
559824:  VADD.F32        S22, S22, S0
559828:  B               loc_5596A2
55982A:  VMRS            APSR_nzcv, FPSCR
55982E:  MOV.W           R10, #0
559832:  MOV.W           R11, #0
559836:  ITT GT
559838:  VLDRGT          S0, =0.6
55983C:  VMULGT.F32      S22, S22, S0
559840:  LDR             R5, [SP,#0x100+var_E4]
559842:  B               loc_5596A2
559844:  VLDR            S4, =0.8
559848:  B               loc_55984E
55984A:  VLDR            S4, =1.1
55984E:  VMUL.F32        S4, S2, S4
559852:  VMOV.F32        S2, #3.0
559856:  MOVW            R1, #0x23B
55985A:  CMP             R0, R1
55985C:  VMOV            R2, S0; float
559860:  ADD             R0, SP, #0x100+var_88; this
559862:  VMUL.F32        S2, S4, S2
559866:  IT EQ
559868:  VMOVEQ.F32      S4, S2
55986C:  VMUL.F32        S2, S0, S4
559870:  MOV             R3, R2; float
559872:  VMOV            R1, S2; float
559876:  BLX             j__ZN7CMatrix8SetScaleEfff; CMatrix::SetScale(float,float,float)
55987A:  LDR.W           R0, [R4,#0x5A4]
55987E:  CMP             R0, #3
559880:  BNE             loc_55988C
559882:  VMOV            R3, S22
559886:  ADD             R0, SP, #0x100+var_88
559888:  MOVS            R1, #0
55988A:  B               loc_5598D6
55988C:  ADDW            R0, R4, #0x5B4; this
559890:  MOV             R1, R6; int
559892:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
559896:  ADDW            R1, R8, #0x83C
55989A:  CMP             R0, #1
55989C:  VLDR            S0, [R1]
5598A0:  VMUL.F32        S0, S16, S0
5598A4:  BNE             loc_5598CC
5598A6:  VMOV            R5, S0
5598AA:  MOV             R0, R5; x
5598AC:  BLX             sinf
5598B0:  VMOV            S2, R0
5598B4:  VLDR            S0, =0.3
5598B8:  MOV             R1, R5
5598BA:  ADD             R0, SP, #0x100+var_88
5598BC:  VMUL.F32        S0, S2, S0
5598C0:  LDR             R5, [SP,#0x100+var_E4]
5598C2:  VADD.F32        S0, S22, S0
5598C6:  VMOV            R3, S0
5598CA:  B               loc_5598D6
5598CC:  VMOV            R1, S0; x
5598D0:  ADD             R0, SP, #0x100+var_88; this
5598D2:  VMOV            R3, S22; float
5598D6:  MOVS            R2, #0; float
5598D8:  BLX             j__ZN7CMatrix6RotateEfff; CMatrix::Rotate(float,float,float)
5598DC:  LDRSB.W         R0, [R4,#0x87C]
5598E0:  CMP             R0, #0
5598E2:  BLT             loc_559910
5598E4:  LDRB.W          R0, [R4,#0x392]
5598E8:  LSLS            R0, R0, #0x1E
5598EA:  BMI             loc_559910
5598EC:  LDR.W           R0, [R4,#0x388]
5598F0:  LDR             R1, [SP,#0x100+var_E8]
5598F2:  LDR.W           R0, [R0,#0xCC]
5598F6:  EOR.W           R1, R1, #1
5598FA:  TST.W           R0, #0x20000
5598FE:  IT NE
559900:  CMPNE           R1, #1
559902:  BNE             loc_559910
559904:  EOR.W           R2, R11, #1
559908:  LSLS            R3, R0, #0xA
55990A:  BPL             loc_5599C8
55990C:  CMP             R2, #0
55990E:  BNE             loc_5599C8
559910:  ADDW            R0, R8, #0x84C
559914:  MOVS            R1, #2
559916:  CMP             R6, #1
559918:  IT HI
55991A:  MOVHI           R1, #0xFFFFFFFE
55991E:  VLDR            S0, [R0]
559922:  ADDS            R0, R1, R6
559924:  ADD.W           R0, R4, R0,LSL#2
559928:  ADDW            R0, R0, #0x84C
55992C:  VLDR            S2, [R0]
559930:  VSUB.F32        S0, S0, S2
559934:  VABS.F32        S2, S20
559938:  VMUL.F32        S0, S16, S0
55993C:  VADD.F32        S2, S2, S2
559940:  VMOV            R0, S0
559944:  VMOV            R1, S2; x
559948:  EOR.W           R0, R0, #0x80000000; y
55994C:  BLX             atan2f
559950:  MOV             R1, R0; x
559952:  ADD             R0, SP, #0x100+var_88; this
559954:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
559958:  VLDR            S0, [SP,#0x100+var_58]
55995C:  VMOV            S6, R9
559960:  VLDR            S2, [SP,#0x100+var_54]
559964:  ADD             R0, SP, #0x100+var_88; this
559966:  VLDR            S4, [SP,#0x100+var_50]
55996A:  VADD.F32        S0, S18, S0
55996E:  VADD.F32        S2, S20, S2
559972:  VADD.F32        S4, S4, S6
559976:  VSTR            S0, [SP,#0x100+var_58]
55997A:  VSTR            S2, [SP,#0x100+var_54]
55997E:  VSTR            S4, [SP,#0x100+var_50]
559982:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
559986:  ADD             R0, SP, #0x100+var_88; jumptable 00559520 default case
559988:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55998C:  ADD             SP, SP, #0xC0
55998E:  VPOP            {D8-D11}
559992:  ADD             SP, SP, #4
559994:  POP.W           {R8-R11}
559998:  POP             {R4-R7,PC}
55999A:  ALIGN 4
55999C:  DCFS 0.6
5599A0:  DCFS 3.1416
5599A4:  DCFS 0.0
5599A8:  DCFS 0.7
5599AC:  DCFS 1.7
5599B0:  DCFS 0.45
5599B4:  DCFS -3.1416
5599B8:  DCFS 0.65
5599BC:  DCFS 0.8
5599C0:  DCFS 1.1
5599C4:  DCFS 0.3
5599C8:  LDR             R3, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x5599CE)
5599CA:  ADD             R3, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
5599CC:  LDR             R3, [R3]; CCheat::m_aCheatsActive ...
5599CE:  LDRB.W          R3, [R3,#(byte_79681D - 0x7967F4)]
5599D2:  CBNZ            R3, loc_5599E2
5599D4:  LDRH            R3, [R4,#0x26]
5599D6:  MOVW            R5, #0x21B
5599DA:  CMP             R3, R5
5599DC:  LDR             R5, [SP,#0x100+var_E4]
5599DE:  BNE.W           loc_559AEA
5599E2:  VMOV.F32        S0, #1.0
5599E6:  ADD.W           R3, R8, #0x7F8
5599EA:  VLDR            S2, [R3]
5599EE:  VCMPE.F32       S2, S0
5599F2:  VMRS            APSR_nzcv, FPSCR
5599F6:  BGE             loc_559AEA
5599F8:  LDRB.W          R3, [R4,#0x42F]
5599FC:  LSLS            R3, R3, #0x19
5599FE:  BMI             loc_559AEA
559A00:  LDR             R5, [SP,#0x100+var_EC]
559A02:  LSLS            R0, R5, #0x1D
559A04:  BMI             loc_559A18
559A06:  VLDR            S0, =-1.5708
559A0A:  ADD             R0, SP, #0x100+var_88; this
559A0C:  VMUL.F32        S0, S16, S0
559A10:  VMOV            R1, S0; x
559A14:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
559A18:  LSLS            R0, R5, #0x1C
559A1A:  BMI             loc_559958
559A1C:  MOVW            R8, #0xCCCD
559A20:  MOVW            R2, #0xCCCD
559A24:  ADD             R5, SP, #0x100+var_A8
559A26:  MOVT            R8, #0x3D4C
559A2A:  MOVS            R0, #0
559A2C:  MOV.W           R1, #0x3F000000
559A30:  MOVT            R2, #0x3E4C
559A34:  MOV.W           R3, #0x3F800000; float
559A38:  STRD.W          R2, R1, [SP,#0x100+var_100]; float
559A3C:  MOV.W           R1, #0x3F800000; float
559A40:  STRD.W          R0, R8, [SP,#0x100+var_F8]; float
559A44:  MOV             R0, R5; this
559A46:  MOV.W           R2, #0x3F800000; float
559A4A:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
559A4E:  MOVS            R0, #0x2C ; ','
559A50:  VMOV.F32        S0, #0.5
559A54:  SMLABB.W        R6, R6, R0, R4
559A58:  ADD.W           R1, R6, #0x738
559A5C:  LDR.W           R0, [R6,#0x740]
559A60:  VLDR            D16, [R1]
559A64:  STR             R0, [SP,#0x100+var_B0]
559A66:  VSTR            D16, [SP,#0x100+var_B8]
559A6A:  LDR             R0, [R4,#0x14]
559A6C:  VLDR            S2, [R4,#0x48]
559A70:  VLDR            S4, [R4,#0x4C]
559A74:  VLDR            S8, [R0]
559A78:  VMUL.F32        S2, S2, S0
559A7C:  VLDR            S10, [R0,#4]
559A80:  VMUL.F32        S4, S4, S0
559A84:  VLDR            S6, [R4,#0x50]
559A88:  VMUL.F32        S8, S16, S8
559A8C:  VLDR            S12, [R0,#8]
559A90:  VMUL.F32        S10, S16, S10
559A94:  VMUL.F32        S0, S6, S0
559A98:  LDR             R0, =(g_surfaceInfos_ptr - 0x559AA2)
559A9A:  VMUL.F32        S6, S16, S12
559A9E:  ADD             R0, PC; g_surfaceInfos_ptr
559AA0:  LDR             R0, [R0]; g_surfaceInfos ; this
559AA2:  VADD.F32        S2, S2, S8
559AA6:  VADD.F32        S4, S4, S10
559AAA:  VADD.F32        S16, S0, S6
559AAE:  VSTR            S4, [SP,#0x100+var_C0]
559AB2:  VSTR            S2, [SP,#0x100+var_C4]
559AB6:  VSTR            S16, [SP,#0x100+var_BC]
559ABA:  LDRB.W          R1, [R6,#0x75B]; unsigned int
559ABE:  BLX             j__ZN14SurfaceInfos_c7IsWaterEj; SurfaceInfos_c::IsWater(uint)
559AC2:  CMP             R0, #0
559AC4:  BEQ             loc_559BA6
559AC6:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x559ACC)
559AC8:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
559ACA:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
559ACC:  LDRB            R0, [R0]; CTimer::m_FrameCounter
559ACE:  LSLS            R0, R0, #0x1F
559AD0:  BNE.W           loc_559C20
559AD4:  VMOV.F32        S0, #2.0
559AD8:  LDR             R0, =(g_fx_ptr - 0x559ADE)
559ADA:  ADD             R0, PC; g_fx_ptr
559ADC:  LDR             R0, [R0]; g_fx
559ADE:  VADD.F32        S0, S16, S0
559AE2:  LDR             R0, [R0,#(dword_820558 - 0x820520)]
559AE4:  VSTR            S0, [SP,#0x100+var_BC]
559AE8:  B               loc_559C28
559AEA:  LDR             R3, [SP,#0x100+var_EC]
559AEC:  LSLS            R3, R3, #0x1F
559AEE:  BNE.W           loc_559958
559AF2:  LSLS            R3, R0, #0xF
559AF4:  BPL             loc_559AFC
559AF6:  CMP             R1, #1
559AF8:  BNE.W           loc_559958
559AFC:  LSLS            R3, R0, #0xB
559AFE:  BPL             loc_559B06
559B00:  CMP             R2, #1
559B02:  BNE.W           loc_559958
559B06:  ADDW            R3, R4, #0x8AC
559B0A:  VMOV.F32        S0, #-0.5
559B0E:  ADD.W           R6, R5, #0x5C ; '\'
559B12:  VMOV            S2, R9
559B16:  VLDR            S4, [R3]
559B1A:  LDR             R3, [SP,#0x100+var_E8]
559B1C:  VADD.F32        S2, S4, S2
559B20:  CMP             R3, #0
559B22:  IT NE
559B24:  ADDNE.W         R6, R5, #0x58 ; 'X'
559B28:  LSLS            R3, R0, #0xC
559B2A:  VLDR            S6, [R6]
559B2E:  VMUL.F32        S0, S6, S0
559B32:  VADD.F32        S0, S2, S0
559B36:  BPL             loc_559B3C
559B38:  CMP             R1, #1
559B3A:  BNE             loc_559B48
559B3C:  LSLS            R0, R0, #8
559B3E:  BPL.W           loc_559C56
559B42:  CMP             R2, #0
559B44:  BNE.W           loc_559C56
559B48:  VMOV.F32        S2, #1.0
559B4C:  VMUL.F32        S4, S16, S0
559B50:  VMOV.F32        S6, #-1.0
559B54:  VNMUL.F32       S0, S16, S0
559B58:  VMOV.F32        S8, S2
559B5C:  VCMPE.F32       S4, S2
559B60:  VMRS            APSR_nzcv, FPSCR
559B64:  VCMPE.F32       S4, S6
559B68:  VMOV.F32        S10, S6
559B6C:  IT GT
559B6E:  VMOVGT.F32      S8, S6
559B72:  VMRS            APSR_nzcv, FPSCR
559B76:  VCMPE.F32       S4, S2
559B7A:  IT LT
559B7C:  VMOVLT.F32      S10, S8
559B80:  VMRS            APSR_nzcv, FPSCR
559B84:  VCMPE.F32       S4, S6
559B88:  IT GT
559B8A:  VMOVGT.F32      S0, S10
559B8E:  VMRS            APSR_nzcv, FPSCR
559B92:  IT LT
559B94:  VMOVLT.F32      S0, S10
559B98:  VMOV            R0, S0; x
559B9C:  BLX             asinf
559BA0:  EOR.W           R1, R0, #0x80000000
559BA4:  B               loc_559952
559BA6:  LDR             R2, =(g_surfaceInfos_ptr - 0x559BB0)
559BA8:  ADDW            R0, R6, #0x75B
559BAC:  ADD             R2, PC; g_surfaceInfos_ptr
559BAE:  LDRB            R1, [R0]; unsigned int
559BB0:  LDR             R0, [R2]; g_surfaceInfos ; this
559BB2:  BLX             j__ZN14SurfaceInfos_c6IsSandEj; SurfaceInfos_c::IsSand(uint)
559BB6:  CMP             R0, #0
559BB8:  BEQ.W           loc_559958
559BBC:  MOVW            R1, #0x3333
559BC0:  MOV.W           R0, #0x3F000000
559BC4:  MOVT            R1, #0x3EB3
559BC8:  MOVW            R2, #0x851F
559BCC:  STRD.W          R1, R0, [SP,#0x100+var_100]; float
559BD0:  MOVW            R1, #0x5C29
559BD4:  MOVW            R3, #0xEB85
559BD8:  ADD             R0, SP, #0x100+var_E0; this
559BDA:  MOVS            R4, #0
559BDC:  MOVT            R1, #0x3F4F; float
559BE0:  MOVT            R2, #0x3F2B; float
559BE4:  MOVT            R3, #0x3F11; float
559BE8:  STRD.W          R4, R8, [SP,#0x100+var_F8]; float
559BEC:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
559BF0:  LDR             R1, =(g_fx_ptr - 0x559C00)
559BF2:  MOVW            R2, #0x999A
559BF6:  MOVS            R6, #0
559BF8:  MOVT            R2, #0x3F99
559BFC:  ADD             R1, PC; g_fx_ptr
559BFE:  MOVT            R6, #0xBF80
559C02:  LDR             R1, [R1]; g_fx
559C04:  LDR             R3, [R1,#(dword_820538 - 0x820520)]
559C06:  MOV             R1, #0x3F19999A
559C0E:  STRD.W          R0, R6, [SP,#0x100+var_100]
559C12:  STRD.W          R2, R1, [SP,#0x100+var_F8]
559C16:  ADD             R1, SP, #0x100+var_B8
559C18:  ADD             R2, SP, #0x100+var_C4
559C1A:  MOV             R0, R3
559C1C:  STR             R4, [SP,#0x100+var_F0]
559C1E:  B               loc_559C4E
559C20:  LDR             R0, =(g_fx_ptr - 0x559C26)
559C22:  ADD             R0, PC; g_fx_ptr
559C24:  LDR             R0, [R0]; g_fx
559C26:  LDR             R0, [R0,#(dword_820540 - 0x820520)]; int
559C28:  MOVW            R2, #0x999A
559C2C:  MOVW            R3, #0x999A
559C30:  MOVS            R6, #0
559C32:  MOVS            R1, #0
559C34:  MOVT            R6, #0xBF80
559C38:  MOVT            R2, #0x3F19
559C3C:  MOVT            R3, #0x3F99
559C40:  STRD.W          R5, R6, [SP,#0x100+var_100]; int
559C44:  STRD.W          R3, R2, [SP,#0x100+var_F8]; float
559C48:  ADD             R2, SP, #0x100+var_C4; int
559C4A:  STR             R1, [SP,#0x100+var_F0]; int
559C4C:  ADD             R1, SP, #0x100+var_B8; int
559C4E:  MOVS            R3, #0; int
559C50:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
559C54:  B               loc_559958
559C56:  VMOV.F32        S2, #1.0
559C5A:  VMUL.F32        S4, S16, S0
559C5E:  VMOV.F32        S6, #-1.0
559C62:  VNMUL.F32       S0, S16, S0
559C66:  VMOV.F32        S8, S2
559C6A:  VCMPE.F32       S4, S2
559C6E:  VMRS            APSR_nzcv, FPSCR
559C72:  VCMPE.F32       S4, S6
559C76:  VMOV.F32        S10, S6
559C7A:  IT GT
559C7C:  VMOVGT.F32      S8, S6
559C80:  VMRS            APSR_nzcv, FPSCR
559C84:  VCMPE.F32       S4, S2
559C88:  IT LT
559C8A:  VMOVLT.F32      S10, S8
559C8E:  VMRS            APSR_nzcv, FPSCR
559C92:  VCMPE.F32       S4, S6
559C96:  IT GT
559C98:  VMOVGT.F32      S0, S10
559C9C:  VMRS            APSR_nzcv, FPSCR
559CA0:  IT LT
559CA2:  VMOVLT.F32      S0, S10
559CA6:  VMOV            R0, S0; x
559CAA:  BLX             asinf
559CAE:  B               loc_559950
