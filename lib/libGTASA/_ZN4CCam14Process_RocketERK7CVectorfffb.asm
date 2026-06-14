; =========================================================
; Game Engine Function: _ZN4CCam14Process_RocketERK7CVectorfffb
; Address            : 0x3C6480 - 0x3C6AC2
; =========================================================

3C6480:  PUSH            {R4-R7,LR}
3C6482:  ADD             R7, SP, #0xC
3C6484:  PUSH.W          {R8-R11}
3C6488:  SUB             SP, SP, #4
3C648A:  VPUSH           {D8-D9}
3C648E:  SUB             SP, SP, #0x50
3C6490:  MOV             R4, R0
3C6492:  LDR.W           R2, [R4,#0x1F4]
3C6496:  LDRB.W          R0, [R2,#0x3A]
3C649A:  AND.W           R0, R0, #7
3C649E:  CMP             R0, #3
3C64A0:  BNE.W           loc_3C6AA0
3C64A4:  LDRB            R0, [R4,#0xA]; this
3C64A6:  MOVS            R1, #0x428C0000
3C64AC:  CMP             R0, #0
3C64AE:  STR.W           R1, [R4,#0x8C]
3C64B2:  BEQ             loc_3C64F8
3C64B4:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C64B8:  LDR.W           R2, [R4,#0x1F4]
3C64BC:  CMP             R0, #2
3C64BE:  ITT EQ
3C64C0:  LDREQ.W         R0, [R2,#0x720]
3C64C4:  CMPEQ           R0, #0
3C64C6:  BEQ             loc_3C64E8
3C64C8:  ADDW            R0, R2, #0x55C
3C64CC:  VLDR            S0, =-1.5708
3C64D0:  MOVS            R1, #0
3C64D2:  VLDR            S2, [R0]
3C64D6:  STR.W           R1, [R4,#0x84]
3C64DA:  VADD.F32        S0, S2, S0
3C64DE:  VMOV            R0, S0
3C64E2:  VSTR            S0, [R4,#0x94]
3C64E6:  B               loc_3C64EC
3C64E8:  LDR.W           R0, [R4,#0x94]
3C64EC:  MOVS            R1, #0
3C64EE:  STRB            R1, [R4,#0xA]
3C64F0:  STR.W           R0, [R4,#0x80]
3C64F4:  MOVS            R0, #1
3C64F6:  STRB            R0, [R4,#3]
3C64F8:  LDR             R0, [R2,#0x18]
3C64FA:  CBZ             R0, loc_3C6510
3C64FC:  LDR             R1, [R0,#4]
3C64FE:  LDR             R0, [R2,#0x14]
3C6500:  ADDS            R1, #0x10
3C6502:  CBZ             R0, loc_3C650A
3C6504:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3C6508:  B               loc_3C6510
3C650A:  ADDS            R0, R2, #4
3C650C:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3C6510:  LDR.W           R0, [R4,#0x1F4]; this
3C6514:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
3C6518:  LDR.W           R0, [R4,#0x1F4]; this
3C651C:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
3C6520:  LDR.W           R0, [R4,#0x1F4]; this
3C6524:  ADD             R1, SP, #0x80+var_60
3C6526:  MOVS            R2, #5
3C6528:  MOVS            R3, #1
3C652A:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3C652E:  LDR             R0, [SP,#0x80+var_58]
3C6530:  STR.W           R0, [R4,#0x17C]
3C6534:  MOVS            R0, #0; this
3C6536:  VLDR            S0, =0.1
3C653A:  VLDR            S2, [R4,#0x17C]
3C653E:  VLDR            D16, [SP,#0x80+var_60]
3C6542:  VADD.F32        S0, S2, S0
3C6546:  VSTR            D16, [R4,#0x174]
3C654A:  VSTR            S0, [R4,#0x17C]
3C654E:  STRD.W          R0, R0, [SP,#0x80+var_68]
3C6552:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C6556:  CBZ             R0, loc_3C6580
3C6558:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C655C:  CMP             R0, #1
3C655E:  BNE             loc_3C65E8
3C6560:  ADD             R1, SP, #0x80+var_68
3C6562:  MOVS            R0, #0xAF
3C6564:  MOVS            R2, #1
3C6566:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C656A:  CMP             R0, #1
3C656C:  BNE             loc_3C6634
3C656E:  VLDR            S0, [SP,#0x80+var_68]
3C6572:  VLDR            S2, [SP,#0x80+var_64]
3C6576:  VNEG.F32        S18, S0
3C657A:  VNEG.F32        S16, S2
3C657E:  B               loc_3C663C
3C6580:  ADD             R1, SP, #0x80+var_68
3C6582:  MOVS            R0, #0xAF
3C6584:  MOVS            R2, #1
3C6586:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C658A:  CMP             R0, #1
3C658C:  BNE             loc_3C662A
3C658E:  VLDR            S0, =80.0
3C6592:  VLDR            S2, [R4,#0x8C]
3C6596:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C65A2)
3C659A:  VDIV.F32        S0, S2, S0
3C659E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C65A0:  LDR             R0, [R0]; MobileSettings::settings ...
3C65A2:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3C65A6:  CMP             R0, #0
3C65A8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C65B0)
3C65AC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C65AE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C65B0:  VLDR            S4, [SP,#0x80+var_64]
3C65B4:  VLDR            S6, =-0.0007
3C65B8:  VLDR            S2, [SP,#0x80+var_68]
3C65BC:  VLDR            S10, =-0.001
3C65C0:  VNMUL.F32       S8, S4, S6
3C65C4:  VMUL.F32        S4, S4, S6
3C65C8:  VMUL.F32        S2, S2, S10
3C65CC:  IT EQ
3C65CE:  VMOVEQ.F32      S8, S4
3C65D2:  VLDR            S6, [R0]
3C65D6:  VMUL.F32        S4, S8, S0
3C65DA:  VMUL.F32        S0, S2, S0
3C65DE:  VMUL.F32        S2, S6, S4
3C65E2:  VMUL.F32        S0, S6, S0
3C65E6:  B               loc_3C6760
3C65E8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C65EC:  CMP             R0, #2
3C65EE:  BNE             loc_3C662A
3C65F0:  MOVS            R0, #0; this
3C65F2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C65F6:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C6602)
3C65FA:  ADD             R1, SP, #0x80+var_68
3C65FC:  MOVS            R2, #1
3C65FE:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C6600:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C6602:  VLDR            S16, [R0,#0xC]
3C6606:  VLDR            S18, [R0,#0x10]
3C660A:  MOVS            R0, #0xA7
3C660C:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C6610:  CMP             R0, #1
3C6612:  BNE             loc_3C66DC
3C6614:  VLDR            S2, [SP,#0x80+var_68]
3C6618:  VLDR            S4, =-0.075
3C661C:  VLDR            S0, [SP,#0x80+var_64]
3C6620:  VMUL.F32        S2, S2, S4
3C6624:  VMUL.F32        S0, S0, S4
3C6628:  B               loc_3C66E4
3C662A:  VLDR            S2, =0.0
3C662E:  VMOV.F32        S0, S2
3C6632:  B               loc_3C6760
3C6634:  VLDR            S16, =0.0
3C6638:  VMOV.F32        S18, S16
3C663C:  ADD             R1, SP, #0x80+var_68
3C663E:  MOVS            R0, #0xA7
3C6640:  MOVS            R2, #1
3C6642:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C6646:  CMP             R0, #1
3C6648:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C6666)
3C664C:  ITTTT EQ
3C664E:  VLDREQ          S0, [SP,#0x80+var_68]
3C6652:  VLDREQ          S2, [SP,#0x80+var_64]
3C6656:  VNEGEQ.F32      S16, S2
3C665A:  VNEGEQ.F32      S18, S0
3C665E:  VLDR            S4, =100.0
3C6662:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C6664:  VLDR            S12, =0.0004
3C6668:  VLDR            S6, =80.0
3C666C:  LDR             R0, [R0]; MobileSettings::settings ...
3C666E:  VNEG.F32        S8, S16
3C6672:  VLDR            S0, [R0,#0x328]
3C6676:  VLDR            S2, [R0,#0x348]
3C667A:  VCVT.F32.S32    S2, S2
3C667E:  VCVT.F32.S32    S0, S0
3C6682:  VLDR            S10, [R4,#0x8C]
3C6686:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3C668A:  CMP             R0, #0
3C668C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C669A)
3C6690:  IT EQ
3C6692:  VMOVEQ.F32      S8, S16
3C6696:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C6698:  VDIV.F32        S2, S2, S4
3C669C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C669E:  VDIV.F32        S0, S0, S4
3C66A2:  VLDR            S4, =0.0003
3C66A6:  VMUL.F32        S0, S0, S12
3C66AA:  VMUL.F32        S2, S2, S4
3C66AE:  VDIV.F32        S4, S10, S6
3C66B2:  VLDR            S6, =0.0002
3C66B6:  VADD.F32        S2, S2, S6
3C66BA:  VADD.F32        S0, S0, S6
3C66BE:  VMUL.F32        S2, S8, S2
3C66C2:  VMUL.F32        S0, S18, S0
3C66C6:  VMUL.F32        S2, S4, S2
3C66CA:  VMUL.F32        S0, S4, S0
3C66CE:  VLDR            S4, [R0]
3C66D2:  VMUL.F32        S2, S4, S2
3C66D6:  VMUL.F32        S0, S4, S0
3C66DA:  B               loc_3C6760
3C66DC:  VNEG.F32        S0, S18
3C66E0:  VNEG.F32        S2, S16
3C66E4:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C66F0)
3C66E8:  VLDR            S8, =100.0
3C66EC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C66EE:  VLDR            D17, =0.0075
3C66F2:  LDR             R0, [R0]; MobileSettings::settings ...
3C66F4:  ADD.W           R1, R0, #0x408
3C66F8:  VLDR            S4, [R1]
3C66FC:  VCVT.F32.S32    S4, S4
3C6700:  VLDR            S6, [R0,#0x3E8]
3C6704:  VCVT.F32.S32    S6, S6
3C6708:  VLDR            S10, [R4,#0x8C]
3C670C:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3C6710:  CMP             R0, #0
3C6712:  VDIV.F32        S4, S4, S8
3C6716:  VDIV.F32        S6, S6, S8
3C671A:  VCVT.F64.F32    D16, S4
3C671E:  VMUL.F64        D16, D16, D17
3C6722:  VLDR            D17, =0.000500000024
3C6726:  VLDR            S4, =0.01
3C672A:  VADD.F64        D16, D16, D17
3C672E:  VLDR            S8, =80.0
3C6732:  VMUL.F32        S4, S6, S4
3C6736:  VNEG.F32        S6, S0
3C673A:  VDIV.F32        S8, S10, S8
3C673E:  IT EQ
3C6740:  VMOVEQ.F32      S6, S0
3C6744:  VLDR            S10, =0.0005
3C6748:  VCVT.F32.F64    S0, D16
3C674C:  VADD.F32        S4, S4, S10
3C6750:  VMUL.F32        S2, S2, S4
3C6754:  VMUL.F32        S4, S6, S0
3C6758:  VMUL.F32        S0, S8, S2
3C675C:  VMUL.F32        S2, S8, S4
3C6760:  VLDR            S6, [R4,#0x94]
3C6764:  VLDR            S4, [R4,#0x84]
3C6768:  VADD.F32        S0, S0, S6
3C676C:  VADD.F32        S16, S2, S4
3C6770:  VLDR            S2, =3.1416
3C6774:  VCMPE.F32       S0, S2
3C6778:  VSTR            S0, [R4,#0x94]
3C677C:  VMRS            APSR_nzcv, FPSCR
3C6780:  VSTR            S16, [R4,#0x84]
3C6784:  BLE             loc_3C67C0
3C6786:  VLDR            S2, =-6.2832
3C678A:  B               loc_3C67D2
3C678C:  DCFS -1.5708
3C6790:  DCFS 0.1
3C6794:  DCFS 80.0
3C6798:  DCFS -0.0007
3C679C:  DCFS -0.001
3C67A0:  DCFS -0.075
3C67A4:  DCFS 0.0
3C67A8:  DCFS 100.0
3C67AC:  DCFS 0.0004
3C67B0:  DCFS 0.0003
3C67B4:  DCFS 0.0002
3C67B8:  DCFD 0.0075
3C67C0:  VLDR            S2, =-3.1416
3C67C4:  VCMPE.F32       S0, S2
3C67C8:  VMRS            APSR_nzcv, FPSCR
3C67CC:  BGE             loc_3C67DA
3C67CE:  VLDR            S2, =6.2832
3C67D2:  VADD.F32        S0, S0, S2
3C67D6:  VSTR            S0, [R4,#0x94]
3C67DA:  VLDR            S2, =1.0472
3C67DE:  VCMPE.F32       S16, S2
3C67E2:  VMRS            APSR_nzcv, FPSCR
3C67E6:  BGT             loc_3C67F6
3C67E8:  VLDR            S2, =-1.5621
3C67EC:  VCMPE.F32       S16, S2
3C67F0:  VMRS            APSR_nzcv, FPSCR
3C67F4:  BGE             loc_3C67FE
3C67F6:  VMOV.F32        S16, S2
3C67FA:  VSTR            S2, [R4,#0x84]
3C67FE:  VMOV            R5, S0
3C6802:  LDR.W           R10, [R7,#arg_4]
3C6806:  MOV             R0, R5; x
3C6808:  BLX             cosf
3C680C:  VMOV            R6, S16
3C6810:  MOV             R8, R0
3C6812:  MOV             R0, R6; x
3C6814:  BLX             cosf
3C6818:  MOV             R9, R0
3C681A:  MOV             R0, R5; x
3C681C:  BLX             sinf
3C6820:  VMOV            S0, R0
3C6824:  MOV             R0, R6; x
3C6826:  VMOV            S2, R9
3C682A:  VMOV            S4, R8
3C682E:  VNMUL.F32       S16, S2, S0
3C6832:  VNMUL.F32       S18, S4, S2
3C6836:  BLX             sinf
3C683A:  ADD.W           R6, R4, #0x168
3C683E:  STR.W           R0, [R4,#0x170]
3C6842:  MOVS            R0, #0
3C6844:  VSTR            S18, [R4,#0x168]
3C6848:  VSTR            S16, [R4,#0x16C]
3C684C:  MOV.W           R1, #0x3F800000
3C6850:  STRD.W          R0, R0, [R4,#0x18C]
3C6854:  MOV             R0, R6; this
3C6856:  STR.W           R1, [R4,#0x194]
3C685A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C685E:  VLDR            S0, [R4,#0x168]
3C6862:  ADD.W           R5, R4, #0x18C
3C6866:  VCMP.F32        S0, #0.0
3C686A:  VMRS            APSR_nzcv, FPSCR
3C686E:  BNE             loc_3C688A
3C6870:  VLDR            S0, [R4,#0x16C]
3C6874:  VCMP.F32        S0, #0.0
3C6878:  VMRS            APSR_nzcv, FPSCR
3C687C:  ITTT EQ
3C687E:  MOVWEQ          R0, #0xB717
3C6882:  MOVTEQ          R0, #0x38D1
3C6886:  STRDEQ.W        R0, R0, [R4,#0x168]
3C688A:  ADD             R0, SP, #0x80+var_50; CVector *
3C688C:  MOV             R1, R6; CVector *
3C688E:  MOV             R2, R5
3C6890:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C6894:  ADD.W           R8, SP, #0x80+var_40
3C6898:  LDR             R0, [SP,#0x80+var_48]
3C689A:  VLDR            D16, [SP,#0x80+var_50]
3C689E:  STR             R0, [SP,#0x80+var_38]
3C68A0:  MOV             R0, R8; this
3C68A2:  VSTR            D16, [SP,#0x80+var_40]
3C68A6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C68AA:  ADD             R0, SP, #0x80+var_50; CVector *
3C68AC:  MOV             R1, R8; CVector *
3C68AE:  MOV             R2, R6
3C68B0:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C68B4:  VLDR            D16, [SP,#0x80+var_50]
3C68B8:  LDR             R0, [SP,#0x80+var_48]
3C68BA:  STR             R0, [R5,#8]
3C68BC:  VSTR            D16, [R5]
3C68C0:  LDRD.W          R0, R1, [R4,#0x168]; float
3C68C4:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3C68C8:  LDR             R1, =(TheCamera_ptr - 0x3C68DA)
3C68CA:  VMOV            S2, R0
3C68CE:  VLDR            S0, =-1.5708
3C68D2:  CMP.W           R10, #1
3C68D6:  ADD             R1, PC; TheCamera_ptr
3C68D8:  VADD.F32        S0, S2, S0
3C68DC:  LDR             R0, [R1]; TheCamera
3C68DE:  LDR.W           R1, [R0,#(dword_952884 - 0x951FA8)]
3C68E2:  ADDW            R1, R1, #0x55C
3C68E6:  VSTR            S0, [R1]
3C68EA:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
3C68EE:  ADD.W           R0, R0, #0x560
3C68F2:  VSTR            S0, [R0]
3C68F6:  BNE.W           loc_3C6AA0
3C68FA:  MOV.W           R0, #0xFFFFFFFF; int
3C68FE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C6902:  MOV             R11, R0
3C6904:  LDR.W           R10, [R11,#0x444]
3C6908:  LDR.W           R0, [R10,#0x94]
3C690C:  CBNZ            R0, loc_3C691A
3C690E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C6914)
3C6910:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C6912:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3C6914:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3C6916:  STR.W           R0, [R10,#0x94]
3C691A:  LDRD.W          R3, R6, [R4,#0x168]
3C691E:  MOVW            LR, #0x999A
3C6922:  LDRD.W          R5, R0, [R4,#0x170]
3C6926:  MOV.W           R12, #0
3C692A:  LDRD.W          R1, R2, [R4,#0x178]
3C692E:  MOVT            LR, #0x3F99
3C6932:  LDR.W           R4, [R10,#0x98]
3C6936:  STRD.W          R6, R5, [SP,#0x80+var_80]
3C693A:  STRD.W          LR, R11, [SP,#0x80+var_78]
3C693E:  STRD.W          R12, R4, [SP,#0x80+var_70]
3C6942:  BLX             j__ZN7CWeapon31PickTargetForHeatSeekingMissileE7CVectorS0_fP7CEntitybS2_; CWeapon::PickTargetForHeatSeekingMissile(CVector,CVector,float,CEntity *,bool,CEntity *)
3C6946:  MOV             R4, R0
3C6948:  CMP             R4, #0
3C694A:  BEQ             loc_3C69EE
3C694C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C6956)
3C694E:  MOV             R2, #0x7FFFFFFF
3C6952:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C6954:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3C6956:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
3C6958:  LDR.W           R0, [R10,#0xA0]
3C695C:  TST             R0, R2
3C695E:  MOV             R2, R1
3C6960:  IT EQ
3C6962:  SUBEQ           R2, #1
3C6964:  CMP.W           R2, #0x3E8
3C6968:  BLS             loc_3C69F2
3C696A:  AND.W           R0, R0, #0x80000000
3C696E:  CMP             R1, #1
3C6970:  IT HI
3C6972:  ORRHI.W         R0, R0, #1
3C6976:  MOVS            R3, #1
3C6978:  STR.W           R0, [R10,#0xA0]
3C697C:  LDR.W           R9, [R11,#0x1C]
3C6980:  LDR.W           R8, [R4,#0x1C]
3C6984:  BIC.W           R0, R9, #1
3C6988:  STR.W           R0, [R11,#0x1C]
3C698C:  LDR             R1, [R4,#0x1C]
3C698E:  LDR             R0, [R4,#0x14]
3C6990:  BIC.W           R1, R1, #1
3C6994:  STR             R1, [R4,#0x1C]
3C6996:  LDR.W           R2, [R11,#0x14]
3C699A:  MOVS            R1, #0
3C699C:  STRD.W          R1, R3, [SP,#0x80+var_80]; bool
3C69A0:  CMP             R0, #0
3C69A2:  STRD.W          R1, R3, [SP,#0x80+var_78]; bool
3C69A6:  MOV.W           R3, #1; bool
3C69AA:  STR             R1, [SP,#0x80+var_70]; bool
3C69AC:  ADD.W           R1, R0, #0x30 ; '0'
3C69B0:  IT EQ
3C69B2:  ADDEQ           R1, R4, #4; CVector *
3C69B4:  ADD.W           R0, R2, #0x30 ; '0'
3C69B8:  CMP             R2, #0
3C69BA:  MOV.W           R2, #(stderr+1); CVector *
3C69BE:  IT EQ
3C69C0:  ADDEQ.W         R0, R11, #4; this
3C69C4:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3C69C8:  LDR.W           R1, [R11,#0x1C]
3C69CC:  BFI.W           R1, R9, #0, #1
3C69D0:  STR.W           R1, [R11,#0x1C]
3C69D4:  LDR             R1, [R4,#0x1C]
3C69D6:  BFI.W           R1, R8, #0, #1
3C69DA:  STR             R1, [R4,#0x1C]
3C69DC:  LDR.W           R1, [R10,#0xA0]
3C69E0:  BIC.W           R1, R1, #0x80000000
3C69E4:  ORR.W           R1, R1, R0,LSL#31
3C69E8:  STR.W           R1, [R10,#0xA0]
3C69EC:  B               loc_3C69F4
3C69EE:  LDR.W           R0, [R10,#0xA0]
3C69F2:  LSRS            R0, R0, #0x1F
3C69F4:  CMP             R0, #0
3C69F6:  IT EQ
3C69F8:  MOVEQ           R4, R0
3C69FA:  CBZ             R4, loc_3C6A4E
3C69FC:  LDR.W           R0, [R10,#0x98]
3C6A00:  CMP             R4, R0
3C6A02:  BEQ             loc_3C6A10
3C6A04:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C6A0A)
3C6A06:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C6A08:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3C6A0A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3C6A0C:  STR.W           R0, [R10,#0x94]
3C6A10:  LDR             R0, [R4,#0x14]
3C6A12:  MOVW            R6, #0x6666
3C6A16:  MOV.W           R12, #1
3C6A1A:  MOVT            R6, #0x3FA6
3C6A1E:  ADD.W           R3, R0, #0x30 ; '0'
3C6A22:  CMP             R0, #0
3C6A24:  IT EQ
3C6A26:  ADDEQ           R3, R4, #4
3C6A28:  MOVS            R5, #0x64 ; 'd'
3C6A2A:  LDM             R3, {R1-R3}
3C6A2C:  MOVS            R0, #0xFF
3C6A2E:  ADD.W           LR, SP, #0x80+var_78
3C6A32:  STRD.W          R0, R0, [SP,#0x80+var_80]
3C6A36:  STM.W           LR, {R0,R5,R6,R12}
3C6A3A:  MOVS            R0, #0
3C6A3C:  BLX             j__ZN14CWeaponEffects10MarkTargetEi7CVectorhhhhfh; CWeaponEffects::MarkTarget(int,CVector,uchar,uchar,uchar,uchar,float,uchar)
3C6A40:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C6A46)
3C6A42:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C6A44:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
3C6A46:  LDR.W           R0, [R10,#0x94]
3C6A4A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3C6A4C:  B               loc_3C6A5C
3C6A4E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C6A54)
3C6A50:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C6A52:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3C6A54:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3C6A56:  STR.W           R0, [R10,#0x94]
3C6A5A:  MOV             R1, R0
3C6A5C:  VMOV.F32        S0, #1.0
3C6A60:  LDR             R2, =(gCrossHair_ptr - 0x3C6A6C)
3C6A62:  SUBS            R0, R1, R0
3C6A64:  MOVW            R1, #0x5DC
3C6A68:  ADD             R2, PC; gCrossHair_ptr
3C6A6A:  CMP             R0, R1
3C6A6C:  VLDR            S2, =0.0
3C6A70:  MOVW            R3, #0x5DD
3C6A74:  LDR             R1, [R2]; gCrossHair
3C6A76:  MOV.W           R2, #0
3C6A7A:  IT HI
3C6A7C:  VMOVHI.F32      S2, S0
3C6A80:  CMP             R0, R3
3C6A82:  MOV.W           R0, #0
3C6A86:  MOV.W           R3, #0xFF
3C6A8A:  IT CC
3C6A8C:  MOVCC.W         R0, #0xFFFFFFFF
3C6A90:  STRB            R0, [R1,#(dword_A86220+1 - 0xA8620C)]
3C6A92:  STRB            R3, [R1,#(dword_A86220 - 0xA8620C)]
3C6A94:  STRB            R0, [R1,#(dword_A86220+2 - 0xA8620C)]
3C6A96:  STR             R2, [R1,#(dword_A86210 - 0xA8620C)]
3C6A98:  VSTR            S2, [R1,#0x24]
3C6A9C:  STR.W           R4, [R10,#0x98]
3C6AA0:  LDR             R0, =(Scene_ptr - 0x3C6AAE)
3C6AA2:  MOV             R1, #0x3E19999A
3C6AAA:  ADD             R0, PC; Scene_ptr
3C6AAC:  LDR             R0, [R0]; Scene
3C6AAE:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C6AB0:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C6AB4:  ADD             SP, SP, #0x50 ; 'P'
3C6AB6:  VPOP            {D8-D9}
3C6ABA:  ADD             SP, SP, #4
3C6ABC:  POP.W           {R8-R11}
3C6AC0:  POP             {R4-R7,PC}
