; =========================================================
; Game Engine Function: _ZN10CEntryExit23ProcessStealableObjectsEP4CPed
; Address            : 0x307500 - 0x307578
; =========================================================

307500:  PUSH            {R4,R6,R7,LR}
307502:  ADD             R7, SP, #8
307504:  MOV             R0, R1; this
307506:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
30750A:  MOV             R4, R0
30750C:  CBZ             R4, locret_307576
30750E:  LDRB.W          R0, [R4,#0x3A]
307512:  AND.W           R0, R0, #7
307516:  CMP             R0, #4
307518:  BNE             locret_307576
30751A:  LDRB.W          R0, [R4,#0x145]
30751E:  LSLS            R0, R0, #0x1A
307520:  IT PL
307522:  POPPL           {R4,R6,R7,PC}
307524:  LDRB.W          R0, [R4,#0x140]
307528:  ORR.W           R0, R0, #4
30752C:  CMP             R0, #6
30752E:  BEQ             loc_307566
307530:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x307536)
307532:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
307534:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
307536:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
307538:  LDRB.W          R0, [R0,#0x32]
30753C:  CBZ             R0, loc_307558
30753E:  LDR             R0, =(g_interiorMan_ptr - 0x307546)
307540:  MOV             R1, R4; CEntity *
307542:  ADD             R0, PC; g_interiorMan_ptr
307544:  LDR             R0, [R0]; g_interiorMan ; this
307546:  BLX             j__ZN17InteriorManager_c21FindStealableObjectIdEP7CEntity; InteriorManager_c::FindStealableObjectId(CEntity *)
30754A:  ADDS            R0, #1
30754C:  BEQ             loc_307566
30754E:  LDR             R0, =(g_interiorMan_ptr - 0x307558)
307550:  MOV             R1, R4
307552:  MOVS            R2, #0
307554:  ADD             R0, PC; g_interiorMan_ptr
307556:  B               loc_307560
307558:  LDR             R0, =(g_interiorMan_ptr - 0x307562)
30755A:  MOV             R1, R4; CEntity *
30755C:  MOVS            R2, #1; unsigned __int8
30755E:  ADD             R0, PC; g_interiorMan_ptr
307560:  LDR             R0, [R0]; g_interiorMan ; this
307562:  BLX             j__ZN17InteriorManager_c24SetStealableObjectStolenEP7CEntityh; InteriorManager_c::SetStealableObjectStolen(CEntity *,uchar)
307566:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x30756C)
307568:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
30756A:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
30756C:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
30756E:  LDRB.W          R0, [R0,#0x32]
307572:  STRB.W          R0, [R4,#0x33]
307576:  POP             {R4,R6,R7,PC}
