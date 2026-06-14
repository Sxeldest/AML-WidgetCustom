; =========================================================
; Game Engine Function: _ZN11CPopulation6UpdateEb
; Address            : 0x4CC310 - 0x4CC51A
; =========================================================

4CC310:  PUSH            {R4-R7,LR}
4CC312:  ADD             R7, SP, #0xC
4CC314:  PUSH.W          {R8-R11}
4CC318:  SUB             SP, SP, #4
4CC31A:  VPUSH           {D8-D15}
4CC31E:  SUB             SP, SP, #0x18
4CC320:  MOV             R4, R0
4CC322:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x4CC328)
4CC324:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
4CC326:  LDR             R0, [R0]; CWeather::WeatherRegion ...
4CC328:  LDRSH.W         R0, [R0]; CWeather::WeatherRegion
4CC32C:  CMP             R0, #4
4CC32E:  BHI             loc_4CC33E
4CC330:  LDR             R1, =(_ZN11CPopulation16CurrentWorldZoneE_ptr - 0x4CC338)
4CC332:  ADR             R2, dword_4CC524
4CC334:  ADD             R1, PC; _ZN11CPopulation16CurrentWorldZoneE_ptr
4CC336:  LDR.W           R0, [R2,R0,LSL#2]; this
4CC33A:  LDR             R1, [R1]; CPopulation::CurrentWorldZone ...
4CC33C:  STR             R0, [R1]; CPopulation::CurrentWorldZone
4CC33E:  BLX             j__ZN11CPopulation16ManagePopulationEv; CPopulation::ManagePopulation(void)
4CC342:  BLX             j__ZN11CPopulation27RemovePedsIfThePoolGetsFullEv; CPopulation::RemovePedsIfThePoolGetsFull(void)
4CC346:  LDR             R0, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x4CC34C)
4CC348:  ADD             R0, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
4CC34A:  LDR             R0, [R0]; CPopulation::m_CountDownToPedsAtStart ...
4CC34C:  LDRB            R0, [R0]; CPopulation::m_CountDownToPedsAtStart
4CC34E:  CBZ             R0, loc_4CC374
4CC350:  LDR             R1, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x4CC35C)
4CC352:  SUBS            R0, #1; this
4CC354:  TST.W           R0, #0xFF
4CC358:  ADD             R1, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
4CC35A:  LDR             R1, [R1]; CPopulation::m_CountDownToPedsAtStart ...
4CC35C:  STRB            R0, [R1]; CPopulation::m_CountDownToPedsAtStart
4CC35E:  BNE.W           loc_4CC50C
4CC362:  ADD             SP, SP, #0x18
4CC364:  VPOP            {D8-D15}
4CC368:  ADD             SP, SP, #4
4CC36A:  POP.W           {R8-R11}
4CC36E:  POP.W           {R4-R7,LR}
4CC372:  B               _ZN11CPopulation25GeneratePedsAtStartOfGameEv; float
4CC374:  LDR             R0, =(_ZN11CPopulation14ms_nNumCivMaleE_ptr - 0x4CC37C)
4CC376:  LDR             R1, =(_ZN11CPopulation16ms_nNumCivFemaleE_ptr - 0x4CC380)
4CC378:  ADD             R0, PC; _ZN11CPopulation14ms_nNumCivMaleE_ptr
4CC37A:  LDR             R3, =(_ZN11CPopulation16ms_nTotalCivPedsE_ptr - 0x4CC386)
4CC37C:  ADD             R1, PC; _ZN11CPopulation16ms_nNumCivFemaleE_ptr
4CC37E:  LDR             R2, =(_ZN11CPopulation16ms_nNumEmergencyE_ptr - 0x4CC38A)
4CC380:  LDR             R6, =(_ZN11CPopulation11ms_nNumGangE_ptr - 0x4CC38E)
4CC382:  ADD             R3, PC; _ZN11CPopulation16ms_nTotalCivPedsE_ptr
4CC384:  LDR             R0, [R0]; CPopulation::ms_nNumCivMale ...
4CC386:  ADD             R2, PC; _ZN11CPopulation16ms_nNumEmergencyE_ptr
4CC388:  LDR             R1, [R1]; CPopulation::ms_nNumCivFemale ...
4CC38A:  ADD             R6, PC; _ZN11CPopulation11ms_nNumGangE_ptr
4CC38C:  STR             R4, [SP,#0x78+var_64]
4CC38E:  LDR             R3, [R3]; CPopulation::ms_nTotalCivPeds ...
4CC390:  LDR             R2, [R2]; CPopulation::ms_nNumEmergency ...
4CC392:  LDR             R6, [R6]; CPopulation::ms_nNumGang ...
4CC394:  LDR             R5, [R0]; CPopulation::ms_nNumCivMale
4CC396:  LDR             R4, [R1]; CPopulation::ms_nNumCivFemale
4CC398:  ADD.W           R11, R6, #8
4CC39C:  LDR.W           R9, [R2]; CPopulation::ms_nNumEmergency
4CC3A0:  ADD             R5, R4
4CC3A2:  STR             R5, [R3]; CPopulation::ms_nTotalCivPeds
4CC3A4:  LDRD.W          R3, R4, [R6]; CPopulation::ms_nNumGang
4CC3A8:  LDM.W           R11, {R0-R2,R10,R11}
4CC3AC:  ADD             R3, R4
4CC3AE:  ADD             R0, R3
4CC3B0:  LDR             R3, =(_ZN11CPopulation10ms_nNumCopE_ptr - 0x4CC3BC)
4CC3B2:  ADD             R0, R1
4CC3B4:  LDR.W           R8, [R6,#(dword_9F38AC - 0x9F3890)]
4CC3B8:  ADD             R3, PC; _ZN11CPopulation10ms_nNumCopE_ptr
4CC3BA:  ADD             R0, R2
4CC3BC:  ADD             R0, R10
4CC3BE:  LDR.W           R12, =(_ZN11CPopulation13ms_nTotalPedsE_ptr - 0x4CC3D0)
4CC3C2:  LDR             R3, [R3]; CPopulation::ms_nNumCop ...
4CC3C4:  ADD             R0, R11
4CC3C6:  ADD             R0, R8
4CC3C8:  LDR.W           LR, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x4CC3D4)
4CC3CC:  ADD             R12, PC; _ZN11CPopulation13ms_nTotalPedsE_ptr
4CC3CE:  LDR             R3, [R3]; CPopulation::ms_nNumCop
4CC3D0:  ADD             LR, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
4CC3D2:  LDRD.W          R1, R2, [R6,#(dword_9F38B0 - 0x9F3890)]
4CC3D6:  LDR.W           R12, [R12]; CPopulation::ms_nTotalPeds ...
4CC3DA:  ADD             R0, R1
4CC3DC:  LDR             R1, =(_ZN11CPopulation17ms_nTotalGangPedsE_ptr - 0x4CC3E8)
4CC3DE:  ADD             R0, R2
4CC3E0:  LDR.W           LR, [LR]; CCutsceneMgr::ms_cutsceneProcessing ...
4CC3E4:  ADD             R1, PC; _ZN11CPopulation17ms_nTotalGangPedsE_ptr
4CC3E6:  LDR             R1, [R1]; CPopulation::ms_nTotalGangPeds ...
4CC3E8:  STR             R0, [R1]; CPopulation::ms_nTotalGangPeds
4CC3EA:  ADD             R0, R5
4CC3EC:  ADD             R0, R3
4CC3EE:  ADD             R0, R9
4CC3F0:  STR.W           R0, [R12]; CPopulation::ms_nTotalPeds
4CC3F4:  LDRB.W          R0, [LR]; CCutsceneMgr::ms_cutsceneProcessing
4CC3F8:  CMP             R0, #0
4CC3FA:  BNE.W           loc_4CC50C
4CC3FE:  LDR             R0, [SP,#0x78+var_64]
4CC400:  CMP             R0, #0
4CC402:  BEQ.W           loc_4CC50C
4CC406:  LDR             R0, =(TheCamera_ptr - 0x4CC40C)
4CC408:  ADD             R0, PC; TheCamera_ptr ; this
4CC40A:  LDR             R5, [R0]; TheCamera
4CC40C:  VLDR            S20, [R5,#0xF0]
4CC410:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC414:  VLDR            S22, =42.5
4CC418:  MOV             R4, R0
4CC41A:  VLDR            S18, =50.5
4CC41E:  VMOV.F32        S16, #25.0
4CC422:  VLDR            S0, [R5,#0xF0]
4CC426:  VMUL.F32        S24, S20, S22
4CC42A:  VMUL.F32        S26, S0, S18
4CC42E:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC432:  MOV             R5, R0
4CC434:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC438:  VMOV            S0, R0; this
4CC43C:  VMOV.F32        S20, #-10.0
4CC440:  VMUL.F32        S28, S0, S16
4CC444:  VMOV            S0, R4
4CC448:  VMOV            S30, R5
4CC44C:  VMUL.F32        S24, S24, S0
4CC450:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC454:  VMOV            S0, R0
4CC458:  VMUL.F32        S2, S26, S30
4CC45C:  VMUL.F32        S0, S0, S16
4CC460:  VADD.F32        S4, S28, S20
4CC464:  VMOV            R0, S24; this
4CC468:  VMOV            R1, S2; float
4CC46C:  VMOV            R3, S0; float
4CC470:  VMOV            R2, S4; float
4CC474:  BLX             j__ZN11CPopulation15AddToPopulationEffff; CPopulation::AddToPopulation(float,float,float,float)
4CC478:  CMP             R0, #1
4CC47A:  BNE             loc_4CC50C
4CC47C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4CC482)
4CC47E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4CC480:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4CC482:  LDR             R0, [R0]; int
4CC484:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
4CC488:  LDR             R1, =(TheCamera_ptr - 0x4CC48E)
4CC48A:  ADD             R1, PC; TheCamera_ptr
4CC48C:  LDR             R4, [R1]; TheCamera
4CC48E:  VLDR            S0, [R4,#0xF0]
4CC492:  LDM.W           R0, {R8-R10}
4CC496:  VMUL.F32        S22, S0, S22
4CC49A:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC49E:  VMOV            S0, R0; this
4CC4A2:  VMUL.F32        S0, S22, S0
4CC4A6:  VLDR            S22, [R4,#0xF0]
4CC4AA:  VMOV            R4, S0
4CC4AE:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC4B2:  MOV             R5, R0
4CC4B4:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC4B8:  LDR             R6, =(_ZN5CGame8currAreaE_ptr - 0x4CC4C6)
4CC4BA:  VMOV            S0, R0; this
4CC4BE:  VMUL.F32        S18, S22, S18
4CC4C2:  ADD             R6, PC; _ZN5CGame8currAreaE_ptr
4CC4C4:  VMUL.F32        S22, S0, S16
4CC4C8:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CC4CC:  VMOV            S0, R0
4CC4D0:  LDR             R0, [R6]; CGame::currArea ...
4CC4D2:  VMOV            S2, R5
4CC4D6:  MOVS            R2, #7
4CC4D8:  VMUL.F32        S0, S0, S16
4CC4DC:  MOVS            R1, #1
4CC4DE:  VMUL.F32        S2, S18, S2
4CC4E2:  LDR             R0, [R0]; CGame::currArea
4CC4E4:  VADD.F32        S4, S22, S20
4CC4E8:  MOV             R3, R4
4CC4EA:  CMP             R0, #0
4CC4EC:  MOV             R0, R8
4CC4EE:  IT EQ
4CC4F0:  MOVEQ.W         R2, #0xFFFFFFFF
4CC4F4:  STRD.W          R2, R1, [SP,#0x78+var_6C]
4CC4F8:  MOV             R1, R9
4CC4FA:  MOV             R2, R10
4CC4FC:  VSTR            S2, [SP,#0x78+var_78]
4CC500:  VSTR            S4, [SP,#0x78+var_74]
4CC504:  VSTR            S0, [SP,#0x78+var_70]
4CC508:  BLX             j__ZN11CPopulation24GeneratePedsAtAttractorsE7CVectorffffii; CPopulation::GeneratePedsAtAttractors(CVector,float,float,float,float,int,int)
4CC50C:  ADD             SP, SP, #0x18
4CC50E:  VPOP            {D8-D15}
4CC512:  ADD             SP, SP, #4
4CC514:  POP.W           {R8-R11}
4CC518:  POP             {R4-R7,PC}
