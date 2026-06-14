; =========================================================
; Game Engine Function: _ZN7CRemote33TakeRemoteControlledCarFromPlayerEb
; Address            : 0x324600 - 0x3246B6
; =========================================================

324600:  PUSH            {R4-R7,LR}
324602:  ADD             R7, SP, #0xC
324604:  PUSH.W          {R8}
324608:  MOV             R8, R0
32460A:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x324616)
32460C:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x324618)
32460E:  MOV.W           R5, #0x194
324612:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
324614:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
324616:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
324618:  LDR             R1, [R0]; CWorld::PlayerInFocus
32461A:  LDR             R0, [R2]; CWorld::Players ...
32461C:  SMLABB.W        R0, R1, R5, R0
324620:  LDR.W           R0, [R0,#0xB0]; this
324624:  LDRB.W          R2, [R0,#0x4A8]
324628:  CMP             R2, #2
32462A:  BNE             loc_324680
32462C:  MOVS            R1, #1; int
32462E:  MOVS            R2, #0; bool
324630:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
324634:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x32463C)
324636:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32463E)
324638:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
32463A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32463C:  LDR             R6, [R0]; CWorld::PlayerInFocus ...
32463E:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x324646)
324640:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
324642:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
324644:  LDR             R2, [R6]; CWorld::PlayerInFocus
324646:  LDR             R4, [R0]; CWorld::Players ...
324648:  LDR             R1, [R1]; CPools::ms_pVehiclePool
32464A:  SMLABB.W        R0, R2, R5, R4
32464E:  LDRD.W          R2, R1, [R1]
324652:  LDR.W           R0, [R0,#0xB0]
324656:  SUBS            R0, R0, R2
324658:  MOV             R2, #0xBFE6D523
324660:  ASRS            R0, R0, #2
324662:  MULS            R2, R0
324664:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32466A)
324666:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
324668:  LDR             R0, [R0]; this
32466A:  LDRB            R1, [R1,R2]
32466C:  ORR.W           R1, R1, R2,LSL#8; int
324670:  MOVS            R2, #1; unsigned __int8
324672:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
324676:  LDR             R1, [R6]; CWorld::PlayerInFocus
324678:  SMLABB.W        R0, R1, R5, R4
32467C:  LDR.W           R0, [R0,#0xB0]
324680:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x324688)
324682:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32468A)
324684:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
324686:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
324688:  LDR             R2, [R2]; CWorld::Players ...
32468A:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
32468C:  SMLABB.W        R1, R1, R5, R2
324690:  LDR.W           R2, [R0,#0x42C]
324694:  BIC.W           R2, R2, #8
324698:  STR.W           R2, [R0,#0x42C]
32469C:  MOVS            R2, #1
32469E:  LDR             R0, [R3]; CTimer::m_snTimeInMilliseconds
3246A0:  STRB.W          R2, [R1,#0xDD]
3246A4:  STR.W           R0, [R1,#0xE0]
3246A8:  STRB.W          R8, [R1,#0xDE]
3246AC:  STRB.W          R2, [R1,#0xDF]
3246B0:  POP.W           {R8}
3246B4:  POP             {R4-R7,PC}
