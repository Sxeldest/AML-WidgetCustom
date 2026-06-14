; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo8SetClumpEP7RpClump
; Address            : 0x385244 - 0x3853B8
; =========================================================

385244:  PUSH            {R4-R7,LR}
385246:  ADD             R7, SP, #0xC
385248:  PUSH.W          {R8,R9,R11}
38524C:  MOV             R5, R0
38524E:  MOV             R4, R1
385250:  LDR             R0, [R5,#0x34]
385252:  CBZ             R0, loc_385278
385254:  BLX             j__Z17Get2DEffectAtomicP7RpClump; Get2DEffectAtomic(RpClump *)
385258:  CBZ             R0, loc_385278
38525A:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x385262)
38525C:  LDR             R0, [R0,#0x18]
38525E:  ADD             R1, PC; g2dEffectPluginOffset_ptr
385260:  LDR             R1, [R1]; g2dEffectPluginOffset
385262:  LDR             R1, [R1]
385264:  LDR             R0, [R0,R1]
385266:  CMP             R0, #0
385268:  ITE NE
38526A:  LDRNE           R0, [R0]
38526C:  MOVEQ           R0, #0
38526E:  LDRB.W          R1, [R5,#0x23]
385272:  SUBS            R0, R1, R0
385274:  STRB.W          R0, [R5,#0x23]
385278:  CMP             R4, #0
38527A:  STR             R4, [R5,#0x34]
38527C:  BEQ             loc_3852A4
38527E:  MOV             R0, R4
385280:  BLX             j__Z17Get2DEffectAtomicP7RpClump; Get2DEffectAtomic(RpClump *)
385284:  CBZ             R0, loc_3852A4
385286:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x38528E)
385288:  LDR             R0, [R0,#0x18]
38528A:  ADD             R1, PC; g2dEffectPluginOffset_ptr
38528C:  LDR             R1, [R1]; g2dEffectPluginOffset
38528E:  LDR             R1, [R1]
385290:  LDR             R0, [R0,R1]
385292:  CMP             R0, #0
385294:  ITE NE
385296:  LDRNE           R0, [R0]
385298:  MOVEQ           R0, #0
38529A:  LDRB.W          R1, [R5,#0x23]
38529E:  ADD             R0, R1
3852A0:  STRB.W          R0, [R5,#0x23]
3852A4:  LDR             R0, [R5,#0x34]
3852A6:  MOV             R1, R5
3852A8:  BLX             j__ZN18CVisibilityPlugins17SetClumpModelInfoEP7RpClumpP15CClumpModelInfo; CVisibilityPlugins::SetClumpModelInfo(RpClump *,CClumpModelInfo *)
3852AC:  MOV             R0, R5; this
3852AE:  BLX             j__ZN14CBaseModelInfo19AddTexDictionaryRefEv; CBaseModelInfo::AddTexDictionaryRef(void)
3852B2:  LDR             R0, [R5]
3852B4:  LDR             R1, [R0,#0x3C]
3852B6:  MOV             R0, R5
3852B8:  BLX             R1
3852BA:  ADDS            R0, #1
3852BC:  BEQ             loc_3852CA
3852BE:  LDR             R0, [R5]
3852C0:  LDR             R1, [R0,#0x3C]
3852C2:  MOV             R0, R5
3852C4:  BLX             R1
3852C6:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
3852CA:  LDR             R1, =(sub_3853D0+1 - 0x3852D4)
3852CC:  MOV             R0, R4
3852CE:  MOV             R2, R5
3852D0:  ADD             R1, PC; sub_3853D0
3852D2:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
3852D6:  MOV             R0, R4
3852D8:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
3852DC:  CMP             R0, #0
3852DE:  BEQ             loc_38539E
3852E0:  LDR             R0, [R0,#0x18]
3852E2:  BLX             j_RpSkinGeometryGetSkin
3852E6:  CMP             R0, #0
3852E8:  BEQ             loc_38539E
3852EA:  LDRB.W          R0, [R5,#0x29]
3852EE:  LSLS            R0, R0, #0x1E
3852F0:  BMI             loc_3853A4
3852F2:  MOV             R0, R4
3852F4:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
3852F8:  LDR             R0, [R0,#0x18]
3852FA:  VLDR            S0, =1.2
3852FE:  LDR             R0, [R0,#0x60]
385300:  VLDR            S2, [R0,#0x10]
385304:  VMUL.F32        S0, S2, S0
385308:  VSTR            S0, [R0,#0x10]
38530C:  MOV             R0, R4
38530E:  BLX             j__Z25GetAnimHierarchyFromClumpP7RpClump; GetAnimHierarchyFromClump(RpClump *)
385312:  LDR             R1, =(sub_3853FA+1 - 0x38531E)
385314:  MOV             R8, R0
385316:  MOV             R0, R4
385318:  MOV             R2, R8
38531A:  ADD             R1, PC; sub_3853FA
38531C:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
385320:  MOV             R0, R4
385322:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
385326:  MOV             R6, R0
385328:  LDR             R0, [R6,#0x18]
38532A:  BLX             j_RpSkinGeometryGetSkin
38532E:  MOV             R4, R0
385330:  LDR.W           R9, [R6,#0x18]
385334:  BLX             j_RpSkinGetVertexBoneWeights
385338:  CBZ             R0, loc_385396
38533A:  LDR.W           R0, [R9,#0x14]
38533E:  CMP             R0, #1
385340:  BLT             loc_385396
385342:  MOVS            R5, #0
385344:  MOVS            R6, #8
385346:  MOV             R0, R4
385348:  BLX             j_RpSkinGetVertexBoneWeights
38534C:  ADD             R0, R6
38534E:  ADDS            R6, #0x10
385350:  ADDS            R5, #1
385352:  VLDR            S0, [R0,#-8]
385356:  VLDR            S2, [R0,#-4]
38535A:  VLDR            S4, [R0]
38535E:  VADD.F32        S8, S0, S2
385362:  VLDR            S6, [R0,#4]
385366:  VADD.F32        S8, S8, S4
38536A:  VADD.F32        S8, S8, S6
38536E:  VDIV.F32        S0, S0, S8
385372:  VDIV.F32        S6, S6, S8
385376:  VDIV.F32        S4, S4, S8
38537A:  VDIV.F32        S2, S2, S8
38537E:  VSTR            S0, [R0,#-8]
385382:  VSTR            S2, [R0,#-4]
385386:  VSTR            S4, [R0]
38538A:  VSTR            S6, [R0,#4]
38538E:  LDR.W           R0, [R9,#0x14]
385392:  CMP             R5, R0
385394:  BLT             loc_385346
385396:  MOV.W           R0, #0x3000
38539A:  STR.W           R0, [R8]
38539E:  POP.W           {R8,R9,R11}
3853A2:  POP             {R4-R7,PC}
3853A4:  LDR             R1, =(sub_3853FA+1 - 0x3853AE)
3853A6:  MOV             R0, R4
3853A8:  MOVS            R2, #0
3853AA:  ADD             R1, PC; sub_3853FA
3853AC:  POP.W           {R8,R9,R11}
3853B0:  POP.W           {R4-R7,LR}
3853B4:  B.W             sub_18E45C
