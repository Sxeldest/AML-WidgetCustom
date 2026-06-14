; =========================================================
; Game Engine Function: sub_1C840C
; Address            : 0x1C840C - 0x1C85B4
; =========================================================

1C840C:  PUSH            {R4-R7,LR}
1C840E:  ADD             R7, SP, #0xC
1C8410:  PUSH.W          {R8-R11}
1C8414:  SUB             SP, SP, #0x24
1C8416:  MOV             R5, R0
1C8418:  MOV             R8, R3
1C841A:  LDR.W           R10, [R5,#0x18]
1C841E:  MOV             R11, R2
1C8420:  MOV             R6, R1
1C8422:  MOV             R0, R10
1C8424:  BLX             j_RpSkinGeometryGetSkin
1C8428:  LDR             R1, [R7,#arg_0]
1C842A:  CBZ             R0, loc_1C843A
1C842C:  LDR             R2, =(RQMaxBones_ptr - 0x1C8434)
1C842E:  LDR             R0, [R0]
1C8430:  ADD             R2, PC; RQMaxBones_ptr
1C8432:  LDR             R2, [R2]; RQMaxBones
1C8434:  LDR             R2, [R2]
1C8436:  CMP             R0, R2
1C8438:  BLE             loc_1C8442
1C843A:  ADD.W           R0, R6, #0x1C
1C843E:  STR             R0, [SP,#0x40+var_28]
1C8440:  B               loc_1C8456
1C8442:  LDR             R0, =(UseGpuSkinning_ptr - 0x1C844C)
1C8444:  ADD.W           R2, R6, #0x1C
1C8448:  ADD             R0, PC; UseGpuSkinning_ptr
1C844A:  LDR             R0, [R0]; UseGpuSkinning
1C844C:  LDR             R0, [R0]
1C844E:  CMP             R0, #0
1C8450:  IT NE
1C8452:  MOVNE           R2, #0
1C8454:  STR             R2, [SP,#0x40+var_28]
1C8456:  LDR             R0, =(off_6B72B4 - 0x1C8462)
1C8458:  MOV             R2, R11
1C845A:  STR             R1, [SP,#0x40+var_40]
1C845C:  MOV             R1, R6
1C845E:  ADD             R0, PC; off_6B72B4
1C8460:  MOV             R3, R8
1C8462:  LDR             R4, [R0]
1C8464:  MOV             R0, R5
1C8466:  BLX             R4
1C8468:  MOV             R0, R10
1C846A:  BLX             j_RpSkinGeometryGetSkin
1C846E:  MOV             R9, R0
1C8470:  CMP.W           R9, #0
1C8474:  BEQ.W           loc_1C85AA
1C8478:  MOV             R0, R5
1C847A:  BLX             j_RpSkinAtomicGetHAnimHierarchy
1C847E:  MOV             R6, R0
1C8480:  CMP             R6, #0
1C8482:  BEQ.W           loc_1C85AA
1C8486:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C848C)
1C8488:  ADD             R0, PC; _rpSkinGlobals_ptr
1C848A:  LDR             R0, [R0]; _rpSkinGlobals
1C848C:  LDR             R0, [R0,#(dword_6B72A8 - 0x6B7274)]
1C848E:  CMP             R0, R6
1C8490:  BNE             loc_1C84A8
1C8492:  LDR             R0, =(RwEngineInstance_ptr - 0x1C849A)
1C8494:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C849C)
1C8496:  ADD             R0, PC; RwEngineInstance_ptr
1C8498:  ADD             R1, PC; _rpSkinGlobals_ptr
1C849A:  LDR             R0, [R0]; RwEngineInstance
1C849C:  LDR             R1, [R1]; _rpSkinGlobals
1C849E:  LDR             R0, [R0]
1C84A0:  LDR             R1, [R1,#(dword_6B72AC - 0x6B7274)]
1C84A2:  LDRH            R0, [R0,#8]
1C84A4:  CMP             R1, R0
1C84A6:  BEQ             loc_1C84E6
1C84A8:  MOV             R0, R5
1C84AA:  MOV             R1, R9
1C84AC:  MOV             R2, R6
1C84AE:  BLX             j__Z26_rpSkinPrepareAtomicMatrixP8RpAtomicP6RpSkinP16RpHAnimHierarchy; _rpSkinPrepareAtomicMatrix(RpAtomic *,RpSkin *,RpHAnimHierarchy *)
1C84B2:  LDR             R0, [R6,#4]
1C84B4:  CMP             R0, #1
1C84B6:  BLT             loc_1C84D2
1C84B8:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C84C2)
1C84BA:  MOVS            R1, #0
1C84BC:  MOVS            R2, #0
1C84BE:  ADD             R0, PC; _rpSkinGlobals_ptr
1C84C0:  LDR             R0, [R0]; _rpSkinGlobals
1C84C2:  LDR             R0, [R0,#(dword_6B7280 - 0x6B7274)]
1C84C4:  ADDS            R0, #0xC
1C84C6:  STR.W           R1, [R0],#0x40
1C84CA:  ADDS            R2, #1
1C84CC:  LDR             R3, [R6,#4]
1C84CE:  CMP             R2, R3
1C84D0:  BLT             loc_1C84C6
1C84D2:  LDR             R1, =(RwEngineInstance_ptr - 0x1C84DA)
1C84D4:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C84DC)
1C84D6:  ADD             R1, PC; RwEngineInstance_ptr
1C84D8:  ADD             R0, PC; _rpSkinGlobals_ptr
1C84DA:  LDR             R1, [R1]; RwEngineInstance
1C84DC:  LDR             R0, [R0]; _rpSkinGlobals
1C84DE:  LDR             R1, [R1]
1C84E0:  STR             R6, [R0,#(dword_6B72A8 - 0x6B7274)]
1C84E2:  LDRH            R1, [R1,#8]
1C84E4:  STR             R1, [R0,#(dword_6B72AC - 0x6B7274)]
1C84E6:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C84EC)
1C84E8:  ADD             R0, PC; _rpSkinGlobals_ptr
1C84EA:  LDR             R0, [R0]; _rpSkinGlobals
1C84EC:  LDR             R4, [R0,#(dword_6B7280 - 0x6B7274)]
1C84EE:  MOV             R0, R10
1C84F0:  BLX             j_RpSkinGeometryGetSkin
1C84F4:  CBZ             R0, loc_1C8518
1C84F6:  LDR             R1, =(RQMaxBones_ptr - 0x1C84FE)
1C84F8:  LDR             R0, [R0]
1C84FA:  ADD             R1, PC; RQMaxBones_ptr
1C84FC:  LDR             R1, [R1]; RQMaxBones
1C84FE:  LDR             R1, [R1]
1C8500:  CMP             R0, R1
1C8502:  BGT             loc_1C8518
1C8504:  LDR             R0, =(UseGpuSkinning_ptr - 0x1C850A)
1C8506:  ADD             R0, PC; UseGpuSkinning_ptr
1C8508:  LDR             R0, [R0]; UseGpuSkinning
1C850A:  LDR             R0, [R0]
1C850C:  CBZ             R0, loc_1C8518
1C850E:  MOV             R0, R6
1C8510:  MOV             R1, R4
1C8512:  BL              sub_1C8670
1C8516:  B               loc_1C85AA
1C8518:  MOV             R0, R9
1C851A:  BLX             j_RpSkinGetVertexBoneWeights
1C851E:  MOV             R8, R0
1C8520:  MOV             R0, R9
1C8522:  BLX             j_RpSkinGetVertexBoneIndices
1C8526:  MOV             R5, R0
1C8528:  LDRH.W          R0, [R11,#4]
1C852C:  CBZ             R0, loc_1C85AA
1C852E:  RSB.W           R9, R0, #0
1C8532:  LDR             R0, [SP,#0x40+var_28]
1C8534:  STRD.W          R5, R4, [SP,#0x40+var_24]
1C8538:  ADD.W           R6, R0, #0x18
1C853C:  LDR.W           R0, [R6,#-4]; void *
1C8540:  MOV             R5, R8
1C8542:  LDR.W           R1, [R10,#0x60]
1C8546:  MOV             R8, R10
1C8548:  LDR             R4, [R6]
1C854A:  LDRD.W          R10, R11, [R1,#0x14]
1C854E:  BLX             j__Z14emu_ArraysLockj; emu_ArraysLock(uint)
1C8552:  ADD.W           R4, R4, R4,LSL#1
1C8556:  CMP.W           R11, #0
1C855A:  LDRD.W          R1, R12, [R6,#-0x10]
1C855E:  LDR             R2, [R6]
1C8560:  IT NE
1C8562:  ADDNE.W         R11, R11, R4,LSL#2
1C8566:  ADD.W           R4, R10, R4,LSL#2
1C856A:  CMP.W           R11, #0
1C856E:  MOV             R3, R11
1C8570:  MOV             R10, R8
1C8572:  IT NE
1C8574:  ADDNE.W         R3, R0, #0xC
1C8578:  MOV             R8, R5
1C857A:  LDR             R5, [SP,#0x40+var_24]
1C857C:  STRD.W          R0, R4, [SP,#0x40+var_40]
1C8580:  MOV             R0, R12
1C8582:  LDR             R4, [SP,#0x40+var_20]
1C8584:  STRD.W          R3, R11, [SP,#0x40+var_38]
1C8588:  STR             R1, [SP,#0x40+var_30]
1C858A:  ADD.W           R1, R8, R2,LSL#4
1C858E:  ADD.W           R2, R5, R2,LSL#2
1C8592:  MOV             R3, R4
1C8594:  BLX             j__Z25_rpSkinGenericMatrixBlendiPK15RwMatrixWeightsPKjPK11RwMatrixTagPhPK5RwV3dS7_SA_j; _rpSkinGenericMatrixBlend(int,RwMatrixWeights const*,uint const*,RwMatrixTag const*,uchar *,RwV3d const*,uchar *,RwV3d const*,uint)
1C8598:  LDR.W           R0, [R6,#-4]; unsigned int
1C859C:  BLX             j__Z16emu_ArraysUnlockj; emu_ArraysUnlock(uint)
1C85A0:  ADDS.W          R9, R9, #1
1C85A4:  ADD.W           R6, R6, #0x38 ; '8'
1C85A8:  BNE             loc_1C853C
1C85AA:  MOVS            R0, #1
1C85AC:  ADD             SP, SP, #0x24 ; '$'
1C85AE:  POP.W           {R8-R11}
1C85B2:  POP             {R4-R7,PC}
