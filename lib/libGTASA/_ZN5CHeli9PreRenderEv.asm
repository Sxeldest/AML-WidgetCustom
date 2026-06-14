; =========================================================
; Game Engine Function: _ZN5CHeli9PreRenderEv
; Address            : 0x572804 - 0x572C30
; =========================================================

572804:  PUSH            {R4-R7,LR}
572806:  ADD             R7, SP, #0xC
572808:  PUSH.W          {R8-R11}
57280C:  SUB             SP, SP, #4
57280E:  VPUSH           {D8-D12}
572812:  SUB             SP, SP, #0x68
572814:  MOV             R4, R0
572816:  BLX             j__ZN8CVehicle9PreRenderEv; CVehicle::PreRender(void)
57281A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x572826)
57281E:  LDRSH.W         R1, [R4,#0x26]
572822:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
572824:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
572826:  LDR.W           R9, [R0,R1,LSL#2]
57282A:  MOVS            R0, #0
57282C:  STRD.W          R0, R0, [SP,#0xB0+var_50]
572830:  LDRB.W          R0, [R4,#0xA25]
572834:  CMP             R0, #0
572836:  BEQ             loc_5728D2
572838:  ADDW            R0, R4, #0xA14
57283C:  VLDR            S0, [R0]
572840:  VCMPE.F32       S0, #0.0
572844:  VMRS            APSR_nzcv, FPSCR
572848:  BLE             loc_5728D2
57284A:  MOVS            R0, #(word_12+1); this
57284C:  MOVS            R1, #6; unsigned __int8
57284E:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
572852:  CMP             R0, #1
572854:  BNE             loc_5728D2
572856:  MOVS            R0, #0
572858:  ADD             R2, SP, #0xB0+var_A0
57285A:  MOVT            R0, #0x4060
57285E:  STR             R0, [SP,#0xB0+var_A0+4]
572860:  MOVS            R0, #0
572862:  STR             R0, [SP,#0xB0+var_A0]
572864:  MOV             R0, #0xBE99999A
57286C:  STR             R0, [SP,#0xB0+var_98]
57286E:  ADD             R0, SP, #0xB0+var_AC
572870:  LDR             R1, [R4,#0x14]
572872:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
572876:  LDR             R0, =(_ZN5CHeli20NumberOfSearchLightsE_ptr - 0x57287E)
572878:  LDR             R2, =(_ZN5CHeli16HeliSearchLightsE_ptr - 0x572884)
57287A:  ADD             R0, PC; _ZN5CHeli20NumberOfSearchLightsE_ptr
57287C:  LDR.W           R11, [R4,#0xA08]
572880:  ADD             R2, PC; _ZN5CHeli16HeliSearchLightsE_ptr
572882:  LDR.W           R10, [R4,#0xA0C]
572886:  LDR.W           R12, [R0]; CHeli::NumberOfSearchLights ...
57288A:  MOVS            R0, #0x4C ; 'L'
57288C:  LDR             R2, [R2]; CHeli::HeliSearchLights ...
57288E:  LDR.W           LR, [R4,#0xA10]
572892:  LDR.W           R1, [R12]; CHeli::NumberOfSearchLights
572896:  LDR.W           R8, [R4,#0xA14]
57289A:  LDRD.W          R3, R5, [SP,#0xB0+var_AC]
57289E:  MUL.W           R6, R1, R0
5728A2:  LDR             R0, [SP,#0xB0+var_A4]
5728A4:  STR             R3, [R2,R6]
5728A6:  MOVS            R3, #0x4C ; 'L'
5728A8:  MLA.W           R2, R1, R3, R2
5728AC:  MOVW            R6, #0x101
5728B0:  MOVS            R3, #0x41A00000
5728B6:  STRH            R6, [R2,#0x24]
5728B8:  ADD.W           R6, R4, #0xB
5728BC:  STRD.W          R5, R0, [R2,#4]
5728C0:  ADDS            R0, R1, #1
5728C2:  STRD.W          R11, R10, [R2,#0xC]
5728C6:  STRD.W          LR, R3, [R2,#0x14]
5728CA:  STRD.W          R8, R6, [R2,#0x1C]
5728CE:  STR.W           R0, [R12]; CHeli::NumberOfSearchLights
5728D2:  MOV             R0, R4; this
5728D4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5728D8:  LDRB.W          R0, [R4,#0x42F]
5728DC:  LSLS            R0, R0, #0x1F
5728DE:  BEQ             loc_572986
5728E0:  LDR             R0, [R4]
5728E2:  LDR.W           R1, [R0,#0xD4]
5728E6:  MOV             R0, R4
5728E8:  BLX             R1
5728EA:  VMOV.F32        S16, #1.0
5728EE:  ADD.W           R5, R4, #0x7E8
5728F2:  VMOV.F32        S18, #0.75
5728F6:  ADD.W           R8, SP, #0xB0+var_A0
5728FA:  MOVS            R6, #0
5728FC:  MOV             R0, R9; this
5728FE:  MOV             R1, R6; int
572900:  MOV             R2, R8; CVector *
572902:  MOVS            R3, #1; bool
572904:  VLDR            S20, [R5]
572908:  VLDR            S22, [R5,#0xA4]
57290C:  VLDR            S24, [R5,#0xB4]
572910:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
572914:  VDIV.F32        S0, S22, S24
572918:  LDR.W           R0, [R4,#0x388]
57291C:  VSUB.F32        S0, S16, S0
572920:  VLDR            S4, [R0,#0xB8]
572924:  VSUB.F32        S2, S16, S0
572928:  VSUB.F32        S0, S20, S0
57292C:  VDIV.F32        S2, S0, S2
572930:  VCMPE.F32       S2, #0.0
572934:  VLDR            S0, [SP,#0xB0+var_98]
572938:  VMRS            APSR_nzcv, FPSCR
57293C:  VADD.F32        S0, S0, S4
572940:  ITTT GT
572942:  VLDRGT          S4, [R5,#0xA4]
572946:  VMULGT.F32      S2, S2, S4
57294A:  VSUBGT.F32      S0, S0, S2
57294E:  VLDR            S2, [R5,#0x64]
572952:  VCMPE.F32       S0, S2
572956:  VMRS            APSR_nzcv, FPSCR
57295A:  BGT             loc_57297A
57295C:  LDRB.W          R0, [R4,#0x47]
572960:  LSLS            R0, R0, #0x1D
572962:  ITT MI
572964:  LDRBMI.W        R0, [R4,#0x392]
572968:  MOVSMI.W        R0, R0,LSL#30
57296C:  BMI             loc_57297A
57296E:  VSUB.F32        S0, S0, S2
572972:  VMUL.F32        S0, S0, S18
572976:  VADD.F32        S0, S2, S0
57297A:  VSTR            S0, [R5,#0x64]
57297E:  ADDS            R6, #1
572980:  ADDS            R5, #4
572982:  CMP             R6, #4
572984:  BNE             loc_5728FC
572986:  MOV             R0, R4; this
572988:  MOVS            R1, #4; int
57298A:  MOVS            R2, #1; int
57298C:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
572990:  MOV             R0, R4; this
572992:  MOVS            R1, #7; int
572994:  MOVS            R2, #1; int
572996:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
57299A:  MOV             R0, R4; this
57299C:  MOVS            R1, #2; int
57299E:  MOVS            R2, #1; int
5729A0:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
5729A4:  MOV             R0, R4; this
5729A6:  MOVS            R1, #5; int
5729A8:  MOVS            R2, #1; int
5729AA:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
5729AE:  LDRSH.W         R1, [R4,#0x26]
5729B2:  MOVW            R2, #0x1D1
5729B6:  CMP             R1, R2
5729B8:  ITT NE
5729BA:  MOVWNE          R2, #0x1F5
5729BE:  CMPNE           R1, R2
5729C0:  UXTH            R0, R1
5729C2:  BEQ             loc_5729D4
5729C4:  MOV             R0, R4; this
5729C6:  MOV.W           R1, #0x3F800000; float
5729CA:  MOV.W           R2, #0x3F800000; float
5729CE:  BLX             j__ZN11CAutomobile16DoHeliDustEffectEff; CAutomobile::DoHeliDustEffect(float,float)
5729D2:  LDRH            R0, [R4,#0x26]
5729D4:  SXTH            R1, R0
5729D6:  SUBW            R2, R1, #0x1D5
5729DA:  CMP             R2, #0x1C
5729DC:  BHI             loc_5729EE
5729DE:  MOVS            R3, #1
5729E0:  LSL.W           R2, R3, R2
5729E4:  MOVS            R3, #0x100C0001
5729EA:  TST             R2, R3
5729EC:  BNE             loc_5729F8
5729EE:  MOVW            R2, #0x1BF
5729F2:  CMP             R1, R2
5729F4:  BNE.W           loc_572C22
5729F8:  ADD.W           R1, R4, #0x860
5729FC:  VLDR            S0, =1.66
572A00:  VLDR            S2, [R1]
572A04:  VMUL.F32        S0, S2, S0
572A08:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x572A12)
572A0A:  ADDW            R6, R4, #0x9B4
572A0E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
572A10:  VLDR            S6, [R6]
572A14:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
572A16:  VLDR            S4, [R1]
572A1A:  VMUL.F32        S0, S0, S4
572A1E:  VSUB.F32        S6, S6, S0
572A22:  VLDR            S0, =-6.2832
572A26:  VCMPE.F32       S6, S0
572A2A:  VSTR            S6, [R6]
572A2E:  VMRS            APSR_nzcv, FPSCR
572A32:  BGE             loc_572A4A
572A34:  VLDR            S8, =6.2832
572A38:  VADD.F32        S6, S6, S8
572A3C:  VCMPE.F32       S6, S0
572A40:  VMRS            APSR_nzcv, FPSCR
572A44:  BLT             loc_572A38
572A46:  VSTR            S6, [R6]
572A4A:  VMOV.F32        S8, #2.0
572A4E:  MOVW            R1, #0x1A1
572A52:  VLDR            S6, =2.3
572A56:  CMP             R0, R1
572A58:  ADDW            R8, R4, #0x9B8
572A5C:  IT EQ
572A5E:  VMOVEQ.F32      S6, S8
572A62:  VMUL.F32        S2, S2, S6
572A66:  VMUL.F32        S2, S4, S2
572A6A:  VLDR            S4, [R8]
572A6E:  VSUB.F32        S2, S4, S2
572A72:  VLDR            S4, =6.2832
572A76:  B               loc_572A7C
572A78:  VADD.F32        S2, S2, S0
572A7C:  VCMPE.F32       S2, S4
572A80:  VMRS            APSR_nzcv, FPSCR
572A84:  BGT             loc_572A78
572A86:  VSTR            S2, [R8]
572A8A:  LDR.W           R0, [R4,#0x68C]
572A8E:  CBZ             R0, loc_572AE8
572A90:  ADD             R5, SP, #0xB0+var_90
572A92:  ADD.W           R1, R0, #0x10
572A96:  MOVS            R2, #0
572A98:  MOV             R0, R5
572A9A:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
572A9E:  VLDR            D16, [SP,#0xB0+var_60]
572AA2:  LDR             R0, [SP,#0xB0+var_58]
572AA4:  STR             R0, [SP,#0xB0+var_98]
572AA6:  MOV             R0, R5; this
572AA8:  VSTR            D16, [SP,#0xB0+var_A0]
572AAC:  LDR             R1, [R6]; x
572AAE:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
572AB2:  VLDR            S0, [SP,#0xB0+var_60]
572AB6:  MOV             R0, R5; this
572AB8:  VLDR            S6, [SP,#0xB0+var_A0]
572ABC:  VLDR            S2, [SP,#0xB0+var_60+4]
572AC0:  VLDR            S8, [SP,#0xB0+var_A0+4]
572AC4:  VADD.F32        S0, S6, S0
572AC8:  VLDR            S4, [SP,#0xB0+var_58]
572ACC:  VLDR            S10, [SP,#0xB0+var_98]
572AD0:  VADD.F32        S2, S8, S2
572AD4:  VADD.F32        S4, S10, S4
572AD8:  VSTR            S0, [SP,#0xB0+var_60]
572ADC:  VSTR            S2, [SP,#0xB0+var_60+4]
572AE0:  VSTR            S4, [SP,#0xB0+var_58]
572AE4:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
572AE8:  LDR.W           R0, [R4,#0x690]
572AEC:  CBZ             R0, loc_572B46
572AEE:  ADD             R5, SP, #0xB0+var_90
572AF0:  ADD.W           R1, R0, #0x10
572AF4:  MOVS            R2, #0
572AF6:  MOV             R0, R5
572AF8:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
572AFC:  VLDR            D16, [SP,#0xB0+var_60]
572B00:  LDR             R0, [SP,#0xB0+var_58]
572B02:  STR             R0, [SP,#0xB0+var_98]
572B04:  MOV             R0, R5; this
572B06:  VSTR            D16, [SP,#0xB0+var_A0]
572B0A:  LDR             R1, [R6]; x
572B0C:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
572B10:  VLDR            S0, [SP,#0xB0+var_60]
572B14:  MOV             R0, R5; this
572B16:  VLDR            S6, [SP,#0xB0+var_A0]
572B1A:  VLDR            S2, [SP,#0xB0+var_60+4]
572B1E:  VLDR            S8, [SP,#0xB0+var_A0+4]
572B22:  VADD.F32        S0, S6, S0
572B26:  VLDR            S4, [SP,#0xB0+var_58]
572B2A:  VLDR            S10, [SP,#0xB0+var_98]
572B2E:  VADD.F32        S2, S8, S2
572B32:  VADD.F32        S4, S10, S4
572B36:  VSTR            S0, [SP,#0xB0+var_60]
572B3A:  VSTR            S2, [SP,#0xB0+var_60+4]
572B3E:  VSTR            S4, [SP,#0xB0+var_58]
572B42:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
572B46:  LDR.W           R0, [R4,#0x694]
572B4A:  CBZ             R0, loc_572BA6
572B4C:  ADD             R5, SP, #0xB0+var_90
572B4E:  ADD.W           R1, R0, #0x10
572B52:  MOVS            R2, #0
572B54:  MOV             R0, R5
572B56:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
572B5A:  VLDR            D16, [SP,#0xB0+var_60]
572B5E:  LDR             R0, [SP,#0xB0+var_58]
572B60:  STR             R0, [SP,#0xB0+var_98]
572B62:  MOV             R0, R5; this
572B64:  VSTR            D16, [SP,#0xB0+var_A0]
572B68:  LDR.W           R1, [R8]; x
572B6C:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
572B70:  VLDR            S0, [SP,#0xB0+var_60]
572B74:  MOV             R0, R5; this
572B76:  VLDR            S6, [SP,#0xB0+var_A0]
572B7A:  VLDR            S2, [SP,#0xB0+var_60+4]
572B7E:  VLDR            S8, [SP,#0xB0+var_A0+4]
572B82:  VADD.F32        S0, S6, S0
572B86:  VLDR            S4, [SP,#0xB0+var_58]
572B8A:  VLDR            S10, [SP,#0xB0+var_98]
572B8E:  VADD.F32        S2, S8, S2
572B92:  VADD.F32        S4, S10, S4
572B96:  VSTR            S0, [SP,#0xB0+var_60]
572B9A:  VSTR            S2, [SP,#0xB0+var_60+4]
572B9E:  VSTR            S4, [SP,#0xB0+var_58]
572BA2:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
572BA6:  LDR.W           R0, [R4,#0x698]
572BAA:  CBZ             R0, loc_572C06
572BAC:  ADD             R5, SP, #0xB0+var_90
572BAE:  ADD.W           R1, R0, #0x10
572BB2:  MOVS            R2, #0
572BB4:  MOV             R0, R5
572BB6:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
572BBA:  VLDR            D16, [SP,#0xB0+var_60]
572BBE:  LDR             R0, [SP,#0xB0+var_58]
572BC0:  STR             R0, [SP,#0xB0+var_98]
572BC2:  MOV             R0, R5; this
572BC4:  VSTR            D16, [SP,#0xB0+var_A0]
572BC8:  LDR.W           R1, [R8]; x
572BCC:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
572BD0:  VLDR            S0, [SP,#0xB0+var_60]
572BD4:  MOV             R0, R5; this
572BD6:  VLDR            S6, [SP,#0xB0+var_A0]
572BDA:  VLDR            S2, [SP,#0xB0+var_60+4]
572BDE:  VLDR            S8, [SP,#0xB0+var_A0+4]
572BE2:  VADD.F32        S0, S6, S0
572BE6:  VLDR            S4, [SP,#0xB0+var_58]
572BEA:  VLDR            S10, [SP,#0xB0+var_98]
572BEE:  VADD.F32        S2, S8, S2
572BF2:  VADD.F32        S4, S10, S4
572BF6:  VSTR            S0, [SP,#0xB0+var_60]
572BFA:  VSTR            S2, [SP,#0xB0+var_60+4]
572BFE:  VSTR            S4, [SP,#0xB0+var_58]
572C02:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
572C06:  MOV             R0, R4; CPhysical *
572C08:  MOVS            R1, #2
572C0A:  BLX             j__ZN8CShadows21StoreShadowForVehicleEP8CVehicle12VEH_SHD_TYPE; CShadows::StoreShadowForVehicle(CVehicle *,VEH_SHD_TYPE)
572C0E:  ADD             R0, SP, #0xB0+var_90; this
572C10:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
572C14:  ADD             SP, SP, #0x68 ; 'h'
572C16:  VPOP            {D8-D12}
572C1A:  ADD             SP, SP, #4
572C1C:  POP.W           {R8-R11}
572C20:  POP             {R4-R7,PC}
572C22:  ADD.W           R1, R4, #0x860
572C26:  VLDR            S2, [R1]
572C2A:  VMOV.F32        S0, S2
572C2E:  B               loc_572A08
