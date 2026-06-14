; =========================================================
; Game Engine Function: _ZN10CCollision29CheckCameraCollisionBuildingsEiiP7CColBoxP10CColSphereS3_S3_
; Address            : 0x2DE978 - 0x2DEACC
; =========================================================

2DE978:  PUSH            {R4-R7,LR}
2DE97A:  ADD             R7, SP, #0xC
2DE97C:  PUSH.W          {R8-R11}
2DE980:  SUB             SP, SP, #0x44
2DE982:  MOV.W           R8, #0
2DE986:  CMP             R0, #0
2DE988:  IT LE
2DE98A:  MOVLE           R0, R8
2DE98C:  MOV             R4, R3
2DE98E:  MOVS            R3, #0x77 ; 'w'
2DE990:  CMP             R0, #0x77 ; 'w'
2DE992:  IT GE
2DE994:  MOVGE           R0, R3
2DE996:  CMP             R1, #0
2DE998:  LDR             R2, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2DE9A4)
2DE99A:  IT LE
2DE99C:  MOVLE           R1, R8
2DE99E:  CMP             R1, #0x77 ; 'w'
2DE9A0:  ADD             R2, PC; _ZN6CWorld11ms_aSectorsE_ptr
2DE9A2:  IT GE
2DE9A4:  MOVGE           R1, R3
2DE9A6:  RSB.W           R1, R1, R1,LSL#4
2DE9AA:  LDR             R2, [R2]; CWorld::ms_aSectors ...
2DE9AC:  ADD.W           R0, R0, R1,LSL#3
2DE9B0:  MOVS            R1, #0; bool
2DE9B2:  LDR.W           R9, [R2,R0,LSL#3]
2DE9B6:  MOV.W           R0, #0xFFFFFFFF; int
2DE9BA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2DE9BE:  CMP             R0, #0
2DE9C0:  ITT NE
2DE9C2:  LDRBNE.W        R0, [R0,#0x47]
2DE9C6:  ANDNE.W         R8, R0, #1
2DE9CA:  CMP.W           R9, #0
2DE9CE:  BEQ             loc_2DEABA
2DE9D0:  ADD             R0, SP, #0x60+var_30
2DE9D2:  ADDS            R0, #4
2DE9D4:  STR             R0, [SP,#0x60+var_44]
2DE9D6:  ADDS            R0, R4, #4
2DE9D8:  STR             R0, [SP,#0x60+var_48]
2DE9DA:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2DE9E0)
2DE9DC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2DE9DE:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
2DE9E2:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x2DE9E8)
2DE9E4:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
2DE9E6:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
2DE9E8:  STR             R0, [SP,#0x60+var_54]
2DE9EA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2DE9F0)
2DE9EC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2DE9EE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2DE9F0:  STR             R0, [SP,#0x60+var_4C]
2DE9F2:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x2DE9F8)
2DE9F4:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
2DE9F6:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
2DE9F8:  STR             R0, [SP,#0x60+var_50]
2DE9FA:  MOVS            R0, #0
2DE9FC:  STR             R0, [SP,#0x60+var_40]
2DE9FE:  LDR.W           R5, [R9]
2DEA02:  LDRH.W          R0, [R10]; CWorld::ms_nCurrentScanCode
2DEA06:  LDRH            R1, [R5,#0x30]
2DEA08:  CMP             R1, R0
2DEA0A:  BEQ             loc_2DEAAE
2DEA0C:  CMP.W           R8, #0
2DEA10:  STRH            R0, [R5,#0x30]
2DEA12:  BEQ             loc_2DEA22
2DEA14:  MOV             R0, R5; this
2DEA16:  BLX             j__ZN7CEntity24DoesNotCollideWithFlyersEv; CEntity::DoesNotCollideWithFlyers(void)
2DEA1A:  CMP             R0, #0
2DEA1C:  BNE             loc_2DEAAE
2DEA1E:  LDR             R0, [SP,#0x60+var_54]
2DEA20:  B               loc_2DEA24
2DEA22:  LDR             R0, [SP,#0x60+var_50]
2DEA24:  LDR             R0, [R0]
2DEA26:  CMP             R0, R5
2DEA28:  BEQ             loc_2DEAAE
2DEA2A:  LDRSH.W         R0, [R5,#0x26]
2DEA2E:  ADD.W           R11, SP, #0x60+var_3C
2DEA32:  LDR             R1, [SP,#0x60+var_4C]
2DEA34:  LDR.W           R0, [R1,R0,LSL#2]
2DEA38:  MOV             R1, R5
2DEA3A:  LDR             R0, [R0,#0x2C]
2DEA3C:  LDR             R6, [R0,#0x24]
2DEA3E:  MOV             R0, R11; this
2DEA40:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
2DEA44:  MOVS            R0, #0
2DEA46:  MOV             R1, R6; float
2DEA48:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
2DEA4A:  MOVS            R0, #0xFF
2DEA4C:  STR             R0, [SP,#0x60+var_5C]; unsigned __int8
2DEA4E:  ADD             R0, SP, #0x60+var_30; this
2DEA50:  MOV             R2, R11; CVector *
2DEA52:  MOVS            R3, #0; unsigned __int8
2DEA54:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
2DEA58:  LDR             R0, [SP,#0x60+var_44]
2DEA5A:  VLDR            S0, [R4]
2DEA5E:  VLDR            S4, [SP,#0x60+var_30]
2DEA62:  VLDR            D16, [R0]
2DEA66:  VSUB.F32        S0, S0, S4
2DEA6A:  LDR             R0, [SP,#0x60+var_48]
2DEA6C:  VLDR            S2, [R4,#0xC]
2DEA70:  VLDR            S6, [SP,#0x60+var_24]
2DEA74:  VLDR            D17, [R0]
2DEA78:  VSUB.F32        D16, D17, D16
2DEA7C:  VADD.F32        S2, S2, S6
2DEA80:  VMUL.F32        S0, S0, S0
2DEA84:  VMUL.F32        D2, D16, D16
2DEA88:  VMUL.F32        S2, S2, S2
2DEA8C:  VADD.F32        S0, S0, S4
2DEA90:  VADD.F32        S0, S0, S5
2DEA94:  VCMPE.F32       S0, S2
2DEA98:  VMRS            APSR_nzcv, FPSCR
2DEA9C:  BGE             loc_2DEAAE
2DEA9E:  LDRD.W          R0, R1, [R7,#arg_0]; CColSphere *
2DEAA2:  MOV             R2, R5; CColSphere *
2DEAA4:  BLX             j__ZN10CCollision18SphereCastVsEntityEP10CColSphereS1_P7CEntity; CCollision::SphereCastVsEntity(CColSphere *,CColSphere *,CEntity *)
2DEAA8:  LDR             R1, [SP,#0x60+var_40]
2DEAAA:  ORRS            R1, R0
2DEAAC:  STR             R1, [SP,#0x60+var_40]
2DEAAE:  LDR.W           R9, [R9,#4]
2DEAB2:  CMP.W           R9, #0
2DEAB6:  BNE             loc_2DE9FE
2DEAB8:  B               loc_2DEABE
2DEABA:  MOVS            R0, #0
2DEABC:  STR             R0, [SP,#0x60+var_40]
2DEABE:  LDR             R0, [SP,#0x60+var_40]
2DEAC0:  AND.W           R0, R0, #1
2DEAC4:  ADD             SP, SP, #0x44 ; 'D'
2DEAC6:  POP.W           {R8-R11}
2DEACA:  POP             {R4-R7,PC}
