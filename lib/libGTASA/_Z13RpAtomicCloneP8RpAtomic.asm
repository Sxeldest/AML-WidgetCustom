; =========================================================
; Game Engine Function: _Z13RpAtomicCloneP8RpAtomic
; Address            : 0x214360 - 0x2144B2
; =========================================================

214360:  PUSH            {R4-R7,LR}
214362:  ADD             R7, SP, #0xC
214364:  PUSH.W          {R8,R9,R11}
214368:  MOV             R4, R0
21436A:  LDR             R0, =(RwEngineInstance_ptr - 0x214372)
21436C:  LDR             R1, =(dword_6BD598 - 0x214374)
21436E:  ADD             R0, PC; RwEngineInstance_ptr
214370:  ADD             R1, PC; dword_6BD598
214372:  LDR             R0, [R0]; RwEngineInstance
214374:  LDR             R1, [R1]
214376:  LDR             R2, [R0]
214378:  LDR             R0, [R2,R1]
21437A:  LDR.W           R1, [R2,#0x13C]
21437E:  BLX             R1
214380:  MOV             R5, R0
214382:  MOVS            R6, #0
214384:  CMP             R5, #0
214386:  BEQ.W           loc_2144A8
21438A:  LDR             R0, =(sub_21431E+1 - 0x214396)
21438C:  MOVS            R1, #1
21438E:  STR.W           R6, [R5,#1]
214392:  ADD             R0, PC; sub_21431E
214394:  STRB            R6, [R5,#7]
214396:  STRH.W          R6, [R5,#5]
21439A:  STRB            R1, [R5]
21439C:  MOVS            R1, #0
21439E:  STRD.W          R0, R6, [R5,#0x10]
2143A2:  MOVW            R0, #0x105
2143A6:  STRH            R0, [R5,#2]
2143A8:  MOV             R0, R5
2143AA:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
2143AE:  LDR             R1, =(_Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0 - 0x2143C0)
2143B0:  VMOV.I32        Q8, #0
2143B4:  ADD.W           R2, R5, #0x28 ; '('
2143B8:  ADD.W           R9, R5, #0x18
2143BC:  ADD             R1, PC; _Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0
2143BE:  LDR             R0, =(dword_683B48 - 0x2143CC)
2143C0:  VST1.32         {D16-D17}, [R2]
2143C4:  MOV.W           R2, #0x3F800000
2143C8:  ADD             R0, PC; dword_683B48
2143CA:  MOV             R8, R5
2143CC:  LDR             R1, [R1]; AtomicDefaultRenderCallBack(RpAtomic *)
2143CE:  VST1.32         {D16-D17}, [R9]
2143D2:  STRD.W          R6, R2, [R5,#0x50]
2143D6:  STRD.W          R2, R6, [R5,#0x58]
2143DA:  ADD.W           R2, R5, #0x64 ; 'd'
2143DE:  STRD.W          R6, R6, [R5,#0x38]
2143E2:  STRD.W          R6, R6, [R5,#0x40]
2143E6:  STR             R1, [R5,#0x48]
2143E8:  LDRB            R1, [R5,#3]
2143EA:  STRD.W          R2, R2, [R5,#0x64]
2143EE:  ORR.W           R1, R1, #1
2143F2:  STR             R6, [R5,#0x6C]
2143F4:  STRB            R1, [R5,#3]
2143F6:  MOVS            R1, #3
2143F8:  STR.W           R1, [R8,#0x4C]!
2143FC:  MOV             R1, R5
2143FE:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
214402:  LDRB            R0, [R4]
214404:  MOVS            R1, #0
214406:  STRB            R0, [R5]
214408:  LDRB            R0, [R4,#1]
21440A:  STRB            R0, [R5,#1]
21440C:  LDRB            R0, [R4,#2]
21440E:  STRB            R0, [R5,#2]
214410:  LDRB            R0, [R4,#3]
214412:  STR             R6, [R5,#4]
214414:  STRB            R0, [R5,#3]
214416:  LDRB            R0, [R4,#2]
214418:  STRB            R0, [R5,#2]
21441A:  MOV             R0, R5
21441C:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
214420:  LDRB            R1, [R5,#3]
214422:  LDR             R0, [R5,#0x18]
214424:  ORR.W           R1, R1, #1
214428:  STRB            R1, [R5,#3]
21442A:  LDR             R6, [R4,#0x18]
21442C:  CMP             R0, R6
21442E:  BEQ             loc_214470
214430:  CBZ             R6, loc_21443C
214432:  MOV             R0, R6
214434:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
214438:  LDR.W           R0, [R9]
21443C:  CMP             R0, #0
21443E:  IT NE
214440:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214444:  CMP             R6, #0
214446:  STR.W           R6, [R9]
21444A:  BEQ             loc_21445C
21444C:  LDR             R0, [R6,#0x60]
21444E:  ADDS            R0, #4
214450:  VLD1.32         {D16-D17}, [R0]
214454:  ADD.W           R0, R5, #0x1C
214458:  VST1.32         {D16-D17}, [R0]
21445C:  LDR             R6, [R5,#4]
21445E:  CBZ             R6, loc_214470
214460:  MOV             R0, R5
214462:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
214466:  CMP             R0, #0
214468:  ITT NE
21446A:  MOVNE           R0, R6
21446C:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
214470:  ADD.W           R0, R4, #0x1C
214474:  MOV             R2, R4
214476:  VLD1.32         {D16-D17}, [R0]
21447A:  ADD.W           R0, R5, #0x1C
21447E:  VST1.32         {D16-D17}, [R0]
214482:  LDR             R0, [R4,#0x48]
214484:  STR             R0, [R5,#0x48]
214486:  LDR             R0, [R4,#0x6C]
214488:  STR             R0, [R5,#0x6C]
21448A:  ADD.W           R0, R4, #0x4C ; 'L'
21448E:  VLD1.32         {D16-D17}, [R0]
214492:  LDR             R0, =(dword_683B48 - 0x21449E)
214494:  LDR             R1, [R4,#0x5C]
214496:  VST1.32         {D16-D17}, [R8]!
21449A:  ADD             R0, PC; dword_683B48
21449C:  STR.W           R1, [R8]
2144A0:  MOV             R1, R5
2144A2:  BLX             j__Z27_rwPluginRegistryCopyObjectPK16RwPluginRegistryPvPKv; _rwPluginRegistryCopyObject(RwPluginRegistry const*,void *,void const*)
2144A6:  B               loc_2144AA
2144A8:  MOVS            R5, #0
2144AA:  MOV             R0, R5
2144AC:  POP.W           {R8,R9,R11}
2144B0:  POP             {R4-R7,PC}
