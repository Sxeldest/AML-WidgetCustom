; =========================================================
; Game Engine Function: _ZN10Interior_c11PlaceObjectEhP11Furniture_cffff
; Address            : 0x447374 - 0x447654
; =========================================================

447374:  PUSH            {R4-R7,LR}
447376:  ADD             R7, SP, #0xC
447378:  PUSH.W          {R8-R11}
44737C:  SUB             SP, SP, #4
44737E:  VPUSH           {D8-D13}
447382:  SUB             SP, SP, #0x128
447384:  MOV             R4, R0
447386:  MOV             R10, R2
447388:  LDR             R0, [R4,#0x14]
44738A:  MOV             R8, R1
44738C:  MOVW            R11, #0x206C
447390:  MOV             R6, R3
447392:  LDRB            R1, [R0,#2]
447394:  LDRB            R2, [R0,#3]
447396:  LDRB            R0, [R0,#4]
447398:  NEGS            R1, R1
44739A:  NEGS            R2, R2
44739C:  NEGS            R0, R0
44739E:  VMOV            S0, R0
4473A2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4473AC)
4473A4:  VCVT.F32.S32    S16, S0
4473A8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4473AA:  VMOV            S0, R2
4473AE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4473B0:  VCVT.F32.S32    S18, S0
4473B4:  VMOV            S0, R1
4473B8:  VCVT.F32.S32    S20, S0
4473BC:  LDRH.W          R1, [R10,#8]
4473C0:  LDR.W           R0, [R0,R1,LSL#2]
4473C4:  LDR             R0, [R0,#0x2C]
4473C6:  VLDR            S26, [R0,#8]
4473CA:  LDR             R0, =(g_furnitureMan_ptr - 0x4473D0)
4473CC:  ADD             R0, PC; g_furnitureMan_ptr
4473CE:  LDR             R0, [R0]; g_furnitureMan
4473D0:  ADD             R0, R11; this
4473D2:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
4473D6:  CMP             R0, #1
4473D8:  BLT.W           loc_447592
4473DC:  VMOV.F32        S0, #0.5
4473E0:  VLDR            S4, [R7,#arg_4]
4473E4:  ADD.W           R9, SP, #0x178+var_98
4473E8:  VLDR            S24, [R7,#arg_0]
4473EC:  VMOV            S22, R6
4473F0:  ADD.W           R1, R4, #0x18
4473F4:  MOV             R0, R9
4473F6:  MOVS            R2, #0
4473F8:  MOVS            R5, #0
4473FA:  VMUL.F32        S2, S16, S0
4473FE:  VMUL.F32        S6, S18, S0
447402:  VMUL.F32        S0, S20, S0
447406:  VADD.F32        S2, S2, S4
44740A:  VADD.F32        S16, S6, S24
44740E:  VADD.F32        S20, S0, S22
447412:  VSUB.F32        S18, S2, S26
447416:  VLDR            S26, [R7,#arg_8]
44741A:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
44741E:  STRD.W          R5, R5, [SP,#0x178+var_A0]
447422:  STRD.W          R5, R5, [SP,#0x178+var_E8]
447426:  ADD             R5, SP, #0x178+var_E0
447428:  MOV             R0, R5; this
44742A:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
44742E:  VLDR            S0, =3.1416
447432:  MOV             R0, R5; this
447434:  VLDR            S2, =180.0
447438:  VMUL.F32        S0, S26, S0
44743C:  VDIV.F32        S0, S0, S2
447440:  VMOV            R1, S0; x
447444:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
447448:  VLDR            S0, [SP,#0x178+var_B0]
44744C:  ADD             R6, SP, #0x178+var_170
44744E:  VLDR            S2, [SP,#0x178+var_AC]
447452:  MOV             R1, R9
447454:  VLDR            S4, [SP,#0x178+var_A8]
447458:  VADD.F32        S0, S20, S0
44745C:  VADD.F32        S2, S16, S2
447460:  MOV             R0, R6
447462:  VADD.F32        S4, S18, S4
447466:  MOV             R2, R5
447468:  VSTR            S0, [SP,#0x178+var_B0]
44746C:  VSTR            S2, [SP,#0x178+var_AC]
447470:  VSTR            S4, [SP,#0x178+var_A8]
447474:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
447478:  ADD             R0, SP, #0x178+var_128
44747A:  MOV             R1, R6
44747C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
447480:  MOV             R0, R6; this
447482:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
447486:  LDR             R0, =(g_furnitureMan_ptr - 0x44748C)
447488:  ADD             R0, PC; g_furnitureMan_ptr
44748A:  LDR             R0, [R0]; g_furnitureMan
44748C:  ADD             R0, R11; this
44748E:  BLX             j__ZN6List_c10RemoveHeadEv; List_c::RemoveHead(void)
447492:  MOV             R6, R0
447494:  CMP             R6, #0
447496:  BEQ             loc_447596
447498:  MOV.W           R0, #(elf_hash_bucket+0x88); this
44749C:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
4474A0:  LDRH.W          R1, [R10,#8]; int
4474A4:  MOVS            R2, #0; bool
4474A6:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
4474AA:  ADD             R1, SP, #0x178+var_128; CMatrix *
4474AC:  STR             R0, [R6,#8]
4474AE:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
4474B2:  LDR             R0, [R6,#8]
4474B4:  LDR             R1, [R4,#0x10]
4474B6:  STRB.W          R1, [R0,#0x33]
4474BA:  LDR             R0, [R6,#8]
4474BC:  LDR             R1, [R0,#0x1C]
4474BE:  ORR.W           R1, R1, #0x10000
4474C2:  STR             R1, [R0,#0x1C]
4474C4:  LDR             R0, [R6,#8]
4474C6:  MOVS            R1, #5
4474C8:  STRB.W          R1, [R0,#0x140]
4474CC:  LDR             R0, [R6,#8]
4474CE:  LDR             R1, [R0]
4474D0:  LDR             R2, [R1,#0x14]
4474D2:  MOVS            R1, #1
4474D4:  BLX             R2
4474D6:  LDR             R0, [R6,#8]; this
4474D8:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4474DC:  VCVT.U32.F32    S0, S24
4474E0:  ADD.W           R9, R4, #0x5C ; '\'
4474E4:  VCVT.U32.F32    S2, S22
4474E8:  MOV             R1, R6; ListItem_c *
4474EA:  VMOV            R0, S0
4474EE:  STRH            R0, [R6,#0xE]
4474F0:  VMOV            R0, S2
4474F4:  STRH            R0, [R6,#0xC]
4474F6:  MOV             R0, R9; this
4474F8:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4474FC:  CMP.W           R8, #0
447500:  BEQ.W           loc_447628
447504:  LDR             R0, =(g_interiorMan_ptr - 0x44750C)
447506:  LDR             R1, [R6,#8]
447508:  ADD             R0, PC; g_interiorMan_ptr
44750A:  LDR.W           R2, [R1,#0x144]
44750E:  LDR             R0, [R0]; g_interiorMan ; this
447510:  ORR.W           R2, R2, #0x2000
447514:  STR.W           R2, [R1,#0x144]
447518:  MOV             R1, R4; Interior_c *
44751A:  BLX             j__ZN17InteriorManager_c28HasInteriorHadStealDataSetupEP10Interior_c; InteriorManager_c::HasInteriorHadStealDataSetup(Interior_c *)
44751E:  CBZ             R0, loc_44759A
447520:  VMOV            R8, S20
447524:  LDR             R0, =(g_interiorMan_ptr - 0x447536)
447526:  VMOV            R5, S18
44752A:  LDRH.W          R2, [R10,#8]
44752E:  VMOV            R11, S16
447532:  ADD             R0, PC; g_interiorMan_ptr
447534:  LDR             R1, [R4,#8]
447536:  LDR             R0, [R0]; g_interiorMan
447538:  MOV             R3, R8
44753A:  STRD.W          R11, R5, [SP,#0x178+var_178]
44753E:  BLX             j__ZN17InteriorManager_c21FindStealableObjectIdEii7CVector; InteriorManager_c::FindStealableObjectId(int,int,CVector)
447542:  CMP             R0, #0
447544:  BLT             loc_4475F8
447546:  LDR             R1, =(g_interiorMan_ptr - 0x447550)
447548:  RSB.W           R0, R0, R0,LSL#3
44754C:  ADD             R1, PC; g_interiorMan_ptr
44754E:  LDR             R1, [R1]; g_interiorMan
447550:  ADD.W           R0, R1, R0,LSL#2
447554:  MOVW            R1, #(elf_hash_bucket+0x42C8); CEntity *
447558:  LDRB            R0, [R0,R1]
44755A:  CMP             R0, #0
44755C:  BEQ             loc_4475F8
44755E:  LDR             R0, [R6,#8]; this
447560:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
447564:  LDR             R0, [R6,#8]
447566:  CMP             R0, #0
447568:  ITTT NE
44756A:  LDRNE           R1, [R0]
44756C:  LDRNE           R1, [R1,#4]
44756E:  BLXNE           R1
447570:  MOVS            R5, #0
447572:  MOV             R0, R9; this
447574:  MOV             R1, R6; ListItem_c *
447576:  STR             R5, [R6,#8]
447578:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
44757C:  LDR             R0, =(g_furnitureMan_ptr - 0x447586)
44757E:  MOVW            R1, #0x206C
447582:  ADD             R0, PC; g_furnitureMan_ptr
447584:  LDR             R0, [R0]; g_furnitureMan
447586:  ADD             R0, R1; this
447588:  MOV             R1, R6; ListItem_c *
44758A:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
44758E:  MOVS            R4, #0
447590:  B               loc_44762C
447592:  MOVS            R4, #0
447594:  B               loc_447644
447596:  MOVS            R5, #1
447598:  B               loc_44762C
44759A:  LDR             R0, =(g_interiorMan_ptr - 0x4475AA)
44759C:  MOVW            R12, #(dword_99D53C - 0x999194)
4475A0:  LDR             R3, [R6,#8]
4475A2:  MOVW            R1, #0x43AC
4475A6:  ADD             R0, PC; g_interiorMan_ptr
4475A8:  LDR             R0, [R0]; g_interiorMan
4475AA:  LDR.W           R2, [R0,R12]
4475AE:  RSB.W           R5, R2, R2,LSL#3
4475B2:  ADD.W           R5, R0, R5,LSL#2
4475B6:  STR             R3, [R5,R1]
4475B8:  MOVW            R3, #0x43B0
4475BC:  LDRH.W          R1, [R10,#8]
4475C0:  STR             R1, [R5,R3]
4475C2:  MOVW            R3, #0x43B4
4475C6:  LDR             R1, [R4,#8]
4475C8:  STR             R1, [R5,R3]
4475CA:  MOVW            R1, #0x43C4
4475CE:  MOVS            R3, #0
4475D0:  STRB            R3, [R5,R1]
4475D2:  MOVW            R1, #0x43B8
4475D6:  ADD             R1, R5
4475D8:  VSTR            S20, [R1]
4475DC:  MOVW            R1, #0x43C0
4475E0:  ADD             R1, R5
4475E2:  VSTR            S18, [R1]
4475E6:  MOVW            R1, #0x43BC
4475EA:  ADD             R1, R5
4475EC:  VSTR            S16, [R1]
4475F0:  ADDS            R1, R2, #1
4475F2:  STR.W           R1, [R0,R12]
4475F6:  B               loc_447628
4475F8:  LDR             R0, =(g_interiorMan_ptr - 0x447604)
4475FA:  MOV             R3, R8
4475FC:  LDRH.W          R2, [R10,#8]
447600:  ADD             R0, PC; g_interiorMan_ptr
447602:  LDR             R1, [R4,#8]
447604:  STRD.W          R11, R5, [SP,#0x178+var_178]
447608:  LDR             R0, [R0]; g_interiorMan
44760A:  BLX             j__ZN17InteriorManager_c21FindStealableObjectIdEii7CVector; InteriorManager_c::FindStealableObjectId(int,int,CVector)
44760E:  CMP             R0, #0
447610:  BLT             loc_447628
447612:  LDR             R1, =(g_interiorMan_ptr - 0x44761E)
447614:  RSB.W           R0, R0, R0,LSL#3
447618:  LDR             R2, [R6,#8]
44761A:  ADD             R1, PC; g_interiorMan_ptr
44761C:  LDR             R1, [R1]; g_interiorMan
44761E:  ADD.W           R0, R1, R0,LSL#2
447622:  MOVW            R1, #0x43AC
447626:  STR             R2, [R0,R1]
447628:  LDR             R4, [R6,#8]
44762A:  MOVS            R5, #0
44762C:  ADD             R0, SP, #0x178+var_128; this
44762E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
447632:  ADD             R0, SP, #0x178+var_E0; this
447634:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
447638:  ADD             R0, SP, #0x178+var_98; this
44763A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
44763E:  CMP             R5, #1
447640:  IT EQ
447642:  MOVEQ           R4, #0
447644:  MOV             R0, R4
447646:  ADD             SP, SP, #0x128
447648:  VPOP            {D8-D13}
44764C:  ADD             SP, SP, #4
44764E:  POP.W           {R8-R11}
447652:  POP             {R4-R7,PC}
