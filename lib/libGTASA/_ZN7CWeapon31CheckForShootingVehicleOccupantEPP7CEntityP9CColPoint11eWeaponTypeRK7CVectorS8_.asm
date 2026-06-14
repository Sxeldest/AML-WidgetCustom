; =========================================================
; Game Engine Function: _ZN7CWeapon31CheckForShootingVehicleOccupantEPP7CEntityP9CColPoint11eWeaponTypeRK7CVectorS8_
; Address            : 0x5DF7F4 - 0x5DFB26
; =========================================================

5DF7F4:  PUSH            {R4-R7,LR}
5DF7F6:  ADD             R7, SP, #0xC
5DF7F8:  PUSH.W          {R8-R11}
5DF7FC:  SUB             SP, SP, #4
5DF7FE:  VPUSH           {D8}
5DF802:  SUB             SP, SP, #0xD8
5DF804:  STR             R0, [SP,#0x100+var_EC]
5DF806:  MOV             R4, R3
5DF808:  LDR             R6, [R0]
5DF80A:  MOV             R5, R1
5DF80C:  LDRB.W          R0, [R6,#0x3A]
5DF810:  AND.W           R0, R0, #7
5DF814:  CMP             R0, #2
5DF816:  BNE.W           loc_5DFB18
5DF81A:  ADD             R0, SP, #0x100+var_54
5DF81C:  MOV             R1, R5
5DF81E:  LDR.W           R8, [R7,#arg_0]
5DF822:  BLX.W           j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
5DF826:  MOV.W           R0, #0x3F800000
5DF82A:  MOV             R1, R4; CVector *
5DF82C:  STR             R0, [SP,#0x100+var_90]
5DF82E:  ADD             R0, SP, #0x100+var_E8; this
5DF830:  MOV             R2, R8; CVector *
5DF832:  STR             R4, [SP,#0x100+var_F4]
5DF834:  BLX.W           j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
5DF838:  VLD1.64         {D16-D17}, [R0]!
5DF83C:  VLD1.64         {D18-D19}, [R0]
5DF840:  ADD             R0, SP, #0x100+var_78
5DF842:  VST1.64         {D16-D17}, [R0]!
5DF846:  VST1.64         {D18-D19}, [R0]
5DF84A:  LDR.W           R0, [R6,#0x464]
5DF84E:  CMP             R0, #0
5DF850:  BEQ             loc_5DF8E2
5DF852:  LDRB.W          R1, [R0,#0x48B]
5DF856:  MOVS            R4, #0
5DF858:  LSLS            R1, R1, #0x1D
5DF85A:  BPL             loc_5DF8E4
5DF85C:  STRD.W          R4, R4, [SP,#0x100+var_E8]
5DF860:  STR             R4, [SP,#0x100+var_E0]
5DF862:  LDR             R0, [R0,#0x18]
5DF864:  BLX.W           j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
5DF868:  MOV             R9, R0
5DF86A:  LDR.W           R0, [R6,#0x464]
5DF86E:  LDR.W           R0, [R0,#0x49C]
5DF872:  LDR             R1, [R0,#0x14]
5DF874:  MOV             R0, R9
5DF876:  BLX.W           j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5DF87A:  MOV             R8, R0
5DF87C:  MOV             R0, R9
5DF87E:  BLX.W           j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5DF882:  ADD.W           R3, R0, R8,LSL#6
5DF886:  ADD             R0, SP, #0x100+var_E8
5DF888:  MOVS            R2, #1
5DF88A:  MOV             R1, R0
5DF88C:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5DF890:  VLDR            S2, [SP,#0x100+var_E0]
5DF894:  ADD.W           R8, SP, #0x100+var_8C
5DF898:  VLDR            S0, =0.1
5DF89C:  ADD             R2, SP, #0x100+var_A0; CVector *
5DF89E:  LDRD.W          R0, R1, [SP,#0x100+var_E8]
5DF8A2:  MOVS            R3, #0; unsigned __int8
5DF8A4:  VADD.F32        S0, S2, S0
5DF8A8:  STRD.W          R0, R1, [SP,#0x100+var_A0]
5DF8AC:  MOVS            R0, #0xFF
5DF8AE:  MOVS            R1, #9
5DF8B0:  VSTR            S0, [SP,#0x100+var_98]
5DF8B4:  STRD.W          R1, R0, [SP,#0x100+var_100]; unsigned __int8
5DF8B8:  MOV             R1, #0x3E4CCCCD; float
5DF8C0:  MOV             R0, R8; this
5DF8C2:  BLX.W           j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5DF8C6:  ADD             R0, SP, #0x100+var_78
5DF8C8:  ADD             R3, SP, #0x100+var_90
5DF8CA:  MOV             R1, R8
5DF8CC:  MOV             R2, R5
5DF8CE:  BLX.W           j__ZN10CCollision17ProcessLineSphereERK8CColLineRK10CColSphereR9CColPointRf; CCollision::ProcessLineSphere(CColLine const&,CColSphere const&,CColPoint &,float &)
5DF8D2:  CMP             R0, #1
5DF8D4:  ITTTT EQ
5DF8D6:  LDREQ.W         R0, [R6,#0x464]
5DF8DA:  LDREQ           R1, [SP,#0x100+var_EC]
5DF8DC:  STREQ           R0, [R1]
5DF8DE:  MOVEQ           R4, #1
5DF8E0:  B               loc_5DF8E4
5DF8E2:  MOVS            R4, #0
5DF8E4:  ADD.W           R10, SP, #0x100+var_E8
5DF8E8:  VLDR            S16, =0.1
5DF8EC:  ADD.W           R8, SP, #0x100+var_8C
5DF8F0:  MOV.W           R11, #0x11A
5DF8F4:  STR             R4, [SP,#0x100+var_F0]
5DF8F6:  LDR.W           R0, [R6,R11,LSL#2]
5DF8FA:  CMP             R0, #0
5DF8FC:  BEQ             loc_5DF986
5DF8FE:  LDRB.W          R1, [R0,#0x48B]
5DF902:  LSLS            R1, R1, #0x1D
5DF904:  BPL             loc_5DF986
5DF906:  MOVS            R1, #0
5DF908:  STRD.W          R1, R1, [SP,#0x100+var_E8]
5DF90C:  STR             R1, [SP,#0x100+var_E0]
5DF90E:  LDR             R0, [R0,#0x18]
5DF910:  BLX.W           j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
5DF914:  MOV             R4, R0
5DF916:  LDR.W           R0, [R6,R11,LSL#2]
5DF91A:  LDR.W           R0, [R0,#0x49C]
5DF91E:  LDR             R1, [R0,#0x14]
5DF920:  MOV             R0, R4
5DF922:  BLX.W           j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5DF926:  MOV             R9, R0
5DF928:  MOV             R0, R4
5DF92A:  BLX.W           j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5DF92E:  ADD.W           R3, R0, R9,LSL#6
5DF932:  MOV             R0, R10
5DF934:  MOV             R1, R10
5DF936:  MOVS            R2, #1
5DF938:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5DF93C:  VLDR            S0, [SP,#0x100+var_E0]
5DF940:  ADD             R2, SP, #0x100+var_A0; CVector *
5DF942:  LDRD.W          R0, R1, [SP,#0x100+var_E8]
5DF946:  MOVS            R3, #0; unsigned __int8
5DF948:  VADD.F32        S0, S0, S16
5DF94C:  STRD.W          R0, R1, [SP,#0x100+var_A0]
5DF950:  MOVS            R0, #9
5DF952:  MOVW            R1, #0xCCCD
5DF956:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
5DF958:  MOVS            R0, #0xFF
5DF95A:  STR             R0, [SP,#0x100+var_FC]; unsigned __int8
5DF95C:  MOV             R0, R8; this
5DF95E:  MOVT            R1, #0x3E4C; float
5DF962:  VSTR            S0, [SP,#0x100+var_98]
5DF966:  BLX.W           j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5DF96A:  ADD             R0, SP, #0x100+var_78
5DF96C:  ADD             R3, SP, #0x100+var_90
5DF96E:  MOV             R1, R8
5DF970:  MOV             R2, R5
5DF972:  BLX.W           j__ZN10CCollision17ProcessLineSphereERK8CColLineRK10CColSphereR9CColPointRf; CCollision::ProcessLineSphere(CColLine const&,CColSphere const&,CColPoint &,float &)
5DF976:  CMP             R0, #1
5DF978:  BNE             loc_5DF986
5DF97A:  LDR             R1, [SP,#0x100+var_EC]
5DF97C:  LDR.W           R0, [R6,R11,LSL#2]
5DF980:  STR             R0, [R1]
5DF982:  MOVS            R0, #1
5DF984:  STR             R0, [SP,#0x100+var_F0]
5DF986:  ADD.W           R11, R11, #1
5DF98A:  CMP.W           R11, #0x122
5DF98E:  BNE             loc_5DF8F6
5DF990:  LDR.W           R0, [R6,#0x5A0]
5DF994:  CMP             R0, #0
5DF996:  BNE.W           loc_5DFB06
5DF99A:  LDR             R0, [SP,#0x100+var_F4]
5DF99C:  VLDR            S0, [R0]
5DF9A0:  VLDR            S2, [R0,#4]
5DF9A4:  VLDR            S4, [R0,#8]
5DF9A8:  LDR             R0, [R7,#arg_0]
5DF9AA:  VLDR            S6, [R0]
5DF9AE:  VLDR            S8, [R0,#4]
5DF9B2:  VSUB.F32        S0, S6, S0
5DF9B6:  VLDR            S10, [R0,#8]
5DF9BA:  VSUB.F32        S2, S8, S2
5DF9BE:  LDR             R0, [R6,#0x14]
5DF9C0:  VSUB.F32        S4, S10, S4
5DF9C4:  VLDR            S6, [R0,#0x10]
5DF9C8:  VLDR            S8, [R0,#0x14]
5DF9CC:  VLDR            S12, [R0,#0x18]
5DF9D0:  VMUL.F32        S6, S0, S6
5DF9D4:  VMUL.F32        S8, S2, S8
5DF9D8:  VMUL.F32        S10, S4, S12
5DF9DC:  VADD.F32        S6, S6, S8
5DF9E0:  VADD.F32        S6, S6, S10
5DF9E4:  VCMPE.F32       S6, #0.0
5DF9E8:  VMRS            APSR_nzcv, FPSCR
5DF9EC:  BGE.W           loc_5DFB06
5DF9F0:  VLDR            S6, [R0,#0x20]
5DF9F4:  VLDR            S8, [R0,#0x24]
5DF9F8:  VMUL.F32        S0, S0, S6
5DF9FC:  VLDR            S10, [R0,#0x28]
5DFA00:  VMUL.F32        S2, S2, S8
5DFA04:  VMUL.F32        S4, S4, S10
5DFA08:  VADD.F32        S0, S0, S2
5DFA0C:  VADD.F32        S0, S0, S4
5DFA10:  VCMPE.F32       S0, #0.0
5DFA14:  VMRS            APSR_nzcv, FPSCR
5DFA18:  BLE             loc_5DFA22
5DFA1A:  LDRB.W          R0, [R6,#0x42D]
5DFA1E:  LSLS            R0, R0, #0x1D
5DFA20:  BPL             loc_5DFB06
5DFA22:  MOV             R0, R6; this
5DFA24:  BLX.W           j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5DFA28:  MOV             R9, R0
5DFA2A:  LDR.W           R4, [R9,#0x2C]
5DFA2E:  LDRSH.W         R0, [R4,#4]
5DFA32:  CMP             R0, #1
5DFA34:  BLT             loc_5DFB06
5DFA36:  ADD.W           R8, SP, #0x100+var_E8
5DFA3A:  LDR             R0, [R6,#0x14]; CMatrix *
5DFA3C:  MOV             R10, R5
5DFA3E:  MOV             R1, R8; CMatrix *
5DFA40:  BLX.W           j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
5DFA44:  MOV             R1, R0; CMatrix *
5DFA46:  MOV             R0, R8; this
5DFA48:  BLX.W           j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
5DFA4C:  ADD             R5, SP, #0x100+var_78
5DFA4E:  ADD             R0, SP, #0x100+var_A0
5DFA50:  MOV             R1, R8
5DFA52:  MOV             R2, R5
5DFA54:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5DFA58:  LDR             R0, [SP,#0x100+var_98]
5DFA5A:  ADD.W           R2, R5, #0x10
5DFA5E:  STR             R0, [SP,#0x100+var_70]
5DFA60:  ADD             R0, SP, #0x100+var_A0
5DFA62:  VLDR            D16, [SP,#0x100+var_A0]
5DFA66:  MOV             R1, R8
5DFA68:  VSTR            D16, [SP,#0x100+var_78]
5DFA6C:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5DFA70:  LDR             R0, [SP,#0x100+var_98]
5DFA72:  VLDR            D16, [SP,#0x100+var_A0]
5DFA76:  STR             R0, [SP,#0x100+var_60]
5DFA78:  MOV             R0, R9; this
5DFA7A:  VSTR            D16, [SP,#0x100+var_68]
5DFA7E:  BLX.W           j__ZN10CCollision23CalculateTrianglePlanesEP9CColModel; CCollision::CalculateTrianglePlanes(CColModel *)
5DFA82:  LDRSH.W         R0, [R4,#4]
5DFA86:  CMP             R0, #1
5DFA88:  BLT             loc_5DFAFE
5DFA8A:  LDR             R0, =(g_surfaceInfos_ptr - 0x5DFA96)
5DFA8C:  ADD.W           R8, SP, #0x100+var_78
5DFA90:  MOVS            R5, #0
5DFA92:  ADD             R0, PC; g_surfaceInfos_ptr
5DFA94:  LDR.W           R9, [R0]; g_surfaceInfos
5DFA98:  LDR             R0, [R4,#0x18]
5DFA9A:  ADD.W           R0, R0, R5,LSL#4
5DFA9E:  LDRB            R1, [R0,#0xC]; unsigned int
5DFAA0:  MOV             R0, R9; this
5DFAA2:  BLX.W           j__ZN14SurfaceInfos_c7IsGlassEj; SurfaceInfos_c::IsGlass(uint)
5DFAA6:  CBZ             R0, loc_5DFAC2
5DFAA8:  LDRD.W          R1, R0, [R4,#0x14]
5DFAAC:  ADD.W           R2, R0, R5,LSL#4
5DFAB0:  LDR             R3, [R4,#0x1C]
5DFAB2:  ADD.W           R0, R5, R5,LSL#2
5DFAB6:  ADD.W           R3, R3, R0,LSL#2
5DFABA:  MOV             R0, R8
5DFABC:  BLX.W           j__ZN10CCollision16TestLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestLineTriangle(CColLine const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
5DFAC0:  CBNZ            R0, loc_5DFAD0
5DFAC2:  ADDS            R1, R5, #1
5DFAC4:  LDRSH.W         R0, [R4,#4]
5DFAC8:  SXTH            R5, R1
5DFACA:  CMP             R5, R0
5DFACC:  BLT             loc_5DFA98
5DFACE:  B               loc_5DFAFE
5DFAD0:  ADDW            R5, R6, #0x5B4
5DFAD4:  MOVS            R1, #4; unsigned __int8
5DFAD6:  MOV             R0, R5; this
5DFAD8:  BLX.W           j__ZN14CDamageManager19ProgressPanelDamageEh; CDamageManager::ProgressPanelDamage(uchar)
5DFADC:  CMP             R0, #1
5DFADE:  BNE             loc_5DFAFE
5DFAE0:  MOV             R0, R5; this
5DFAE2:  MOVS            R1, #4; int
5DFAE4:  BLX.W           j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
5DFAE8:  CMP             R0, #2
5DFAEA:  BNE             loc_5DFAF4
5DFAEC:  MOV             R0, R5; this
5DFAEE:  MOVS            R1, #4; unsigned __int8
5DFAF0:  BLX.W           j__ZN14CDamageManager19ProgressPanelDamageEh; CDamageManager::ProgressPanelDamage(uchar)
5DFAF4:  MOV             R0, R6
5DFAF6:  MOVS            R1, #4
5DFAF8:  MOVS            R2, #1
5DFAFA:  BLX.W           j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
5DFAFE:  ADD             R0, SP, #0x100+var_E8; this
5DFB00:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5DFB04:  MOV             R5, R10
5DFB06:  LDR             R0, [SP,#0x100+var_F0]
5DFB08:  LSLS            R0, R0, #0x1F
5DFB0A:  BNE             loc_5DFB18
5DFB0C:  LDR             R0, [SP,#0x100+var_EC]
5DFB0E:  ADD             R1, SP, #0x100+var_54
5DFB10:  STR             R6, [R0]
5DFB12:  MOV             R0, R5
5DFB14:  BLX.W           j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
5DFB18:  ADD             SP, SP, #0xD8
5DFB1A:  VPOP            {D8}
5DFB1E:  ADD             SP, SP, #4
5DFB20:  POP.W           {R8-R11}
5DFB24:  POP             {R4-R7,PC}
