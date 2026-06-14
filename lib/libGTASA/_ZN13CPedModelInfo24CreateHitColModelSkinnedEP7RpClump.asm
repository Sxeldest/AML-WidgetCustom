; =========================================================
; Game Engine Function: _ZN13CPedModelInfo24CreateHitColModelSkinnedEP7RpClump
; Address            : 0x3866C0 - 0x386820
; =========================================================

3866C0:  PUSH            {R4-R7,LR}
3866C2:  ADD             R7, SP, #0xC
3866C4:  PUSH.W          {R8-R11}
3866C8:  SUB             SP, SP, #0x3C
3866CA:  MOV             R10, R1
3866CC:  STR             R0, [SP,#0x58+var_48]
3866CE:  MOV             R0, R10
3866D0:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
3866D4:  MOV             R11, R0
3866D6:  MOVS            R0, #word_30; this
3866D8:  BLX             j__ZN9CColModelnwEj; CColModel::operator new(uint)
3866DC:  MOV             R6, R0
3866DE:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
3866E2:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix2E_ptr - 0x3866F0)
3866E4:  MOV.W           R8, #0
3866E8:  LDR             R1, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x3866F4)
3866EA:  MOVS            R2, #0; int
3866EC:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix2E_ptr
3866EE:  MOVS            R3, #0; int
3866F0:  ADD             R1, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
3866F2:  LDR             R0, [R0]; CGame::m_pWorkingMatrix2 ...
3866F4:  LDR             R1, [R1]; CGame::m_pWorkingMatrix1 ...
3866F6:  LDR             R4, [R0]; CGame::m_pWorkingMatrix2
3866F8:  MOV             R0, R6; this
3866FA:  LDR             R5, [R1]; CGame::m_pWorkingMatrix1
3866FC:  MOVS            R1, #0xC; int
3866FE:  STRD.W          R8, R8, [SP,#0x58+var_58]; int
386702:  STR.W           R8, [SP,#0x58+var_50]; bool
386706:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
38670A:  LDR.W           R0, [R10,#4]
38670E:  ADD.W           R1, R0, #0x10
386712:  MOV             R0, R5
386714:  BLX             j__Z14RwMatrixInvertP11RwMatrixTagPKS_; RwMatrixInvert(RwMatrixTag *,RwMatrixTag const*)
386718:  STR             R6, [SP,#0x58+var_4C]
38671A:  LDR             R0, [R6,#0x2C]
38671C:  LDR.W           R9, [R0,#8]
386720:  LDR             R0, =(_ZN13CPedModelInfo15m_pColNodeInfosE_ptr - 0x386726)
386722:  ADD             R0, PC; _ZN13CPedModelInfo15m_pColNodeInfosE_ptr
386724:  LDR             R0, [R0]; CPedModelInfo::m_pColNodeInfos ...
386726:  STR             R0, [SP,#0x58+var_44]
386728:  LDR             R0, [SP,#0x58+var_44]
38672A:  ADD             R3, SP, #0x58+var_28
38672C:  ADD.W           R10, R0, R8
386730:  ADD.W           R2, R10, #0xC
386734:  LDM             R2, {R0-R2}
386736:  STM             R3!, {R0-R2}
386738:  MOV             R0, R5
38673A:  ADD.W           R1, R5, #0x30 ; '0'
38673E:  VLD1.32         {D16-D17}, [R0]!
386742:  VLD1.32         {D18-D19}, [R1]
386746:  ADD.W           R1, R5, #0x20 ; ' '
38674A:  VLD1.32         {D22-D23}, [R0]
38674E:  ADD.W           R0, R4, #0x30 ; '0'
386752:  VLD1.32         {D20-D21}, [R1]
386756:  VST1.32         {D18-D19}, [R0]
38675A:  ADD.W           R0, R4, #0x20 ; ' '
38675E:  VST1.32         {D20-D21}, [R0]
386762:  MOV             R0, R4
386764:  VST1.32         {D16-D17}, [R0]!
386768:  VST1.32         {D22-D23}, [R0]
38676C:  MOV             R0, R11
38676E:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
386772:  LDR.W           R1, [R10,#4]
386776:  MOV             R6, R0
386778:  MOV             R0, R11
38677A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
38677E:  ADD.W           R1, R6, R0,LSL#6
386782:  MOV             R0, R4
386784:  MOVS            R2, #1
386786:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
38678A:  ADD             R0, SP, #0x58+var_28
38678C:  MOVS            R2, #1
38678E:  MOV             R3, R4
386790:  MOV             R1, R0
386792:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
386796:  VLDR            D16, [SP,#0x58+var_28]
38679A:  ADD.W           R8, R8, #0x1C
38679E:  LDR             R0, [SP,#0x58+var_20]
3867A0:  CMP.W           R8, #0x150
3867A4:  STR.W           R0, [R9,#8]
3867A8:  VSTR            D16, [R9]
3867AC:  LDR.W           R0, [R10,#0x18]
3867B0:  STR.W           R0, [R9,#0xC]
3867B4:  MOV.W           R0, #0x3E ; '>'
3867B8:  STRB.W          R0, [R9,#0x10]
3867BC:  LDR.W           R0, [R10,#8]
3867C0:  STRB.W          R0, [R9,#0x11]
3867C4:  ADD.W           R9, R9, #0x14
3867C8:  BNE             loc_386728
3867CA:  MOVS            R4, #0
3867CC:  ADD             R2, SP, #0x58+var_34; CVector *
3867CE:  STRD.W          R4, R4, [SP,#0x58+var_34]
3867D2:  MOV.W           R1, #0x3FC00000; float
3867D6:  LDR             R5, [SP,#0x58+var_4C]
3867D8:  STR             R4, [SP,#0x58+var_2C]
3867DA:  ADD.W           R0, R5, #0x18; this
3867DE:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
3867E2:  MOV.W           R0, #0xBF000000
3867E6:  ADD             R1, SP, #0x58+var_34; CVector *
3867E8:  STRD.W          R0, R0, [SP,#0x58+var_34]
3867EC:  MOV             R0, #0xBF99999A
3867F4:  ADD             R2, SP, #0x58+var_40; CVector *
3867F6:  STR             R0, [SP,#0x58+var_2C]
3867F8:  MOV.W           R0, #0x3F000000
3867FC:  STRD.W          R0, R0, [SP,#0x58+var_40]
386800:  MOV             R0, #0x3F99999A
386808:  STR             R0, [SP,#0x58+var_38]
38680A:  MOV             R0, R5; this
38680C:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
386810:  STRB.W          R4, [R5,#0x28]
386814:  LDR             R0, [SP,#0x58+var_48]
386816:  STR             R5, [R0,#0x4C]
386818:  ADD             SP, SP, #0x3C ; '<'
38681A:  POP.W           {R8-R11}
38681E:  POP             {R4-R7,PC}
