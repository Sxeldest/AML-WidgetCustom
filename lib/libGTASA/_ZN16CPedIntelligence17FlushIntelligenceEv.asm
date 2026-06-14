; =========================================================
; Game Engine Function: _ZN16CPedIntelligence17FlushIntelligenceEv
; Address            : 0x4C1498 - 0x4C159A
; =========================================================

4C1498:  PUSH            {R4-R7,LR}
4C149A:  ADD             R7, SP, #0xC
4C149C:  PUSH.W          {R8,R9,R11}
4C14A0:  MOV             R8, R0
4C14A2:  ADD.W           R0, R8, #4; this
4C14A6:  BLX             j__ZN12CTaskManager5FlushEv; CTaskManager::Flush(void)
4C14AA:  VMOV.I32        Q8, #0
4C14AE:  ADD.W           R0, R8, #0x54 ; 'T'
4C14B2:  MOV.W           R9, #0
4C14B6:  VST1.32         {D16-D17}, [R0]
4C14BA:  ADD.W           R0, R8, #0x38 ; '8'; this
4C14BE:  STR.W           R9, [R8,#0x64]
4C14C2:  BLX             j__ZN20CEventHandlerHistory14ClearAllEventsEv; CEventHandlerHistory::ClearAllEvents(void)
4C14C6:  ADD.W           R0, R8, #0x68 ; 'h'; this
4C14CA:  MOVS            R1, #0; bool
4C14CC:  BLX             j__ZN11CEventGroup5FlushEb; CEventGroup::Flush(bool)
4C14D0:  ADD.W           R4, R8, #0xE0
4C14D4:  MOVS            R6, #0
4C14D6:  LDR             R0, [R4,R6]; this
4C14D8:  CBZ             R0, loc_4C14E6
4C14DA:  ADDS            R5, R4, R6
4C14DC:  MOV             R1, R5; CEntity **
4C14DE:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C14E2:  STR.W           R9, [R5]
4C14E6:  ADDS            R6, #4
4C14E8:  CMP             R6, #0x40 ; '@'
4C14EA:  BNE             loc_4C14D6
4C14EC:  LDR.W           R0, [R8,#0x120]; this
4C14F0:  CBZ             R0, loc_4C1500
4C14F2:  ADD.W           R5, R8, #0x120
4C14F6:  MOV             R1, R5; CEntity **
4C14F8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C14FC:  MOVS            R0, #0
4C14FE:  STR             R0, [R5]
4C1500:  ADD.W           R6, R8, #0x130
4C1504:  MOV.W           R9, #0
4C1508:  MOVS            R4, #0
4C150A:  LDR             R0, [R6,R4]; this
4C150C:  CBZ             R0, loc_4C151A
4C150E:  ADDS            R5, R6, R4
4C1510:  MOV             R1, R5; CEntity **
4C1512:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1516:  STR.W           R9, [R5]
4C151A:  ADDS            R4, #4
4C151C:  CMP             R4, #0x40 ; '@'
4C151E:  BNE             loc_4C150A
4C1520:  LDR.W           R0, [R8,#0x170]; this
4C1524:  CBZ             R0, loc_4C1534
4C1526:  ADD.W           R5, R8, #0x170
4C152A:  MOV             R1, R5; CEntity **
4C152C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1530:  MOVS            R0, #0
4C1532:  STR             R0, [R5]
4C1534:  LDR             R0, =(_ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr - 0x4C1546)
4C1536:  VMOV.I32        Q9, #0
4C153A:  VMOV.F32        Q8, #25.0
4C153E:  ADD.W           R1, R8, #0x1EC
4C1542:  ADD             R0, PC; _ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr
4C1544:  MOVS            R2, #0
4C1546:  LDR             R0, [R0]; CPedAttractorManager::ms_fSearchDistance ...
4C1548:  VLDR            S0, [R0]
4C154C:  ADD.W           R0, R8, #0x1C4
4C1550:  VMUL.F32        S0, S0, S0
4C1554:  VST1.32         {D18-D19}, [R0]
4C1558:  ADD.W           R0, R8, #0x214
4C155C:  VST1.32         {D16-D17}, [R0]!
4C1560:  VST1.32         {D18-D19}, [R1]!
4C1564:  STR             R2, [R1]
4C1566:  VSTR            S0, [R0]
4C156A:  ADD.W           R0, R8, #0x200
4C156E:  VST1.32         {D18-D19}, [R0]
4C1572:  ADD.W           R0, R8, #0x1DC
4C1576:  VST1.32         {D18-D19}, [R0]
4C157A:  MOVS            R0, #0x41C80000
4C1580:  VSTR            S0, [R8,#0x230]
4C1584:  STRD.W          R2, R2, [R8,#0x1D4]
4C1588:  STRD.W          R0, R0, [R8,#0x228]
4C158C:  STR.W           R2, [R8,#0x210]
4C1590:  STRD.W          R0, R0, [R8,#0x234]
4C1594:  POP.W           {R8,R9,R11}
4C1598:  POP             {R4-R7,PC}
