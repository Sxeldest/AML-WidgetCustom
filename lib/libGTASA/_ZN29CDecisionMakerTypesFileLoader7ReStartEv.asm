; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader7ReStartEv
; Address            : 0x4BE428 - 0x4BE596
; =========================================================

4BE428:  PUSH            {R7,LR}
4BE42A:  MOV             R7, SP
4BE42C:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE432)
4BE42E:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE430:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE432:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE434:  CBNZ            R0, loc_4BE44A
4BE436:  MOVW            R0, #0xF1C0; unsigned int
4BE43A:  BLX             _Znwj; operator new(uint)
4BE43E:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE442:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE448)
4BE444:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE446:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE448:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE44A:  MOVS            R1, #0xA; int
4BE44C:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE450:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE456)
4BE452:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE454:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE456:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE458:  CBNZ            R0, loc_4BE46E
4BE45A:  MOVW            R0, #0xF1C0; unsigned int
4BE45E:  BLX             _Znwj; operator new(uint)
4BE462:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE466:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE46C)
4BE468:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE46A:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE46C:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE46E:  MOVS            R1, #0xB; int
4BE470:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE474:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE47A)
4BE476:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE478:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE47A:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE47C:  CBNZ            R0, loc_4BE492
4BE47E:  MOVW            R0, #0xF1C0; unsigned int
4BE482:  BLX             _Znwj; operator new(uint)
4BE486:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE48A:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE490)
4BE48C:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE48E:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE490:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE492:  MOVS            R1, #0xC; int
4BE494:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE498:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE49E)
4BE49A:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE49C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE49E:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE4A0:  CBNZ            R0, loc_4BE4B6
4BE4A2:  MOVW            R0, #0xF1C0; unsigned int
4BE4A6:  BLX             _Znwj; operator new(uint)
4BE4AA:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE4AE:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE4B4)
4BE4B0:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE4B2:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE4B4:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE4B6:  MOVS            R1, #0xD; int
4BE4B8:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE4BC:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE4C2)
4BE4BE:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE4C0:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE4C2:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE4C4:  CBNZ            R0, loc_4BE4DA
4BE4C6:  MOVW            R0, #0xF1C0; unsigned int
4BE4CA:  BLX             _Znwj; operator new(uint)
4BE4CE:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE4D2:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE4D8)
4BE4D4:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE4D6:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE4D8:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE4DA:  MOVS            R1, #0xE; int
4BE4DC:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE4E0:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE4E6)
4BE4E2:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE4E4:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE4E6:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE4E8:  CBNZ            R0, loc_4BE4FE
4BE4EA:  MOVW            R0, #0xF1C0; unsigned int
4BE4EE:  BLX             _Znwj; operator new(uint)
4BE4F2:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE4F6:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE4FC)
4BE4F8:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE4FA:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE4FC:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE4FE:  MOVS            R1, #0xF; int
4BE500:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE504:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE50A)
4BE506:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE508:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE50A:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE50C:  CBNZ            R0, loc_4BE522
4BE50E:  MOVW            R0, #0xF1C0; unsigned int
4BE512:  BLX             _Znwj; operator new(uint)
4BE516:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE51A:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE520)
4BE51C:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE51E:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE520:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE522:  MOVS            R1, #0x10; int
4BE524:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE528:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE52E)
4BE52A:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE52C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE52E:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE530:  CBNZ            R0, loc_4BE546
4BE532:  MOVW            R0, #0xF1C0; unsigned int
4BE536:  BLX             _Znwj; operator new(uint)
4BE53A:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE53E:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE544)
4BE540:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE542:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE544:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE546:  MOVS            R1, #0x11; int
4BE548:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE54C:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE552)
4BE54E:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE550:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE552:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE554:  CBNZ            R0, loc_4BE56A
4BE556:  MOVW            R0, #0xF1C0; unsigned int
4BE55A:  BLX             _Znwj; operator new(uint)
4BE55E:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE562:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE568)
4BE564:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE566:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE568:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE56A:  MOVS            R1, #0x12; int
4BE56C:  BLX             j__ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
4BE570:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE576)
4BE572:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE574:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE576:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE578:  CBNZ            R0, loc_4BE58E
4BE57A:  MOVW            R0, #0xF1C0; unsigned int
4BE57E:  BLX             _Znwj; operator new(uint)
4BE582:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BE586:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE58C)
4BE588:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE58A:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE58C:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
4BE58E:  MOVS            R1, #0x13; int
4BE590:  POP.W           {R7,LR}
4BE594:  B               _ZN19CDecisionMakerTypes19RemoveDecisionMakerEi; CDecisionMakerTypes::RemoveDecisionMaker(int)
