; =========================================================
; Game Engine Function: _ZN13CPedModelInfo30AnimatePedColModelSkinnedWorldEP7RpClump
; Address            : 0x386AD4 - 0x386BEA
; =========================================================

386AD4:  PUSH            {R4-R7,LR}
386AD6:  ADD             R7, SP, #0xC
386AD8:  PUSH.W          {R8-R11}
386ADC:  SUB             SP, SP, #0x24
386ADE:  MOV             R8, R0
386AE0:  MOV             R5, R1
386AE2:  LDR.W           R0, [R8,#0x4C]
386AE6:  CBNZ            R0, loc_386AF4
386AE8:  MOV             R0, R8
386AEA:  MOV             R1, R5
386AEC:  BLX             j__ZN13CPedModelInfo24CreateHitColModelSkinnedEP7RpClump; CPedModelInfo::CreateHitColModelSkinned(RpClump *)
386AF0:  LDR.W           R0, [R8,#0x4C]
386AF4:  LDR.W           R9, [R0,#0x2C]
386AF8:  MOV             R0, R5
386AFA:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
386AFE:  MOV             R11, R0
386B00:  LDR             R0, =(_ZN13CPedModelInfo15m_pColNodeInfosE_ptr - 0x386B0C)
386B02:  ADD.W           R10, SP, #0x40+var_28
386B06:  MOVS            R5, #0
386B08:  ADD             R0, PC; _ZN13CPedModelInfo15m_pColNodeInfosE_ptr
386B0A:  LDR             R0, [R0]; CPedModelInfo::m_pColNodeInfos ...
386B0C:  ADD.W           R6, R0, #0xC
386B10:  LDR             R0, [R6]
386B12:  STR             R0, [SP,#0x40+var_28]
386B14:  LDR             R0, [R6,#4]
386B16:  STR             R0, [SP,#0x40+var_28+4]
386B18:  LDR             R0, [R6,#8]
386B1A:  STR             R0, [SP,#0x40+var_20]
386B1C:  MOV             R0, R11
386B1E:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
386B22:  LDR.W           R1, [R6,#-8]
386B26:  MOV             R4, R0
386B28:  MOV             R0, R11
386B2A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
386B2E:  ADD.W           R3, R4, R0,LSL#6
386B32:  MOV             R0, R10
386B34:  MOV             R1, R10
386B36:  MOVS            R2, #1
386B38:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
386B3C:  LDR.W           R0, [R9,#8]
386B40:  ADDS            R6, #0x1C
386B42:  VLDR            D16, [SP,#0x40+var_28]
386B46:  ADD             R0, R5
386B48:  ADDS            R5, #0x14
386B4A:  LDR             R1, [SP,#0x40+var_20]
386B4C:  CMP             R5, #0xF0
386B4E:  STR             R1, [R0,#8]
386B50:  VSTR            D16, [R0]
386B54:  BNE             loc_386B10
386B56:  MOVS            R0, #0
386B58:  MOVS            R1, #3
386B5A:  STRD.W          R0, R0, [SP,#0x40+var_28]
386B5E:  STR             R0, [SP,#0x40+var_20]
386B60:  MOV             R0, R11
386B62:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
386B66:  MOV             R6, R0
386B68:  MOV             R0, R11
386B6A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
386B6E:  ADD             R5, SP, #0x40+var_28
386B70:  ADD.W           R3, R0, R6,LSL#6
386B74:  MOVS            R2, #1
386B76:  MOV             R0, R5
386B78:  MOV             R1, R5
386B7A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
386B7E:  LDR.W           R0, [R8,#0x4C]
386B82:  MOV.W           R1, #0x3FC00000; float
386B86:  MOV             R2, R5; CVector *
386B88:  ADDS            R0, #0x18; this
386B8A:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
386B8E:  VLDR            S0, =-1.2
386B92:  ADD             R1, SP, #0x40+var_34; CVector *
386B94:  VLDR            S2, [SP,#0x40+var_28]
386B98:  MOV             R2, SP; CVector *
386B9A:  VLDR            S4, [SP,#0x40+var_28+4]
386B9E:  VLDR            S6, [SP,#0x40+var_20]
386BA2:  VADD.F32        S8, S2, S0
386BA6:  VLDR            S12, =1.2
386BAA:  VADD.F32        S10, S4, S0
386BAE:  VADD.F32        S0, S6, S0
386BB2:  LDR.W           R0, [R8,#0x4C]; this
386BB6:  VADD.F32        S4, S4, S12
386BBA:  VADD.F32        S2, S2, S12
386BBE:  VADD.F32        S6, S6, S12
386BC2:  VSTR            S8, [SP,#0x40+var_34]
386BC6:  VSTR            S10, [SP,#0x40+var_30]
386BCA:  VSTR            S0, [SP,#0x40+var_2C]
386BCE:  VSTR            S4, [SP,#0x40+var_3C]
386BD2:  VSTR            S2, [SP,#0x40+var_40]
386BD6:  VSTR            S6, [SP,#0x40+var_38]
386BDA:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
386BDE:  LDR.W           R0, [R8,#0x4C]
386BE2:  ADD             SP, SP, #0x24 ; '$'
386BE4:  POP.W           {R8-R11}
386BE8:  POP             {R4-R7,PC}
