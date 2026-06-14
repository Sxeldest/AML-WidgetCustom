; =========================================================
; Game Engine Function: _ZN9CGangWars4SaveEv
; Address            : 0x48E5A4 - 0x48E7BC
; =========================================================

48E5A4:  PUSH            {R4-R7,LR}
48E5A6:  ADD             R7, SP, #0xC
48E5A8:  PUSH.W          {R8-R11}
48E5AC:  SUB             SP, SP, #0x5C
48E5AE:  LDR             R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x48E5B8)
48E5B0:  LDR             R1, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x48E5BC)
48E5B2:  LDR             R2, =(_ZN9CGangWars11TimeStartedE_ptr - 0x48E5BE)
48E5B4:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
48E5B6:  LDR             R3, =(_ZN9CGangWars5StateE_ptr - 0x48E5C2)
48E5B8:  ADD             R1, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
48E5BA:  ADD             R2, PC; _ZN9CGangWars11TimeStartedE_ptr
48E5BC:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
48E5BE:  ADD             R3, PC; _ZN9CGangWars5StateE_ptr
48E5C0:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver ...
48E5C2:  LDR             R2, [R2]; CGangWars::TimeStarted ...
48E5C4:  LDR             R3, [R3]; CGangWars::State ...
48E5C6:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver
48E5C8:  LDR.W           R12, [R2]; CGangWars::TimeStarted
48E5CC:  LDR             R3, [R3]; CGangWars::State
48E5CE:  CMP             R1, #0
48E5D0:  LDRB            R4, [R0]; CGangWars::bGangWarsActive
48E5D2:  BEQ             loc_48E5F4
48E5D4:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48E5DA)
48E5D6:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48E5D8:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
48E5DA:  LDRH            R0, [R0]; CTheZones::TotalNumberOfZoneInfos
48E5DC:  CBZ             R0, loc_48E5F4
48E5DE:  LDR             R2, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x48E5E6)
48E5E0:  MOVS            R6, #0
48E5E2:  ADD             R2, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
48E5E4:  LDR             R2, [R2]; CTheZones::ZoneInfoArray ...
48E5E6:  SUBS            R1, R1, R2
48E5E8:  ADDS            R1, #0x11
48E5EA:  SUBS            R1, #0x11
48E5EC:  BEQ             loc_48E5F8
48E5EE:  ADDS            R6, #1
48E5F0:  CMP             R6, R0
48E5F2:  BLT             loc_48E5EA
48E5F4:  MOV.W           R6, #0xFFFFFFFF
48E5F8:  LDR             R0, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x48E602)
48E5FA:  STR.W           R12, [SP,#0x78+var_48]
48E5FE:  ADD             R0, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
48E600:  LDR             R0, [R0]; CGangWars::pZoneToFightOver ...
48E602:  LDR             R1, [R0]; CGangWars::pZoneToFightOver
48E604:  STRD.W          R4, R3, [SP,#0x78+var_50]
48E608:  CBZ             R1, loc_48E62A
48E60A:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x48E610)
48E60C:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
48E60E:  LDR             R0, [R0]; CTheZones::TotalNumberOfNavigationZones ...
48E610:  LDRH            R0, [R0]; CTheZones::TotalNumberOfNavigationZones
48E612:  CBZ             R0, loc_48E62A
48E614:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x48E61C)
48E616:  MOVS            R5, #0
48E618:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
48E61A:  LDR             R2, [R2]; CTheZones::NavigationZoneArray ...
48E61C:  SUBS            R1, R1, R2
48E61E:  ADDS            R1, #0x20 ; ' '
48E620:  SUBS            R1, #0x20 ; ' '
48E622:  BEQ             loc_48E62E
48E624:  ADDS            R5, #1
48E626:  CMP             R5, R0
48E628:  BLT             loc_48E620
48E62A:  MOV.W           R5, #0xFFFFFFFF
48E62E:  LDR             R0, =(_ZN9CGangWars19ZoneInfoForTrainingE_ptr - 0x48E63A)
48E630:  LDR.W           R9, =(_ZN9CGangWars10DifficultyE_ptr - 0x48E640)
48E634:  LDR             R1, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x48E646)
48E636:  ADD             R0, PC; _ZN9CGangWars19ZoneInfoForTrainingE_ptr
48E638:  LDR.W           R10, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x48E64C)
48E63C:  ADD             R9, PC; _ZN9CGangWars10DifficultyE_ptr
48E63E:  LDR.W           R12, =(_ZN9CGangWars25CoorsOfPlayerAtStartOfWarE_ptr - 0x48E650)
48E642:  ADD             R1, PC; _ZN9CGangWars16bTrainingMissionE_ptr
48E644:  LDR.W           LR, =(_ZN9CGangWars13PointOfAttackE_ptr - 0x48E656)
48E648:  ADD             R10, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
48E64A:  LDR             R2, [R0]; CGangWars::ZoneInfoForTraining ...
48E64C:  ADD             R12, PC; _ZN9CGangWars25CoorsOfPlayerAtStartOfWarE_ptr
48E64E:  LDR.W           R0, [R9]; CGangWars::Difficulty ...
48E652:  ADD             LR, PC; _ZN9CGangWars13PointOfAttackE_ptr
48E654:  LDR             R3, [R1]; CGangWars::bTrainingMission ...
48E656:  LDR.W           R1, [R10]; CGangWars::TerritoryUnderControlPercentage ...
48E65A:  LDR.W           R12, [R12]; CGangWars::CoorsOfPlayerAtStartOfWar ...
48E65E:  LDR.W           LR, [LR]; CGangWars::PointOfAttack ...
48E662:  LDR             R0, [R0]; CGangWars::Difficulty
48E664:  STR             R0, [SP,#0x78+var_60]
48E666:  LDR             R0, [R1]; CGangWars::TerritoryUnderControlPercentage
48E668:  STR             R0, [SP,#0x78+var_64]
48E66A:  LDR.W           R0, [R12,#(dword_7A2310 - 0x7A2308)]
48E66E:  STR             R0, [SP,#0x78+var_28]
48E670:  LDR.W           R0, [LR,#(dword_7A2330 - 0x7A2328)]
48E674:  STR             R0, [SP,#0x78+var_38]
48E676:  LDR             R0, =(_ZN9CGangWars16bPlayerIsClosebyE_ptr - 0x48E680)
48E678:  LDR.W           R8, =(_ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr - 0x48E684)
48E67C:  ADD             R0, PC; _ZN9CGangWars16bPlayerIsClosebyE_ptr
48E67E:  LDR             R2, [R2]; CGangWars::ZoneInfoForTraining
48E680:  ADD             R8, PC; _ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr
48E682:  STR             R2, [SP,#0x78+var_54]
48E684:  LDR             R0, [R0]; CGangWars::bPlayerIsCloseby ...
48E686:  LDR.W           R4, [R8]; CGangWars::bCanTriggerGangWarWhenOnAMission ...
48E68A:  LDRB            R2, [R3]; CGangWars::bTrainingMission
48E68C:  LDRB            R0, [R0]; CGangWars::bPlayerIsCloseby
48E68E:  STR             R0, [SP,#0x78+var_68]
48E690:  LDR             R0, =(_ZN9CGangWars9RadarBlipE_ptr - 0x48E69A)
48E692:  VLDR            D16, [LR]
48E696:  ADD             R0, PC; _ZN9CGangWars9RadarBlipE_ptr
48E698:  VLDR            D17, [R12]
48E69C:  STR             R2, [SP,#0x78+var_58]
48E69E:  LDR             R0, [R0]; CGangWars::RadarBlip ...
48E6A0:  LDRB            R2, [R4]; CGangWars::bCanTriggerGangWarWhenOnAMission
48E6A2:  STR             R2, [SP,#0x78+var_5C]
48E6A4:  LDR             R0, [R0]; CGangWars::RadarBlip
48E6A6:  STR             R0, [SP,#0x78+var_6C]
48E6A8:  LDR             R0, =(_ZN9CGangWars10FightTimerE_ptr - 0x48E6B2)
48E6AA:  VSTR            D17, [SP,#0x78+var_30]
48E6AE:  ADD             R0, PC; _ZN9CGangWars10FightTimerE_ptr
48E6B0:  VSTR            D16, [SP,#0x78+var_40]
48E6B4:  LDR             R0, [R0]; CGangWars::FightTimer ...
48E6B6:  LDR             R0, [R0]; CGangWars::FightTimer
48E6B8:  STR             R0, [SP,#0x78+var_70]
48E6BA:  LDR             R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x48E6C0)
48E6BC:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
48E6BE:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
48E6C0:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack
48E6C2:  STR             R0, [SP,#0x78+var_74]
48E6C4:  LDR             R0, =(_ZN9CGangWars6State2E_ptr - 0x48E6CA)
48E6C6:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
48E6C8:  LDR             R0, [R0]; CGangWars::State2 ...
48E6CA:  LDR             R0, [R0]; CGangWars::State2
48E6CC:  STR             R0, [SP,#0x78+var_78]
48E6CE:  LDR             R0, =(_ZN9CGangWars14LastTimeInAreaE_ptr - 0x48E6D4)
48E6D0:  ADD             R0, PC; _ZN9CGangWars14LastTimeInAreaE_ptr
48E6D2:  LDR             R0, [R0]; CGangWars::LastTimeInArea ...
48E6D4:  LDR.W           R9, [R0]; CGangWars::LastTimeInArea
48E6D8:  LDR             R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x48E6DE)
48E6DA:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
48E6DC:  LDR             R0, [R0]; CGangWars::WarFerocity ...
48E6DE:  LDR.W           R10, [R0]; CGangWars::WarFerocity
48E6E2:  LDR             R0, =(_ZN9CGangWars5Gang2E_ptr - 0x48E6E8)
48E6E4:  ADD             R0, PC; _ZN9CGangWars5Gang2E_ptr
48E6E6:  LDR             R0, [R0]; CGangWars::Gang2 ...
48E6E8:  LDR.W           R11, [R0]; CGangWars::Gang2
48E6EC:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x48E6F2)
48E6EE:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
48E6F0:  LDR             R0, [R0]; CGangWars::Gang1 ...
48E6F2:  LDR.W           R8, [R0]; CGangWars::Gang1
48E6F6:  MOVS            R0, #4; byte_count
48E6F8:  BLX             malloc
48E6FC:  MOV             R4, R0
48E6FE:  MOVS            R0, #0x60 ; '`'
48E700:  STR             R0, [R4]
48E702:  MOV             R0, R4; this
48E704:  MOVS            R1, #byte_4; void *
48E706:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E70A:  MOV             R0, R4; p
48E70C:  BLX             free
48E710:  MOVS            R0, #0x60 ; '`'; byte_count
48E712:  BLX             malloc
48E716:  MOV             R4, R0
48E718:  LDR             R0, [SP,#0x78+var_50]
48E71A:  STRB            R0, [R4]
48E71C:  LDRB.W          R0, [R7,#var_1D]
48E720:  LDR             R1, [SP,#0x78+var_4C]
48E722:  STRB            R0, [R4,#3]
48E724:  STR             R1, [R4,#4]
48E726:  LDR             R1, [SP,#0x78+var_48]
48E728:  STR             R1, [R4,#8]
48E72A:  LDRH.W          R0, [R7,#var_1F]
48E72E:  LDR             R1, [SP,#0x78+var_78]
48E730:  STR             R6, [R4,#0xC]
48E732:  STR             R5, [R4,#0x10]
48E734:  STRH.W          R0, [R4,#1]
48E738:  STR.W           R8, [R4,#0x20]
48E73C:  STR.W           R11, [R4,#0x24]
48E740:  STR.W           R10, [R4,#0x28]
48E744:  STR.W           R9, [R4,#0x2C]
48E748:  STR             R1, [R4,#0x30]
48E74A:  LDR             R1, [SP,#0x78+var_74]
48E74C:  LDR             R0, [SP,#0x78+var_28]
48E74E:  STR             R1, [R4,#0x34]
48E750:  MOVS            R1, #dword_60; void *
48E752:  STR             R0, [R4,#0x1C]
48E754:  ADD.W           R0, R4, #0x14
48E758:  VLDR            D16, [SP,#0x78+var_30]
48E75C:  VST1.8          {D16}, [R0]
48E760:  LDR             R0, [SP,#0x78+var_38]
48E762:  STR             R0, [R4,#0x40]
48E764:  LDR             R0, [SP,#0x78+var_70]
48E766:  STR             R0, [R4,#0x44]
48E768:  LDR             R0, [SP,#0x78+var_6C]
48E76A:  STR             R0, [R4,#0x48]
48E76C:  LDR             R0, [SP,#0x78+var_68]
48E76E:  STRB.W          R0, [R4,#0x4C]
48E772:  ADD.W           R0, R4, #0x38 ; '8'
48E776:  VLDR            D16, [SP,#0x78+var_40]
48E77A:  VST1.8          {D16}, [R0]
48E77E:  LDRB.W          R0, [R7,#var_41]
48E782:  STRB.W          R0, [R4,#0x4F]
48E786:  LDRH.W          R0, [R7,#var_43]
48E78A:  STRH.W          R0, [R4,#0x4D]
48E78E:  LDR             R0, [SP,#0x78+var_64]
48E790:  STR             R0, [R4,#0x50]
48E792:  LDR             R0, [SP,#0x78+var_60]
48E794:  STR             R0, [R4,#0x54]
48E796:  LDR             R0, [SP,#0x78+var_5C]
48E798:  STRB.W          R0, [R4,#0x58]
48E79C:  LDR             R0, [SP,#0x78+var_58]
48E79E:  STRB.W          R0, [R4,#0x59]
48E7A2:  LDR             R0, [SP,#0x78+var_54]
48E7A4:  STR             R0, [R4,#0x5C]
48E7A6:  MOV             R0, R4; this
48E7A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E7AC:  MOV             R0, R4; p
48E7AE:  BLX             free
48E7B2:  MOVS            R0, #1
48E7B4:  ADD             SP, SP, #0x5C ; '\'
48E7B6:  POP.W           {R8-R11}
48E7BA:  POP             {R4-R7,PC}
