; =========================================================
; Game Engine Function: _ZN9CPhysical20AttachEntityToEntityEP7CEntityP7CVectorP6RtQuat
; Address            : 0x407818 - 0x407A16
; =========================================================

407818:  PUSH            {R4-R7,LR}
40781A:  ADD             R7, SP, #0xC
40781C:  PUSH.W          {R8}
407820:  SUB             SP, SP, #0xD8
407822:  MOV             R4, R1
407824:  MOV             R8, R3
407826:  MOV             R6, R2
407828:  MOV             R5, R0
40782A:  CBZ             R4, loc_4078A0
40782C:  ADD.W           R1, R5, #0x100; CEntity **
407830:  MOV             R0, R4; this
407832:  STR.W           R4, [R5,#0x100]
407836:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
40783A:  LDR             R1, [R4,#0x14]
40783C:  CBNZ            R1, loc_40784E
40783E:  MOV             R0, R4; this
407840:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407844:  LDR             R1, [R4,#0x14]; CMatrix *
407846:  ADDS            R0, R4, #4; this
407848:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
40784C:  LDR             R1, [R4,#0x14]; CMatrix *
40784E:  ADD             R0, SP, #0xE8+var_A0; this
407850:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
407854:  LDRB.W          R0, [R5,#0x3A]
407858:  AND.W           R0, R0, #7
40785C:  CMP             R0, #4
40785E:  BNE             loc_40787C
407860:  LDRH            R0, [R4,#0x26]
407862:  MOVW            R1, #0x212
407866:  CMP             R0, R1
407868:  BNE             loc_40787C
40786A:  LDR.W           R0, [R4,#0x6AC]
40786E:  CBZ             R0, loc_40787C
407870:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
407874:  MOV             R1, R0
407876:  ADD             R0, SP, #0xE8+var_A0
407878:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
40787C:  CBZ             R6, loc_4078A4
40787E:  VLDR            D16, [R6]
407882:  LDR             R0, [R6,#8]
407884:  STR.W           R0, [R5,#0x10C]
407888:  VSTR            D16, [R5,#0x104]
40788C:  CMP.W           R8, #0
407890:  BEQ             loc_407946
407892:  VLD1.32         {D16-D17}, [R8]
407896:  ADD.W           R0, R5, #0x11C
40789A:  VST1.32         {D16-D17}, [R0]
40789E:  B               loc_40798A
4078A0:  MOVS            R4, #0
4078A2:  B               loc_407A0C
4078A4:  LDR             R0, [R5,#0x14]
4078A6:  VLDR            S0, [SP,#0xE8+var_6C]
4078AA:  ADD.W           R1, R0, #0x30 ; '0'
4078AE:  CMP             R0, #0
4078B0:  IT EQ
4078B2:  ADDEQ           R1, R5, #4
4078B4:  VLDR            S14, [SP,#0xE8+var_70]
4078B8:  VLDR            S2, [R1]
4078BC:  VLDR            S4, [R1,#4]
4078C0:  VSUB.F32        S2, S2, S14
4078C4:  VLDR            S8, [SP,#0xE8+var_A0]
4078C8:  VSUB.F32        S0, S4, S0
4078CC:  VLDR            S6, [R1,#8]
4078D0:  VLDR            S4, [SP,#0xE8+var_68]
4078D4:  VLDR            S10, [SP,#0xE8+var_9C]
4078D8:  VSUB.F32        S4, S6, S4
4078DC:  VLDR            S12, [SP,#0xE8+var_98]
4078E0:  VMUL.F32        S8, S2, S8
4078E4:  VMUL.F32        S6, S0, S10
4078E8:  VMUL.F32        S10, S4, S12
4078EC:  VADD.F32        S6, S8, S6
4078F0:  VADD.F32        S6, S6, S10
4078F4:  VSTR            S6, [R5,#0x104]
4078F8:  VLDR            S6, [SP,#0xE8+var_90]
4078FC:  VLDR            S8, [SP,#0xE8+var_8C]
407900:  VMUL.F32        S6, S2, S6
407904:  VLDR            S10, [SP,#0xE8+var_88]
407908:  VMUL.F32        S8, S0, S8
40790C:  VMUL.F32        S10, S4, S10
407910:  VADD.F32        S6, S6, S8
407914:  VADD.F32        S6, S6, S10
407918:  VSTR            S6, [R5,#0x108]
40791C:  VLDR            S6, [SP,#0xE8+var_80]
407920:  VLDR            S8, [SP,#0xE8+var_7C]
407924:  VMUL.F32        S2, S2, S6
407928:  VLDR            S10, [SP,#0xE8+var_78]
40792C:  VMUL.F32        S0, S0, S8
407930:  VMUL.F32        S4, S4, S10
407934:  VADD.F32        S0, S2, S0
407938:  VADD.F32        S0, S0, S4
40793C:  VSTR            S0, [R5,#0x10C]
407940:  CMP.W           R8, #0
407944:  BNE             loc_407892
407946:  MOVS            R0, #0
407948:  MOV             R8, SP
40794A:  STRD.W          R0, R0, [SP,#0xE8+var_A8]
40794E:  ADD             R0, SP, #0xE8+var_A0; CMatrix *
407950:  MOV             R1, R8; CMatrix *
407952:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
407956:  ADD             R6, SP, #0xE8+var_58
407958:  LDR             R2, [R5,#0x14]
40795A:  MOV             R1, R8
40795C:  MOV             R0, R6
40795E:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
407962:  MOV             R0, R8
407964:  MOV             R1, R6
407966:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
40796A:  MOV             R0, R6; this
40796C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
407970:  ADD             R6, SP, #0xE8+var_58
407972:  MOV             R0, R8
407974:  MOV             R1, R6
407976:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
40797A:  ADD.W           R0, R5, #0x11C
40797E:  MOV             R1, R6
407980:  BLX             j__Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag; RtQuatConvertFromMatrix(RtQuat *,RwMatrixTag const*)
407984:  MOV             R0, R8; this
407986:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
40798A:  LDR             R0, [R5,#0x44]
40798C:  TST.W           R0, #4
407990:  BNE             loc_4079D4
407992:  LDRB.W          R1, [R4,#0x3A]
407996:  AND.W           R1, R1, #7
40799A:  SUBS            R1, #2
40799C:  UXTB            R1, R1
40799E:  CMP             R1, #2
4079A0:  BHI             loc_4079DA
4079A2:  LDRB.W          R1, [R4,#0x44]
4079A6:  LSLS            R1, R1, #0x1D
4079A8:  BPL             loc_4079DA
4079AA:  LSLS            R1, R0, #0x19
4079AC:  BMI             loc_4079DA
4079AE:  LDRB.W          R1, [R5,#0x3A]
4079B2:  AND.W           R1, R1, #7
4079B6:  CMP             R1, #4
4079B8:  ITTTT EQ
4079BA:  MOVWEQ          R1, #0x4FF3
4079BE:  MOVTEQ          R1, #0x47C3
4079C2:  ORREQ.W         R0, R0, #4
4079C6:  STREQ           R0, [R5,#0x44]
4079C8:  IT EQ
4079CA:  STRDEQ.W        R1, R1, [R5,#0x90]
4079CE:  LSLS            R0, R0, #0x19
4079D0:  BMI             loc_4079DE
4079D2:  B               loc_4079F8
4079D4:  BIC.W           R0, R0, #8
4079D8:  STR             R0, [R5,#0x44]
4079DA:  LSLS            R0, R0, #0x19
4079DC:  BPL             loc_4079F8
4079DE:  LDR             R0, [R5,#0x14]
4079E0:  ADD.W           R1, R0, #0x30 ; '0'
4079E4:  CMP             R0, #0
4079E6:  IT EQ
4079E8:  ADDEQ           R1, R5, #4
4079EA:  VLDR            D16, [R1]
4079EE:  LDR             R0, [R1,#8]
4079F0:  STR.W           R0, [R5,#0x118]
4079F4:  VSTR            D16, [R5,#0x110]
4079F8:  LDR.W           R0, [R5,#0x100]
4079FC:  STR.W           R0, [R5,#0x12C]
407A00:  MOV             R0, R5; this
407A02:  BLX             j__ZN9CPhysical22PositionAttachedEntityEv; CPhysical::PositionAttachedEntity(void)
407A06:  ADD             R0, SP, #0xE8+var_A0; this
407A08:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
407A0C:  MOV             R0, R4
407A0E:  ADD             SP, SP, #0xD8
407A10:  POP.W           {R8}
407A14:  POP             {R4-R7,PC}
