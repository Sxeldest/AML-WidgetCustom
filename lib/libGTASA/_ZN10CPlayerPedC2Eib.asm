; =========================================================
; Game Engine Function: _ZN10CPlayerPedC2Eib
; Address            : 0x4C360C - 0x4C372C
; =========================================================

4C360C:  PUSH            {R4-R7,LR}
4C360E:  ADD             R7, SP, #0xC
4C3610:  PUSH.W          {R8,R9,R11}
4C3614:  MOV             R6, R1
4C3616:  MOVS            R1, #0; unsigned int
4C3618:  MOV             R5, R2
4C361A:  MOV             R4, R0
4C361C:  MOV.W           R8, #0
4C3620:  BLX             j__ZN4CPedC2Ej; CPed::CPed(uint)
4C3624:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4C3630)
4C3626:  MOV.W           R2, #0x194
4C362A:  LDR             R1, =(_ZTV10CPlayerPed_ptr - 0x4C3632)
4C362C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4C362E:  ADD             R1, PC; _ZTV10CPlayerPed_ptr
4C3630:  LDR             R0, [R0]; CWorld::Players ...
4C3632:  MLA.W           R0, R6, R2, R0
4C3636:  LDR             R1, [R1]; `vtable for'CPlayerPed ...
4C3638:  ADDS            R1, #8
4C363A:  STR             R1, [R4]
4C363C:  ADDS            R0, #4; this
4C363E:  STR.W           R0, [R4,#0x444]
4C3642:  BLX             j__ZN14CPlayerPedData12AllocateDataEv; CPlayerPedData::AllocateData(void)
4C3646:  LDR             R0, [R4]
4C3648:  MOVS            R1, #0
4C364A:  LDR             R2, [R0,#0x18]
4C364C:  MOV             R0, R4
4C364E:  BLX             R2
4C3650:  MOV             R0, R4; this
4C3652:  MOV             R1, R5; bool
4C3654:  BLX             j__ZN10CPlayerPed15SetInitialStateEb; CPlayerPed::SetInitialState(bool)
4C3658:  MOV             R0, R4; this
4C365A:  MOVS            R1, #0; CEntity *
4C365C:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C3660:  MOV             R0, R4; CPed *
4C3662:  MOVS            R1, #1
4C3664:  MOV.W           R9, #1
4C3668:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4C366C:  ADR             R0, aPlayidles; "playidles"
4C366E:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4C3672:  CBZ             R5, loc_4C36EC
4C3674:  BLX             j__ZN10CPedGroups8AddGroupEv; CPedGroups::AddGroup(void)
4C3678:  LDR.W           R1, [R4,#0x444]
4C367C:  MOV.W           R5, #0x2D4
4C3680:  STR             R0, [R1,#0x38]
4C3682:  LDR.W           R0, [R4,#0x444]
4C3686:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C368E)
4C3688:  LDR             R0, [R0,#0x38]
4C368A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C368C:  LDR             R6, [R1]; CPedGroups::ms_groups ...
4C368E:  MOVS            R1, #5; int
4C3690:  MLA.W           R0, R0, R5, R6
4C3694:  ADDS            R0, #0x30 ; '0'; this
4C3696:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
4C369A:  LDR.W           R0, [R4,#0x444]
4C369E:  MOV             R1, R4; CPed *
4C36A0:  LDR             R0, [R0,#0x38]
4C36A2:  MLA.W           R0, R0, R5, R6
4C36A6:  STRB.W          R9, [R0,#0x2D0]
4C36AA:  LDR.W           R0, [R4,#0x444]
4C36AE:  LDR             R0, [R0,#0x38]
4C36B0:  MLA.W           R0, R0, R5, R6
4C36B4:  ADDS            R0, #8; this
4C36B6:  BLX             j__ZN19CPedGroupMembership9SetLeaderEP4CPed; CPedGroupMembership::SetLeader(CPed *)
4C36BA:  LDR.W           R0, [R4,#0x444]
4C36BE:  LDR             R0, [R0,#0x38]
4C36C0:  MLA.W           R0, R0, R5, R6; this
4C36C4:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
4C36C8:  LDR.W           R0, [R4,#0x444]
4C36CC:  LDRH            R1, [R0,#0x34]
4C36CE:  BIC.W           R1, R1, #0x100
4C36D2:  STRH            R1, [R0,#0x34]
4C36D4:  LDR.W           R0, [R4,#0x444]
4C36D8:  LDRH            R1, [R0,#0x34]
4C36DA:  BIC.W           R1, R1, #0x200
4C36DE:  STRH            R1, [R0,#0x34]
4C36E0:  LDR.W           R0, [R4,#0x444]
4C36E4:  LDRH            R1, [R0,#0x34]
4C36E6:  BIC.W           R1, R1, #0x400
4C36EA:  STRH            R1, [R0,#0x34]
4C36EC:  MOVS            R0, #9
4C36EE:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4C36F2:  STR.W           R0, [R4,#0x544]
4C36F6:  MOV             R1, R4; CEntity *
4C36F8:  STR.W           R0, [R4,#0x548]
4C36FC:  MOVW            R0, #0xF0F
4C3700:  STRH.W          R0, [R4,#0x735]
4C3704:  ADD.W           R0, R4, #0x298; this
4C3708:  STR.W           R8, [R4,#0x7A4]
4C370C:  STR.W           R8, [R4,#0x7A8]
4C3710:  BLX             j__ZN23CAEPedSpeechAudioEntity10InitialiseEP7CEntity; CAEPedSpeechAudioEntity::Initialise(CEntity *)
4C3714:  LDR.W           R0, [R4,#0x440]
4C3718:  MOVS            R2, #0
4C371A:  MOVS            R1, #2
4C371C:  MOVT            R2, #0x41F0
4C3720:  STRD.W          R1, R2, [R0,#0xC4]
4C3724:  MOV             R0, R4
4C3726:  POP.W           {R8,R9,R11}
4C372A:  POP             {R4-R7,PC}
