; =========================================================
; Game Engine Function: _ZN7CDarkel6UpdateEv
; Address            : 0x303644 - 0x30378A
; =========================================================

303644:  PUSH            {R4,R6,R7,LR}
303646:  ADD             R7, SP, #8
303648:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x30364E)
30364A:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
30364C:  LDR             R0, [R0]; CDarkel::Status ...
30364E:  LDRH            R1, [R0]; CDarkel::Status
303650:  CMP             R1, #4
303652:  IT NE
303654:  CMPNE           R1, #1
303656:  BNE             locret_30374A
303658:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303662)
30365A:  LDR             R2, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303664)
30365C:  LDR             R3, =(_ZN7CDarkel9TimeLimitE_ptr - 0x303666)
30365E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303660:  ADD             R2, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
303662:  ADD             R3, PC; _ZN7CDarkel9TimeLimitE_ptr
303664:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
303666:  LDR             R2, [R2]; CDarkel::TimeOfFrenzyStart ...
303668:  LDR             R3, [R3]; CDarkel::TimeLimit ...
30366A:  LDR             R0, [R0]; this
30366C:  LDR             R2, [R2]; CDarkel::TimeOfFrenzyStart
30366E:  LDR             R3, [R3]; CDarkel::TimeLimit
303670:  SUBS            R2, R2, R0
303672:  ADD             R2, R3
303674:  CMP             R3, #0
303676:  BLT             loc_30367C
303678:  CMP             R2, #1
30367A:  BLT             loc_30368E
30367C:  CMP             R1, #4
30367E:  BNE             loc_30374C
303680:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x303686)
303682:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
303684:  LDR             R3, [R3]; CWorld::Players ...
303686:  LDR.W           R3, [R3,#(dword_96B830 - 0x96B69C)]
30368A:  CMP             R3, #0
30368C:  BNE             loc_30374C
30368E:  CMP             R1, #4
303690:  BNE             loc_3036A4
303692:  LDR             R1, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x30369A)
303694:  LDR             R2, =(_ZN10CGameLogic9GameStateE_ptr - 0x30369C)
303696:  ADD             R1, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
303698:  ADD             R2, PC; _ZN10CGameLogic9GameStateE_ptr
30369A:  LDR             R1, [R1]; CGameLogic::TimeOfLastEvent ...
30369C:  LDR             R2, [R2]; CGameLogic::GameState ...
30369E:  STR             R0, [R1]; CGameLogic::TimeOfLastEvent
3036A0:  MOVS            R1, #3
3036A2:  STRB            R1, [R2]; CGameLogic::GameState
3036A4:  LDR             R1, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x3036B2)
3036A6:  MOV.W           R4, #0xFFFFFFFF
3036AA:  LDR             R2, =(_ZN7CDarkel6StatusE_ptr - 0x3036B4)
3036AC:  LDR             R3, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x3036B6)
3036AE:  ADD             R1, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
3036B0:  ADD             R2, PC; _ZN7CDarkel6StatusE_ptr
3036B2:  ADD             R3, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
3036B4:  LDR             R1, [R1]; CPopulation::m_AllRandomPedsThisType ...
3036B6:  LDR             R2, [R2]; CDarkel::Status ...
3036B8:  LDR             R3, [R3]; CDarkel::TimeOfFrenzyStart ...
3036BA:  STR             R4, [R1]; CPopulation::m_AllRandomPedsThisType
3036BC:  MOVS            R1, #3
3036BE:  STRH            R1, [R2]; CDarkel::Status
3036C0:  STR             R0, [R3]; CDarkel::TimeOfFrenzyStart
3036C2:  BLX             j__ZN7CDarkel33DealWithWeaponChangeAtEndOfFrenzyEv; CDarkel::DealWithWeaponChangeAtEndOfFrenzy(void)
3036C6:  LDR             R0, =(_ZN7CDarkel11KillsNeededE_ptr - 0x3036CC)
3036C8:  ADD             R0, PC; _ZN7CDarkel11KillsNeededE_ptr
3036CA:  LDR             R0, [R0]; CDarkel::KillsNeeded ...
3036CC:  LDR             R0, [R0]; CDarkel::KillsNeeded
3036CE:  CMP             R0, #0
3036D0:  IT GT
3036D2:  POPGT           {R4,R6,R7,PC}
3036D4:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x3036DA)
3036D6:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
3036D8:  LDR             R0, [R0]; CDarkel::Status ...
3036DA:  LDRH            R0, [R0]; CDarkel::Status
3036DC:  CMP             R0, #4
3036DE:  BNE             loc_3036FA
3036E0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3036EC)
3036E2:  MOVS            R3, #4
3036E4:  LDR             R1, =(_ZN10CGameLogic9GameStateE_ptr - 0x3036EE)
3036E6:  LDR             R2, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x3036F0)
3036E8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3036EA:  ADD             R1, PC; _ZN10CGameLogic9GameStateE_ptr
3036EC:  ADD             R2, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
3036EE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3036F0:  LDR             R1, [R1]; CGameLogic::GameState ...
3036F2:  LDR             R2, [R2]; CGameLogic::TimeOfLastEvent ...
3036F4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3036F6:  STRB            R3, [R1]; CGameLogic::GameState
3036F8:  STR             R0, [R2]; CGameLogic::TimeOfLastEvent
3036FA:  LDR             R0, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x303706)
3036FC:  MOV.W           R3, #0xFFFFFFFF
303700:  LDR             R1, =(_ZN7CDarkel17bProperKillFrenzyE_ptr - 0x30370A)
303702:  ADD             R0, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
303704:  LDR             R2, =(_ZN7CDarkel6StatusE_ptr - 0x30370E)
303706:  ADD             R1, PC; _ZN7CDarkel17bProperKillFrenzyE_ptr
303708:  LDR             R0, [R0]; CPopulation::m_AllRandomPedsThisType ...
30370A:  ADD             R2, PC; _ZN7CDarkel6StatusE_ptr
30370C:  LDR             R1, [R1]; CDarkel::bProperKillFrenzy ...
30370E:  LDR             R2, [R2]; float
303710:  STR             R3, [R0]; CPopulation::m_AllRandomPedsThisType
303712:  LDRB            R0, [R1]; CDarkel::bProperKillFrenzy
303714:  MOVS            R1, #2
303716:  STRH            R1, [R2]; CDarkel::Status
303718:  CMP             R0, #0
30371A:  ITTT NE
30371C:  MOVNE           R0, #dword_A8; this
30371E:  MOVNE.W         R1, #0x3F800000; unsigned __int16
303722:  BLXNE           j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
303726:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30372E)
303728:  LDR             R1, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303730)
30372A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30372C:  ADD             R1, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
30372E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
303730:  LDR             R1, [R1]; CDarkel::TimeOfFrenzyStart ...
303732:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
303734:  STR             R0, [R1]; CDarkel::TimeOfFrenzyStart
303736:  MOV.W           R0, #0xFFFFFFFF; int
30373A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30373E:  MOVS            R1, #0; int
303740:  BLX             j__ZN10CPlayerPed14SetWantedLevelEi; CPlayerPed::SetWantedLevel(int)
303744:  POP.W           {R4,R6,R7,LR}
303748:  B               _ZN7CDarkel33DealWithWeaponChangeAtEndOfFrenzyEv; CDarkel::DealWithWeaponChangeAtEndOfFrenzy(void)
30374A:  POP             {R4,R6,R7,PC}
30374C:  LDR             R0, =(_ZN7CDarkel12PreviousTimeE_ptr - 0x30375A)
30374E:  MOV             R1, #0x10624DD3
303756:  ADD             R0, PC; _ZN7CDarkel12PreviousTimeE_ptr
303758:  SMMUL.W         R1, R2, R1
30375C:  LDR             R0, [R0]; CDarkel::PreviousTime ...
30375E:  LDR             R0, [R0]; CDarkel::PreviousTime
303760:  ASRS            R2, R1, #6
303762:  ADD.W           R4, R2, R1,LSR#31
303766:  CMP             R4, R0
303768:  BEQ             loc_3036C6
30376A:  CMP             R0, #0xB
30376C:  BGT             loc_303780
30376E:  LDR             R0, =(AudioEngine_ptr - 0x30377C)
303770:  MOVS            R1, #0x21 ; '!'; int
303772:  MOVS            R2, #0; float
303774:  MOV.W           R3, #0x3F800000; float
303778:  ADD             R0, PC; AudioEngine_ptr
30377A:  LDR             R0, [R0]; AudioEngine ; this
30377C:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
303780:  LDR             R0, =(_ZN7CDarkel12PreviousTimeE_ptr - 0x303786)
303782:  ADD             R0, PC; _ZN7CDarkel12PreviousTimeE_ptr
303784:  LDR             R0, [R0]; CDarkel::PreviousTime ...
303786:  STR             R4, [R0]; CDarkel::PreviousTime
303788:  B               loc_3036C6
