; =========================================================
; Game Engine Function: _ZN8CMirrors25BeforeConstructRenderListEv
; Address            : 0x5C460C - 0x5C48CA
; =========================================================

5C460C:  LDR             R0, =(_ZN8CMirrors11d3dRestoredE_ptr - 0x5C4612)
5C460E:  ADD             R0, PC; _ZN8CMirrors11d3dRestoredE_ptr
5C4610:  LDR             R0, [R0]; CMirrors::d3dRestored ...
5C4612:  LDRB            R0, [R0]; CMirrors::d3dRestored
5C4614:  CBZ             R0, loc_5C4630
5C4616:  LDR             R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x5C4622)
5C4618:  MOVS            R3, #0
5C461A:  LDR             R1, =(_ZN8CMirrors11d3dRestoredE_ptr - 0x5C4624)
5C461C:  LDR             R2, =(_ZN8CMirrors11MirrorFlagsE_ptr - 0x5C4626)
5C461E:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
5C4620:  ADD             R1, PC; _ZN8CMirrors11d3dRestoredE_ptr
5C4622:  ADD             R2, PC; _ZN8CMirrors11MirrorFlagsE_ptr
5C4624:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
5C4626:  LDR             R1, [R1]; CMirrors::d3dRestored ...
5C4628:  LDR             R2, [R2]; CMirrors::MirrorFlags ...
5C462A:  STR             R3, [R0]; CMirrors::TypeOfMirror
5C462C:  STRB            R3, [R1]; CMirrors::d3dRestored
5C462E:  STR             R3, [R2]; CMirrors::MirrorFlags
5C4630:  PUSH            {R4-R7,LR}
5C4632:  ADD             R7, SP, #0xC
5C4634:  PUSH.W          {R8-R10}
5C4638:  VPUSH           {D8}
5C463C:  SUB             SP, SP, #0x58
5C463E:  MOV.W           R0, #0xFFFFFFFF; int
5C4642:  MOVS            R1, #0; bool
5C4644:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5C4648:  CBZ             R0, loc_5C4656
5C464A:  LDR.W           R0, [R0,#0x5A4]
5C464E:  SUBS            R0, #3
5C4650:  CMP             R0, #2
5C4652:  BCC.W           loc_5C479A
5C4656:  LDR             R0, =(TheCamera_ptr - 0x5C465C)
5C4658:  ADD             R0, PC; TheCamera_ptr
5C465A:  LDR             R0, [R0]; TheCamera
5C465C:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5C465E:  ADD.W           R2, R1, #0x30 ; '0'
5C4662:  CMP             R1, #0
5C4664:  IT EQ
5C4666:  ADDEQ           R2, R0, #4
5C4668:  LDM             R2, {R0-R2}
5C466A:  BLX.W           j__ZN10CCullZones28FindMirrorAttributesForCoorsE7CVector; CCullZones::FindMirrorAttributesForCoors(CVector)
5C466E:  MOV             R4, R0
5C4670:  CMP             R4, #0
5C4672:  BEQ.W           loc_5C479A
5C4676:  LDRB            R0, [R4,#0x17]
5C4678:  TST.W           R0, #2
5C467C:  BEQ.W           loc_5C47B6
5C4680:  LDR             R1, =(Screens8Track_ptr - 0x5C4690)
5C4682:  VMOV.F32        S16, #0.25
5C4686:  LDR             R0, =(TheCamera_ptr - 0x5C4696)
5C4688:  ADD.W           R8, SP, #0x78+var_68
5C468C:  ADD             R1, PC; Screens8Track_ptr
5C468E:  MOV.W           R10, #0
5C4692:  ADD             R0, PC; TheCamera_ptr
5C4694:  MOV.W           R2, #0x41000000; float
5C4698:  LDR             R6, [R1]; Screens8Track
5C469A:  MOV             R1, R8; CVector *
5C469C:  LDR             R5, [R0]; TheCamera
5C469E:  VLDR            S0, [R6]
5C46A2:  VLDR            S6, [R6,#0xC]
5C46A6:  MOV             R0, R5; this
5C46A8:  VLDR            S2, [R6,#4]
5C46AC:  VLDR            S8, [R6,#0x10]
5C46B0:  VADD.F32        S0, S0, S6
5C46B4:  VLDR            S4, [R6,#8]
5C46B8:  VLDR            S10, [R6,#0x14]
5C46BC:  VADD.F32        S2, S2, S8
5C46C0:  VLDR            S12, [R6,#0x18]
5C46C4:  VADD.F32        S4, S4, S10
5C46C8:  VLDR            S14, [R6,#0x1C]
5C46CC:  VLDR            S6, [R6,#0x20]
5C46D0:  VLDR            S8, [R6,#0x24]
5C46D4:  VADD.F32        S0, S0, S12
5C46D8:  VLDR            S10, [R6,#0x28]
5C46DC:  VLDR            S1, [R6,#0x2C]
5C46E0:  VADD.F32        S2, S2, S14
5C46E4:  STRB.W          R10, [R5,#(byte_95289C - 0x951FA8)]
5C46E8:  VADD.F32        S4, S4, S6
5C46EC:  VADD.F32        S0, S0, S8
5C46F0:  VADD.F32        S2, S2, S10
5C46F4:  VADD.F32        S4, S4, S1
5C46F8:  VMUL.F32        S0, S0, S16
5C46FC:  VMUL.F32        S2, S2, S16
5C4700:  VMUL.F32        S4, S4, S16
5C4704:  VSTR            S0, [SP,#0x78+var_68]
5C4708:  VSTR            S2, [SP,#0x78+var_64]
5C470C:  VSTR            S4, [SP,#0x78+var_60]
5C4710:  BLX.W           j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
5C4714:  VLDR            S0, [R6,#0x30]
5C4718:  MOV             R9, R0
5C471A:  VLDR            S6, [R6,#0x3C]
5C471E:  MOV             R0, R5; this
5C4720:  VLDR            S2, [R6,#0x34]
5C4724:  MOV             R1, R8; CVector *
5C4726:  VLDR            S8, [R6,#0x40]
5C472A:  VADD.F32        S0, S0, S6
5C472E:  VLDR            S4, [R6,#0x38]
5C4732:  MOV.W           R2, #0x41000000; float
5C4736:  VLDR            S10, [R6,#0x44]
5C473A:  VADD.F32        S2, S2, S8
5C473E:  VLDR            S12, [R6,#0x48]
5C4742:  VADD.F32        S4, S4, S10
5C4746:  VLDR            S14, [R6,#0x4C]
5C474A:  VLDR            S6, [R6,#0x50]
5C474E:  VLDR            S8, [R6,#0x54]
5C4752:  VADD.F32        S0, S0, S12
5C4756:  VLDR            S10, [R6,#0x58]
5C475A:  VLDR            S1, [R6,#0x5C]
5C475E:  VADD.F32        S2, S2, S14
5C4762:  STRB.W          R10, [R5,#(byte_95289C - 0x951FA8)]
5C4766:  VADD.F32        S4, S4, S6
5C476A:  VADD.F32        S0, S0, S8
5C476E:  VADD.F32        S2, S2, S10
5C4772:  VADD.F32        S4, S4, S1
5C4776:  VMUL.F32        S0, S0, S16
5C477A:  VMUL.F32        S2, S2, S16
5C477E:  VMUL.F32        S4, S4, S16
5C4782:  VSTR            S0, [SP,#0x78+var_68]
5C4786:  VSTR            S2, [SP,#0x78+var_64]
5C478A:  VSTR            S4, [SP,#0x78+var_60]
5C478E:  BLX.W           j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
5C4792:  CBNZ            R0, loc_5C47B4
5C4794:  CMP.W           R9, #1
5C4798:  BEQ             loc_5C47B4
5C479A:  LDR             R0, =(_ZN8CMirrors11MirrorFlagsE_ptr - 0x5C47A4)
5C479C:  MOVS            R4, #0
5C479E:  LDR             R1, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x5C47A6)
5C47A0:  ADD             R0, PC; _ZN8CMirrors11MirrorFlagsE_ptr
5C47A2:  ADD             R1, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
5C47A4:  LDR             R0, [R0]; CMirrors::MirrorFlags ...
5C47A6:  LDR             R1, [R1]; CMatrix *
5C47A8:  STR             R4, [R0]; CMirrors::MirrorFlags
5C47AA:  MOVS            R0, #1
5C47AC:  STR             R4, [R1]; CMirrors::TypeOfMirror
5C47AE:  CMP             R0, #1
5C47B0:  BEQ             loc_5C4844
5C47B2:  B               loc_5C487E
5C47B4:  LDRB            R0, [R4,#0x17]
5C47B6:  LDR             R1, =(_ZN8CMirrors7MirrorVE_ptr - 0x5C47C0)
5C47B8:  SXTB            R0, R0
5C47BA:  LDR             R2, [R4,#0x10]
5C47BC:  ADD             R1, PC; _ZN8CMirrors7MirrorVE_ptr
5C47BE:  VLDR            S2, =100.0
5C47C2:  VLDR            S8, =0.7
5C47C6:  LDR             R1, [R1]; CMirrors::MirrorV ...
5C47C8:  LDR             R3, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x5C47D0)
5C47CA:  STR             R2, [R1]; CMirrors::MirrorV
5C47CC:  ADD             R3, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
5C47CE:  LDRSB.W         R1, [R4,#0x16]
5C47D2:  VMOV            S0, R1
5C47D6:  VCVT.F32.S32    S0, S0
5C47DA:  LDRSB.W         R1, [R4,#0x15]
5C47DE:  LDRSB.W         R2, [R4,#0x14]
5C47E2:  MOVS            R4, #1
5C47E4:  VMOV            S4, R1
5C47E8:  LDR             R1, =(_ZN8CMirrors11MirrorFlagsE_ptr - 0x5C47F8)
5C47EA:  VMOV            S6, R2
5C47EE:  LDR             R2, =(_ZN8CMirrors12MirrorNormalE_ptr - 0x5C47FE)
5C47F0:  VCVT.F32.S32    S4, S4
5C47F4:  ADD             R1, PC; _ZN8CMirrors11MirrorFlagsE_ptr
5C47F6:  VCVT.F32.S32    S6, S6
5C47FA:  ADD             R2, PC; _ZN8CMirrors12MirrorNormalE_ptr
5C47FC:  VDIV.F32        S0, S0, S2
5C4800:  LDR             R5, [R1]; CMirrors::MirrorFlags ...
5C4802:  LDR             R1, [R2]; CMirrors::MirrorNormal ...
5C4804:  LDR             R2, [R3]; CMirrors::TypeOfMirror ...
5C4806:  STR             R0, [R5]; CMirrors::MirrorFlags
5C4808:  MOVS            R0, #1
5C480A:  VDIV.F32        S4, S4, S2
5C480E:  VDIV.F32        S2, S6, S2
5C4812:  VABS.F32        S6, S0
5C4816:  VSTR            S2, [R1]
5C481A:  VSTR            S4, [R1,#4]
5C481E:  VSTR            S0, [R1,#8]
5C4822:  VCMPE.F32       S6, S8
5C4826:  VMRS            APSR_nzcv, FPSCR
5C482A:  IT GT
5C482C:  MOVGT           R0, #(stderr+2); this
5C482E:  STR             R0, [R2]; CMirrors::TypeOfMirror
5C4830:  BLX.W           j__ZN8CMirrors12CreateBufferEv; CMirrors::CreateBuffer(void)
5C4834:  LDRB            R0, [R5]; CMirrors::MirrorFlags
5C4836:  LSLS            R0, R0, #0x1E
5C4838:  MOV.W           R0, #0
5C483C:  IT PL
5C483E:  MOVPL           R0, #1
5C4840:  CMP             R0, #1
5C4842:  BNE             loc_5C487E
5C4844:  LDR             R0, =(bFudgeNow_ptr - 0x5C484A)
5C4846:  ADD             R0, PC; bFudgeNow_ptr
5C4848:  LDR             R0, [R0]; bFudgeNow
5C484A:  LDRB            R0, [R0]
5C484C:  CBNZ            R0, loc_5C487E
5C484E:  LDR             R0, =(_ZN8CMirrors12MirrorNormalE_ptr - 0x5C4858)
5C4850:  MOVS            R6, #0
5C4852:  LDR             R1, =(_ZN8CMirrors7MirrorVE_ptr - 0x5C485E)
5C4854:  ADD             R0, PC; _ZN8CMirrors12MirrorNormalE_ptr
5C4856:  LDR.W           R12, =(TheCamera_ptr - 0x5C4862)
5C485A:  ADD             R1, PC; _ZN8CMirrors7MirrorVE_ptr
5C485C:  LDR             R0, [R0]; CMirrors::MirrorNormal ...
5C485E:  ADD             R12, PC; TheCamera_ptr
5C4860:  LDR             R1, [R1]; CMirrors::MirrorV ...
5C4862:  LDM.W           R0, {R2,R3,R5}; CMirrors::MirrorNormal
5C4866:  LDR.W           R0, [R12]; TheCamera
5C486A:  VLDR            S0, [R1]
5C486E:  MOV             R1, R4
5C4870:  STR             R6, [SP,#0x78+var_70]
5C4872:  VSTR            S0, [SP,#0x78+var_74]
5C4876:  STR             R5, [SP,#0x78+var_78]
5C4878:  BLX.W           j__ZN7CCamera39DealWithMirrorBeforeConstructRenderListEb7CVectorfP7CMatrix; CCamera::DealWithMirrorBeforeConstructRenderList(bool,CVector,float,CMatrix *)
5C487C:  B               loc_5C48BE
5C487E:  ADD             R5, SP, #0x78+var_68
5C4880:  MOVS            R0, #0
5C4882:  STRD.W          R0, R0, [SP,#0x78+var_28]
5C4886:  MOV             R0, R5; this
5C4888:  BLX.W           j__ZN8CMirrors27BuildCameraMatrixForScreensEP7CMatrix; CMirrors::BuildCameraMatrixForScreens(CMatrix *)
5C488C:  LDR             R0, =(_ZN8CMirrors12MirrorNormalE_ptr - 0x5C4894)
5C488E:  LDR             R1, =(_ZN8CMirrors7MirrorVE_ptr - 0x5C489A)
5C4890:  ADD             R0, PC; _ZN8CMirrors12MirrorNormalE_ptr
5C4892:  LDR.W           R12, =(TheCamera_ptr - 0x5C489E)
5C4896:  ADD             R1, PC; _ZN8CMirrors7MirrorVE_ptr
5C4898:  LDR             R0, [R0]; CMirrors::MirrorNormal ...
5C489A:  ADD             R12, PC; TheCamera_ptr
5C489C:  LDR             R1, [R1]; CMirrors::MirrorV ...
5C489E:  LDM.W           R0, {R2,R3,R6}; CMirrors::MirrorNormal
5C48A2:  LDR.W           R0, [R12]; TheCamera
5C48A6:  VLDR            S0, [R1]
5C48AA:  MOV             R1, R4
5C48AC:  STR             R5, [SP,#0x78+var_70]
5C48AE:  VSTR            S0, [SP,#0x78+var_74]
5C48B2:  STR             R6, [SP,#0x78+var_78]
5C48B4:  BLX.W           j__ZN7CCamera39DealWithMirrorBeforeConstructRenderListEb7CVectorfP7CMatrix; CCamera::DealWithMirrorBeforeConstructRenderList(bool,CVector,float,CMatrix *)
5C48B8:  MOV             R0, R5; this
5C48BA:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5C48BE:  ADD             SP, SP, #0x58 ; 'X'
5C48C0:  VPOP            {D8}
5C48C4:  POP.W           {R8-R10}
5C48C8:  POP             {R4-R7,PC}
