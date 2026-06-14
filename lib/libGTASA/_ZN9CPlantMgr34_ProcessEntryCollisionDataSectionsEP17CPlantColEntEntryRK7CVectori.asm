; =========================================================
; Game Engine Function: _ZN9CPlantMgr34_ProcessEntryCollisionDataSectionsEP17CPlantColEntEntryRK7CVectori
; Address            : 0x2CE3BC - 0x2CE4E6
; =========================================================

2CE3BC:  PUSH            {R4-R7,LR}
2CE3BE:  ADD             R7, SP, #0xC
2CE3C0:  PUSH.W          {R8-R11}
2CE3C4:  SUB             SP, SP, #0x84
2CE3C6:  MOV             R10, R0
2CE3C8:  MOV             R9, R1
2CE3CA:  LDR.W           R0, [R10]; this
2CE3CE:  MOV             R8, R2
2CE3D0:  MOV             R1, R0
2CE3D2:  STR             R1, [SP,#0xA0+var_7C]
2CE3D4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2CE3D8:  LDR             R6, [R0,#0x2C]
2CE3DA:  CBZ             R6, loc_2CE40E
2CE3DC:  LDRSH.W         R0, [R6,#4]
2CE3E0:  LDRH.W          R1, [R10,#8]
2CE3E4:  CMP             R0, R1
2CE3E6:  BNE             loc_2CE40E
2CE3E8:  SUBS            R5, R0, #1
2CE3EA:  MOV             R0, R10; this
2CE3EC:  MOV             R1, R9; CPlantColEntEntry *
2CE3EE:  MOV             R2, R8; CVector *
2CE3F0:  MOVS            R3, #0; int
2CE3F2:  STR             R5, [SP,#0xA0+var_A0]; int
2CE3F4:  BLX             j__ZN9CPlantMgr48_ProcessEntryCollisionDataSections_RemoveLocTrisEP17CPlantColEntEntryRK7CVectoriii; CPlantMgr::_ProcessEntryCollisionDataSections_RemoveLocTris(CPlantColEntEntry *,CVector const&,int,int,int)
2CE3F8:  LDRB            R0, [R6,#7]
2CE3FA:  LSLS            R0, R0, #0x1E
2CE3FC:  BMI             loc_2CE412
2CE3FE:  MOV             R0, R10; this
2CE400:  MOV             R1, R9; CPlantColEntEntry *
2CE402:  MOV             R2, R8; CVector *
2CE404:  MOVS            R3, #0; int
2CE406:  STR             R5, [SP,#0xA0+var_A0]; int
2CE408:  BLX             j__ZN9CPlantMgr45_ProcessEntryCollisionDataSections_AddLocTrisEP17CPlantColEntEntryRK7CVectoriii; CPlantMgr::_ProcessEntryCollisionDataSections_AddLocTris(CPlantColEntEntry *,CVector const&,int,int,int)
2CE40C:  B               loc_2CE4DC
2CE40E:  MOVS            R0, #0
2CE410:  B               loc_2CE4DE
2CE412:  LDR             R5, [R6,#0x30]
2CE414:  LDR             R0, [R5]
2CE416:  CMP             R0, #1
2CE418:  BLT             loc_2CE4DC
2CE41A:  STR             R6, [SP,#0xA0+var_8C]
2CE41C:  STR.W           R9, [SP,#0xA0+var_80]
2CE420:  STRD.W          R10, R8, [SP,#0xA0+var_94]
2CE424:  SUB.W           R10, R0, #1
2CE428:  ADD             R0, SP, #0xA0+var_50
2CE42A:  MOV             R8, #0xFFFFFFFC
2CE42E:  ADDS            R0, #0xC
2CE430:  STR             R0, [SP,#0xA0+var_84]
2CE432:  LDR             R0, [SP,#0xA0+var_7C]
2CE434:  ADDS            R0, #4
2CE436:  STR             R0, [SP,#0xA0+var_98]
2CE438:  ADD             R0, SP, #0xA0+var_38
2CE43A:  ADDS            R0, #0xC
2CE43C:  STR             R0, [SP,#0xA0+var_88]
2CE43E:  B               loc_2CE44C
2CE440:  LDR             R0, [SP,#0xA0+var_8C]
2CE442:  SUB.W           R8, R8, #0x1C
2CE446:  SUB.W           R10, R10, #1
2CE44A:  LDR             R5, [R0,#0x30]
2CE44C:  ADD.W           R9, R5, R8
2CE450:  LDR             R1, [SP,#0xA0+var_88]
2CE452:  VLDR            D16, [R9,#-0x18]
2CE456:  LDR.W           R0, [R9,#-0x10]
2CE45A:  STR             R0, [SP,#0xA0+var_30]
2CE45C:  VSTR            D16, [SP,#0xA0+var_38]
2CE460:  LDR.W           R0, [R9,#-4]
2CE464:  VLDR            D16, [R9,#-0xC]
2CE468:  STR             R0, [R1,#8]
2CE46A:  LDR             R0, [SP,#0xA0+var_7C]
2CE46C:  VSTR            D16, [R1]
2CE470:  LDR             R2, [R0,#0x14]
2CE472:  CBNZ            R2, loc_2CE486
2CE474:  LDR             R4, [SP,#0xA0+var_7C]
2CE476:  MOV             R0, R4; this
2CE478:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2CE47C:  LDR             R1, [R4,#0x14]; CMatrix *
2CE47E:  LDR             R0, [SP,#0xA0+var_98]; this
2CE480:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2CE484:  LDR             R2, [R4,#0x14]
2CE486:  ADD.W           R11, SP, #0xA0+var_50
2CE48A:  ADD             R3, SP, #0xA0+var_38
2CE48C:  MOVS            R1, #2
2CE48E:  MOV             R0, R11
2CE490:  BLX             j__Z15TransformPointsP5RwV3diRK7CMatrixPKS_; TransformPoints(RwV3d *,int,CMatrix const&,RwV3d const*)
2CE494:  ADD             R6, SP, #0xA0+var_78
2CE496:  LDR             R2, [SP,#0xA0+var_84]; CVector *
2CE498:  MOV             R1, R11; CVector *
2CE49A:  MOV             R0, R6; this
2CE49C:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
2CE4A0:  MOV             R0, R6; this
2CE4A2:  BLX             j__ZN4CBox6RecalcEv; CBox::Recalc(void)
2CE4A6:  ADD             R4, SP, #0xA0+var_60
2CE4A8:  LDR             R2, [SP,#0xA0+var_80]; CVector *
2CE4AA:  MOVS            R1, #0
2CE4AC:  MOV             R0, R4; this
2CE4AE:  MOVT            R1, #0x42C8; float
2CE4B2:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
2CE4B6:  MOV             R0, R4; this
2CE4B8:  MOV             R1, R6; CSphere *
2CE4BA:  BLX             j__ZN10CCollision13TestSphereBoxERK7CSphereRK4CBox; CCollision::TestSphereBox(CSphere const&,CBox const&)
2CE4BE:  CMP             R0, #1
2CE4C0:  BNE             loc_2CE4D6
2CE4C2:  LDRSH.W         R0, [R9,#2]
2CE4C6:  LDRSH.W         R3, [R5,R8]; int
2CE4CA:  STR             R0, [SP,#0xA0+var_A0]; int
2CE4CC:  LDR             R1, [SP,#0xA0+var_80]; CPlantColEntEntry *
2CE4CE:  LDRD.W          R0, R2, [SP,#0xA0+var_94]; CVector *
2CE4D2:  BLX             j__ZN9CPlantMgr45_ProcessEntryCollisionDataSections_AddLocTrisEP17CPlantColEntEntryRK7CVectoriii; CPlantMgr::_ProcessEntryCollisionDataSections_AddLocTris(CPlantColEntEntry *,CVector const&,int,int,int)
2CE4D6:  CMP.W           R10, #0
2CE4DA:  BNE             loc_2CE440
2CE4DC:  MOVS            R0, #1
2CE4DE:  ADD             SP, SP, #0x84
2CE4E0:  POP.W           {R8-R11}
2CE4E4:  POP             {R4-R7,PC}
