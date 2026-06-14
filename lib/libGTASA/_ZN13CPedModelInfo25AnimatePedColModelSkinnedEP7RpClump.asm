; =========================================================
; Game Engine Function: _ZN13CPedModelInfo25AnimatePedColModelSkinnedEP7RpClump
; Address            : 0x386908 - 0x386AC0
; =========================================================

386908:  PUSH            {R4-R7,LR}
38690A:  ADD             R7, SP, #0xC
38690C:  PUSH.W          {R8-R11}
386910:  SUB             SP, SP, #0x44
386912:  MOV             R5, R0
386914:  MOV             R4, R1
386916:  LDR             R0, [R5,#0x4C]
386918:  CMP             R0, #0
38691A:  BEQ.W           loc_386AAE
38691E:  STR             R5, [SP,#0x60+var_5C]
386920:  LDR             R0, [R0,#0x2C]
386922:  STR             R0, [SP,#0x60+var_50]
386924:  MOV             R0, R4
386926:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
38692A:  STR             R0, [SP,#0x60+var_48]
38692C:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix2E_ptr - 0x386934)
38692E:  LDR             R1, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x386938)
386930:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix2E_ptr
386932:  LDR             R2, [R4,#4]
386934:  ADD             R1, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
386936:  LDR             R0, [R0]; CGame::m_pWorkingMatrix2 ...
386938:  LDR             R1, [R1]; CGame::m_pWorkingMatrix1 ...
38693A:  LDR             R0, [R0]; CGame::m_pWorkingMatrix2
38693C:  STR             R0, [SP,#0x60+var_44]
38693E:  LDR             R0, [R1]; CGame::m_pWorkingMatrix1
386940:  ADD.W           R1, R2, #0x10
386944:  STR             R0, [SP,#0x60+var_4C]
386946:  BLX             j__Z14RwMatrixInvertP11RwMatrixTagPKS_; RwMatrixInvert(RwMatrixTag *,RwMatrixTag const*)
38694A:  LDR             R0, =(_ZN13CPedModelInfo15m_pColNodeInfosE_ptr - 0x386958)
38694C:  MOV.W           R11, #0
386950:  LDRD.W          R10, R9, [SP,#0x60+var_48]
386954:  ADD             R0, PC; _ZN13CPedModelInfo15m_pColNodeInfosE_ptr
386956:  LDR             R0, [R0]; CPedModelInfo::m_pColNodeInfos ...
386958:  ADD.W           R8, R0, #0xC
38695C:  LDR.W           R0, [R8]
386960:  ADD.W           R4, R9, #0x30 ; '0'
386964:  LDR             R1, [SP,#0x60+var_4C]
386966:  ADD.W           R5, R9, #0x20 ; ' '
38696A:  STR             R0, [SP,#0x60+var_28]
38696C:  LDR.W           R0, [R8,#4]
386970:  ADD.W           R2, R1, #0x30 ; '0'
386974:  STR             R0, [SP,#0x60+var_28+4]
386976:  LDR.W           R0, [R8,#8]
38697A:  STR             R0, [SP,#0x60+var_20]
38697C:  MOV             R0, R1
38697E:  VLD1.32         {D16-D17}, [R0]!
386982:  ADDS            R1, #0x20 ; ' '
386984:  STR             R2, [SP,#0x60+var_54]
386986:  VLD1.32         {D18-D19}, [R2]
38698A:  STR             R1, [SP,#0x60+var_58]
38698C:  VLD1.32         {D20-D21}, [R1]
386990:  VLD1.32         {D22-D23}, [R0]
386994:  MOV             R0, R9
386996:  VST1.32         {D18-D19}, [R4]
38699A:  VST1.32         {D20-D21}, [R5]
38699E:  VST1.32         {D16-D17}, [R0]!
3869A2:  VST1.32         {D22-D23}, [R0]
3869A6:  MOV             R0, R10
3869A8:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
3869AC:  LDR.W           R1, [R8,#-8]
3869B0:  MOV             R6, R0
3869B2:  MOV             R0, R10
3869B4:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
3869B8:  ADD.W           R1, R6, R0,LSL#6
3869BC:  MOV             R0, R9
3869BE:  MOVS            R2, #1
3869C0:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
3869C4:  ADD             R0, SP, #0x60+var_28
3869C6:  MOVS            R2, #1
3869C8:  MOV             R3, R9
3869CA:  MOV             R1, R0
3869CC:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
3869D0:  LDR             R0, [SP,#0x60+var_50]
3869D2:  ADD.W           R8, R8, #0x1C
3869D6:  VLDR            D16, [SP,#0x60+var_28]
3869DA:  LDR             R1, [SP,#0x60+var_20]
3869DC:  LDR             R0, [R0,#8]
3869DE:  ADD             R0, R11
3869E0:  ADD.W           R11, R11, #0x14
3869E4:  CMP.W           R11, #0xF0
3869E8:  STR             R1, [R0,#8]
3869EA:  VSTR            D16, [R0]
3869EE:  BNE             loc_38695C
3869F0:  MOVS            R0, #0
3869F2:  STRD.W          R0, R0, [SP,#0x60+var_28]
3869F6:  LDR             R1, [SP,#0x60+var_54]
3869F8:  STR             R0, [SP,#0x60+var_20]
3869FA:  VLD1.32         {D18-D19}, [R1]
3869FE:  LDR             R1, [SP,#0x60+var_58]
386A00:  LDR             R0, [SP,#0x60+var_4C]
386A02:  VLD1.32         {D20-D21}, [R1]
386A06:  MOVS            R1, #3
386A08:  VLD1.32         {D16-D17}, [R0]!
386A0C:  VLD1.32         {D22-D23}, [R0]
386A10:  VST1.32         {D18-D19}, [R4]
386A14:  VST1.32         {D20-D21}, [R5]
386A18:  LDR             R5, [SP,#0x60+var_44]
386A1A:  MOV             R0, R5
386A1C:  VST1.32         {D16-D17}, [R0]!
386A20:  VST1.32         {D22-D23}, [R0]
386A24:  LDR             R6, [SP,#0x60+var_48]
386A26:  MOV             R0, R6
386A28:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
386A2C:  MOV             R4, R0
386A2E:  MOV             R0, R6
386A30:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
386A34:  ADD.W           R1, R0, R4,LSL#6
386A38:  MOV             R0, R5
386A3A:  MOVS            R2, #1
386A3C:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
386A40:  ADD             R4, SP, #0x60+var_28
386A42:  MOVS            R2, #1
386A44:  MOV             R3, R5
386A46:  MOV             R0, R4
386A48:  MOV             R1, R4
386A4A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
386A4E:  LDR             R5, [SP,#0x60+var_5C]
386A50:  MOV.W           R1, #0x3FC00000; float
386A54:  MOV             R2, R4; CVector *
386A56:  LDR             R0, [R5,#0x4C]
386A58:  ADDS            R0, #0x18; this
386A5A:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
386A5E:  VLDR            S0, =-1.2
386A62:  ADD             R1, SP, #0x60+var_34; CVector *
386A64:  VLDR            S2, [SP,#0x60+var_28]
386A68:  ADD             R2, SP, #0x60+var_40; CVector *
386A6A:  VLDR            S4, [SP,#0x60+var_28+4]
386A6E:  VLDR            S6, [SP,#0x60+var_20]
386A72:  VADD.F32        S8, S2, S0
386A76:  VLDR            S12, =1.2
386A7A:  VADD.F32        S10, S4, S0
386A7E:  VADD.F32        S0, S6, S0
386A82:  LDR             R0, [R5,#0x4C]; this
386A84:  VADD.F32        S4, S4, S12
386A88:  VADD.F32        S2, S2, S12
386A8C:  VADD.F32        S6, S6, S12
386A90:  VSTR            S8, [SP,#0x60+var_34]
386A94:  VSTR            S10, [SP,#0x60+var_30]
386A98:  VSTR            S0, [SP,#0x60+var_2C]
386A9C:  VSTR            S4, [SP,#0x60+var_3C]
386AA0:  VSTR            S2, [SP,#0x60+var_40]
386AA4:  VSTR            S6, [SP,#0x60+var_38]
386AA8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
386AAC:  B               loc_386AB6
386AAE:  MOV             R0, R5
386AB0:  MOV             R1, R4
386AB2:  BLX             j__ZN13CPedModelInfo24CreateHitColModelSkinnedEP7RpClump; CPedModelInfo::CreateHitColModelSkinned(RpClump *)
386AB6:  LDR             R0, [R5,#0x4C]
386AB8:  ADD             SP, SP, #0x44 ; 'D'
386ABA:  POP.W           {R8-R11}
386ABE:  POP             {R4-R7,PC}
