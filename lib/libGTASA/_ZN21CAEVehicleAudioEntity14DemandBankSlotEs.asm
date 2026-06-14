; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity14DemandBankSlotEs
; Address            : 0x3AC4C4 - 0x3AC590
; =========================================================

3AC4C4:  PUSH            {R4,R6,R7,LR}
3AC4C6:  ADD             R7, SP, #8
3AC4C8:  MOV             R4, R0
3AC4CA:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AC4CE:  ADDS            R1, R0, #1
3AC4D0:  IT NE
3AC4D2:  POPNE           {R4,R6,R7,PC}
3AC4D4:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC4DA)
3AC4D6:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC4D8:  LDR             R1, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC4DA:  LDRSH.W         R0, [R1,#(word_94EAF2 - 0x94EAF0)]
3AC4DE:  LDRSH.W         R1, [R1,#(word_94EAF6 - 0x94EAF0)]
3AC4E2:  CMP             R1, R0
3AC4E4:  BGE             loc_3AC4EA
3AC4E6:  MOVS            R1, #1
3AC4E8:  B               loc_3AC57A
3AC4EA:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC4F0)
3AC4EC:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC4EE:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC4F0:  LDRSH.W         R1, [R1,#(word_94EAFA - 0x94EAF0)]
3AC4F4:  CMP             R1, R0
3AC4F6:  BGE             loc_3AC4FC
3AC4F8:  MOVS            R1, #2
3AC4FA:  B               loc_3AC57A
3AC4FC:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC502)
3AC4FE:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC500:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC502:  LDRSH.W         R1, [R1,#(word_94EAFE - 0x94EAF0)]
3AC506:  CMP             R1, R0
3AC508:  BGE             loc_3AC50E
3AC50A:  MOVS            R1, #3
3AC50C:  B               loc_3AC57A
3AC50E:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC514)
3AC510:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC512:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC514:  LDRSH.W         R1, [R1,#(word_94EB02 - 0x94EAF0)]
3AC518:  CMP             R1, R0
3AC51A:  BGE             loc_3AC520
3AC51C:  MOVS            R1, #4
3AC51E:  B               loc_3AC57A
3AC520:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC526)
3AC522:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC524:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC526:  LDRSH.W         R1, [R1,#(word_94EB06 - 0x94EAF0)]
3AC52A:  CMP             R1, R0
3AC52C:  BGE             loc_3AC532
3AC52E:  MOVS            R1, #5
3AC530:  B               loc_3AC57A
3AC532:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC538)
3AC534:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC536:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC538:  LDRSH.W         R1, [R1,#(word_94EB0A - 0x94EAF0)]
3AC53C:  CMP             R1, R0
3AC53E:  BGE             loc_3AC544
3AC540:  MOVS            R1, #6
3AC542:  B               loc_3AC57A
3AC544:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC54A)
3AC546:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC548:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC54A:  LDRSH.W         R1, [R1,#(word_94EB0E - 0x94EAF0)]
3AC54E:  CMP             R1, R0
3AC550:  BGE             loc_3AC556
3AC552:  MOVS            R1, #7
3AC554:  B               loc_3AC57A
3AC556:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC55C)
3AC558:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC55A:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC55C:  LDRSH.W         R1, [R1,#(dword_94EB10+2 - 0x94EAF0)]
3AC560:  CMP             R1, R0
3AC562:  BGE             loc_3AC568
3AC564:  MOVS            R1, #8
3AC566:  B               loc_3AC57A
3AC568:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC56E)
3AC56A:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC56C:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC56E:  LDRSH.W         R2, [R1,#(dword_94EB14+2 - 0x94EAF0)]
3AC572:  MOVS            R1, #0
3AC574:  CMP             R2, R0
3AC576:  IT LT
3AC578:  MOVLT           R1, #9
3AC57A:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC580)
3AC57C:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC57E:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC580:  ADD.W           R0, R0, R1,LSL#2
3AC584:  MOVS            R1, #0; __int16
3AC586:  STRH            R1, [R0,#2]
3AC588:  MOV             R0, R4; this
3AC58A:  POP.W           {R4,R6,R7,LR}
3AC58E:  B               _ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
