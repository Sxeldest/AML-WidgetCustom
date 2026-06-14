; =========================================================
; Game Engine Function: _ZN7CDarkel11StartFrenzyE11eWeaponTypeitiPtiiibb
; Address            : 0x304580 - 0x304880
; =========================================================

304580:  PUSH            {R4-R7,LR}
304582:  ADD             R7, SP, #0xC
304584:  PUSH.W          {R8-R11}
304588:  SUB             SP, SP, #0x24
30458A:  MOV             R11, R0
30458C:  MOVS            R0, #0; this
30458E:  STRD.W          R2, R3, [SP,#0x40+var_34]
304592:  MOV             R8, R1
304594:  BLX             j__ZN10CGameLogic9ClearSkipEb; CGameLogic::ClearSkip(bool)
304598:  ADD.W           R6, R7, #0x14
30459C:  CMP.W           R11, #0x34 ; '4'
3045A0:  MOV             R4, R11
3045A2:  LDM             R6, {R0,R5,R6}
3045A4:  STR             R0, [SP,#0x40+var_38]
3045A6:  LDR             R0, [R7,#arg_8]; this
3045A8:  STR             R0, [SP,#0x40+var_3C]
3045AA:  LDRD.W          R10, R9, [R7,#arg_0]
3045AE:  IT EQ
3045B0:  MOVEQ           R4, #0x1C
3045B2:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
3045B6:  CMP             R0, #1
3045B8:  ADD             R0, SP, #0x40+var_2C
3045BA:  STR             R4, [SP,#0x40+var_20]
3045BC:  STM.W           R0, {R5,R6,R8}
3045C0:  BNE             loc_3045D4
3045C2:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x3045CA)
3045C4:  MOVS            R1, #4; bool
3045C6:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
3045C8:  LDR             R0, [R0]; CDarkel::Status ...
3045CA:  STRH            R1, [R0]; CDarkel::Status
3045CC:  MOVS            R0, #0; this
3045CE:  BLX             j__ZN10CGameLogic33DoWeaponStuffAtStartOf2PlayerGameEb; CGameLogic::DoWeaponStuffAtStartOf2PlayerGame(bool)
3045D2:  B               loc_3045DE
3045D4:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x3045DC)
3045D6:  MOVS            R1, #1
3045D8:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
3045DA:  LDR             R0, [R0]; CDarkel::Status ...
3045DC:  STRH            R1, [R0]; CDarkel::Status
3045DE:  LDR             R0, =(_ZN7CDarkel10WeaponTypeE_ptr - 0x3045EA)
3045E0:  LDR             R1, =(_ZN7CDarkel11KillsNeededE_ptr - 0x3045EE)
3045E2:  LDR.W           LR, =(_ZN7CDarkel11ModelToKillE_ptr - 0x3045F2)
3045E6:  ADD             R0, PC; _ZN7CDarkel10WeaponTypeE_ptr
3045E8:  LDR             R2, =(_ZN7CDarkel12ModelToKill2E_ptr - 0x3045F4)
3045EA:  ADD             R1, PC; _ZN7CDarkel11KillsNeededE_ptr
3045EC:  LDR             R3, =(_ZN7CDarkel12ModelToKill3E_ptr - 0x3045FC)
3045EE:  ADD             LR, PC; _ZN7CDarkel11ModelToKillE_ptr
3045F0:  ADD             R2, PC; _ZN7CDarkel12ModelToKill2E_ptr
3045F2:  LDR.W           R8, [R0]; CDarkel::WeaponType ...
3045F6:  LDR             R1, [R1]; CDarkel::KillsNeeded ...
3045F8:  ADD             R3, PC; _ZN7CDarkel12ModelToKill3E_ptr
3045FA:  LDR             R6, =(_ZN7CDarkel12ModelToKill4E_ptr - 0x304608)
3045FC:  LDR.W           R4, [LR]; CDarkel::ModelToKill ...
304600:  LDR.W           LR, [R2]; CDarkel::ModelToKill2 ...
304604:  ADD             R6, PC; _ZN7CDarkel12ModelToKill4E_ptr
304606:  LDR             R2, [SP,#0x40+var_34]
304608:  STR             R2, [R1]; CDarkel::KillsNeeded
30460A:  STR.W           R11, [R8]; CDarkel::WeaponType
30460E:  LDR             R1, [SP,#0x40+var_30]
304610:  LDR             R5, =(_ZN7CDarkel13pStartMessageE_ptr - 0x30461C)
304612:  LDR.W           R12, =(TheText_ptr - 0x304620)
304616:  LDR             R3, [R3]; CDarkel::ModelToKill3 ...
304618:  ADD             R5, PC; _ZN7CDarkel13pStartMessageE_ptr
30461A:  STR             R1, [R4]; CDarkel::ModelToKill
30461C:  ADD             R12, PC; TheText_ptr
30461E:  STR.W           R9, [LR]; CDarkel::ModelToKill2
304622:  LDR             R1, [SP,#0x40+var_3C]
304624:  LDR             R6, [R6]; CDarkel::ModelToKill4 ...
304626:  STR             R1, [R3]; CDarkel::ModelToKill3
304628:  LDR             R1, [SP,#0x40+var_38]
30462A:  LDR             R5, [R5]; CDarkel::pStartMessage ...
30462C:  LDR.W           R0, [R12]; TheText ; this
304630:  STR             R1, [R6]; CDarkel::ModelToKill4
304632:  ADR             R1, aPage00; "PAGE_00"
304634:  STR.W           R10, [R5]; CDarkel::pStartMessage
304638:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30463C:  MOV.W           R8, #0
304640:  CMP             R0, R10
304642:  BNE             loc_304652
304644:  LDR             R0, =(_ZN7CDarkel13pStartMessageE_ptr - 0x30464A)
304646:  ADD             R0, PC; _ZN7CDarkel13pStartMessageE_ptr
304648:  LDR             R0, [R0]; CDarkel::pStartMessage ...
30464A:  STR.W           R8, [R0]; CDarkel::pStartMessage
30464E:  MOV.W           R8, #1
304652:  LDR             R2, =(_ZN7CDarkel12PreviousTimeE_ptr - 0x304662)
304654:  MOVW            R4, #0x4DD3
304658:  LDR             R0, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x304666)
30465A:  MOVT            R4, #0x1062
30465E:  ADD             R2, PC; _ZN7CDarkel12PreviousTimeE_ptr
304660:  LDR             R1, [SP,#0x40+var_2C]
304662:  ADD             R0, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
304664:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x304670)
304666:  LDR.W           R12, [R2]; CDarkel::PreviousTime ...
30466A:  LDR             R2, =(_ZN7CDarkel25bStandardSoundAndMessagesE_ptr - 0x304676)
30466C:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30466E:  LDR.W           LR, [R0]; CDarkel::TimeOfFrenzyStart ...
304672:  ADD             R2, PC; _ZN7CDarkel25bStandardSoundAndMessagesE_ptr
304674:  LDR             R0, [SP,#0x40+var_24]
304676:  LDR             R6, =(_ZN7CDarkel9TimeLimitE_ptr - 0x304684)
304678:  LDR             R2, [R2]; CDarkel::bStandardSoundAndMessages ...
30467A:  LDR             R5, =(_ZN7CDarkel13bNeedHeadShotE_ptr - 0x304688)
30467C:  SMMUL.W         R4, R0, R4
304680:  ADD             R6, PC; _ZN7CDarkel9TimeLimitE_ptr
304682:  STRB            R1, [R2]; CDarkel::bStandardSoundAndMessages
304684:  ADD             R5, PC; _ZN7CDarkel13bNeedHeadShotE_ptr
304686:  LDR             R2, =(_ZN7CDarkel17bProperKillFrenzyE_ptr - 0x30468E)
304688:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
30468A:  ADD             R2, PC; _ZN7CDarkel17bProperKillFrenzyE_ptr
30468C:  LDR             R6, [R6]; CDarkel::TimeLimit ...
30468E:  LDR             R5, [R5]; CDarkel::bNeedHeadShot ...
304690:  LDR             R2, [R2]; CDarkel::bProperKillFrenzy ...
304692:  STRB.W          R8, [R2]; CDarkel::bProperKillFrenzy
304696:  LDR             R1, [SP,#0x40+var_28]
304698:  STRB            R1, [R5]; CDarkel::bNeedHeadShot
30469A:  STR             R0, [R6]; CDarkel::TimeLimit
30469C:  ASRS            R0, R4, #6
30469E:  LDR             R1, [R3]; CTimer::m_snTimeInMilliseconds
3046A0:  ADD.W           R0, R0, R4,LSR#31
3046A4:  STR.W           R1, [LR]; CDarkel::TimeOfFrenzyStart
3046A8:  STR.W           R0, [R12]; CDarkel::PreviousTime
3046AC:  LDR             R6, [SP,#0x40+var_20]
3046AE:  CMP             R6, #0x2E ; '.'
3046B0:  BGT.W           loc_30483C
3046B4:  MOV.W           R0, #0xFFFFFFFF; int
3046B8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3046BC:  LDR             R1, =(_ZN7CDarkel29InterruptedWeaponTypeSelectedE_ptr - 0x3046C6)
3046BE:  LDRSB.W         R2, [R0,#0x71C]
3046C2:  ADD             R1, PC; _ZN7CDarkel29InterruptedWeaponTypeSelectedE_ptr
3046C4:  LDR             R4, [R1]; CDarkel::InterruptedWeaponTypeSelected ...
3046C6:  RSB.W           R1, R2, R2,LSL#3
3046CA:  ADD.W           R0, R0, R1,LSL#2
3046CE:  LDR.W           R0, [R0,#0x5A4]
3046D2:  STR             R0, [R4]; CDarkel::InterruptedWeaponTypeSelected
3046D4:  MOV.W           R0, #0xFFFFFFFF; int
3046D8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3046DC:  LDR             R1, [R4]; int
3046DE:  MOVS            R2, #0xC47A0000; float
3046E4:  BLX             j__ZN4CPed17RemoveWeaponAnimsEif; CPed::RemoveWeaponAnims(int,float)
3046E8:  MOV.W           R0, #0xFFFFFFFF; int
3046EC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3046F0:  MOV             R4, R0
3046F2:  MOV             R0, R6
3046F4:  MOVS            R1, #1
3046F6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3046FA:  LDR             R0, [R0,#0x14]
3046FC:  LDR             R1, =(_ZN7CDarkel21InterruptedWeaponTypeE_ptr - 0x304706)
3046FE:  RSB.W           R0, R0, R0,LSL#3
304702:  ADD             R1, PC; _ZN7CDarkel21InterruptedWeaponTypeE_ptr
304704:  ADD.W           R0, R4, R0,LSL#2
304708:  LDR             R5, [R1]; CDarkel::InterruptedWeaponType ...
30470A:  LDR.W           R0, [R0,#0x5A4]
30470E:  STR             R0, [R5]; CDarkel::InterruptedWeaponType
304710:  MOV.W           R0, #0xFFFFFFFF; int
304714:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304718:  MOV             R4, R0
30471A:  MOV             R0, R6
30471C:  MOVS            R1, #1
30471E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
304722:  LDR             R2, [R0,#0x14]
304724:  LDR             R1, =(_ZN7CDarkel21AmmoInterruptedWeaponE_ptr - 0x30472C)
304726:  LDR             R0, [R5]; CDarkel::InterruptedWeaponType
304728:  ADD             R1, PC; _ZN7CDarkel21AmmoInterruptedWeaponE_ptr
30472A:  RSB.W           R2, R2, R2,LSL#3
30472E:  CMP             R0, #0
304730:  ADD.W           R2, R4, R2,LSL#2
304734:  LDR             R1, [R1]; CDarkel::AmmoInterruptedWeapon ...
304736:  LDR.W           R2, [R2,#0x5B0]
30473A:  STR             R2, [R1]; CDarkel::AmmoInterruptedWeapon
30473C:  BEQ             loc_304754
30473E:  MOVS            R1, #1
304740:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
304744:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x30474C)
304746:  LDR             R0, [R0,#0xC]
304748:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
30474A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
30474C:  LDR.W           R0, [R1,R0,LSL#2]; this
304750:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
304754:  MOVS            R0, #0; int
304756:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30475A:  CBZ             R0, loc_304786
30475C:  MOVS            R0, #0; int
30475E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304762:  MOV             R1, R6
304764:  MOVW            R2, #0x7530
304768:  MOVS            R3, #1
30476A:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
30476E:  MOVS            R0, #0; int
304770:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304774:  MOV             R1, R6
304776:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
30477A:  MOVS            R0, #0; int
30477C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304780:  MOV             R1, R6
304782:  BLX             j__ZN10CPlayerPed23MakeChangesForNewWeaponE11eWeaponType; CPlayerPed::MakeChangesForNewWeapon(eWeaponType)
304786:  MOVS            R0, #1; int
304788:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30478C:  CBZ             R0, loc_3047B8
30478E:  MOVS            R0, #1; int
304790:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304794:  MOV             R1, R6
304796:  MOVW            R2, #0x7530
30479A:  MOVS            R3, #1
30479C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
3047A0:  MOVS            R0, #1; int
3047A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3047A6:  MOV             R1, R6
3047A8:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
3047AC:  MOVS            R0, #1; int
3047AE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3047B2:  MOV             R1, R6
3047B4:  BLX             j__ZN10CPlayerPed23MakeChangesForNewWeaponE11eWeaponType; CPlayerPed::MakeChangesForNewWeapon(eWeaponType)
3047B8:  MOV.W           R0, #0xFFFFFFFF; int
3047BC:  MOVS            R1, #0; bool
3047BE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3047C2:  CBZ             R0, loc_30483C
3047C4:  MOV.W           R0, #0xFFFFFFFF; int
3047C8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3047CC:  MOV             R4, R0
3047CE:  MOV.W           R0, #0xFFFFFFFF; int
3047D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3047D6:  LDR.W           R0, [R0,#0x444]
3047DA:  LDRSB.W         R1, [R0,#0x20]; int
3047DE:  MOV             R0, R4; this
3047E0:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
3047E4:  MOV.W           R0, #0xFFFFFFFF; int
3047E8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3047EC:  LDRSB.W         R1, [R0,#0x71C]
3047F0:  RSB.W           R1, R1, R1,LSL#3
3047F4:  ADD.W           R0, R0, R1,LSL#2
3047F8:  LDR.W           R4, [R0,#0x5B0]
3047FC:  MOV.W           R0, #0xFFFFFFFF; int
304800:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304804:  LDRSB.W         R1, [R0,#0x71C]
304808:  RSB.W           R1, R1, R1,LSL#3
30480C:  ADD.W           R0, R0, R1,LSL#2
304810:  MOVS            R1, #1
304812:  LDR.W           R0, [R0,#0x5A4]
304816:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
30481A:  LDRSH.W         R5, [R0,#0x20]
30481E:  MOV.W           R0, #0xFFFFFFFF; int
304822:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304826:  LDRSB.W         R1, [R0,#0x71C]
30482A:  CMP             R4, R5
30482C:  RSB.W           R1, R1, R1,LSL#3
304830:  ADD.W           R0, R0, R1,LSL#2
304834:  BGE             loc_304844
304836:  LDR.W           R4, [R0,#0x5B0]
30483A:  B               loc_304852
30483C:  ADD             SP, SP, #0x24 ; '$'
30483E:  POP.W           {R8-R11}
304842:  POP             {R4-R7,PC}
304844:  LDR.W           R0, [R0,#0x5A4]
304848:  MOVS            R1, #1
30484A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
30484E:  LDRSH.W         R4, [R0,#0x20]
304852:  MOV.W           R0, #0xFFFFFFFF; int
304856:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30485A:  LDRSB.W         R1, [R0,#0x71C]
30485E:  RSB.W           R1, R1, R1,LSL#3
304862:  ADD.W           R0, R0, R1,LSL#2
304866:  STR.W           R4, [R0,#0x5AC]
30486A:  MOV.W           R0, #0xFFFFFFFF; int
30486E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
304872:  ADD             SP, SP, #0x24 ; '$'
304874:  POP.W           {R8-R11}
304878:  POP.W           {R4-R7,LR}
30487C:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
