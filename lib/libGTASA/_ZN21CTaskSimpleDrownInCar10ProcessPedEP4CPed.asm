; =========================================================
; Game Engine Function: _ZN21CTaskSimpleDrownInCar10ProcessPedEP4CPed
; Address            : 0x4EB4FC - 0x4EB570
; =========================================================

4EB4FC:  PUSH            {R4,R5,R7,LR}
4EB4FE:  ADD             R7, SP, #8
4EB500:  SUB             SP, SP, #0x10
4EB502:  MOV             R4, R1
4EB504:  MOVS            R1, #0x36 ; '6'
4EB506:  MOV             R0, R4; CPed *
4EB508:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4EB50C:  LDR.W           R0, [R4,#0x484]
4EB510:  BIC.W           R0, R0, #0x200
4EB514:  STR.W           R0, [R4,#0x484]
4EB518:  MOV.W           R0, #0xFFFFFFFF; int
4EB51C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EB520:  CMP             R0, R4
4EB522:  BNE             loc_4EB52E
4EB524:  MOVS            R0, #(dword_A8+2); this
4EB526:  MOV.W           R1, #0x3F800000; unsigned __int16
4EB52A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
4EB52E:  MOV.W           R0, #0xFFFFFFFF; int
4EB532:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EB536:  CMP             R0, R4
4EB538:  BNE             loc_4EB54C
4EB53A:  LDR.W           R0, [R4,#0x590]
4EB53E:  MOVS            R2, #9
4EB540:  LDRB.W          R1, [R0,#0x3A]
4EB544:  BFI.W           R1, R2, #3, #0x1D
4EB548:  STRB.W          R1, [R0,#0x3A]
4EB54C:  MOV             R5, SP
4EB54E:  MOVS            R1, #1; bool
4EB550:  MOV             R0, R5; this
4EB552:  BLX             j__ZN11CEventDeathC2Eb; CEventDeath::CEventDeath(bool)
4EB556:  LDR.W           R0, [R4,#0x440]
4EB55A:  MOV             R1, R5; CEvent *
4EB55C:  MOVS            R2, #0; bool
4EB55E:  ADDS            R0, #0x68 ; 'h'; this
4EB560:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4EB564:  MOV             R0, R5; this
4EB566:  BLX             j__ZN6CEventD2Ev_1; CEvent::~CEvent()
4EB56A:  MOVS            R0, #1
4EB56C:  ADD             SP, SP, #0x10
4EB56E:  POP             {R4,R5,R7,PC}
