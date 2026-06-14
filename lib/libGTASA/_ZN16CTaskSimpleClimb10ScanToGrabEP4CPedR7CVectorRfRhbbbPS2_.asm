; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_
; Address            : 0x52F6E0 - 0x52FAA8
; =========================================================

52F6E0:  PUSH            {R4-R7,LR}
52F6E2:  ADD             R7, SP, #0xC
52F6E4:  PUSH.W          {R8-R11}
52F6E8:  SUB             SP, SP, #4
52F6EA:  VPUSH           {D8-D12}
52F6EE:  SUB             SP, SP, #0xC0
52F6F0:  MOV             R6, R0
52F6F2:  LDR.W           R0, =(_ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr - 0x52F6FE)
52F6F6:  STRD.W          R3, R2, [SP,#0x108+var_B8]
52F6FA:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr
52F6FC:  STR             R1, [SP,#0x108+var_AC]
52F6FE:  LDR.W           R9, [R7,#arg_C]
52F702:  LDR             R0, [R0]; CTaskSimpleClimb::ms_ClimbColModel ...
52F704:  LDR             R0, [R0,#(dword_9FF770 - 0x9FF744)]; this
52F706:  CMP             R0, #0
52F708:  IT EQ
52F70A:  BLXEQ           j__ZN16CTaskSimpleClimb14CreateColModelEv; CTaskSimpleClimb::CreateColModel(void)
52F70E:  LDR             R1, [R6,#0x14]
52F710:  ADDS            R0, R6, #4
52F712:  ADD.W           R3, R1, #0x30 ; '0'
52F716:  CMP             R1, #0
52F718:  MOV             R2, R3
52F71A:  IT EQ
52F71C:  MOVEQ           R2, R0
52F71E:  CMP.W           R9, #0
52F722:  LDR             R5, [R2]
52F724:  STR             R5, [SP,#0x108+var_EC]
52F726:  LDR             R4, [R2,#4]
52F728:  STR             R4, [SP,#0x108+var_E8]
52F72A:  LDR             R2, [R2,#8]
52F72C:  STR             R2, [SP,#0x108+var_E4]
52F72E:  BEQ             loc_52F750
52F730:  LDM.W           R9, {R2,R4,R12}
52F734:  CBZ             R1, loc_52F742
52F736:  STR             R2, [R3]
52F738:  LDR             R1, [R6,#0x14]
52F73A:  STR             R4, [R1,#0x34]
52F73C:  LDR             R1, [R6,#0x14]
52F73E:  ADDS            R1, #0x38 ; '8'
52F740:  B               loc_52F74A
52F742:  ADD.W           R1, R6, #0xC
52F746:  STRD.W          R2, R4, [R6,#4]
52F74A:  STR.W           R12, [R1]
52F74E:  LDR             R1, [R6,#0x14]
52F750:  CMP             R1, #0
52F752:  VMOV.F32        S0, #10.0
52F756:  IT NE
52F758:  ADDNE.W         R0, R1, #0x30 ; '0'
52F75C:  LDR             R1, [SP,#0x108+var_AC]
52F75E:  VLDR            D16, [R0]
52F762:  LDR             R0, [R0,#8]
52F764:  STR             R0, [R1,#8]
52F766:  VSTR            D16, [R1]
52F76A:  LDR             R0, [R6,#0x14]
52F76C:  VLDR            S8, [R1,#4]
52F770:  VLDR            S10, [R1,#8]
52F774:  VLDR            S2, [R0,#0x10]
52F778:  VLDR            S4, [R0,#0x14]
52F77C:  VLDR            S6, [R0,#0x18]
52F780:  VMUL.F32        S2, S2, S0
52F784:  VMUL.F32        S4, S4, S0
52F788:  LDR             R0, =(_ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr - 0x52F796)
52F78A:  VMUL.F32        S0, S6, S0
52F78E:  VLDR            S6, [R1]
52F792:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr
52F794:  LDR             R4, [R0]; CTaskSimpleClimb::ms_ClimbColModel ...
52F796:  ADD             R0, SP, #0x108+var_54
52F798:  VADD.F32        S2, S2, S6
52F79C:  ADD.W           R2, R4, #0x18
52F7A0:  VADD.F32        S4, S4, S8
52F7A4:  VADD.F32        S0, S0, S10
52F7A8:  VSTR            S2, [R1]
52F7AC:  VSTR            S4, [R1,#4]
52F7B0:  VSTR            S0, [R1,#8]
52F7B4:  LDR             R1, [R6,#0x14]
52F7B6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52F7BA:  VLDR            S16, [SP,#0x108+var_54]
52F7BE:  VLDR            S20, [R4,#0x24]
52F7C2:  VLDR            S22, =50.0
52F7C6:  VSUB.F32        S0, S16, S20
52F7CA:  VLDR            S24, =60.0
52F7CE:  VLDR            S18, [SP,#0x108+var_50]
52F7D2:  VDIV.F32        S0, S0, S22
52F7D6:  VADD.F32        S0, S0, S24
52F7DA:  VMOV            R0, S0; x
52F7DE:  BLX             floorf
52F7E2:  VSUB.F32        S0, S18, S20
52F7E6:  MOV             R10, R0
52F7E8:  VDIV.F32        S0, S0, S22
52F7EC:  VADD.F32        S0, S0, S24
52F7F0:  VMOV            R0, S0; x
52F7F4:  BLX             floorf
52F7F8:  VADD.F32        S0, S20, S18
52F7FC:  LDR.W           R8, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x52F80C)
52F800:  VADD.F32        S2, S16, S20
52F804:  VMOV            S20, R0
52F808:  ADD             R8, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
52F80A:  VMOV            S18, R10
52F80E:  VDIV.F32        S0, S0, S22
52F812:  VADD.F32        S0, S0, S24
52F816:  VDIV.F32        S2, S2, S22
52F81A:  VMOV            R1, S0
52F81E:  VADD.F32        S2, S2, S24
52F822:  VMOV            R4, S2
52F826:  MOV             R0, R1; x
52F828:  BLX             floorf
52F82C:  VMOV            S16, R0
52F830:  MOV             R0, R4; x
52F832:  BLX             floorf
52F836:  VMOV            S0, R0
52F83A:  LDR.W           R0, [R8]; CWorld::ms_nCurrentScanCode ...
52F83E:  VCVT.S32.F32    S2, S16
52F842:  MOVW            R1, #0xFFFF
52F846:  VCVT.S32.F32    S16, S0
52F84A:  VCVT.S32.F32    S0, S20
52F84E:  LDRH            R0, [R0]; this
52F850:  VCVT.S32.F32    S18, S18
52F854:  STR             R6, [SP,#0x108+var_B0]
52F856:  CMP             R0, R1
52F858:  VMOV            R4, S2
52F85C:  VMOV            R5, S0
52F860:  BEQ             loc_52F866
52F862:  ADDS            R0, #1
52F864:  B               loc_52F86C
52F866:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
52F86A:  MOVS            R0, #1
52F86C:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x52F872)
52F86E:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
52F870:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
52F872:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
52F874:  MOVS            R0, #0
52F876:  MOV             R1, R5
52F878:  CMP             R1, R4
52F87A:  STR             R0, [SP,#0x108+var_D0]
52F87C:  BLE             loc_52F8A0
52F87E:  CMP.W           R9, #0
52F882:  BEQ.W           loc_52FA0A
52F886:  LDR             R2, [SP,#0x108+var_B0]
52F888:  LDR             R0, [R2,#0x14]
52F88A:  CMP             R0, #0
52F88C:  BEQ.W           loc_52F9FA
52F890:  LDR             R1, [SP,#0x108+var_EC]
52F892:  STR             R1, [R0,#0x30]
52F894:  LDR             R0, [R2,#0x14]
52F896:  LDR             R1, [SP,#0x108+var_E8]
52F898:  STR             R1, [R0,#0x34]
52F89A:  LDR             R0, [R2,#0x14]
52F89C:  ADDS            R0, #0x38 ; '8'
52F89E:  B               loc_52FA06
52F8A0:  LDRD.W          R3, R0, [R7,#arg_4]
52F8A4:  VMOV            R2, S18
52F8A8:  VMOV            R6, S16
52F8AC:  CMP.W           R9, #0
52F8B0:  ORR.W           R3, R3, R0
52F8B4:  MOV             R0, R9
52F8B6:  IT NE
52F8B8:  MOVNE           R0, #1
52F8BA:  STR             R3, [SP,#0x108+var_D8]
52F8BC:  ANDS            R0, R3
52F8BE:  STR             R0, [SP,#0x108+var_D4]
52F8C0:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x52F8C6)
52F8C2:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
52F8C4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
52F8C6:  STR             R0, [SP,#0x108+var_C4]
52F8C8:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x52F8CE)
52F8CA:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
52F8CC:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
52F8CE:  STR             R0, [SP,#0x108+var_C8]
52F8D0:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x52F8D6)
52F8D2:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
52F8D4:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
52F8D6:  STR             R0, [SP,#0x108+var_DC]
52F8D8:  STRD.W          R2, R4, [SP,#0x108+var_F4]
52F8DC:  STR             R6, [SP,#0x108+var_CC]
52F8DE:  LDRD.W          R5, R8, [SP,#0x108+var_B8]
52F8E2:  CMP             R2, R6
52F8E4:  STR             R1, [SP,#0x108+var_E0]
52F8E6:  BGT             loc_52F9CC
52F8E8:  CMP             R1, #0
52F8EA:  MOV.W           R0, #0
52F8EE:  IT GT
52F8F0:  MOVGT           R0, R1
52F8F2:  MOVS            R3, #0x77 ; 'w'
52F8F4:  CMP             R0, #0x77 ; 'w'
52F8F6:  MOV             R9, R2
52F8F8:  IT GE
52F8FA:  MOVGE           R0, R3
52F8FC:  RSB.W           R0, R0, R0,LSL#4
52F900:  LSLS            R0, R0, #3
52F902:  STR             R0, [SP,#0x108+var_BC]
52F904:  LSLS            R0, R1, #4
52F906:  UXTB            R0, R0
52F908:  STR             R0, [SP,#0x108+var_C0]
52F90A:  LDR             R0, [R7,#arg_0]
52F90C:  CMP.W           R9, #0
52F910:  STR             R5, [SP,#0x108+var_108]; float *
52F912:  MOV.W           R1, #0x77 ; 'w'
52F916:  STR             R0, [SP,#0x108+var_104]; unsigned __int8 *
52F918:  MOV             R3, R8; CVector *
52F91A:  LDR             R0, [R7,#arg_4]
52F91C:  STR             R0, [SP,#0x108+var_100]; bool
52F91E:  LDR             R0, [R7,#arg_8]
52F920:  MOV             R10, R0
52F922:  MOV.W           R0, #0
52F926:  STR.W           R10, [SP,#0x108+var_FC]; bool
52F92A:  IT GT
52F92C:  MOVGT           R0, R9
52F92E:  CMP             R0, #0x77 ; 'w'
52F930:  IT GE
52F932:  MOVGE           R0, R1
52F934:  LDR             R1, [SP,#0x108+var_BC]
52F936:  LDR             R6, [SP,#0x108+var_AC]
52F938:  ADD             R0, R1
52F93A:  LDR             R1, [SP,#0x108+var_C4]
52F93C:  LDR.W           R11, [SP,#0x108+var_B0]
52F940:  ADD.W           R0, R1, R0,LSL#3; this
52F944:  MOV             R2, R6; CPed *
52F946:  MOV             R1, R11; CPtrList *
52F948:  BLX             j__ZN16CTaskSimpleClimb20ScanToGrabSectorListER8CPtrListP4CPedR7CVectorRfRhbbb; CTaskSimpleClimb::ScanToGrabSectorList(CPtrList &,CPed *,CVector &,float &,uchar &,bool,bool,bool)
52F94C:  MOV             R4, R0
52F94E:  LDR             R0, [R7,#arg_0]
52F950:  STR             R5, [SP,#0x108+var_108]; float *
52F952:  MOV             R2, R6; CPed *
52F954:  STR             R0, [SP,#0x108+var_104]; unsigned __int8 *
52F956:  MOV             R3, R8; CVector *
52F958:  LDR             R0, [R7,#arg_4]
52F95A:  STRD.W          R0, R10, [SP,#0x108+var_100]; bool
52F95E:  AND.W           R0, R9, #0xF
52F962:  LDR             R1, [SP,#0x108+var_C0]
52F964:  ORRS            R0, R1
52F966:  MOV             R1, R11; CPtrList *
52F968:  ADD.W           R10, R0, R0,LSL#1
52F96C:  LDR             R0, [SP,#0x108+var_C8]
52F96E:  ADD.W           R0, R0, R10,LSL#2
52F972:  ADDS            R0, #8; this
52F974:  BLX             j__ZN16CTaskSimpleClimb20ScanToGrabSectorListER8CPtrListP4CPedR7CVectorRfRhbbb; CTaskSimpleClimb::ScanToGrabSectorList(CPtrList &,CPed *,CVector &,float &,uchar &,bool,bool,bool)
52F978:  MOV             R1, R0
52F97A:  CBNZ            R1, loc_52F99E
52F97C:  LDR             R0, [SP,#0x108+var_B8]
52F97E:  STR             R0, [SP,#0x108+var_108]; float *
52F980:  LDR             R0, [R7,#arg_0]
52F982:  STR             R0, [SP,#0x108+var_104]; unsigned __int8 *
52F984:  LDR             R0, [R7,#arg_4]
52F986:  STR             R0, [SP,#0x108+var_100]; bool
52F988:  LDR             R0, [R7,#arg_8]
52F98A:  STR             R0, [SP,#0x108+var_FC]; bool
52F98C:  LDR             R0, [SP,#0x108+var_DC]
52F98E:  LDR             R2, [SP,#0x108+var_AC]; CPed *
52F990:  LDRD.W          R3, R1, [SP,#0x108+var_B4]; CVector *
52F994:  ADD.W           R0, R0, R10,LSL#2; this
52F998:  BLX             j__ZN16CTaskSimpleClimb20ScanToGrabSectorListER8CPtrListP4CPedR7CVectorRfRhbbb; CTaskSimpleClimb::ScanToGrabSectorList(CPtrList &,CPed *,CVector &,float &,uchar &,bool,bool,bool)
52F99C:  MOV             R1, R0
52F99E:  MOVS            R0, #0
52F9A0:  CMP             R4, #1
52F9A2:  BEQ             loc_52FA9A
52F9A4:  LDR             R6, [SP,#0x108+var_CC]
52F9A6:  CMP             R1, #1
52F9A8:  BEQ             loc_52FA9A
52F9AA:  CMP             R1, #0
52F9AC:  IT NE
52F9AE:  MOVNE           R4, R1
52F9B0:  CBZ             R4, loc_52F9C2
52F9B2:  LDR             R0, [SP,#0x108+var_D4]
52F9B4:  CMP             R0, #1
52F9B6:  BEQ             loc_52F9E2
52F9B8:  LDR             R0, [SP,#0x108+var_D8]
52F9BA:  STR             R4, [SP,#0x108+var_D0]
52F9BC:  CMP             R0, #0
52F9BE:  MOV             R0, R4
52F9C0:  BNE             loc_52FA9A
52F9C2:  ADD.W           R0, R9, #1
52F9C6:  CMP             R9, R6
52F9C8:  MOV             R9, R0
52F9CA:  BLT             loc_52F90A
52F9CC:  LDR             R1, [SP,#0x108+var_E0]
52F9CE:  LDR             R4, [SP,#0x108+var_F0]
52F9D0:  ADDS            R0, R1, #1
52F9D2:  LDR.W           R9, [R7,#arg_C]
52F9D6:  LDR             R2, [SP,#0x108+var_F4]
52F9D8:  CMP             R1, R4
52F9DA:  MOV             R1, R0
52F9DC:  BLT.W           loc_52F8E2
52F9E0:  B               loc_52F87E
52F9E2:  LDR             R2, [SP,#0x108+var_B0]
52F9E4:  LDR             R0, [R2,#0x14]
52F9E6:  CMP             R0, #0
52F9E8:  BEQ             loc_52FA88
52F9EA:  LDR             R1, [SP,#0x108+var_EC]
52F9EC:  STR             R1, [R0,#0x30]
52F9EE:  LDR             R0, [R2,#0x14]
52F9F0:  LDR             R1, [SP,#0x108+var_E8]
52F9F2:  STR             R1, [R0,#0x34]
52F9F4:  LDR             R0, [R2,#0x14]
52F9F6:  ADDS            R0, #0x38 ; '8'
52F9F8:  B               loc_52FA94
52F9FA:  LDR             R0, [SP,#0x108+var_EC]
52F9FC:  STR             R0, [R2,#4]
52F9FE:  LDR             R0, [SP,#0x108+var_E8]
52FA00:  STR             R0, [R2,#8]
52FA02:  ADD.W           R0, R2, #0xC
52FA06:  LDR             R1, [SP,#0x108+var_E4]
52FA08:  STR             R1, [R0]
52FA0A:  LDR             R5, [SP,#0x108+var_D0]
52FA0C:  CBZ             R5, loc_52FA6E
52FA0E:  LDRB.W          R0, [R5,#0x3A]
52FA12:  AND.W           R0, R0, #7
52FA16:  SUBS            R0, #2
52FA18:  UXTB            R0, R0
52FA1A:  CMP             R0, #2
52FA1C:  BHI             loc_52FA84
52FA1E:  LDR             R1, [R5,#0x14]
52FA20:  CBNZ            R1, loc_52FA32
52FA22:  MOV             R0, R5; this
52FA24:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
52FA28:  LDR             R1, [R5,#0x14]; CMatrix *
52FA2A:  ADDS            R0, R5, #4; this
52FA2C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
52FA30:  LDR             R1, [R5,#0x14]
52FA32:  ADD             R4, SP, #0x108+var_A8
52FA34:  MOV             R0, R4; CMatrix *
52FA36:  BLX             j__Z6InvertRK7CMatrix; Invert(CMatrix const&)
52FA3A:  LDR             R6, [SP,#0x108+var_AC]
52FA3C:  ADD             R0, SP, #0x108+var_60
52FA3E:  MOV             R1, R4
52FA40:  MOV             R2, R6
52FA42:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52FA46:  VLDR            D16, [SP,#0x108+var_60]
52FA4A:  LDR             R0, [SP,#0x108+var_58]
52FA4C:  STR             R0, [R6,#8]
52FA4E:  MOV             R0, R4; this
52FA50:  VSTR            D16, [R6]
52FA54:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
52FA58:  LDR             R0, [R5,#0x14]
52FA5A:  CBZ             R0, loc_52FA72
52FA5C:  LDRD.W          R2, R1, [R0,#0x10]; x
52FA60:  EOR.W           R0, R2, #0x80000000; y
52FA64:  BLX             atan2f
52FA68:  VMOV            S0, R0
52FA6C:  B               loc_52FA76
52FA6E:  MOVS            R0, #0
52FA70:  B               loc_52FA9A
52FA72:  VLDR            S0, [R5,#0x10]
52FA76:  LDR             R0, [SP,#0x108+var_B4]
52FA78:  VLDR            S2, [R0]
52FA7C:  VSUB.F32        S0, S2, S0
52FA80:  VSTR            S0, [R0]
52FA84:  MOV             R0, R5
52FA86:  B               loc_52FA9A
52FA88:  LDR             R0, [SP,#0x108+var_EC]
52FA8A:  STR             R0, [R2,#4]
52FA8C:  LDR             R0, [SP,#0x108+var_E8]
52FA8E:  STR             R0, [R2,#8]
52FA90:  ADD.W           R0, R2, #0xC
52FA94:  LDR             R1, [SP,#0x108+var_E4]
52FA96:  STR             R1, [R0]
52FA98:  MOV             R0, R4
52FA9A:  ADD             SP, SP, #0xC0
52FA9C:  VPOP            {D8-D12}
52FAA0:  ADD             SP, SP, #4
52FAA2:  POP.W           {R8-R11}
52FAA6:  POP             {R4-R7,PC}
