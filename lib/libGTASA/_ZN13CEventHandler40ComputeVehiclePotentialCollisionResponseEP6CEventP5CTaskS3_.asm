; =========================================================
; Game Engine Function: _ZN13CEventHandler40ComputeVehiclePotentialCollisionResponseEP6CEventP5CTaskS3_
; Address            : 0x37F9F4 - 0x3800DC
; =========================================================

37F9F4:  PUSH            {R4-R7,LR}
37F9F6:  ADD             R7, SP, #0xC
37F9F8:  PUSH.W          {R8,R9,R11}
37F9FC:  VPUSH           {D8-D15}
37FA00:  SUB             SP, SP, #0xC8; float
37FA02:  LDR             R5, [R1,#0x10]
37FA04:  MOV             R9, R0
37FA06:  CMP             R5, #0
37FA08:  BEQ.W           loc_380004
37FA0C:  LDR.W           R0, [R9]
37FA10:  LDRB.W          R1, [R0,#0x485]
37FA14:  LSLS            R1, R1, #0x1F
37FA16:  BNE.W           loc_380004
37FA1A:  LDR             R1, [R0,#0x14]
37FA1C:  LDR.W           R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x37FA2E)
37FA20:  ADD.W           R3, R1, #0x30 ; '0'
37FA24:  CMP             R1, #0
37FA26:  IT EQ
37FA28:  ADDEQ           R3, R0, #4; CVector *
37FA2A:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
37FA2C:  VLDR            D9, [R3,#4]
37FA30:  LDRSH.W         R6, [R5,#0x26]
37FA34:  VMOV            R0, S19; this
37FA38:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
37FA3A:  VLDR            D16, [R1,#0x14]
37FA3E:  LDR             R4, [R5,#0x14]
37FA40:  LDR.W           R2, [R2,R6,LSL#2]
37FA44:  ADDS            R6, R5, #4
37FA46:  VSTR            D16, [SP,#0x120+var_F8]
37FA4A:  VLDR            S22, [R1,#0x10]
37FA4E:  CMP             R4, #0
37FA50:  LDR             R1, [R2,#0x2C]
37FA52:  MOV             R2, R6
37FA54:  IT NE
37FA56:  ADDNE.W         R2, R4, #0x30 ; '0'
37FA5A:  VLDR            S26, [R3]
37FA5E:  VLDR            D12, [R2,#4]
37FA62:  VLDR            S28, [R2]
37FA66:  ADD             R2, SP, #0x120+var_88; CEntity *
37FA68:  VLDR            S0, [R1,#0xC]
37FA6C:  MOV             R1, R5; float
37FA6E:  VSTR            S0, [SP,#0x120+var_FC]
37FA72:  BLX             j__ZN20CPedGeometryAnalyser31ComputeEntityBoundingBoxCornersEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCorners(float,CEntity &,CVector *)
37FA76:  LDR.W           R0, [R9]
37FA7A:  ADD             R3, SP, #0x120+var_C8; CVector *
37FA7C:  LDR             R1, [R0,#0x14]
37FA7E:  ADD.W           R2, R1, #0x30 ; '0'
37FA82:  CMP             R1, #0
37FA84:  IT EQ
37FA86:  ADDEQ           R2, R0, #4
37FA88:  MOV             R1, R5; float
37FA8A:  LDR             R0, [R2,#8]; this
37FA8C:  ADD             R2, SP, #0x120+var_B8; CEntity *
37FA8E:  BLX             j__ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanes(float,CEntity &,CVector *,float *)
37FA92:  LDR.W           R0, [R9]; this
37FA96:  ADD             R2, SP, #0x120+var_D4; CEntity *
37FA98:  MOV             R1, R5; CPed *
37FA9A:  BLX             j__ZN20CPedGeometryAnalyser27ComputeMoveDirToAvoidEntityERK4CPedR7CEntityR7CVector; CPedGeometryAnalyser::ComputeMoveDirToAvoidEntity(CPed const&,CEntity &,CVector &)
37FA9E:  VLDR            S0, [SP,#0x120+var_88]
37FAA2:  VMOV.F32        S30, #0.5
37FAA6:  VLDR            S6, [SP,#0x120+var_64]
37FAAA:  ADD             R2, SP, #0x120+var_E0
37FAAC:  VLDR            S2, [SP,#0x120+var_84]
37FAB0:  ADD             R3, SP, #0x120+var_EC
37FAB2:  VLDR            S10, [SP,#0x120+var_60]
37FAB6:  VADD.F32        S0, S0, S6
37FABA:  VLDR            S4, [SP,#0x120+var_80]
37FABE:  VLDR            S8, [SP,#0x120+var_5C]
37FAC2:  VADD.F32        S2, S2, S10
37FAC6:  VLDR            S6, [SP,#0x120+var_70]
37FACA:  VADD.F32        S4, S4, S8
37FACE:  VLDR            S8, [SP,#0x120+var_6C]
37FAD2:  VLDR            S10, [SP,#0x120+var_68]
37FAD6:  VMUL.F32        S0, S0, S30
37FADA:  VMUL.F32        S2, S2, S30
37FADE:  VMUL.F32        S4, S4, S30
37FAE2:  VSTR            S4, [SP,#0x120+var_D8]
37FAE6:  VSTR            S2, [SP,#0x120+var_DC]
37FAEA:  VLDR            S2, [SP,#0x120+var_78]
37FAEE:  VLDR            S4, [SP,#0x120+var_74]
37FAF2:  VSTR            S0, [SP,#0x120+var_E0]
37FAF6:  VADD.F32        S2, S2, S8
37FAFA:  VLDR            S0, [SP,#0x120+var_7C]
37FAFE:  VADD.F32        S4, S4, S10
37FB02:  VADD.F32        S0, S0, S6
37FB06:  VMUL.F32        S2, S2, S30
37FB0A:  VMUL.F32        S4, S4, S30
37FB0E:  VMUL.F32        S0, S0, S30
37FB12:  VSTR            S0, [SP,#0x120+var_EC]
37FB16:  VSTR            S2, [SP,#0x120+var_E8]
37FB1A:  VSTR            S4, [SP,#0x120+var_E4]
37FB1E:  LDR             R0, [R5,#0x14]
37FB20:  VLDR            S0, [R5,#0x48]
37FB24:  VLDR            S2, [R5,#0x4C]
37FB28:  VLDR            S6, [R0,#0x10]
37FB2C:  VLDR            S8, [R0,#0x14]
37FB30:  VMUL.F32        S0, S6, S0
37FB34:  VLDR            S4, [R5,#0x50]
37FB38:  VMUL.F32        S2, S8, S2
37FB3C:  VLDR            S10, [R0,#0x18]
37FB40:  VLDR            S17, [R0]
37FB44:  VMUL.F32        S4, S10, S4
37FB48:  VLDR            S27, [R0,#4]
37FB4C:  VLDR            S23, [R0,#8]
37FB50:  LDR.W           R0, [R9]; this
37FB54:  VADD.F32        S0, S0, S2
37FB58:  LDR             R1, [R0,#0x14]
37FB5A:  ADD.W           R4, R1, #0x30 ; '0'
37FB5E:  CMP             R1, #0
37FB60:  IT EQ
37FB62:  ADDEQ           R4, R0, #4
37FB64:  VLDR            S2, [R4,#4]
37FB68:  VADD.F32        S20, S0, S4
37FB6C:  VLDR            S0, [R4]
37FB70:  VLDR            S4, [R4,#8]
37FB74:  VCMPE.F32       S20, #0.0
37FB78:  VMRS            APSR_nzcv, FPSCR
37FB7C:  IT GT
37FB7E:  MOVGT           R3, R2
37FB80:  VLDR            S12, [R3]
37FB84:  VLDR            S14, [R3,#4]
37FB88:  VSUB.F32        S31, S0, S12
37FB8C:  VLDR            S1, [R3,#8]
37FB90:  VSUB.F32        S29, S2, S14
37FB94:  VSUB.F32        S16, S4, S1
37FB98:  VMUL.F32        S2, S6, S31
37FB9C:  VMUL.F32        S0, S8, S29
37FBA0:  VMUL.F32        S4, S10, S16
37FBA4:  VADD.F32        S0, S2, S0
37FBA8:  VADD.F32        S21, S0, S4
37FBAC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37FBB0:  CMP             R0, #1
37FBB2:  BNE             loc_37FC8E
37FBB4:  VMOV.F32        S2, #3.0
37FBB8:  VABS.F32        S0, S21
37FBBC:  VCMPE.F32       S0, S2
37FBC0:  VMRS            APSR_nzcv, FPSCR
37FBC4:  BGE.W           loc_380004
37FBC8:  VLDR            S2, =50.0
37FBCC:  VMUL.F32        S2, S20, S2
37FBD0:  VABS.F32        S2, S2
37FBD4:  VCMPE.F32       S0, S2
37FBD8:  VMRS            APSR_nzcv, FPSCR
37FBDC:  BLE.W           loc_380004
37FBE0:  LDR.W           R6, [R9]
37FBE4:  VMOV.F32        S0, #1.0
37FBE8:  LDR.W           R0, [R6,#0x444]
37FBEC:  VLDR            S2, [R0,#0x14]
37FBF0:  VCMPE.F32       S2, S0
37FBF4:  VMRS            APSR_nzcv, FPSCR
37FBF8:  BGE.W           loc_380004
37FBFC:  LDR.W           R0, =(g_ikChainMan_ptr - 0x37FC06)
37FC00:  MOV             R1, R6; CPed *
37FC02:  ADD             R0, PC; g_ikChainMan_ptr
37FC04:  LDR             R0, [R0]; g_ikChainMan ; this
37FC06:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
37FC0A:  CMP             R0, #0
37FC0C:  BNE.W           loc_380004
37FC10:  MOV             R0, R6; this
37FC12:  MOVS            R1, #0; bool
37FC14:  MOVS            R4, #0
37FC16:  BLX             j__ZN10CPlayerPed14AnnoyPlayerPedEb; CPlayerPed::AnnoyPlayerPed(bool)
37FC1A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x37FC2A)
37FC1E:  MOVS            R3, #3
37FC20:  LDR.W           R2, [R9]; CPed *
37FC24:  MOVS            R6, #1
37FC26:  ADD             R0, PC; g_ikChainMan_ptr
37FC28:  STR             R4, [SP,#0x120+var_104]; int
37FC2A:  STR             R3, [SP,#0x120+var_108]; int
37FC2C:  MOV.W           R3, #0x1F4
37FC30:  STR             R3, [SP,#0x120+var_10C]; int
37FC32:  MOV.W           R3, #0x3E800000
37FC36:  STR             R3, [SP,#0x120+var_110]; float
37FC38:  MOV.W           R3, #0xFFFFFFFF
37FC3C:  LDR             R0, [R0]; g_ikChainMan ; int
37FC3E:  ADR.W           R1, aCompvhclpotcol; "CompVhclPotCollResp"
37FC42:  STRD.W          R4, R6, [SP,#0x120+var_118]; int
37FC46:  STR             R3, [SP,#0x120+var_11C]; int
37FC48:  MOVW            R3, #0x5DC
37FC4C:  STR             R3, [SP,#0x120+var_120]; int
37FC4E:  MOV             R3, R5; int
37FC50:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37FC54:  LDR.W           R0, [R9]
37FC58:  LDRSB.W         R1, [R0,#0x71C]
37FC5C:  RSB.W           R1, R1, R1,LSL#3
37FC60:  ADD.W           R0, R0, R1,LSL#2
37FC64:  LDR.W           R0, [R0,#0x5A4]
37FC68:  CMP             R0, #0x1C
37FC6A:  BHI.W           loc_380004
37FC6E:  MOVS            R1, #0x21 ; '!'
37FC70:  LSL.W           R0, R6, R0
37FC74:  MOVT            R1, #0x10C0; unsigned int
37FC78:  TST             R0, R1
37FC7A:  BEQ.W           loc_380004
37FC7E:  MOVS            R0, #word_10; this
37FC80:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FC84:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37FC88:  STR.W           R0, [R9,#0x30]
37FC8C:  B               loc_380004
37FC8E:  LDR.W           R0, =(_ZN33CVehiclePotentialCollisionScanner27ms_fVehicleThreatMultiplierE_ptr - 0x37FC9A)
37FC92:  VLDR            S0, =50.0
37FC96:  ADD             R0, PC; _ZN33CVehiclePotentialCollisionScanner27ms_fVehicleThreatMultiplierE_ptr
37FC98:  VMUL.F32        S0, S20, S0
37FC9C:  LDR             R0, [R0]; CVehiclePotentialCollisionScanner::ms_fVehicleThreatMultiplier ...
37FC9E:  VLDR            S2, [R0]
37FCA2:  VMUL.F32        S0, S0, S2
37FCA6:  VABS.F32        S2, S21
37FCAA:  VABS.F32        S0, S0
37FCAE:  VCMPE.F32       S2, S0
37FCB2:  VMRS            APSR_nzcv, FPSCR
37FCB6:  BGE             loc_37FCF0
37FCB8:  BLX             rand
37FCBC:  VMOV            S0, R0
37FCC0:  LDR.W           R0, =(_ZN33CVehiclePotentialCollisionScanner23ms_fMinAvoidScaredSpeedE_ptr - 0x37FCCC)
37FCC4:  VABS.F32        S2, S20
37FCC8:  ADD             R0, PC; _ZN33CVehiclePotentialCollisionScanner23ms_fMinAvoidScaredSpeedE_ptr
37FCCA:  VCVT.F32.S32    S0, S0
37FCCE:  LDR             R0, [R0]; CVehiclePotentialCollisionScanner::ms_fMinAvoidScaredSpeed ...
37FCD0:  VLDR            S4, [R0]
37FCD4:  VCMPE.F32       S2, S4
37FCD8:  VMRS            APSR_nzcv, FPSCR
37FCDC:  BLE             loc_37FDBE
37FCDE:  VLDR            S6, =0.175
37FCE2:  VLDR            S4, =0.05
37FCE6:  VLDR            S8, =0.1
37FCEA:  VLDR            S2, =0.2
37FCEE:  B               loc_37FDE4
37FCF0:  LDRB.W          R0, [R5,#0x3A]
37FCF4:  CMP             R0, #7
37FCF6:  BHI.W           loc_380004
37FCFA:  LDR.W           R0, [R9]
37FCFE:  LDRB.W          R1, [R0,#0x448]
37FD02:  CMP             R1, #1
37FD04:  BNE.W           loc_380004
37FD08:  LDR.W           R1, [R0,#0x440]
37FD0C:  LDR             R0, [R1,#0x40]
37FD0E:  CMP             R0, #0
37FD10:  IT EQ
37FD12:  LDREQ           R0, [R1,#0x3C]
37FD14:  LDR.W           R1, [R5,#0x524]
37FD18:  CMP             R1, #0
37FD1A:  BEQ.W           loc_380004
37FD1E:  CBZ             R0, loc_37FD2C
37FD20:  LDR             R1, [R0]
37FD22:  LDR             R1, [R1,#8]
37FD24:  BLX             R1
37FD26:  CMP             R0, #0xC
37FD28:  BEQ.W           loc_380004
37FD2C:  BLX             rand
37FD30:  UXTH            R0, R0
37FD32:  VLDR            S16, =0.000015259
37FD36:  VMOV            S0, R0
37FD3A:  VLDR            S2, =1000.0
37FD3E:  VCVT.F32.S32    S0, S0
37FD42:  VMUL.F32        S0, S0, S16
37FD46:  VMUL.F32        S0, S0, S2
37FD4A:  VCVT.S32.F32    S0, S0
37FD4E:  VMOV            R0, S0
37FD52:  CMP             R0, #0x18
37FD54:  BGT.W           loc_37FF44
37FD58:  LDR.W           R0, [R9]
37FD5C:  LDR.W           R0, [R0,#0x59C]
37FD60:  CMP             R0, #6
37FD62:  BEQ.W           loc_37FF48
37FD66:  BLX             rand
37FD6A:  UXTH            R0, R0
37FD6C:  LDR             R4, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37FD7C)
37FD6E:  VMOV            S0, R0
37FD72:  VLDR            S2, =500.0
37FD76:  MOVS            R0, #off_3C; this
37FD78:  ADD             R4, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37FD7A:  VCVT.F32.S32    S0, S0
37FD7E:  VMUL.F32        S0, S0, S16
37FD82:  VMUL.F32        S16, S0, S2
37FD86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FD8A:  LDR             R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x37FD92)
37FD8C:  LDR             R6, [R4]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
37FD8E:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
37FD90:  LDR             R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37FD98)
37FD92:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_fSafeDistance ...
37FD94:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37FD96:  LDR             R2, [R2]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
37FD98:  LDR             R3, [R1]; float
37FD9A:  LDR             R1, [R6]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
37FD9C:  STR             R1, [SP,#0x120+var_11C]; int
37FD9E:  VCVT.S32.F32    S2, S16
37FDA2:  VLDR            S0, [R2]
37FDA6:  MOVS            R2, #0; bool
37FDA8:  VSTR            S0, [SP,#0x120+var_118]
37FDAC:  VMOV            R1, S2
37FDB0:  ADDW            R1, R1, #0x2EE
37FDB4:  STR             R1, [SP,#0x120+var_120]; int
37FDB6:  MOV             R1, R5; CEntity *
37FDB8:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
37FDBC:  B               loc_380000
37FDBE:  LDR             R0, =(_ZN33CVehiclePotentialCollisionScanner17ms_fMinAvoidSpeedE_ptr - 0x37FDC4)
37FDC0:  ADD             R0, PC; _ZN33CVehiclePotentialCollisionScanner17ms_fMinAvoidSpeedE_ptr
37FDC2:  LDR             R0, [R0]; CVehiclePotentialCollisionScanner::ms_fMinAvoidSpeed ...
37FDC4:  VLDR            S4, [R0]
37FDC8:  VCMPE.F32       S2, S4
37FDCC:  VMRS            APSR_nzcv, FPSCR
37FDD0:  BLE.W           loc_380004
37FDD4:  VLDR            S6, =0.7
37FDD8:  VLDR            S4, =0.02
37FDDC:  VLDR            S8, =0.05
37FDE0:  VLDR            S2, =0.1
37FDE4:  VSUB.F32        S10, S28, S26
37FDE8:  VLDR            D17, [SP,#0x120+var_F8]
37FDEC:  VSUB.F32        D16, D12, D9
37FDF0:  VMUL.F32        D6, D16, D17
37FDF4:  VMUL.F32        S10, S10, S22
37FDF8:  VADD.F32        S10, S10, S12
37FDFC:  VADD.F32        S10, S10, S13
37FE00:  VLDR            S12, =4.6566e-10
37FE04:  VMUL.F32        S0, S0, S12
37FE08:  VLDR            S12, =0.0
37FE0C:  VCMPE.F32       S10, #0.0
37FE10:  VMRS            APSR_nzcv, FPSCR
37FE14:  VADD.F32        S0, S0, S12
37FE18:  BLE             loc_37FE90
37FE1A:  VMUL.F32        S4, S29, S27
37FE1E:  VMUL.F32        S8, S31, S17
37FE22:  VMUL.F32        S10, S16, S23
37FE26:  VADD.F32        S4, S8, S4
37FE2A:  VLDR            S8, [SP,#0x120+var_FC]
37FE2E:  VSUB.F32        S6, S8, S6
37FE32:  VADD.F32        S4, S4, S10
37FE36:  VABS.F32        S4, S4
37FE3A:  VCMPE.F32       S4, S6
37FE3E:  VMRS            APSR_nzcv, FPSCR
37FE42:  BLE             loc_37FEBC
37FE44:  VMUL.F32        S2, S2, S30
37FE48:  VCMPE.F32       S0, S2
37FE4C:  VMRS            APSR_nzcv, FPSCR
37FE50:  BGE             loc_37FEAC
37FE52:  LDR.W           R2, [R9]
37FE56:  LDR             R0, [R5,#0x14]
37FE58:  LDR             R3, [R2,#0x14]
37FE5A:  CMP             R0, #0
37FE5C:  IT NE
37FE5E:  ADDNE.W         R6, R0, #0x30 ; '0'
37FE62:  ADD.W           R5, R3, #0x30 ; '0'
37FE66:  CMP             R3, #0
37FE68:  LDRD.W          R0, R1, [R6]; float
37FE6C:  IT EQ
37FE6E:  ADDEQ           R5, R2, #4
37FE70:  LDRD.W          R2, R3, [R5]; float
37FE74:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
37FE78:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
37FE7C:  LDR.W           R1, [R9]; unsigned int
37FE80:  STR.W           R0, [R1,#0x560]
37FE84:  MOVS            R0, #word_10; this
37FE86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FE8A:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37FE8E:  B               loc_380000
37FE90:  VCMPE.F32       S0, S8
37FE94:  VMRS            APSR_nzcv, FPSCR
37FE98:  BLE             loc_37FEA2
37FE9A:  LDR.W           R0, [R5,#0x524]
37FE9E:  CMP             R0, #0
37FEA0:  BEQ             loc_37FF2C
37FEA2:  VCMPE.F32       S0, S4
37FEA6:  VMRS            APSR_nzcv, FPSCR
37FEAA:  BLE             loc_37FF16
37FEAC:  MOVS            R0, #dword_1C; this
37FEAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FEB2:  ADD             R2, SP, #0x120+var_D4; CVector *
37FEB4:  MOV             R1, R5; CEntity *
37FEB6:  BLX             j__ZN23CTaskComplexEvasiveStepC2EP7CEntityRK7CVector; CTaskComplexEvasiveStep::CTaskComplexEvasiveStep(CEntity *,CVector const&)
37FEBA:  B               loc_380000
37FEBC:  VCMPE.F32       S0, S2
37FEC0:  VMRS            APSR_nzcv, FPSCR
37FEC4:  BGE             loc_37FF16
37FEC6:  LDR.W           R2, [R9]
37FECA:  LDR             R0, [R5,#0x14]
37FECC:  LDR             R3, [R2,#0x14]
37FECE:  CMP             R0, #0
37FED0:  IT NE
37FED2:  ADDNE.W         R6, R0, #0x30 ; '0'
37FED6:  ADD.W           R5, R3, #0x30 ; '0'
37FEDA:  CMP             R3, #0
37FEDC:  LDRD.W          R0, R1, [R6]; float
37FEE0:  IT EQ
37FEE2:  ADDEQ           R5, R2, #4
37FEE4:  LDRD.W          R2, R3, [R5]; float
37FEE8:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
37FEEC:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
37FEF0:  MOV             R1, R0
37FEF2:  LDR.W           R0, [R9]
37FEF6:  VMOV            S0, R1; unsigned int
37FEFA:  STR.W           R1, [R0,#0x560]
37FEFE:  LDR.W           R0, [R9]
37FF02:  STR.W           R1, [R0,#0x55C]
37FF06:  LDR.W           R2, [R9]
37FF0A:  LDR             R0, [R2,#0x14]; this
37FF0C:  CMP             R0, #0
37FF0E:  BEQ             loc_37FFC2
37FF10:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
37FF14:  B               loc_37FFC6
37FF16:  MOVS            R0, #dword_24; this
37FF18:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FF1C:  MOVS            R1, #1
37FF1E:  ADD             R3, SP, #0x120+var_D4; CVector *
37FF20:  STR             R1, [SP,#0x120+var_120]; bool
37FF22:  MOV             R1, R5; CVehicle *
37FF24:  MOVS            R2, #0; int
37FF26:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
37FF2A:  B               loc_380000
37FF2C:  MOVS            R0, #0
37FF2E:  B               loc_380000
37FF30:  DCFS 50.0
37FF34:  DCFS 0.175
37FF38:  DCFS 0.05
37FF3C:  DCFS 0.1
37FF40:  DCFS 0.2
37FF44:  CMP             R0, #0x63 ; 'c'
37FF46:  BGT             loc_380010
37FF48:  MOVS            R0, #dword_40; this
37FF4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FF4E:  MOV             R8, R0
37FF50:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
37FF54:  STR.W           R8, [R9,#0x24]
37FF58:  LDR.W           R2, [R9]
37FF5C:  LDR             R0, [R5,#0x14]
37FF5E:  LDR             R3, [R2,#0x14]
37FF60:  CMP             R0, #0
37FF62:  IT NE
37FF64:  ADDNE.W         R6, R0, #0x30 ; '0'
37FF68:  ADD.W           R5, R3, #0x30 ; '0'
37FF6C:  CMP             R3, #0
37FF6E:  LDRD.W          R0, R1, [R6]; float
37FF72:  IT EQ
37FF74:  ADDEQ           R5, R2, #4
37FF76:  LDRD.W          R2, R3, [R5]; float
37FF7A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
37FF7E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
37FF82:  MOV             R4, R0
37FF84:  MOVS            R0, #off_18; this
37FF86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FF8A:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x37FF94)
37FF8C:  MOV             R5, R0
37FF8E:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x37FF96)
37FF90:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
37FF92:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
37FF94:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
37FF96:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
37FF98:  LDR             R3, [R1]; float
37FF9A:  MOV             R1, R4; float
37FF9C:  LDR             R2, [R0]; float
37FF9E:  MOV             R0, R5; this
37FFA0:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
37FFA4:  MOV             R0, R8; this
37FFA6:  MOV             R1, R5; CTask *
37FFA8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37FFAC:  MOVS            R0, #word_10; this
37FFAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FFB2:  MOV             R4, R0
37FFB4:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37FFB8:  MOV             R0, R8; this
37FFBA:  MOV             R1, R4; CTask *
37FFBC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37FFC0:  B               loc_380004
37FFC2:  VSTR            S0, [R2,#0x10]
37FFC6:  MOVS            R0, #dword_34; this
37FFC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37FFCC:  LDR             R1, =(aHandsup - 0x37FFDA); "HandsUp"
37FFCE:  MOVS            R5, #0
37FFD0:  MOVS            R2, #0
37FFD2:  MOVW            R3, #0x19D
37FFD6:  ADD             R1, PC; "HandsUp"
37FFD8:  MOVW            R6, #0xBB8
37FFDC:  MOVT            R5, #0xC080
37FFE0:  STRD.W          R5, R6, [SP,#0x120+var_120]; float
37FFE4:  STRD.W          R3, R1, [SP,#0x120+var_118]; int
37FFE8:  MOVS            R1, #0; int
37FFEA:  STR             R2, [SP,#0x120+var_110]; int
37FFEC:  MOVS            R2, #0x8E; int
37FFEE:  MOV.W           R3, #0x40800000; int
37FFF2:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
37FFF6:  LDR             R1, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x37FFFC)
37FFF8:  ADD             R1, PC; _ZTV18CTaskSimpleHandsUp_ptr
37FFFA:  LDR             R1, [R1]; `vtable for'CTaskSimpleHandsUp ...
37FFFC:  ADDS            R1, #8
37FFFE:  STR             R1, [R0]
380000:  STR.W           R0, [R9,#0x24]
380004:  ADD             SP, SP, #0xC8
380006:  VPOP            {D8-D15}
38000A:  POP.W           {R8,R9,R11}
38000E:  POP             {R4-R7,PC}; float
380010:  CMP             R0, #0xC7
380012:  BGT             loc_380096
380014:  LDR.W           R2, [R9]
380018:  LDR             R0, [R5,#0x14]
38001A:  LDR             R3, [R2,#0x14]
38001C:  CMP             R0, #0
38001E:  IT NE
380020:  ADDNE.W         R6, R0, #0x30 ; '0'
380024:  ADD.W           R4, R3, #0x30 ; '0'
380028:  CMP             R3, #0
38002A:  LDRD.W          R0, R1, [R6]; float
38002E:  IT EQ
380030:  ADDEQ           R4, R2, #4
380032:  LDRD.W          R2, R3, [R4]; float
380036:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
38003A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
38003E:  MOV             R6, R0
380040:  MOVS            R0, #off_18; this
380042:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380046:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x38004E)
380048:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x380050)
38004A:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
38004C:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
38004E:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
380050:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
380052:  LDR             R2, [R1]; float
380054:  MOV             R1, R6; float
380056:  LDR             R3, [R3]; float
380058:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
38005C:  LDR             R1, =(g_ikChainMan_ptr - 0x38006E)
38005E:  MOV.W           R12, #3
380062:  LDR.W           R2, [R9]
380066:  MOV.W           LR, #0x1F4
38006A:  ADD             R1, PC; g_ikChainMan_ptr
38006C:  STR.W           R0, [R9,#0x24]
380070:  MOV.W           R8, #0x3E800000
380074:  MOVS            R0, #1
380076:  LDR             R3, [R1]; g_ikChainMan
380078:  MOVS            R1, #0
38007A:  MOV.W           R6, #0xFFFFFFFF
38007E:  MOVW            R4, #0x514
380082:  STRD.W          R4, R6, [SP,#0x120+var_120]
380086:  STRD.W          R1, R0, [SP,#0x120+var_118]
38008A:  MOV             R0, R3
38008C:  STRD.W          R8, LR, [SP,#0x120+var_110]
380090:  STRD.W          R12, R1, [SP,#0x120+var_108]
380094:  B               loc_3800D2
380096:  CMP.W           R0, #0x190
38009A:  BGE             loc_380004
38009C:  LDR.W           R12, =(g_ikChainMan_ptr - 0x3800AC)
3800A0:  MOVS            R1, #0
3800A2:  MOVS            R0, #1
3800A4:  MOV.W           R3, #0xFFFFFFFF
3800A8:  ADD             R12, PC; g_ikChainMan_ptr
3800AA:  MOVW            R6, #0x514
3800AE:  LDR.W           R2, [R9]; CPed *
3800B2:  MOV.W           LR, #3
3800B6:  STRD.W          R6, R3, [SP,#0x120+var_120]; int
3800BA:  MOV.W           R8, #0x1F4
3800BE:  STRD.W          R1, R0, [SP,#0x120+var_118]; int
3800C2:  MOV.W           R4, #0x3E800000
3800C6:  ADD             R0, SP, #0x120+var_110
3800C8:  STM.W           R0, {R4,R8,LR}
3800CC:  LDR.W           R0, [R12]; g_ikChainMan ; int
3800D0:  STR             R1, [SP,#0x120+var_104]; int
3800D2:  ADR             R1, aCompvehiclepot; "CompVehiclePotCollResp"
3800D4:  MOV             R3, R5; int
3800D6:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
3800DA:  B               loc_380004
