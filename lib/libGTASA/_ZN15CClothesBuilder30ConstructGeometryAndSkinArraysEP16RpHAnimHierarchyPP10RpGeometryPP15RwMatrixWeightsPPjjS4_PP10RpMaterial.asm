; =========================================================
; Game Engine Function: _ZN15CClothesBuilder30ConstructGeometryAndSkinArraysEP16RpHAnimHierarchyPP10RpGeometryPP15RwMatrixWeightsPPjjS4_PP10RpMaterial
; Address            : 0x45939C - 0x459688
; =========================================================

45939C:  PUSH            {R4-R7,LR}
45939E:  ADD             R7, SP, #0xC
4593A0:  PUSH.W          {R8-R11}
4593A4:  SUB             SP, SP, #0x8C
4593A6:  MOV             R10, R1
4593A8:  LDR             R1, =(__stack_chk_guard_ptr - 0x4593B0)
4593AA:  STR             R3, [SP,#0xA8+var_9C]
4593AC:  ADD             R1, PC; __stack_chk_guard_ptr
4593AE:  LDR             R1, [R1]; __stack_chk_guard
4593B0:  LDR             R1, [R1]
4593B2:  LDRD.W          R3, R9, [R7,#arg_0]
4593B6:  STR             R1, [SP,#0xA8+var_20]
4593B8:  CMP             R3, #0
4593BA:  STR             R2, [SP,#0xA8+var_98]
4593BC:  BEQ             loc_4593DE
4593BE:  MOV             R2, R3
4593C0:  MOVS            R4, #0
4593C2:  MOV             R5, R2
4593C4:  MOV             R2, R9
4593C6:  MOVS            R1, #0
4593C8:  LDR             R3, [R2]
4593CA:  ADDS            R2, #4
4593CC:  CMP             R3, #0
4593CE:  ITTT NE
4593D0:  LDRDNE.W        R6, R3, [R3,#0x10]
4593D4:  ADDNE           R1, R6
4593D6:  ADDNE           R4, R3
4593D8:  SUBS            R5, #1
4593DA:  BNE             loc_4593C8
4593DC:  B               loc_4593E2
4593DE:  MOVS            R1, #0; int
4593E0:  MOVS            R4, #0
4593E2:  STR             R0, [SP,#0xA8+var_8C]
4593E4:  MOV             R0, R4; int
4593E6:  MOVS            R2, #0x35 ; '5'; unsigned int
4593E8:  STR             R4, [SP,#0xA8+var_A0]
4593EA:  BLX             j__Z16RpGeometryCreateiij; RpGeometryCreate(int,int,uint)
4593EE:  MOV             R8, R0
4593F0:  LDR             R5, [R7,#arg_0]
4593F2:  STR.W           R8, [R10]
4593F6:  LDR.W           R0, [R8,#0x60]
4593FA:  CMP             R5, #0
4593FC:  STR             R0, [SP,#0xA8+var_94]
4593FE:  BEQ.W           loc_459532
459402:  LDR             R0, [SP,#0xA8+var_94]
459404:  MOV.W           R10, #0
459408:  LDR             R1, [R7,#arg_8]
45940A:  MOVS            R3, #0
45940C:  LDRD.W          R12, R4, [R0,#0x14]
459410:  LDR.W           R0, [R8,#0x2C]
459414:  STR             R0, [SP,#0xA8+var_78]
459416:  LDR.W           R0, [R8,#0x34]
45941A:  STR.W           R8, [SP,#0xA8+var_90]
45941E:  LDR.W           R11, [R9,R3,LSL#2]
459422:  CMP.W           R11, #0
459426:  BEQ.W           loc_45952A
45942A:  LDRD.W          R2, R6, [R11,#0x10]
45942E:  CMP             R6, #1
459430:  STR             R2, [SP,#0xA8+var_74]
459432:  BLT             loc_4594B0
459434:  ADD.W           LR, R6, R6,LSL#1
459438:  STR             R3, [SP,#0xA8+var_7C]
45943A:  LDR.W           R3, [R11,#0x60]
45943E:  MOV             R8, R4
459440:  ADD.W           R1, R4, LR,LSL#2
459444:  STR             R1, [SP,#0xA8+var_80]
459446:  MOV             R1, R6
459448:  MOVS            R6, #0
45944A:  MOV             R9, R1
45944C:  MOV             R4, R1
45944E:  MOVS            R1, #0
459450:  LDR             R2, [R3,#0x14]
459452:  ADD.W           R5, R12, R1
459456:  SUBS            R4, #1
459458:  ADD             R2, R1
45945A:  VLDR            D16, [R2]
45945E:  LDR             R2, [R2,#8]
459460:  STR             R2, [R5,#8]
459462:  VSTR            D16, [R5]
459466:  ADD.W           R5, R8, R1
45946A:  LDR             R2, [R3,#0x18]
45946C:  ADD             R2, R1
45946E:  ADD.W           R1, R1, #0xC
459472:  VLDR            D16, [R2]
459476:  LDR             R2, [R2,#8]
459478:  STR             R2, [R5,#8]
45947A:  VSTR            D16, [R5]
45947E:  LDR.W           R2, [R11,#0x34]
459482:  LDR             R5, [R2,R6]
459484:  ADD             R2, R6
459486:  LDR             R2, [R2,#4]
459488:  STR             R5, [R0,R6]
45948A:  ADD.W           R5, R0, R6
45948E:  ADD.W           R6, R6, #8
459492:  STR             R2, [R5,#4]
459494:  BNE             loc_459450
459496:  MOV             R6, R9
459498:  LDR             R4, [SP,#0xA8+var_80]
45949A:  LDRD.W          R5, R9, [R7,#arg_0]
45949E:  ADD.W           R0, R0, R6,LSL#3
4594A2:  LDR             R1, [R7,#arg_8]
4594A4:  ADD.W           R12, R12, LR,LSL#2
4594A8:  LDR             R3, [SP,#0xA8+var_7C]
4594AA:  LDR.W           R8, [SP,#0xA8+var_90]
4594AE:  LDR             R2, [SP,#0xA8+var_74]
4594B0:  CMP             R2, #1
4594B2:  BLT             loc_459528
4594B4:  STRD.W          R6, R4, [SP,#0xA8+var_88]
4594B8:  MOV             R4, R2
4594BA:  STRD.W          R0, R12, [SP,#0xA8+var_80]
4594BE:  MOV             R5, R1
4594C0:  LDR.W           R9, [R11,#0x2C]
4594C4:  MOV             R11, R8
4594C6:  LDR             R6, [SP,#0xA8+var_78]
4594C8:  MOV             R8, R3
4594CA:  LDRH.W          R0, [R9,#4]
4594CE:  LDRH.W          R2, [R9]
4594D2:  ADD             R0, R10
4594D4:  LDRH.W          R1, [R9,#2]
4594D8:  UXTH            R0, R0
4594DA:  STR             R0, [SP,#0xA8+var_A8]
4594DC:  ADD.W           R0, R10, R2
4594E0:  UXTH            R2, R0
4594E2:  ADD.W           R0, R10, R1
4594E6:  MOV             R1, R6
4594E8:  UXTH            R3, R0
4594EA:  MOV             R0, R11
4594EC:  BLX             j__Z34RpGeometryTriangleSetVertexIndicesPK10RpGeometryP10RpTrianglettt; RpGeometryTriangleSetVertexIndices(RpGeometry const*,RpTriangle *,ushort,ushort,ushort)
4594F0:  LDR.W           R2, [R5,R8,LSL#2]
4594F4:  MOV             R0, R11
4594F6:  MOV             R1, R6
4594F8:  BLX             j__Z29RpGeometryTriangleSetMaterialP10RpGeometryP10RpTriangleP10RpMaterial; RpGeometryTriangleSetMaterial(RpGeometry *,RpTriangle *,RpMaterial *)
4594FC:  ADD.W           R9, R9, #8
459500:  SUBS            R4, #1
459502:  ADD.W           R6, R6, #8
459506:  BNE             loc_4594CA
459508:  LDRD.W          R0, R1, [SP,#0xA8+var_78]
45950C:  MOV             R3, R8
45950E:  LDR.W           R9, [R7,#arg_4]
459512:  MOV             R8, R11
459514:  ADD.W           R0, R0, R1,LSL#3
459518:  STR             R0, [SP,#0xA8+var_78]
45951A:  MOV             R1, R5
45951C:  LDR             R5, [R7,#arg_0]
45951E:  LDR.W           R12, [SP,#0xA8+var_7C]
459522:  LDR             R0, [SP,#0xA8+var_80]
459524:  LDRD.W          R6, R4, [SP,#0xA8+var_88]
459528:  ADD             R10, R6
45952A:  ADDS            R3, #1
45952C:  CMP             R3, R5
45952E:  BNE.W           loc_45941E
459532:  LDR             R4, [SP,#0xA8+var_94]
459534:  ADD             R6, SP, #0xA8+var_70
459536:  MOV             R1, R6
459538:  MOV             R0, R4
45953A:  BLX             j__Z31RpMorphTargetCalcBoundingSpherePK13RpMorphTargetP8RwSphere; RpMorphTargetCalcBoundingSphere(RpMorphTarget const*,RwSphere *)
45953E:  VLD1.64         {D16-D17}, [R6]
459542:  ADDS            R0, R4, #4
459544:  VST1.32         {D16-D17}, [R0]
459548:  MOV             R0, R8
45954A:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
45954E:  LDR             R4, [SP,#0xA8+var_A0]
459550:  MOVS            R0, #0x10
459552:  UMULL.W         R0, R1, R4, R0
459556:  CMP             R1, #0
459558:  IT NE
45955A:  MOVNE           R1, #1
45955C:  CMP             R1, #0
45955E:  IT NE
459560:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
459564:  BLX             _Znaj; operator new[](uint)
459568:  MOVS            R1, #4
45956A:  UMULL.W         R1, R2, R4, R1
45956E:  LDR             R4, [SP,#0xA8+var_98]
459570:  STR             R0, [R4]
459572:  CMP             R2, #0
459574:  IT NE
459576:  MOVNE           R2, #1
459578:  CMP             R2, #0
45957A:  IT NE
45957C:  MOVNE.W         R1, #0xFFFFFFFF
459580:  MOV             R0, R1; unsigned int
459582:  BLX             _Znaj; operator new[](uint)
459586:  MOV             R11, R0
459588:  LDR             R0, [SP,#0xA8+var_9C]
45958A:  CMP             R5, #0
45958C:  STR.W           R11, [R0]
459590:  LDR.W           R8, [SP,#0xA8+var_8C]
459594:  BEQ             loc_45966E
459596:  LDR             R0, =(gBoneIndices_ptr - 0x4595A2)
459598:  MOVS            R2, #0
45959A:  LDR             R1, [R4]
45959C:  ADD             R4, SP, #0xA8+var_60
45959E:  ADD             R0, PC; gBoneIndices_ptr
4595A0:  LDR             R0, [R0]; gBoneIndices
4595A2:  STR             R0, [SP,#0xA8+var_74]
4595A4:  LDR.W           R10, [R9,R2,LSL#2]
4595A8:  CMP.W           R10, #0
4595AC:  BEQ             loc_459660
4595AE:  MOV             R0, R10
4595B0:  STRD.W          R2, R1, [SP,#0xA8+var_7C]
4595B4:  BLX             j_RpSkinGeometryGetSkin
4595B8:  LDR.W           R10, [R10,#0x14]
4595BC:  MOV             R6, R0
4595BE:  MOVS            R5, #0
4595C0:  LDR             R0, [SP,#0xA8+var_74]
4595C2:  LDRSH.W         R1, [R0,R5,LSL#1]
4595C6:  ADDS            R0, R1, #1
4595C8:  BEQ             loc_4595E4
4595CA:  MOV             R0, R8
4595CC:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4595D0:  UXTB            R1, R0
4595D2:  CMP             R1, #0xFF
4595D4:  IT EQ
4595D6:  MOVEQ           R0, #0
4595D8:  CMP             R5, #0x3F ; '?'
4595DA:  STRB            R0, [R4,R5]
4595DC:  ADD.W           R0, R5, #1
4595E0:  MOV             R5, R0
4595E2:  BLT             loc_4595C0
4595E4:  LDR             R5, [R7,#arg_0]
4595E6:  CMP.W           R10, #1
4595EA:  BLT             loc_45965C
4595EC:  LDR             R5, [SP,#0xA8+var_78]
4595EE:  MOV.W           R9, #0
4595F2:  MOV.W           R8, #0
4595F6:  ADD.W           R0, R11, R10,LSL#2
4595FA:  STR             R0, [SP,#0xA8+var_80]
4595FC:  MOV             R0, R6
4595FE:  BLX             j_RpSkinGetVertexBoneIndices
459602:  LDRB.W          R1, [R0,R8,LSL#2]
459606:  ADD.W           R0, R0, R8,LSL#2
45960A:  ADD.W           R2, R11, R8,LSL#2
45960E:  LDRB            R1, [R4,R1]
459610:  STRB.W          R1, [R11,R8,LSL#2]
459614:  LDRB            R1, [R0,#1]
459616:  LDRB            R1, [R4,R1]
459618:  STRB            R1, [R2,#1]
45961A:  LDRB            R1, [R0,#2]
45961C:  LDRB            R1, [R4,R1]
45961E:  STRB            R1, [R2,#2]
459620:  LDRB            R0, [R0,#3]
459622:  LDRB            R0, [R4,R0]
459624:  STRB            R0, [R2,#3]
459626:  MOV             R0, R6
459628:  BLX             j_RpSkinGetVertexBoneWeights
45962C:  ADD             R0, R9
45962E:  ADD.W           R8, R8, #1
459632:  VLD1.32         {D16-D17}, [R0]
459636:  ADD.W           R0, R5, R9
45963A:  ADD.W           R9, R9, #0x10
45963E:  CMP             R10, R8
459640:  VST1.32         {D16-D17}, [R0]
459644:  BNE             loc_4595FC
459646:  ADD.W           R5, R5, R10,LSL#4
45964A:  LDR.W           R11, [SP,#0xA8+var_80]
45964E:  LDR.W           R8, [SP,#0xA8+var_8C]
459652:  MOV             R1, R5
459654:  LDR.W           R9, [R7,#arg_4]
459658:  LDR             R5, [R7,#arg_0]
45965A:  B               loc_45965E
45965C:  LDR             R1, [SP,#0xA8+var_78]
45965E:  LDR             R2, [SP,#0xA8+var_7C]
459660:  LDR             R0, [SP,#0xA8+var_74]
459662:  ADDS            R2, #1
459664:  CMP             R2, R5
459666:  ADD.W           R0, R0, #0x80
45966A:  STR             R0, [SP,#0xA8+var_74]
45966C:  BNE             loc_4595A4
45966E:  LDR             R0, =(__stack_chk_guard_ptr - 0x459676)
459670:  LDR             R1, [SP,#0xA8+var_20]
459672:  ADD             R0, PC; __stack_chk_guard_ptr
459674:  LDR             R0, [R0]; __stack_chk_guard
459676:  LDR             R0, [R0]
459678:  SUBS            R0, R0, R1
45967A:  ITTT EQ
45967C:  ADDEQ           SP, SP, #0x8C
45967E:  POPEQ.W         {R8-R11}
459682:  POPEQ           {R4-R7,PC}
459684:  BLX             __stack_chk_fail
