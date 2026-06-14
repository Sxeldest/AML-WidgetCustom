; =========================================================
; Game Engine Function: _ZN10CPhoneInfo6UpdateEv
; Address            : 0x31C7CC - 0x31CCDA
; =========================================================

31C7CC:  PUSH            {R4-R7,LR}
31C7CE:  ADD             R7, SP, #0xC
31C7D0:  PUSH.W          {R8-R11}
31C7D4:  SUB             SP, SP, #4
31C7D6:  VPUSH           {D8-D15}
31C7DA:  SUB             SP, SP, #0x28
31C7DC:  MOV             R4, R0
31C7DE:  MOV.W           R0, #0xFFFFFFFF; int
31C7E2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31C7E6:  MOV             R6, R0
31C7E8:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x31C7F8)
31C7EC:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x31C7FE)
31C7F0:  MOV.W           R3, #0x194
31C7F4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
31C7F6:  LDR.W           R2, =(byte_7AF320 - 0x31C802)
31C7FA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
31C7FC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
31C7FE:  ADD             R2, PC; byte_7AF320
31C800:  LDR             R1, [R1]; CWorld::Players ...
31C802:  LDR             R0, [R0]; CWorld::PlayerInFocus
31C804:  SMLABB.W        R5, R0, R3, R1
31C808:  LDRB            R0, [R2]
31C80A:  CMP             R0, #1
31C80C:  BNE             loc_31C8BC
31C80E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31C81A)
31C812:  LDR.W           R1, =(dword_7AF31C - 0x31C81C)
31C816:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31C818:  ADD             R1, PC; dword_7AF31C
31C81A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
31C81C:  LDR             R1, [R1]
31C81E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
31C820:  CMP             R0, R1
31C822:  BLS             loc_31C8BC
31C824:  MOVW            R2, #0x4000
31C828:  MOV             R0, R5; this
31C82A:  MOVT            R2, #0x461C; float
31C82E:  MOVS            R1, #0; bool
31C830:  MOV.W           R8, #0
31C834:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
31C838:  LDR.W           R0, =(TheCamera_ptr - 0x31C840)
31C83C:  ADD             R0, PC; TheCamera_ptr
31C83E:  LDR             R0, [R0]; TheCamera ; this
31C840:  BLX             j__ZN7CCamera16SetWideScreenOffEv; CCamera::SetWideScreenOff(void)
31C844:  LDR.W           R0, =(dword_7AF324 - 0x31C850)
31C848:  LDR.W           R1, =(byte_7AF320 - 0x31C852)
31C84C:  ADD             R0, PC; dword_7AF324
31C84E:  ADD             R1, PC; byte_7AF320
31C850:  STR.W           R8, [R0]
31C854:  STRB.W          R8, [R1]
31C858:  MOVS            R1, #0x93
31C85A:  LDR             R0, [R6,#0x18]
31C85C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
31C860:  CBZ             R0, loc_31C89A
31C862:  VMOV.F32        S0, #0.5
31C866:  VLDR            S2, [R0,#0x18]
31C86A:  VCMPE.F32       S2, S0
31C86E:  VMRS            APSR_nzcv, FPSCR
31C872:  BLE             loc_31C89A
31C874:  LDR             R0, [R6,#0x18]; int
31C876:  MOVS            R1, #0; int
31C878:  MOVS            R2, #0x92; unsigned int
31C87A:  MOV.W           R3, #0x41000000
31C87E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
31C882:  LDR.W           R1, =(_Z14PhonePutDownCBP21CAnimBlendAssociationPv_ptr - 0x31C88C)
31C886:  LDRH            R2, [R0,#0x2E]
31C888:  ADD             R1, PC; _Z14PhonePutDownCBP21CAnimBlendAssociationPv_ptr
31C88A:  BIC.W           R2, R2, #4
31C88E:  STRH            R2, [R0,#0x2E]
31C890:  LDR             R1, [R1]; PhonePutDownCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
31C892:  MOV             R2, R6; void *
31C894:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
31C898:  B               loc_31C8BC
31C89A:  MOVS            R0, #0; this
31C89C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
31C8A0:  LDRH.W          R1, [R0,#0x110]
31C8A4:  BIC.W           R1, R1, #0x40 ; '@'
31C8A8:  STRH.W          R1, [R0,#0x110]
31C8AC:  LDR.W           R0, [R6,#0x44C]
31C8B0:  CMP             R0, #0x13
31C8B2:  BNE             loc_31C8BC
31C8B4:  MOV             R0, R6; CPed *
31C8B6:  MOVS            R1, #1
31C8B8:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
31C8BC:  MOV.W           R0, #0xFFFFFFFF; int
31C8C0:  MOVS            R1, #0; bool
31C8C2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31C8C6:  CMP             R0, #0
31C8C8:  STR             R6, [SP,#0x88+var_64]
31C8CA:  STR             R5, [SP,#0x88+var_78]
31C8CC:  BEQ             loc_31C8F8
31C8CE:  MOV.W           R0, #0xFFFFFFFF; int
31C8D2:  MOVS            R1, #0; bool
31C8D4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31C8D8:  LDR             R1, [R0,#0x14]
31C8DA:  ADD.W           R2, R1, #0x30 ; '0'
31C8DE:  CMP             R1, #0
31C8E0:  IT EQ
31C8E2:  ADDEQ           R2, R0, #4
31C8E4:  MOV.W           R0, #0xFFFFFFFF; int
31C8E8:  MOVS            R1, #0; bool
31C8EA:  VLDR            S16, [R2]
31C8EE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31C8F2:  MOV.W           R9, #1
31C8F6:  B               loc_31C90E
31C8F8:  LDR             R0, [R6,#0x14]
31C8FA:  MOV.W           R9, #0
31C8FE:  ADD.W           R1, R0, #0x30 ; '0'
31C902:  CMP             R0, #0
31C904:  IT EQ
31C906:  ADDEQ           R1, R6, #4
31C908:  MOV             R0, R6
31C90A:  VLDR            S16, [R1]
31C90E:  LDR             R2, [R0,#0x14]
31C910:  LDR             R3, [R4,#4]
31C912:  ADD.W           R1, R2, #0x30 ; '0'
31C916:  CMP             R2, #0
31C918:  IT EQ
31C91A:  ADDEQ           R1, R0, #4
31C91C:  CMP             R3, #1
31C91E:  BLT.W           loc_31CCCC
31C922:  LDR             R0, [SP,#0x88+var_64]
31C924:  VMOV.F32        S22, #1.0
31C928:  VLDR            S18, [R1,#4]
31C92C:  ADD.W           R8, R4, #0x38 ; '8'
31C930:  ADD.W           R1, R0, #0x560
31C934:  ADDW            R0, R0, #0x55C
31C938:  STR             R0, [SP,#0x88+var_80]
31C93A:  MOV.W           R10, #0
31C93E:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x31C94A)
31C942:  VLDR            S20, =6400.0
31C946:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
31C948:  VLDR            S24, =-0.85
31C94C:  VLDR            S26, =1.5708
31C950:  LDR.W           R11, [R0]; CTimer::m_FrameCounter ...
31C954:  LDR.W           R0, =(TheCamera_ptr - 0x31C960)
31C958:  VLDR            S28, =-6.2832
31C95C:  ADD             R0, PC; TheCamera_ptr
31C95E:  VLDR            S30, =6.2832
31C962:  VLDR            S17, =16000.0
31C966:  LDR             R0, [R0]; TheCamera
31C968:  STR             R0, [SP,#0x88+var_6C]
31C96A:  LDR.W           R0, =(TheCamera_ptr - 0x31C976)
31C96E:  VLDR            S19, =10000.0
31C972:  ADD             R0, PC; TheCamera_ptr
31C974:  STR             R1, [SP,#0x88+var_7C]
31C976:  LDR             R0, [R0]; TheCamera
31C978:  STR             R0, [SP,#0x88+var_84]
31C97A:  LDR.W           R0, =(_Z13PhonePickUpCBP21CAnimBlendAssociationPv_ptr - 0x31C982)
31C97E:  ADD             R0, PC; _Z13PhonePickUpCBP21CAnimBlendAssociationPv_ptr
31C980:  LDR             R0, [R0]; PhonePickUpCB(CAnimBlendAssociation *,void *)
31C982:  STR             R0, [SP,#0x88+var_88]
31C984:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31C98A)
31C986:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31C988:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
31C98A:  STR             R0, [SP,#0x88+var_68]
31C98C:  LDR             R0, =(TheCamera_ptr - 0x31C992)
31C98E:  ADD             R0, PC; TheCamera_ptr
31C990:  LDR             R5, [R0]; TheCamera
31C992:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31C998)
31C994:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31C996:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
31C998:  STR             R0, [SP,#0x88+var_70]
31C99A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31C9A0)
31C99C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31C99E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
31C9A0:  STR             R0, [SP,#0x88+var_74]
31C9A2:  B               loc_31CABE
31C9A4:  MOV             R0, R6; this
31C9A6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C9AA:  LDR             R1, [R6,#0x14]; CMatrix *
31C9AC:  ADDS            R0, R6, #4; this
31C9AE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C9B2:  LDR             R0, [R6,#0x14]
31C9B4:  LDR.W           R6, [R8,#-8]
31C9B8:  VLDR            S0, [R0,#0x10]
31C9BC:  LDR             R0, [R6,#0x14]
31C9BE:  VMUL.F32        S25, S21, S0
31C9C2:  CBNZ            R0, loc_31C9D4
31C9C4:  MOV             R0, R6; this
31C9C6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31C9CA:  LDR             R1, [R6,#0x14]; CMatrix *
31C9CC:  ADDS            R0, R6, #4; this
31C9CE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31C9D2:  LDR             R0, [R6,#0x14]
31C9D4:  VMUL.F32        S0, S23, S23
31C9D8:  VMUL.F32        S2, S21, S21
31C9DC:  VADD.F32        S0, S2, S0
31C9E0:  VLDR            S2, [R0,#0x14]
31C9E4:  VMUL.F32        S2, S23, S2
31C9E8:  VSQRT.F32       S0, S0
31C9EC:  VADD.F32        S2, S25, S2
31C9F0:  VDIV.F32        S0, S2, S0
31C9F4:  VCMPE.F32       S0, S24
31C9F8:  VMRS            APSR_nzcv, FPSCR
31C9FC:  BGE.W           loc_31CC8C
31CA00:  LDR.W           R0, [R8,#-8]
31CA04:  LDR             R1, [R0,#0x14]
31CA06:  ADD.W           R2, R1, #0x30 ; '0'
31CA0A:  CMP             R1, #0
31CA0C:  IT EQ
31CA0E:  ADDEQ           R2, R0, #4; float
31CA10:  VLDR            S0, [R2]
31CA14:  VLDR            S2, [R2,#4]
31CA18:  VSUB.F32        S0, S16, S0
31CA1C:  VSUB.F32        S2, S18, S2
31CA20:  VMOV            R0, S0; this
31CA24:  VMOV            R1, S2; float
31CA28:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
31CA2C:  VMOV            S0, R0
31CA30:  VADD.F32        S0, S0, S26
31CA34:  VCMPE.F32       S0, S30
31CA38:  VMRS            APSR_nzcv, FPSCR
31CA3C:  VADD.F32        S2, S0, S28
31CA40:  IT GT
31CA42:  VMOVGT.F32      S0, S2
31CA46:  LDR             R0, [SP,#0x88+var_80]
31CA48:  VSTR            S0, [R0]
31CA4C:  LDR             R0, [SP,#0x88+var_7C]
31CA4E:  VSTR            S0, [R0]
31CA52:  LDR             R6, [SP,#0x88+var_64]
31CA54:  LDR             R0, [R6,#0x14]; this
31CA56:  CBZ             R0, loc_31CA62
31CA58:  VMOV            R1, S0; x
31CA5C:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
31CA60:  B               loc_31CA66
31CA62:  VSTR            S0, [R6,#0x10]
31CA66:  MOV             R0, R6; CPed *
31CA68:  MOVS            R1, #0x13
31CA6A:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
31CA6E:  MOVS            R0, #0; this
31CA70:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
31CA74:  LDRH.W          R1, [R0,#0x110]
31CA78:  ORR.W           R1, R1, #0x40 ; '@'
31CA7C:  STRH.W          R1, [R0,#0x110]
31CA80:  LDR             R0, [SP,#0x88+var_84]; this
31CA82:  BLX             j__ZN7CCamera15SetWideScreenOnEv; CCamera::SetWideScreenOn(void)
31CA86:  LDR             R0, [SP,#0x88+var_78]; this
31CA88:  MOVW            R2, #0x4000
31CA8C:  MOVS            R1, #1; bool
31CA8E:  MOVT            R2, #0x461C; float
31CA92:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
31CA96:  LDR             R0, [R6,#0x18]; int
31CA98:  MOVS            R1, #0; int
31CA9A:  MOVS            R2, #0x91; unsigned int
31CA9C:  MOV.W           R3, #0x40800000
31CAA0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
31CAA4:  LDR             R1, [SP,#0x88+var_88]; void (*)(CAnimBlendAssociation *, void *)
31CAA6:  SUB.W           R2, R8, #0x30 ; '0'; void *
31CAAA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
31CAAE:  LDR             R1, =(byte_7AF328 - 0x31CAB6)
31CAB0:  MOVS            R0, #1
31CAB2:  ADD             R1, PC; byte_7AF328
31CAB4:  STRB            R0, [R1]
31CAB6:  LDR             R0, =(dword_7AF32C - 0x31CABC)
31CAB8:  ADD             R0, PC; dword_7AF32C
31CABA:  STR             R6, [R0]
31CABC:  B               loc_31CC8C
31CABE:  LDRB.W          R0, [R8]
31CAC2:  CMP             R0, #0
31CAC4:  BEQ             loc_31CB46
31CAC6:  LDR.W           R0, [R8,#-4]
31CACA:  SUBS            R1, R0, #4
31CACC:  CMP             R1, #3
31CACE:  BCS             loc_31CB8A
31CAD0:  LDR             R0, =(byte_7AF328 - 0x31CADA)
31CAD2:  VMOV.F32        S21, S22
31CAD6:  ADD             R0, PC; byte_7AF328
31CAD8:  LDRB            R0, [R0]
31CADA:  CBNZ            R0, loc_31CB10
31CADC:  LDR             R0, [SP,#0x88+var_68]
31CADE:  MOV             R1, #0x22DC0D13
31CAE6:  VMOV.F32        S21, S22
31CAEA:  LDR             R0, [R0]
31CAEC:  LSRS            R0, R0, #3
31CAEE:  UMULL.W         R0, R1, R0, R1
31CAF2:  LSRS            R0, R1, #5
31CAF4:  LSLS            R0, R0, #0x1F
31CAF6:  BEQ             loc_31CB10
31CAF8:  BLX             rand
31CAFC:  BFC.W           R0, #0xA, #0x16
31CB00:  VMOV            S0, R0
31CB04:  VCVT.F32.S32    S0, S0
31CB08:  VDIV.F32        S0, S0, S17
31CB0C:  VADD.F32        S21, S0, S22
31CB10:  LDR.W           R6, [R8,#-8]
31CB14:  LDR             R0, [R6,#0x14]
31CB16:  CBNZ            R0, loc_31CB28
31CB18:  MOV             R0, R6; this
31CB1A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31CB1E:  LDR             R1, [R6,#0x14]; CMatrix *
31CB20:  ADDS            R0, R6, #4; this
31CB22:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31CB26:  LDR             R0, [R6,#0x14]
31CB28:  VSTR            S21, [R0,#0x28]
31CB2C:  LDR.W           R2, [R8,#-8]
31CB30:  LDR             R0, [R2,#0x18]
31CB32:  CMP             R0, #0
31CB34:  BEQ             loc_31CC1C
31CB36:  LDR             R1, [R0,#4]
31CB38:  LDR             R0, [R2,#0x14]
31CB3A:  ADDS            R1, #0x10
31CB3C:  CMP             R0, #0
31CB3E:  BEQ             loc_31CC16
31CB40:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
31CB44:  B               loc_31CC1C
31CB46:  LDR.W           R0, [R8,#-8]
31CB4A:  LDR.W           R1, [R11]; CTimer::m_FrameCounter
31CB4E:  LDRH            R0, [R0,#0x24]
31CB50:  ADD             R0, R1
31CB52:  LSLS            R0, R0, #0x1C
31CB54:  BNE.W           loc_31CCBC
31CB58:  LDR             R2, [SP,#0x88+var_6C]
31CB5A:  VLDR            D16, [R8,#-0x30]
31CB5E:  LDR             R0, [R2,#0x14]
31CB60:  ADD.W           R1, R0, #0x30 ; '0'
31CB64:  CMP             R0, #0
31CB66:  IT EQ
31CB68:  ADDEQ           R1, R2, #4
31CB6A:  VLDR            D17, [R1]
31CB6E:  VSUB.F32        D16, D17, D16
31CB72:  VMUL.F32        D0, D16, D16
31CB76:  VADD.F32        S0, S0, S1
31CB7A:  VCMPE.F32       S0, S20
31CB7E:  VMRS            APSR_nzcv, FPSCR
31CB82:  BGE.W           loc_31CCBC
31CB86:  MOVS            R0, #1
31CB88:  B               loc_31CCB8
31CB8A:  CMP             R0, #8
31CB8C:  BEQ             loc_31CBFC
31CB8E:  CMP             R0, #9
31CB90:  BNE             loc_31CC8C
31CB92:  LDR             R0, [SP,#0x88+var_74]
31CB94:  MOV             R1, #0x22DC0D13
31CB9C:  VMOV.F32        S21, S22
31CBA0:  LDR             R0, [R0]
31CBA2:  LSRS            R0, R0, #3
31CBA4:  UMULL.W         R0, R1, R0, R1
31CBA8:  LSRS            R0, R1, #5
31CBAA:  LSLS            R0, R0, #0x1F
31CBAC:  BEQ             loc_31CBC6
31CBAE:  BLX             rand
31CBB2:  BFC.W           R0, #0xA, #0x16
31CBB6:  VMOV            S0, R0
31CBBA:  VCVT.F32.S32    S0, S0
31CBBE:  VDIV.F32        S0, S0, S17
31CBC2:  VADD.F32        S21, S0, S22
31CBC6:  LDR.W           R6, [R8,#-8]
31CBCA:  LDR             R0, [R6,#0x14]
31CBCC:  CBNZ            R0, loc_31CBDE
31CBCE:  MOV             R0, R6; this
31CBD0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31CBD4:  LDR             R1, [R6,#0x14]; CMatrix *
31CBD6:  ADDS            R0, R6, #4; this
31CBD8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31CBDC:  LDR             R0, [R6,#0x14]
31CBDE:  VSTR            S21, [R0,#0x28]
31CBE2:  LDR.W           R2, [R8,#-8]
31CBE6:  LDR             R0, [R2,#0x18]
31CBE8:  CMP             R0, #0
31CBEA:  BEQ             loc_31CC84
31CBEC:  LDR             R1, [R0,#4]
31CBEE:  LDR             R0, [R2,#0x14]
31CBF0:  ADDS            R1, #0x10
31CBF2:  CMP             R0, #0
31CBF4:  BEQ             loc_31CC7E
31CBF6:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
31CBFA:  B               loc_31CC84
31CBFC:  LDR             R1, [SP,#0x88+var_70]
31CBFE:  LDR.W           R0, [R8,#-0xC]
31CC02:  LDR             R1, [R1]
31CC04:  SUBS            R0, R1, R0
31CC06:  MOVW            R1, #0xEA61
31CC0A:  CMP             R0, R1
31CC0C:  ITT CS
31CC0E:  MOVCS           R0, #6
31CC10:  STRCS.W         R0, [R8,#-4]
31CC14:  B               loc_31CC8C
31CC16:  ADDS            R0, R2, #4
31CC18:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
31CC1C:  LDR.W           R0, [R8,#-8]; this
31CC20:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
31CC24:  LDR             R0, =(byte_7AF328 - 0x31CC2A)
31CC26:  ADD             R0, PC; byte_7AF328
31CC28:  LDRB            R0, [R0]
31CC2A:  ORR.W           R0, R0, R9
31CC2E:  LSLS            R0, R0, #0x1F
31CC30:  BNE             loc_31CC8C
31CC32:  LDR             R0, [SP,#0x88+var_64]; this
31CC34:  BLX             j__ZN4CPed14IsPedInControlEv; CPed::IsPedInControl(void)
31CC38:  CMP             R0, #1
31CC3A:  BNE             loc_31CC8C
31CC3C:  VLDR            S0, [R8,#-0x30]
31CC40:  VSUB.F32        S21, S16, S0
31CC44:  VABS.F32        S0, S21
31CC48:  VCMPE.F32       S0, S22
31CC4C:  VMRS            APSR_nzcv, FPSCR
31CC50:  BGE             loc_31CC8C
31CC52:  VLDR            S0, [R8,#-0x2C]
31CC56:  VSUB.F32        S23, S18, S0
31CC5A:  VABS.F32        S0, S23
31CC5E:  VCMPE.F32       S0, S22
31CC62:  VMRS            APSR_nzcv, FPSCR
31CC66:  BGE             loc_31CC8C
31CC68:  LDR.W           R6, [R8,#-8]
31CC6C:  LDR             R0, [R6,#0x14]
31CC6E:  CMP             R0, #0
31CC70:  BEQ.W           loc_31C9A4
31CC74:  VLDR            S0, [R0,#0x10]
31CC78:  VMUL.F32        S25, S21, S0
31CC7C:  B               loc_31C9D4
31CC7E:  ADDS            R0, R2, #4
31CC80:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
31CC84:  LDR.W           R0, [R8,#-8]; this
31CC88:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
31CC8C:  LDR             R0, [R5,#(dword_951FBC - 0x951FA8)]
31CC8E:  VLDR            D16, [R8,#-0x30]
31CC92:  ADD.W           R1, R0, #0x30 ; '0'
31CC96:  CMP             R0, #0
31CC98:  IT EQ
31CC9A:  ADDEQ           R1, R5, #4
31CC9C:  VLDR            D17, [R1]
31CCA0:  VSUB.F32        D16, D17, D16
31CCA4:  VMUL.F32        D0, D16, D16
31CCA8:  VADD.F32        S0, S0, S1
31CCAC:  VCMPE.F32       S0, S19
31CCB0:  VMRS            APSR_nzcv, FPSCR
31CCB4:  BLE             loc_31CCBC
31CCB6:  MOVS            R0, #0
31CCB8:  STRB.W          R0, [R8]
31CCBC:  LDR             R0, [R4,#4]
31CCBE:  ADD.W           R10, R10, #1
31CCC2:  ADD.W           R8, R8, #0x34 ; '4'
31CCC6:  CMP             R10, R0
31CCC8:  BLT.W           loc_31CABE
31CCCC:  ADD             SP, SP, #0x28 ; '('
31CCCE:  VPOP            {D8-D15}
31CCD2:  ADD             SP, SP, #4
31CCD4:  POP.W           {R8-R11}
31CCD8:  POP             {R4-R7,PC}
