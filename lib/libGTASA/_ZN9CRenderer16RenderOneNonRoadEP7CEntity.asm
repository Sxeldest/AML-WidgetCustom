; =========================================================
; Game Engine Function: _ZN9CRenderer16RenderOneNonRoadEP7CEntity
; Address            : 0x4102BC - 0x4103AA
; =========================================================

4102BC:  PUSH            {R4-R7,LR}
4102BE:  ADD             R7, SP, #0xC
4102C0:  PUSH.W          {R11}
4102C4:  MOV             R4, R0
4102C6:  LDRB.W          R0, [R4,#0x3A]
4102CA:  AND.W           R0, R0, #7
4102CE:  CMP             R0, #3
4102D0:  ITT EQ
4102D2:  LDREQ.W         R0, [R4,#0x44C]
4102D6:  CMPEQ           R0, #0x32 ; '2'
4102D8:  BEQ             loc_4103A4
4102DA:  LDR             R0, [R4]
4102DC:  LDR             R1, [R0,#0x50]
4102DE:  MOV             R0, R4
4102E0:  BLX             R1
4102E2:  MOV             R5, R0
4102E4:  LDRB.W          R0, [R4,#0x3A]
4102E8:  AND.W           R0, R0, #7
4102EC:  CMP             R0, #2
4102EE:  BNE             loc_410308
4102F0:  LDR             R0, [R4,#0x18]
4102F2:  BLX             j__ZN18CVisibilityPlugins21SetupVehicleVariablesEP7RpClump; CVisibilityPlugins::SetupVehicleVariables(RpClump *)
4102F6:  BLX             j__ZN18CVisibilityPlugins19InitAlphaAtomicListEv; CVisibilityPlugins::InitAlphaAtomicList(void)
4102FA:  MOV             R0, R4; this
4102FC:  BLX             j__ZN8CVehicle25RenderDriverAndPassengersEv; CVehicle::RenderDriverAndPassengers(void)
410300:  MOV             R0, R4; this
410302:  BLX             j__ZN8CVehicle11SetupRenderEv; CVehicle::SetupRender(void)
410306:  B               loc_410316
410308:  LDRB            R0, [R4,#0x1F]
41030A:  LSLS            R0, R0, #0x1C
41030C:  BMI             loc_410316
41030E:  MOVS            R0, #0x14
410310:  MOVS            R1, #1
410312:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410316:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
41031A:  CMP             R0, #1
41031C:  BNE             loc_410350
41031E:  LDR             R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x410324)
410320:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
410322:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
410324:  LDRB            R0, [R0]; this
410326:  CMP             R0, #0
410328:  IT NE
41032A:  BLXNE           j__ZN12CPostEffects20NightVisionSetLightsEv; CPostEffects::NightVisionSetLights(void)
41032E:  LDR             R0, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x410334)
410330:  ADD             R0, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
410332:  LDR             R0, [R0]; CPostEffects::m_bInfraredVision ...
410334:  LDRB            R0, [R0]; this
410336:  CMP             R0, #0
410338:  IT NE
41033A:  BLXNE           j__ZN12CPostEffects40InfraredVisionSetLightsForDefaultObjectsEv; CPostEffects::InfraredVisionSetLightsForDefaultObjects(void)
41033E:  BLX             j__ZN12CPostEffects35FilterFX_StoreAndSetDayNightBalanceEv; CPostEffects::FilterFX_StoreAndSetDayNightBalance(void)
410342:  LDR             R0, [R4]
410344:  LDR             R1, [R0,#0x4C]
410346:  MOV             R0, R4
410348:  BLX             R1
41034A:  BLX             j__ZN12CPostEffects31FilterFX_RestoreDayNightBalanceEv; CPostEffects::FilterFX_RestoreDayNightBalance(void)
41034E:  B               loc_410358
410350:  LDR             R0, [R4]
410352:  LDR             R1, [R0,#0x4C]
410354:  MOV             R0, R4
410356:  BLX             R1
410358:  MOV             R6, R4
41035A:  LDR.W           R0, [R6,#0x1C]!
41035E:  LDRB            R1, [R6,#0x1E]
410360:  AND.W           R1, R1, #7
410364:  CMP             R1, #2
410366:  BNE             loc_410386
410368:  LDR             R1, [R6,#4]
41036A:  ORR.W           R0, R0, #0x2000; this
41036E:  STRD.W          R0, R1, [R6]
410372:  BLX             j__ZN18CVisibilityPlugins18RenderAlphaAtomicsEv; CVisibilityPlugins::RenderAlphaAtomics(void)
410376:  LDR             R0, [R6]
410378:  BIC.W           R0, R0, #0x2000
41037C:  STR             R0, [R6]
41037E:  MOV             R0, R4; this
410380:  BLX             j__ZN8CVehicle16ResetAfterRenderEv; CVehicle::ResetAfterRender(void)
410384:  B               loc_410392
410386:  LSLS            R0, R0, #4
410388:  BMI             loc_410392
41038A:  MOVS            R0, #0x14
41038C:  MOVS            R1, #2
41038E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410392:  LDR             R0, [R4]
410394:  MOV             R1, R5
410396:  LDR             R2, [R0,#0x54]
410398:  MOV             R0, R4
41039A:  POP.W           {R11}
41039E:  POP.W           {R4-R7,LR}
4103A2:  BX              R2
4103A4:  POP.W           {R11}
4103A8:  POP             {R4-R7,PC}
