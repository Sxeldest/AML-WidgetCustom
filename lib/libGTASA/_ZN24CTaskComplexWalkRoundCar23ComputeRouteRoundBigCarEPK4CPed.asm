; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar23ComputeRouteRoundBigCarEPK4CPed
; Address            : 0x50C8B0 - 0x50CAAE
; =========================================================

50C8B0:  PUSH            {R4-R7,LR}
50C8B2:  ADD             R7, SP, #0xC
50C8B4:  PUSH.W          {R8-R11}
50C8B8:  SUB             SP, SP, #0x94
50C8BA:  MOV             R4, R0
50C8BC:  MOV             R6, R1
50C8BE:  LDR             R1, [R4,#0x1C]; CPed *
50C8C0:  MOV             R0, R6; this
50C8C2:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
50C8C6:  LDR             R1, [R4,#0x1C]; CVector *
50C8C8:  ADD.W           R8, R4, #0x10
50C8CC:  MOV             R5, R0
50C8CE:  MOV             R0, R8; this
50C8D0:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
50C8D4:  CMP             R5, R0
50C8D6:  BNE             loc_50C92A
50C8D8:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x50C8E0)
50C8DA:  MOV             R2, SP; CEntity *
50C8DC:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
50C8DE:  LDR             R5, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
50C8E0:  MOV             R0, #0x3F333333
50C8E8:  LDR.W           R9, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50C8EC:  STR             R0, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50C8EE:  MOV             R0, R6; this
50C8F0:  LDR             R1, [R4,#0x1C]; CPed *
50C8F2:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK4CPedR7CEntityR7CVector; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CPed const&,CEntity &,CVector &)
50C8F6:  LDR             R1, [R4,#0x1C]; CVector *
50C8F8:  ADD             R2, SP, #0xB0+var_28; CEntity *
50C8FA:  MOV             R0, R8; this
50C8FC:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK7CVectorR7CEntityRS0_; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CVector const&,CEntity &,CVector&)
50C900:  STR.W           R9, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50C904:  LDR             R0, [R4,#0x20]
50C906:  LDR             R1, [R0]
50C908:  CMP             R1, #7
50C90A:  BGT.W           loc_50CAA4
50C90E:  ADD.W           R1, R1, R1,LSL#1
50C912:  VLDR            D16, [SP,#0xB0+var_B0]
50C916:  LDR             R2, [SP,#0xB0+var_A8]
50C918:  ADD.W           R1, R0, R1,LSL#2
50C91C:  STR             R2, [R1,#0xC]
50C91E:  VSTR            D16, [R1,#4]
50C922:  LDR             R1, [R0]
50C924:  ADDS            R1, #1
50C926:  STR             R1, [R0]
50C928:  B               loc_50CA82
50C92A:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x50C932)
50C92C:  ADD             R2, SP, #0xB0+var_28; CEntity *
50C92E:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
50C930:  LDR             R5, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
50C932:  MOV             R0, #0x3F333333
50C93A:  LDR.W           R10, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50C93E:  STR             R0, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50C940:  MOV             R0, R6; this
50C942:  LDR             R1, [R4,#0x1C]; CPed *
50C944:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK4CPedR7CEntityR7CVector; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CPed const&,CEntity &,CVector &)
50C948:  LDR             R1, [R4,#0x1C]; CVector *
50C94A:  ADD             R2, SP, #0xB0+var_38; CEntity *
50C94C:  MOV             R0, R8; this
50C94E:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK7CVectorR7CEntityRS0_; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CVector const&,CEntity &,CVector&)
50C952:  STR.W           R10, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50C956:  LDR             R5, [R6,#0x14]
50C958:  ADD.W           R1, R5, #0x30 ; '0'
50C95C:  CMP             R5, #0
50C95E:  MOV             R0, R1
50C960:  IT EQ
50C962:  ADDEQ           R0, R6, #4
50C964:  CMP             R5, #0
50C966:  LDRD.W          R9, R11, [R0]
50C96A:  LDR.W           R10, [R0,#8]
50C96E:  LDRD.W          R3, R2, [SP,#0xB0+var_28]
50C972:  LDR             R0, [SP,#0xB0+var_20]
50C974:  BEQ             loc_50C982
50C976:  STR             R3, [R1]
50C978:  LDR             R1, [R6,#0x14]
50C97A:  STR             R2, [R1,#0x34]
50C97C:  LDR             R1, [R6,#0x14]
50C97E:  ADDS            R1, #0x38 ; '8'
50C980:  B               loc_50C98A
50C982:  ADD.W           R1, R6, #0xC
50C986:  STRD.W          R3, R2, [R6,#4]
50C98A:  STR             R0, [R1]
50C98C:  MOV             R1, R6; CPed *
50C98E:  VLDR            D16, [R8]
50C992:  LDR.W           R0, [R8,#8]
50C996:  STR             R0, [SP,#0xB0+var_40]
50C998:  VSTR            D16, [SP,#0xB0+var_48]
50C99C:  LDR             R0, [SP,#0xB0+var_30]
50C99E:  VLDR            D16, [SP,#0xB0+var_38]
50C9A2:  STR.W           R0, [R8,#8]
50C9A6:  MOV             R0, R4; this
50C9A8:  VSTR            D16, [R8]
50C9AC:  BLX             j__ZN24CTaskComplexWalkRoundCar25ComputeRouteRoundSmallCarEPK4CPed; CTaskComplexWalkRoundCar::ComputeRouteRoundSmallCar(CPed const*)
50C9B0:  VLDR            D16, [SP,#0xB0+var_48]
50C9B4:  LDR             R0, [SP,#0xB0+var_40]
50C9B6:  STR.W           R0, [R8,#8]
50C9BA:  VSTR            D16, [R8]
50C9BE:  LDR             R0, [R6,#0x14]
50C9C0:  CBZ             R0, loc_50C9D2
50C9C2:  STR.W           R9, [R0,#0x30]
50C9C6:  LDR             R0, [R6,#0x14]
50C9C8:  STR.W           R11, [R0,#0x34]
50C9CC:  LDR             R0, [R6,#0x14]
50C9CE:  ADDS            R0, #0x38 ; '8'
50C9D0:  B               loc_50C9DA
50C9D2:  ADD.W           R0, R6, #0xC
50C9D6:  STRD.W          R9, R11, [R6,#4]
50C9DA:  STR.W           R10, [R0]
50C9DE:  MOVW            R12, #0x3333
50C9E2:  LDR             R1, [R4,#0x20]
50C9E4:  MOVT            R12, #0x3F33
50C9E8:  LDR             R0, [R1]
50C9EA:  STR             R0, [SP,#0xB0+var_B0]
50C9EC:  CMP             R0, #1
50C9EE:  BLT             loc_50CA10
50C9F0:  MOV             R3, SP
50C9F2:  ADDS            R2, R1, #4
50C9F4:  ADDS            R3, #4
50C9F6:  MOVS            R6, #0
50C9F8:  VLDR            D16, [R2]
50C9FC:  ADDS            R6, #1
50C9FE:  LDR             R5, [R2,#8]
50CA00:  ADDS            R2, #0xC
50CA02:  STR             R5, [R3,#8]
50CA04:  CMP             R6, R0
50CA06:  VSTR            D16, [R3]
50CA0A:  ADD.W           R3, R3, #0xC
50CA0E:  BLT             loc_50C9F8
50CA10:  MOVS            R2, #0
50CA12:  STR             R2, [R1]
50CA14:  LDR             R1, [R4,#0x20]
50CA16:  LDR             R2, [R1]
50CA18:  CMP             R2, #7
50CA1A:  BGT             loc_50CA36
50CA1C:  ADD.W           R2, R2, R2,LSL#1
50CA20:  VLDR            D16, [SP,#0xB0+var_28]
50CA24:  LDR             R3, [SP,#0xB0+var_20]
50CA26:  ADD.W           R2, R1, R2,LSL#2
50CA2A:  STR             R3, [R2,#0xC]
50CA2C:  VSTR            D16, [R2,#4]
50CA30:  LDR             R2, [R1]
50CA32:  ADDS            R2, #1
50CA34:  STR             R2, [R1]
50CA36:  CMP             R0, #1
50CA38:  BLT             loc_50CA6A
50CA3A:  MOV             R1, SP
50CA3C:  MOVS            R2, #0
50CA3E:  ADDS            R1, #4
50CA40:  LDR             R3, [R4,#0x20]; CVector *
50CA42:  LDR             R6, [R3]
50CA44:  CMP             R6, #7
50CA46:  BGT             loc_50CA62
50CA48:  ADD.W           R6, R6, R6,LSL#1
50CA4C:  VLDR            D16, [R1]
50CA50:  LDR             R5, [R1,#8]
50CA52:  ADD.W           R6, R3, R6,LSL#2
50CA56:  STR             R5, [R6,#0xC]
50CA58:  VSTR            D16, [R6,#4]
50CA5C:  LDR             R6, [R3]
50CA5E:  ADDS            R6, #1
50CA60:  STR             R6, [R3]
50CA62:  ADDS            R2, #1
50CA64:  ADDS            R1, #0xC
50CA66:  CMP             R2, R0
50CA68:  BLT             loc_50CA40
50CA6A:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x50CA72)
50CA6C:  ADD             R2, SP, #0xB0+var_28; CEntity *
50CA6E:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
50CA70:  LDR             R5, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
50CA72:  MOV             R0, R8; this
50CA74:  LDR             R6, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50CA76:  STR.W           R12, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50CA7A:  LDR             R1, [R4,#0x1C]; CVector *
50CA7C:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK7CVectorR7CEntityRS0_; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CVector const&,CEntity &,CVector&)
50CA80:  STR             R6, [R5]; CPedGeometryAnalyser::ms_fPedNominalRadius
50CA82:  LDR             R0, [R4,#0x20]
50CA84:  LDR             R1, [R0]
50CA86:  CMP             R1, #7
50CA88:  BGT             loc_50CAA4
50CA8A:  ADD.W           R1, R1, R1,LSL#1
50CA8E:  VLDR            D16, [SP,#0xB0+var_28]
50CA92:  LDR             R2, [SP,#0xB0+var_20]
50CA94:  ADD.W           R1, R0, R1,LSL#2
50CA98:  STR             R2, [R1,#0xC]
50CA9A:  VSTR            D16, [R1,#4]
50CA9E:  LDR             R1, [R0]
50CAA0:  ADDS            R1, #1
50CAA2:  STR             R1, [R0]
50CAA4:  MOVS            R0, #0
50CAA6:  ADD             SP, SP, #0x94
50CAA8:  POP.W           {R8-R11}
50CAAC:  POP             {R4-R7,PC}
