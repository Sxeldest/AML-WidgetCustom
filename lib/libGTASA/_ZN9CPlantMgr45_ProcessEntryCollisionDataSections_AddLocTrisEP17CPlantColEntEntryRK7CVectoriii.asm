; =========================================================
; Game Engine Function: _ZN9CPlantMgr45_ProcessEntryCollisionDataSections_AddLocTrisEP17CPlantColEntEntryRK7CVectoriii
; Address            : 0x2CE724 - 0x2CEA76
; =========================================================

2CE724:  PUSH            {R4-R7,LR}
2CE726:  ADD             R7, SP, #0xC
2CE728:  PUSH.W          {R8-R11}
2CE72C:  SUB             SP, SP, #4
2CE72E:  VPUSH           {D8-D15}
2CE732:  SUB             SP, SP, #0x90; CPlantSurfPropMgr *
2CE734:  STR             R1, [SP,#0xF0+var_BC]
2CE736:  MOV             R5, R0
2CE738:  LDR             R0, [R5]; this
2CE73A:  MOV             R10, R3
2CE73C:  MOV             R4, R2
2CE73E:  MOV             R1, R0
2CE740:  STR             R1, [SP,#0xF0+var_B0]
2CE742:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2CE746:  LDR             R0, [R0,#0x2C]
2CE748:  STR             R0, [SP,#0xF0+var_C0]
2CE74A:  CMP             R0, #0
2CE74C:  BEQ.W           loc_2CEA68
2CE750:  LDR             R3, [R7,#arg_0]
2CE752:  CMP             R10, R3
2CE754:  BGT.W           loc_2CEA68
2CE758:  MOVS            R0, #8
2CE75A:  ORR.W           R9, R0, R10,LSL#4
2CE75E:  ADD             R0, SP, #0xF0+var_A8
2CE760:  ADD             R1, SP, #0xF0+var_84; CVector *
2CE762:  ADD.W           R2, R0, #0x18
2CE766:  ADDS            R0, #0xC
2CE768:  STR             R0, [SP,#0xF0+var_D8]
2CE76A:  VMOV.F32        S16, #0.5
2CE76E:  LDR             R0, [SP,#0xF0+var_B0]
2CE770:  MOV.W           R11, R10,LSL#2
2CE774:  VLDR            S18, =0.33333
2CE778:  ADDS            R0, #4
2CE77A:  STR             R0, [SP,#0xF0+var_D0]
2CE77C:  ADD.W           R0, R1, #0x18
2CE780:  STR             R0, [SP,#0xF0+var_C4]
2CE782:  ADD.W           R0, R1, #0xC
2CE786:  STR             R0, [SP,#0xF0+var_C8]
2CE788:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CE792)
2CE78A:  VLDR            S20, =10000.0
2CE78E:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CE790:  STR             R2, [SP,#0xF0+var_D4]
2CE792:  STR             R5, [SP,#0xF0+var_B8]
2CE794:  LDR             R0, [R0]; CPlantMgr::m_UnusedLocTriListHead ...
2CE796:  STR             R0, [SP,#0xF0+var_B4]
2CE798:  LDR             R0, =(g_surfaceInfos_ptr - 0x2CE79E)
2CE79A:  ADD             R0, PC; g_surfaceInfos_ptr
2CE79C:  LDR             R0, [R0]; g_surfaceInfos
2CE79E:  STR             R0, [SP,#0xF0+var_CC]
2CE7A0:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CE7A6)
2CE7A2:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CE7A4:  LDR             R0, [R0]; CPlantMgr::m_UnusedLocTriListHead ...
2CE7A6:  STR             R0, [SP,#0xF0+var_DC]
2CE7A8:  LDR             R0, =(g_procObjMan_ptr - 0x2CE7AE)
2CE7AA:  ADD             R0, PC; g_procObjMan_ptr
2CE7AC:  LDR             R0, [R0]; g_procObjMan
2CE7AE:  STR             R0, [SP,#0xF0+var_E0]
2CE7B0:  CMP.W           R4, #0xFAFAFAFA
2CE7B4:  MOV             R8, R10
2CE7B6:  ITT NE
2CE7B8:  ANDNE.W         R0, R8, #7
2CE7BC:  CMPNE           R0, R4
2CE7BE:  BNE.W           loc_2CEA56
2CE7C2:  LDR             R0, [R5,#4]
2CE7C4:  LDR.W           R0, [R0,R11]
2CE7C8:  CMP             R0, #0
2CE7CA:  BNE.W           loc_2CEA56
2CE7CE:  LDR             R0, [SP,#0xF0+var_B4]
2CE7D0:  LDR             R0, [R0]
2CE7D2:  CMP             R0, #0
2CE7D4:  BEQ.W           loc_2CEA56
2CE7D8:  LDR.W           R10, [SP,#0xF0+var_C0]
2CE7DC:  MOV             R5, R1
2CE7DE:  LDR.W           R6, [R10,#0x18]
2CE7E2:  ADD.W           R0, R6, R9
2CE7E6:  LDR.W           R2, [R0,#-8]; int
2CE7EA:  MOV             R0, R10; this
2CE7EC:  BLX             j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
2CE7F0:  ADD.W           R0, R6, R11,LSL#2
2CE7F4:  STR             R0, [SP,#0xF0+var_AC]
2CE7F6:  LDR             R1, [SP,#0xF0+var_C8]; CVector *
2CE7F8:  LDR             R2, [R0,#4]; int
2CE7FA:  MOV             R0, R10; this
2CE7FC:  BLX             j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
2CE800:  LDR.W           R2, [R6,R9]; int
2CE804:  MOV             R0, R10; this
2CE806:  LDR             R1, [SP,#0xF0+var_C4]; CVector *
2CE808:  BLX             j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
2CE80C:  LDR             R0, [SP,#0xF0+var_B0]
2CE80E:  LDR             R2, [R0,#0x14]
2CE810:  CBNZ            R2, loc_2CE824
2CE812:  LDR             R6, [SP,#0xF0+var_B0]
2CE814:  MOV             R0, R6; this
2CE816:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2CE81A:  LDR             R1, [R6,#0x14]; CMatrix *
2CE81C:  LDR             R0, [SP,#0xF0+var_D0]; this
2CE81E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2CE822:  LDR             R2, [R6,#0x14]
2CE824:  ADD             R0, SP, #0xF0+var_A8
2CE826:  MOVS            R1, #3
2CE828:  MOV             R3, R5
2CE82A:  BLX             j__Z15TransformPointsP5RwV3diRK7CMatrixPKS_; TransformPoints(RwV3d *,int,CMatrix const&,RwV3d const*)
2CE82E:  LDR             R0, [SP,#0xF0+var_BC]
2CE830:  VLDR            S1, [SP,#0xF0+var_A0]
2CE834:  VLDR            S9, [SP,#0xF0+var_88]
2CE838:  VLDR            S3, [R0,#8]
2CE83C:  VLDR            S5, [SP,#0xF0+var_A8]
2CE840:  VSUB.F32        S0, S3, S1
2CE844:  VLDR            S7, [R0]
2CE848:  VSUB.F32        S6, S3, S9
2CE84C:  VLDR            S22, [SP,#0xF0+var_90]
2CE850:  VLDR            S13, [SP,#0xF0+var_A4]
2CE854:  VSUB.F32        S4, S7, S5
2CE858:  VLDR            S15, [R0,#4]
2CE85C:  VSUB.F32        S10, S7, S22
2CE860:  VLDR            S24, [SP,#0xF0+var_8C]
2CE864:  VSUB.F32        S8, S15, S24
2CE868:  VADD.F32        S2, S6, S0
2CE86C:  VADD.F32        S11, S10, S4
2CE870:  VMUL.F32        S2, S2, S16
2CE874:  VMUL.F32        S11, S11, S16
2CE878:  VMUL.F32        S12, S2, S2
2CE87C:  VSUB.F32        S2, S15, S13
2CE880:  VMUL.F32        S11, S11, S11
2CE884:  VADD.F32        S14, S8, S2
2CE888:  VMUL.F32        S14, S14, S16
2CE88C:  VMUL.F32        S14, S14, S14
2CE890:  VADD.F32        S14, S11, S14
2CE894:  VADD.F32        S12, S14, S12
2CE898:  VCMPE.F32       S12, S20
2CE89C:  VMRS            APSR_nzcv, FPSCR
2CE8A0:  BLT.W           loc_2CE9D2
2CE8A4:  VLDR            S26, [SP,#0xF0+var_9C]
2CE8A8:  VLDR            S30, [SP,#0xF0+var_98]
2CE8AC:  VSUB.F32        S14, S7, S26
2CE8B0:  VSUB.F32        S12, S15, S30
2CE8B4:  VADD.F32        S28, S14, S10
2CE8B8:  VADD.F32        S11, S12, S8
2CE8BC:  VMUL.F32        S28, S28, S16
2CE8C0:  VMUL.F32        S11, S11, S16
2CE8C4:  VMUL.F32        S19, S28, S28
2CE8C8:  VLDR            S28, [SP,#0xF0+var_94]
2CE8CC:  VMUL.F32        S17, S11, S11
2CE8D0:  VSUB.F32        S11, S3, S28
2CE8D4:  VADD.F32        S17, S19, S17
2CE8D8:  VADD.F32        S21, S11, S6
2CE8DC:  VMUL.F32        S21, S21, S16
2CE8E0:  VMUL.F32        S21, S21, S21
2CE8E4:  VADD.F32        S17, S17, S21
2CE8E8:  VCMPE.F32       S17, S20
2CE8EC:  VMRS            APSR_nzcv, FPSCR
2CE8F0:  BLT             loc_2CE9D2
2CE8F2:  VADD.F32        S17, S2, S12
2CE8F6:  VADD.F32        S19, S4, S14
2CE8FA:  VADD.F32        S21, S0, S11
2CE8FE:  VMUL.F32        S17, S17, S16
2CE902:  VMUL.F32        S19, S19, S16
2CE906:  VMUL.F32        S21, S21, S16
2CE90A:  VMUL.F32        S17, S17, S17
2CE90E:  VMUL.F32        S19, S19, S19
2CE912:  VMUL.F32        S21, S21, S21
2CE916:  VADD.F32        S17, S19, S17
2CE91A:  VADD.F32        S17, S17, S21
2CE91E:  VCMPE.F32       S17, S20
2CE922:  VMRS            APSR_nzcv, FPSCR
2CE926:  BLT             loc_2CE9D2
2CE928:  VADD.F32        S13, S13, S30
2CE92C:  VADD.F32        S5, S5, S26
2CE930:  VADD.F32        S1, S1, S28
2CE934:  VADD.F32        S13, S13, S24
2CE938:  VADD.F32        S5, S5, S22
2CE93C:  VADD.F32        S1, S1, S9
2CE940:  VMUL.F32        S13, S13, S18
2CE944:  VMUL.F32        S5, S5, S18
2CE948:  VMUL.F32        S1, S1, S18
2CE94C:  VSUB.F32        S13, S15, S13
2CE950:  VSUB.F32        S5, S7, S5
2CE954:  VSUB.F32        S1, S3, S1
2CE958:  VMUL.F32        S13, S13, S13
2CE95C:  VMUL.F32        S5, S5, S5
2CE960:  VMUL.F32        S1, S1, S1
2CE964:  VADD.F32        S3, S5, S13
2CE968:  VADD.F32        S1, S3, S1
2CE96C:  VCMPE.F32       S1, S20
2CE970:  VMRS            APSR_nzcv, FPSCR
2CE974:  BLT             loc_2CE9D2
2CE976:  VMUL.F32        S8, S8, S8
2CE97A:  VMUL.F32        S10, S10, S10
2CE97E:  VMUL.F32        S6, S6, S6
2CE982:  VADD.F32        S8, S10, S8
2CE986:  VADD.F32        S6, S8, S6
2CE98A:  VCMPE.F32       S6, S20
2CE98E:  VMRS            APSR_nzcv, FPSCR
2CE992:  ITTTT GE
2CE994:  VMULGE.F32      S2, S2, S2
2CE998:  VMULGE.F32      S4, S4, S4
2CE99C:  VMULGE.F32      S0, S0, S0
2CE9A0:  VADDGE.F32      S2, S4, S2
2CE9A4:  ITTT GE
2CE9A6:  VADDGE.F32      S0, S2, S0
2CE9AA:  VCMPEGE.F32     S0, S20
2CE9AE:  VMRSGE          APSR_nzcv, FPSCR
2CE9B2:  BLT             loc_2CE9D2
2CE9B4:  VMUL.F32        S0, S12, S12
2CE9B8:  VMUL.F32        S2, S14, S14
2CE9BC:  VMUL.F32        S4, S11, S11
2CE9C0:  VADD.F32        S0, S2, S0
2CE9C4:  VADD.F32        S0, S0, S4
2CE9C8:  VCMPE.F32       S0, S20
2CE9CC:  VMRS            APSR_nzcv, FPSCR
2CE9D0:  BGE             loc_2CEA4E
2CE9D2:  LDR.W           R10, [SP,#0xF0+var_AC]
2CE9D6:  LDR             R5, [SP,#0xF0+var_CC]
2CE9D8:  LDRB.W          R1, [R10,#0xC]; unsigned int
2CE9DC:  MOV             R0, R5; this
2CE9DE:  BLX             j__ZN14SurfaceInfos_c13CreatesPlantsEj; SurfaceInfos_c::CreatesPlants(uint)
2CE9E2:  LDRB.W          R1, [R10,#0xC]; unsigned int
2CE9E6:  MOV             R6, R0
2CE9E8:  MOV             R0, R5; this
2CE9EA:  BLX             j__ZN14SurfaceInfos_c14CreatesObjectsEj; SurfaceInfos_c::CreatesObjects(uint)
2CE9EE:  ORRS.W          R1, R0, R6
2CE9F2:  BEQ             loc_2CEA4E
2CE9F4:  LDR             R2, [SP,#0xF0+var_AC]
2CE9F6:  LDR             R3, [SP,#0xF0+var_DC]
2CE9F8:  LDRB            R1, [R2,#0xC]
2CE9FA:  LDRB            R2, [R2,#0xD]
2CE9FC:  LDR             R5, [R3]
2CE9FE:  STMEA.W         SP, {R1,R2,R6}
2CEA02:  ADD             R1, SP, #0xF0+var_A8; int
2CEA04:  STR             R0, [SP,#0xF0+var_E4]; int
2CEA06:  MOV             R0, R5; int
2CEA08:  LDRD.W          R2, R3, [SP,#0xF0+var_D8]; int
2CEA0C:  BLX             j__ZN12CPlantLocTri3AddERK5RwV3dS2_S2_hhhh; CPlantLocTri::Add(RwV3d const&,RwV3d const&,RwV3d const&,uchar,uchar,uchar,uchar)
2CEA10:  CBZ             R0, loc_2CEA4E
2CEA12:  LDR             R0, [SP,#0xF0+var_B8]
2CEA14:  LDR             R0, [R0,#4]
2CEA16:  STR.W           R5, [R0,R11]
2CEA1A:  LDRB.W          R0, [R5,#0x48]
2CEA1E:  LSLS            R0, R0, #0x1E
2CEA20:  BPL             loc_2CEA4E
2CEA22:  LDR             R0, [SP,#0xF0+var_E0]; this
2CEA24:  MOV             R1, R5; CPlantLocTri *
2CEA26:  BLX             j__ZN15ProcObjectMan_c20ProcessTriangleAddedEP12CPlantLocTri; ProcObjectMan_c::ProcessTriangleAdded(CPlantLocTri *)
2CEA2A:  LDRB.W          R1, [R5,#0x48]
2CEA2E:  CBZ             R0, loc_2CEA3A
2CEA30:  ORR.W           R0, R1, #4
2CEA34:  STRB.W          R0, [R5,#0x48]
2CEA38:  B               loc_2CEA4E
2CEA3A:  LSLS            R0, R1, #0x1F
2CEA3C:  BNE             loc_2CEA4E
2CEA3E:  MOV             R0, R5; this
2CEA40:  BLX             j__ZN12CPlantLocTri7ReleaseEv; CPlantLocTri::Release(void)
2CEA44:  LDR             R0, [SP,#0xF0+var_B8]
2CEA46:  MOVS            R1, #0
2CEA48:  LDR             R0, [R0,#4]
2CEA4A:  STR.W           R1, [R0,R11]
2CEA4E:  LDR             R1, [R7,#arg_0]
2CEA50:  LDR             R5, [SP,#0xF0+var_B8]
2CEA52:  MOV             R3, R1
2CEA54:  ADD             R1, SP, #0xF0+var_84
2CEA56:  ADD.W           R9, R9, #0x10
2CEA5A:  ADD.W           R11, R11, #4
2CEA5E:  ADD.W           R10, R8, #1
2CEA62:  CMP             R8, R3
2CEA64:  BLT.W           loc_2CE7B0
2CEA68:  ADD             SP, SP, #0x90
2CEA6A:  VPOP            {D8-D15}
2CEA6E:  ADD             SP, SP, #4
2CEA70:  POP.W           {R8-R11}
2CEA74:  POP             {R4-R7,PC}
