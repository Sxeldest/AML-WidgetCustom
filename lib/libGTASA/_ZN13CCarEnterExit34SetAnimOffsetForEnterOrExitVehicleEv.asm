; =========================================================
; Game Engine Function: _ZN13CCarEnterExit34SetAnimOffsetForEnterOrExitVehicleEv
; Address            : 0x5091B8 - 0x50944C
; =========================================================

5091B8:  LDR             R0, =(_ZN13CCarEnterExit24ms_bPedOffsetsCalculatedE_ptr - 0x5091BE)
5091BA:  ADD             R0, PC; _ZN13CCarEnterExit24ms_bPedOffsetsCalculatedE_ptr
5091BC:  LDR             R0, [R0]; CCarEnterExit::ms_bPedOffsetsCalculated ...
5091BE:  LDRB            R0, [R0]; CCarEnterExit::ms_bPedOffsetsCalculated
5091C0:  CMP             R0, #0
5091C2:  IT NE
5091C4:  BXNE            LR
5091C6:  PUSH            {R4-R7,LR}
5091C8:  ADD             R7, SP, #0x14+var_8
5091CA:  PUSH.W          {R8}
5091CE:  ADR             R0, aIntHouse; "int_house"
5091D0:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
5091D4:  MOV             R8, R0
5091D6:  ADR             R0, aIntOffice; "int_office"
5091D8:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
5091DC:  MOV             R5, R0
5091DE:  MOVW            R6, #0x63E7
5091E2:  ADDS            R0, R5, R6; this
5091E4:  MOVS            R1, #8; int
5091E6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5091EA:  ADD.W           R0, R8, R6; this
5091EE:  MOVS            R1, #8; int
5091F0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5091F4:  MOVS            R0, #0; this
5091F6:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
5091FA:  MOV             R0, R5; this
5091FC:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
509200:  MOV             R0, R8; this
509202:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
509206:  MOVS            R0, #0
509208:  MOVS            R1, #0x70 ; 'p'
50920A:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
50920E:  LDR             R0, [R0,#0x10]; this
509210:  LDR             R6, [R0,#4]
509212:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
509216:  LDRSH.W         R0, [R6,#6]
50921A:  CMP             R0, #1
50921C:  BLT             loc_509232
50921E:  LDR             R0, =(_ZN13CCarEnterExit24ms_vecPedGetUpAnimOffsetE_ptr - 0x509226)
509220:  LDR             R1, [R6,#8]
509222:  ADD             R0, PC; _ZN13CCarEnterExit24ms_vecPedGetUpAnimOffsetE_ptr
509224:  LDR             R0, [R0]; CCarEnterExit::ms_vecPedGetUpAnimOffset ...
509226:  VLDR            D16, [R1,#0x14]
50922A:  LDR             R1, [R1,#0x1C]
50922C:  STR             R1, [R0,#(dword_9FEF6C - 0x9FEF64)]
50922E:  VSTR            D16, [R0]
509232:  LDR             R0, =(_ZN13CCarEnterExit37ms_vecPedQuickDraggedOutCarAnimOffsetE_ptr - 0x509242)
509234:  MOVS            R1, #1
509236:  MOVW            R2, #0xC001
50923A:  MOVW            R3, #0xFFFD
50923E:  ADD             R0, PC; _ZN13CCarEnterExit37ms_vecPedQuickDraggedOutCarAnimOffsetE_ptr
509240:  MOVT            R1, #0xBEA7
509244:  MOVT            R2, #0xBFEB
509248:  MOVT            R3, #0xBC4F
50924C:  LDR             R0, [R0]; CCarEnterExit::ms_vecPedQuickDraggedOutCarAnimOffset ...
50924E:  STRD.W          R2, R1, [R0]; CCarEnterExit::ms_vecPedQuickDraggedOutCarAnimOffset
509252:  MOVW            R1, #0x151
509256:  STR             R3, [R0,#(dword_9FEF78 - 0x9FEF70)]
509258:  MOVS            R0, #0x54 ; 'T'
50925A:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
50925E:  LDR             R0, [R0,#0x10]; this
509260:  LDR             R6, [R0,#4]
509262:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
509266:  LDRSH.W         R0, [R6,#6]
50926A:  CMP             R0, #1
50926C:  BLT             loc_5092CA
50926E:  SUBS            R0, #1
509270:  LDRH            R3, [R6,#4]
509272:  LDR             R1, =(_ZN13CCarEnterExit23ms_vecPedBedLAnimOffsetE_ptr - 0x509282)
509274:  ADD.W           R4, R0, R0,LSL#2
509278:  LDR             R2, [R6,#8]
50927A:  TST.W           R3, #2
50927E:  ADD             R1, PC; _ZN13CCarEnterExit23ms_vecPedBedLAnimOffsetE_ptr
509280:  MOV.W           R4, R4,LSL#2
509284:  IT NE
509286:  LSLNE           R4, R0, #5
509288:  LDR             R1, [R1]; CCarEnterExit::ms_vecPedBedLAnimOffset ...
50928A:  ADDS            R0, R2, R4
50928C:  VLDR            D16, [R0,#0x14]
509290:  LDR             R0, [R0,#0x1C]
509292:  STR             R0, [R1,#(dword_9FEF88 - 0x9FEF80)]
509294:  VSTR            D16, [R1]
509298:  LDR             R0, [R6,#8]
50929A:  VLDR            S0, [R1]
50929E:  VLDR            S2, [R1,#4]
5092A2:  VLDR            S4, [R0,#0x14]
5092A6:  VLDR            S6, [R0,#0x18]
5092AA:  VSUB.F32        S0, S0, S4
5092AE:  VLDR            S8, [R0,#0x1C]
5092B2:  VSTR            S0, [R1]
5092B6:  VSUB.F32        S0, S2, S6
5092BA:  VLDR            S2, [R1,#8]
5092BE:  VSTR            S0, [R1,#4]
5092C2:  VSUB.F32        S0, S2, S8
5092C6:  VSTR            S0, [R1,#8]
5092CA:  MOVS            R0, #0x54 ; 'T'
5092CC:  MOV.W           R1, #0x154
5092D0:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
5092D4:  LDR             R0, [R0,#0x10]; this
5092D6:  LDR             R6, [R0,#4]
5092D8:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
5092DC:  LDRSH.W         R0, [R6,#6]
5092E0:  CMP             R0, #1
5092E2:  BLT             loc_509340
5092E4:  SUBS            R0, #1
5092E6:  LDRH            R3, [R6,#4]
5092E8:  LDR             R1, =(_ZN13CCarEnterExit23ms_vecPedBedRAnimOffsetE_ptr - 0x5092F8)
5092EA:  ADD.W           R4, R0, R0,LSL#2
5092EE:  LDR             R2, [R6,#8]
5092F0:  TST.W           R3, #2
5092F4:  ADD             R1, PC; _ZN13CCarEnterExit23ms_vecPedBedRAnimOffsetE_ptr
5092F6:  MOV.W           R4, R4,LSL#2
5092FA:  IT NE
5092FC:  LSLNE           R4, R0, #5
5092FE:  LDR             R1, [R1]; CCarEnterExit::ms_vecPedBedRAnimOffset ...
509300:  ADDS            R0, R2, R4
509302:  VLDR            D16, [R0,#0x14]
509306:  LDR             R0, [R0,#0x1C]
509308:  STR             R0, [R1,#(dword_9FEF94 - 0x9FEF8C)]
50930A:  VSTR            D16, [R1]
50930E:  LDR             R0, [R6,#8]
509310:  VLDR            S0, [R1]
509314:  VLDR            S2, [R1,#4]
509318:  VLDR            S4, [R0,#0x14]
50931C:  VLDR            S6, [R0,#0x18]
509320:  VSUB.F32        S0, S0, S4
509324:  VLDR            S8, [R0,#0x1C]
509328:  VSTR            S0, [R1]
50932C:  VSUB.F32        S0, S2, S6
509330:  VLDR            S2, [R1,#8]
509334:  VSTR            S0, [R1,#4]
509338:  VSUB.F32        S0, S2, S8
50933C:  VSTR            S0, [R1,#8]
509340:  MOVS            R0, #0x55 ; 'U'
509342:  MOV.W           R1, #0x148
509346:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
50934A:  LDR             R0, [R0,#0x10]; this
50934C:  LDR             R6, [R0,#4]
50934E:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
509352:  LDRSH.W         R0, [R6,#6]
509356:  CMP             R0, #1
509358:  BLT             loc_5093B6
50935A:  SUBS            R0, #1
50935C:  LDRH            R3, [R6,#4]
50935E:  LDR             R1, =(_ZN13CCarEnterExit23ms_vecPedDeskAnimOffsetE_ptr - 0x50936E)
509360:  ADD.W           R4, R0, R0,LSL#2
509364:  LDR             R2, [R6,#8]
509366:  TST.W           R3, #2
50936A:  ADD             R1, PC; _ZN13CCarEnterExit23ms_vecPedDeskAnimOffsetE_ptr
50936C:  MOV.W           R4, R4,LSL#2
509370:  IT NE
509372:  LSLNE           R4, R0, #5
509374:  LDR             R1, [R1]; CCarEnterExit::ms_vecPedDeskAnimOffset ...
509376:  ADDS            R0, R2, R4
509378:  VLDR            D16, [R0,#0x14]
50937C:  LDR             R0, [R0,#0x1C]
50937E:  STR             R0, [R1,#(dword_9FEFA0 - 0x9FEF98)]
509380:  VSTR            D16, [R1]
509384:  LDR             R0, [R6,#8]
509386:  VLDR            S0, [R1]
50938A:  VLDR            S2, [R1,#4]
50938E:  VLDR            S4, [R0,#0x14]
509392:  VLDR            S6, [R0,#0x18]
509396:  VSUB.F32        S0, S0, S4
50939A:  VLDR            S8, [R0,#0x1C]
50939E:  VSTR            S0, [R1]
5093A2:  VSUB.F32        S0, S2, S6
5093A6:  VLDR            S2, [R1,#8]
5093AA:  VSTR            S0, [R1,#4]
5093AE:  VSUB.F32        S0, S2, S8
5093B2:  VSTR            S0, [R1,#8]
5093B6:  MOVS            R0, #0x54 ; 'T'
5093B8:  MOVW            R1, #0x157
5093BC:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
5093C0:  LDR             R0, [R0,#0x10]; this
5093C2:  LDR             R6, [R0,#4]
5093C4:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
5093C8:  LDRSH.W         R0, [R6,#6]
5093CC:  CMP             R0, #1
5093CE:  BLT             loc_50942C
5093D0:  SUBS            R0, #1
5093D2:  LDRH            R3, [R6,#4]
5093D4:  LDR             R1, =(_ZN13CCarEnterExit24ms_vecPedChairAnimOffsetE_ptr - 0x5093E4)
5093D6:  ADD.W           R4, R0, R0,LSL#2
5093DA:  LDR             R2, [R6,#8]
5093DC:  TST.W           R3, #2
5093E0:  ADD             R1, PC; _ZN13CCarEnterExit24ms_vecPedChairAnimOffsetE_ptr
5093E2:  MOV.W           R4, R4,LSL#2
5093E6:  IT NE
5093E8:  LSLNE           R4, R0, #5
5093EA:  LDR             R1, [R1]; int
5093EC:  ADDS            R0, R2, R4
5093EE:  VLDR            D16, [R0,#0x14]
5093F2:  LDR             R0, [R0,#0x1C]
5093F4:  STR             R0, [R1,#(dword_9FEFAC - 0x9FEFA4)]
5093F6:  VSTR            D16, [R1]
5093FA:  LDR             R0, [R6,#8]
5093FC:  VLDR            S0, [R1]
509400:  VLDR            S2, [R1,#4]
509404:  VLDR            S4, [R0,#0x14]
509408:  VLDR            S6, [R0,#0x18]
50940C:  VSUB.F32        S0, S0, S4
509410:  VLDR            S8, [R0,#0x1C]
509414:  VSTR            S0, [R1]
509418:  VSUB.F32        S0, S2, S6
50941C:  VLDR            S2, [R1,#8]
509420:  VSTR            S0, [R1,#4]
509424:  VSUB.F32        S0, S2, S8
509428:  VSTR            S0, [R1,#8]
50942C:  MOV             R0, R8; this
50942E:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
509432:  MOV             R0, R5; this
509434:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
509438:  LDR             R0, =(_ZN13CCarEnterExit24ms_bPedOffsetsCalculatedE_ptr - 0x509440)
50943A:  MOVS            R1, #1
50943C:  ADD             R0, PC; _ZN13CCarEnterExit24ms_bPedOffsetsCalculatedE_ptr
50943E:  LDR             R0, [R0]; CCarEnterExit::ms_bPedOffsetsCalculated ...
509440:  STRB            R1, [R0]; CCarEnterExit::ms_bPedOffsetsCalculated
509442:  POP.W           {R8}
509446:  POP.W           {R4-R7,LR}
50944A:  BX              LR
