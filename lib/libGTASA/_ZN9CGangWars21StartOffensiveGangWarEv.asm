; =========================================================
; Game Engine Function: _ZN9CGangWars21StartOffensiveGangWarEv
; Address            : 0x30A518 - 0x30A99E
; =========================================================

30A518:  PUSH            {R4-R7,LR}
30A51A:  ADD             R7, SP, #0xC
30A51C:  PUSH.W          {R8-R11}
30A520:  SUB             SP, SP, #0x24
30A522:  ADD             R0, SP, #0x40+var_28; int
30A524:  MOV.W           R1, #0xFFFFFFFF
30A528:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30A52C:  LDR.W           R0, =(_ZN9CGangWars25CoorsOfPlayerAtStartOfWarE_ptr - 0x30A538)
30A530:  LDR.W           R1, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x30A53E)
30A534:  ADD             R0, PC; _ZN9CGangWars25CoorsOfPlayerAtStartOfWarE_ptr
30A536:  VLDR            D16, [SP,#0x40+var_28]
30A53A:  ADD             R1, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
30A53C:  LDR             R2, [SP,#0x40+var_20]; CZone **
30A53E:  LDR             R0, [R0]; this
30A540:  LDR             R1, [R1]; CVector *
30A542:  STR             R2, [R0,#(dword_7A2310 - 0x7A2308)]
30A544:  VSTR            D16, [R0]
30A548:  BLX             j__ZN9CTheZones11GetZoneInfoEPK7CVectorPP5CZone; CTheZones::GetZoneInfo(CVector const*,CZone **)
30A54C:  LDR.W           R1, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30A558)
30A550:  LDR.W           R2, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x30A562)
30A554:  ADD             R1, PC; _ZN9CGangWars16bTrainingMissionE_ptr
30A556:  LDR.W           R3, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30A566)
30A55A:  LDR.W           R6, =(_ZN9CGangWars10DifficultyE_ptr - 0x30A568)
30A55E:  ADD             R2, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
30A560:  LDR             R1, [R1]; CGangWars::bTrainingMission ...
30A562:  ADD             R3, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30A564:  ADD             R6, PC; _ZN9CGangWars10DifficultyE_ptr
30A566:  LDR             R2, [R2]; CGangWars::TerritoryUnderControlPercentage ...
30A568:  LDR             R3, [R3]; CGangWars::pZoneInfoToFightOver ...
30A56A:  LDRB            R1, [R1]; CGangWars::bTrainingMission
30A56C:  LDR             R6, [R6]; CGangWars::Difficulty ...
30A56E:  LDR             R2, [R2]; CGangWars::TerritoryUnderControlPercentage
30A570:  CMP             R1, #0
30A572:  STR             R0, [R3]; CGangWars::pZoneInfoToFightOver
30A574:  STR             R2, [R6]; CGangWars::Difficulty
30A576:  BEQ             loc_30A5A2
30A578:  LDR.W           R1, =(_ZN9CGangWars19ZoneInfoForTrainingE_ptr - 0x30A584)
30A57C:  LDR.W           R2, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x30A586)
30A580:  ADD             R1, PC; _ZN9CGangWars19ZoneInfoForTrainingE_ptr
30A582:  ADD             R2, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
30A584:  LDR             R1, [R1]; CGangWars::ZoneInfoForTraining ...
30A586:  LDR             R2, [R2]; CTheZones::ZoneInfoArray ...
30A588:  LDR             R1, [R1]; CGangWars::ZoneInfoForTraining
30A58A:  ADD.W           R1, R1, R1,LSL#4
30A58E:  ADD             R1, R2
30A590:  CMP             R1, R0
30A592:  BEQ             loc_30A5E8
30A594:  LDR.W           R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30A59E)
30A598:  MOVS            R1, #0
30A59A:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30A59C:  LDR             R0, [R0]; CGangWars::Provocation ...
30A59E:  STR             R1, [R0]; CGangWars::Provocation
30A5A0:  B               loc_30A996
30A5A2:  LDR.W           R1, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30A5AA)
30A5A6:  ADD             R1, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30A5A8:  LDR             R1, [R1]; CGangWars::NumSpecificZones ...
30A5AA:  LDR             R1, [R1]; CGangWars::NumSpecificZones
30A5AC:  CBZ             R1, loc_30A5E8
30A5AE:  CMP             R1, #1
30A5B0:  BLT             loc_30A594
30A5B2:  LDR.W           R3, =(_ZN9CGangWars14aSpecificZonesE_ptr - 0x30A5C4)
30A5B6:  MOVS            R2, #0
30A5B8:  LDR.W           R6, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x30A5C6)
30A5BC:  LDR.W           R5, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x30A5C8)
30A5C0:  ADD             R3, PC; _ZN9CGangWars14aSpecificZonesE_ptr
30A5C2:  ADD             R6, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
30A5C4:  ADD             R5, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
30A5C6:  LDR             R3, [R3]; CGangWars::aSpecificZones ...
30A5C8:  LDR             R6, [R6]; CTheZones::NavigationZoneArray ...
30A5CA:  LDR             R5, [R5]; CTheZones::ZoneInfoArray ...
30A5CC:  LDR.W           R4, [R3,R2,LSL#2]
30A5D0:  ADD.W           R4, R6, R4,LSL#5
30A5D4:  LDRH            R4, [R4,#0x1C]
30A5D6:  ADD.W           R4, R4, R4,LSL#4
30A5DA:  ADD             R4, R5
30A5DC:  CMP             R4, R0
30A5DE:  BEQ             loc_30A5E8
30A5E0:  ADDS            R2, #1
30A5E2:  CMP             R2, R1
30A5E4:  BLT             loc_30A5CC
30A5E6:  B               loc_30A594
30A5E8:  LDRB            R3, [R0]
30A5EA:  MOVS            R2, #0
30A5EC:  CBZ             R3, loc_30A606
30A5EE:  LDR.W           R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30A5FA)
30A5F2:  LDR.W           R6, =(_ZN9CGangWars5Gang2E_ptr - 0x30A5FC)
30A5F6:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30A5F8:  ADD             R6, PC; _ZN9CGangWars5Gang2E_ptr
30A5FA:  LDR             R1, [R1]; CGangWars::Gang1 ...
30A5FC:  LDR             R6, [R6]; CGangWars::Gang2 ...
30A5FE:  LDR             R5, [R1]; CGangWars::Gang1
30A600:  STR             R5, [R6]; CGangWars::Gang2
30A602:  STR             R2, [R1]; CGangWars::Gang1
30A604:  LDRB            R2, [R0]
30A606:  LDRB            R1, [R0,#2]
30A608:  ADD             R3, R1
30A60A:  CMP             R2, R1
30A60C:  BCS             loc_30A62C
30A60E:  LDR.W           R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30A61A)
30A612:  LDR.W           R6, =(_ZN9CGangWars5Gang2E_ptr - 0x30A61C)
30A616:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30A618:  ADD             R6, PC; _ZN9CGangWars5Gang2E_ptr
30A61A:  LDR             R1, [R1]; CGangWars::Gang1 ...
30A61C:  LDR             R6, [R6]; CGangWars::Gang2 ...
30A61E:  LDR             R5, [R1]; CGangWars::Gang1
30A620:  STR             R5, [R6]; CGangWars::Gang2
30A622:  MOVS            R6, #2
30A624:  STR             R6, [R1]; CGangWars::Gang1
30A626:  MOV             R1, R2
30A628:  LDRB            R5, [R0,#2]
30A62A:  B               loc_30A640
30A62C:  CBZ             R1, loc_30A63C
30A62E:  LDR.W           R6, =(_ZN9CGangWars5Gang2E_ptr - 0x30A638)
30A632:  MOVS            R5, #2
30A634:  ADD             R6, PC; _ZN9CGangWars5Gang2E_ptr
30A636:  LDR             R6, [R6]; CGangWars::Gang2 ...
30A638:  STR             R5, [R6]; CGangWars::Gang2
30A63A:  B               loc_30A63E
30A63C:  MOVS            R1, #0
30A63E:  MOV             R5, R2
30A640:  LDRB            R6, [R0,#3]
30A642:  ADD             R3, R6
30A644:  CMP             R5, R6
30A646:  BGE             loc_30A666
30A648:  LDR.W           R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30A654)
30A64C:  LDR.W           R2, =(_ZN9CGangWars5Gang2E_ptr - 0x30A656)
30A650:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30A652:  ADD             R2, PC; _ZN9CGangWars5Gang2E_ptr
30A654:  LDR             R1, [R1]; CGangWars::Gang1 ...
30A656:  LDR             R2, [R2]; CGangWars::Gang2 ...
30A658:  LDR             R6, [R1]; CGangWars::Gang1
30A65A:  STR             R6, [R2]; CGangWars::Gang2
30A65C:  MOVS            R2, #3
30A65E:  STR             R2, [R1]; CGangWars::Gang1
30A660:  MOV             R6, R5
30A662:  LDRB            R2, [R0,#3]
30A664:  B               loc_30A67E
30A666:  CMP             R1, R6
30A668:  BGE             loc_30A67A
30A66A:  LDR.W           R1, =(_ZN9CGangWars5Gang2E_ptr - 0x30A674)
30A66E:  MOVS            R2, #3
30A670:  ADD             R1, PC; _ZN9CGangWars5Gang2E_ptr
30A672:  LDR             R1, [R1]; CGangWars::Gang2 ...
30A674:  STR             R2, [R1]; CGangWars::Gang2
30A676:  MOV             R2, R5
30A678:  B               loc_30A67E
30A67A:  MOV             R2, R5
30A67C:  MOV             R6, R1
30A67E:  LDRB            R1, [R0,#4]
30A680:  ADDS            R5, R3, R1
30A682:  CMP             R2, R1
30A684:  BGE             loc_30A6A0
30A686:  LDR.W           R3, =(_ZN9CGangWars5Gang1E_ptr - 0x30A692)
30A68A:  LDR.W           R4, =(_ZN9CGangWars5Gang2E_ptr - 0x30A694)
30A68E:  ADD             R3, PC; _ZN9CGangWars5Gang1E_ptr
30A690:  ADD             R4, PC; _ZN9CGangWars5Gang2E_ptr
30A692:  LDR             R6, [R3]; CGangWars::Gang1 ...
30A694:  LDR             R3, [R4]; CGangWars::Gang2 ...
30A696:  LDR             R4, [R6]; CGangWars::Gang1
30A698:  STR             R4, [R3]; CGangWars::Gang2
30A69A:  MOV             R3, R1
30A69C:  MOV             R1, R2
30A69E:  B               loc_30A6AC
30A6A0:  CMP             R6, R1
30A6A2:  BGE             loc_30A6B2
30A6A4:  LDR             R3, =(_ZN9CGangWars5Gang2E_ptr - 0x30A6AA)
30A6A6:  ADD             R3, PC; _ZN9CGangWars5Gang2E_ptr
30A6A8:  LDR             R6, [R3]; CGangWars::Gang2 ...
30A6AA:  MOV             R3, R2
30A6AC:  MOVS            R2, #4
30A6AE:  STR             R2, [R6]; CGangWars::Gang1
30A6B0:  B               loc_30A6B6
30A6B2:  MOV             R3, R2
30A6B4:  MOV             R1, R6
30A6B6:  LDRB            R2, [R0,#5]
30A6B8:  ADD             R5, R2
30A6BA:  CMP             R3, R2
30A6BC:  BGE             loc_30A6D4
30A6BE:  LDR             R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30A6C6)
30A6C0:  LDR             R6, =(_ZN9CGangWars5Gang2E_ptr - 0x30A6C8)
30A6C2:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30A6C4:  ADD             R6, PC; _ZN9CGangWars5Gang2E_ptr
30A6C6:  LDR             R1, [R1]; CGangWars::Gang1 ...
30A6C8:  LDR             R6, [R6]; CGangWars::Gang2 ...
30A6CA:  LDR             R4, [R1]; CGangWars::Gang1
30A6CC:  STR             R4, [R6]; CGangWars::Gang2
30A6CE:  MOV             R6, R2
30A6D0:  MOV             R2, R3
30A6D2:  B               loc_30A6E0
30A6D4:  CMP             R1, R2
30A6D6:  BGE             loc_30A6E6
30A6D8:  LDR             R1, =(_ZN9CGangWars5Gang2E_ptr - 0x30A6E0)
30A6DA:  MOV             R6, R3
30A6DC:  ADD             R1, PC; _ZN9CGangWars5Gang2E_ptr
30A6DE:  LDR             R1, [R1]; CGangWars::Gang2 ...
30A6E0:  MOVS            R3, #5
30A6E2:  STR             R3, [R1]; CGangWars::Gang1
30A6E4:  B               loc_30A6EA
30A6E6:  MOV             R6, R3
30A6E8:  MOV             R2, R1
30A6EA:  LDRB            R1, [R0,#6]
30A6EC:  ADD             R5, R1
30A6EE:  CMP             R6, R1
30A6F0:  BGE             loc_30A708
30A6F2:  LDR             R2, =(_ZN9CGangWars5Gang1E_ptr - 0x30A6FA)
30A6F4:  LDR             R3, =(_ZN9CGangWars5Gang2E_ptr - 0x30A6FC)
30A6F6:  ADD             R2, PC; _ZN9CGangWars5Gang1E_ptr
30A6F8:  ADD             R3, PC; _ZN9CGangWars5Gang2E_ptr
30A6FA:  LDR             R2, [R2]; CGangWars::Gang1 ...
30A6FC:  LDR             R3, [R3]; CGangWars::Gang2 ...
30A6FE:  LDR             R4, [R2]; CGangWars::Gang1
30A700:  STR             R4, [R3]; CGangWars::Gang2
30A702:  MOV             R3, R1
30A704:  MOV             R1, R6
30A706:  B               loc_30A714
30A708:  CMP             R2, R1
30A70A:  BGE             loc_30A71A
30A70C:  LDR             R2, =(_ZN9CGangWars5Gang2E_ptr - 0x30A714)
30A70E:  MOV             R3, R6
30A710:  ADD             R2, PC; _ZN9CGangWars5Gang2E_ptr
30A712:  LDR             R2, [R2]; CGangWars::Gang2 ...
30A714:  MOVS            R6, #6
30A716:  STR             R6, [R2]; CGangWars::Gang1
30A718:  B               loc_30A71E
30A71A:  MOV             R3, R6
30A71C:  MOV             R1, R2
30A71E:  LDRB            R2, [R0,#7]
30A720:  ADD             R5, R2
30A722:  CMP             R3, R2
30A724:  BGE             loc_30A73C
30A726:  LDR             R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30A72E)
30A728:  LDR             R6, =(_ZN9CGangWars5Gang2E_ptr - 0x30A730)
30A72A:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30A72C:  ADD             R6, PC; _ZN9CGangWars5Gang2E_ptr
30A72E:  LDR             R1, [R1]; CGangWars::Gang1 ...
30A730:  LDR             R6, [R6]; CGangWars::Gang2 ...
30A732:  LDR             R4, [R1]; CGangWars::Gang1
30A734:  STR             R4, [R6]; CGangWars::Gang2
30A736:  MOV             R6, R2
30A738:  MOV             R2, R3
30A73A:  B               loc_30A748
30A73C:  CMP             R1, R2
30A73E:  BGE             loc_30A74E
30A740:  LDR             R1, =(_ZN9CGangWars5Gang2E_ptr - 0x30A748)
30A742:  MOV             R6, R3
30A744:  ADD             R1, PC; _ZN9CGangWars5Gang2E_ptr
30A746:  LDR             R1, [R1]; CGangWars::Gang2 ...
30A748:  MOVS            R3, #7
30A74A:  STR             R3, [R1]; CGangWars::Gang1
30A74C:  B               loc_30A752
30A74E:  MOV             R6, R3
30A750:  MOV             R2, R1
30A752:  LDRB            R1, [R0,#8]
30A754:  ADD             R5, R1
30A756:  CMP             R6, R1
30A758:  BGE             loc_30A770
30A75A:  LDR             R2, =(_ZN9CGangWars5Gang1E_ptr - 0x30A762)
30A75C:  LDR             R3, =(_ZN9CGangWars5Gang2E_ptr - 0x30A764)
30A75E:  ADD             R2, PC; _ZN9CGangWars5Gang1E_ptr
30A760:  ADD             R3, PC; _ZN9CGangWars5Gang2E_ptr
30A762:  LDR             R2, [R2]; CGangWars::Gang1 ...
30A764:  LDR             R3, [R3]; CGangWars::Gang2 ...
30A766:  LDR             R4, [R2]; CGangWars::Gang1
30A768:  STR             R4, [R3]; CGangWars::Gang2
30A76A:  MOV             R3, R1
30A76C:  MOV             R1, R6
30A76E:  B               loc_30A77C
30A770:  CMP             R2, R1
30A772:  BGE             loc_30A782
30A774:  LDR             R2, =(_ZN9CGangWars5Gang2E_ptr - 0x30A77C)
30A776:  MOV             R3, R6
30A778:  ADD             R2, PC; _ZN9CGangWars5Gang2E_ptr
30A77A:  LDR             R2, [R2]; CGangWars::Gang2 ...
30A77C:  MOVS            R6, #8
30A77E:  STR             R6, [R2]; CGangWars::Gang1
30A780:  B               loc_30A786
30A782:  MOV             R3, R6
30A784:  MOV             R1, R2
30A786:  LDRB.W          R10, [R0,#9]
30A78A:  ADD.W           R9, R5, R10
30A78E:  CMP             R3, R10
30A790:  BGE             loc_30A7A8
30A792:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30A79A)
30A794:  LDR             R1, =(_ZN9CGangWars5Gang2E_ptr - 0x30A79C)
30A796:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30A798:  ADD             R1, PC; _ZN9CGangWars5Gang2E_ptr
30A79A:  LDR             R0, [R0]; CGangWars::Gang1 ...
30A79C:  LDR             R1, [R1]; CGangWars::Gang2 ...
30A79E:  LDR             R2, [R0]; CGangWars::Gang1
30A7A0:  STR             R2, [R1]; CGangWars::Gang2
30A7A2:  MOV             R2, R10
30A7A4:  MOV             R10, R3
30A7A6:  B               loc_30A7B4
30A7A8:  CMP             R1, R10
30A7AA:  BGE             loc_30A7BA
30A7AC:  LDR             R0, =(_ZN9CGangWars5Gang2E_ptr - 0x30A7B4)
30A7AE:  MOV             R2, R3
30A7B0:  ADD             R0, PC; _ZN9CGangWars5Gang2E_ptr
30A7B2:  LDR             R0, [R0]; CGangWars::Gang2 ...
30A7B4:  MOVS            R1, #9
30A7B6:  STR             R1, [R0]; CGangWars::Gang1
30A7B8:  B               loc_30A7BE
30A7BA:  MOV             R2, R3
30A7BC:  MOV             R10, R1
30A7BE:  LDR             R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30A7CC)
30A7C0:  CMP.W           R9, #0
30A7C4:  MOV.W           R1, #0
30A7C8:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30A7CA:  LDR             R0, [R0]; CGangWars::Provocation ...
30A7CC:  STR             R1, [R0]; CGangWars::Provocation
30A7CE:  BLE.W           loc_30A996
30A7D2:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30A7D8)
30A7D4:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30A7D6:  LDR             R0, [R0]; CGangWars::Gang1 ...
30A7D8:  LDR             R0, [R0]; CGangWars::Gang1
30A7DA:  ORR.W           R0, R0, #2
30A7DE:  CMP             R0, #2
30A7E0:  BNE.W           loc_30A996
30A7E4:  LDR             R0, =(_ZN9CGangWars6State2E_ptr - 0x30A7EA)
30A7E6:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30A7E8:  LDR             R0, [R0]; CGangWars::State2 ...
30A7EA:  LDR             R0, [R0]; CGangWars::State2
30A7EC:  CMP             R0, #0
30A7EE:  BNE.W           loc_30A996
30A7F2:  LDR             R0, =(TheText_ptr - 0x30A7FC)
30A7F4:  ADR             R4, aGwProv; "GW_PROV"
30A7F6:  STR             R2, [SP,#0x40+var_2C]; unsigned __int16 *
30A7F8:  ADD             R0, PC; TheText_ptr
30A7FA:  MOV             R1, R4; CKeyGen *
30A7FC:  LDR             R5, [R0]; TheText
30A7FE:  MOV             R0, R5; this
30A800:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30A804:  MOV             R1, R0; char *
30A806:  MOVS            R6, #1
30A808:  MOV             R0, R4; this
30A80A:  MOVW            R2, #(elf_hash_bucket+0x1098); unsigned __int16 *
30A80E:  MOVS            R3, #1; unsigned int
30A810:  STR             R6, [SP,#0x40+var_40]; unsigned __int16
30A812:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
30A816:  MOV             R0, R5; this
30A818:  MOV             R1, R4; CKeyGen *
30A81A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30A81E:  MOV             R1, R0; char *
30A820:  MOV.W           R2, #0xFFFFFFFF
30A824:  MOVS            R0, #0
30A826:  STRD.W          R2, R2, [SP,#0x40+var_40]; int
30A82A:  STRD.W          R2, R2, [SP,#0x40+var_38]; int
30A82E:  MOV.W           R2, #0xFFFFFFFF; unsigned __int16 *
30A832:  STR             R0, [SP,#0x40+var_30]; int
30A834:  MOV             R0, R4; this
30A836:  MOV.W           R3, #0xFFFFFFFF; int
30A83A:  BLX             j__ZN9CMessages23AddToPreviousBriefArrayEPKcPtiiiiiiS2_; CMessages::AddToPreviousBriefArray(char const*,ushort *,int,int,int,int,int,int,ushort *)
30A83E:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x30A846)
30A840:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30A84C)
30A842:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
30A844:  LDR             R2, =(_ZN9CGangWars5StateE_ptr - 0x30A84E)
30A846:  LDR             R3, =(_ZN9CGangWars11TimeStartedE_ptr - 0x30A852)
30A848:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30A84A:  ADD             R2, PC; _ZN9CGangWars5StateE_ptr
30A84C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
30A84E:  ADD             R3, PC; _ZN9CGangWars11TimeStartedE_ptr
30A850:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30A852:  LDR             R2, [R2]; CGangWars::State ...
30A854:  LDR             R3, [R3]; CGangWars::TimeStarted ...
30A856:  LDR             R4, [R0]; CPools::ms_pPedPool
30A858:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds
30A85A:  STR             R6, [R2]; CGangWars::State
30A85C:  STR             R0, [R3]; CGangWars::TimeStarted
30A85E:  LDR             R0, [R4,#8]
30A860:  CBZ             R0, loc_30A8BC
30A862:  MOVW            R1, #0x7CC
30A866:  SUBS            R6, R0, #1
30A868:  MULS            R1, R0
30A86A:  SUB.W           R5, R1, #0x38C
30A86E:  LDR             R0, [R4,#4]
30A870:  LDRSB           R0, [R0,R6]
30A872:  CMP             R0, #0
30A874:  BLT             loc_30A8B2
30A876:  LDR.W           R11, [R4]
30A87A:  ADD.W           R8, R11, R5
30A87E:  CMP.W           R8, #0x440
30A882:  BEQ             loc_30A8B2
30A884:  SUB.W           R0, R8, #0x440; this
30A888:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
30A88C:  CMP             R0, #1
30A88E:  BEQ             loc_30A8B2
30A890:  LDR.W           R0, [R8,#0x15C]
30A894:  BIC.W           R0, R0, #1
30A898:  CMP             R0, #4
30A89A:  BNE             loc_30A8B2
30A89C:  LDR.W           R0, [R11,R5]
30A8A0:  MOV.W           R1, #0x390; int
30A8A4:  ADDS            R0, #4; this
30A8A6:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
30A8AA:  CMP             R0, #0
30A8AC:  ITT NE
30A8AE:  MOVNE           R1, #7
30A8B0:  STRNE           R1, [R0,#0xC]
30A8B2:  SUBS            R6, #1
30A8B4:  SUBW            R5, R5, #0x7CC
30A8B8:  ADDS            R0, R6, #1
30A8BA:  BNE             loc_30A86E
30A8BC:  MOVW            R1, #0x8889
30A8C0:  LDR             R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30A8D2)
30A8C2:  MOVT            R1, #0x8888
30A8C6:  CMP.W           R9, #0x2C ; ','
30A8CA:  SMMLA.W         R1, R1, R9, R9
30A8CE:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30A8D0:  LDR             R0, [R0]; CGangWars::WarFerocity ...
30A8D2:  MOV.W           R2, R1,ASR#3
30A8D6:  ADD.W           R1, R2, R1,LSR#31
30A8DA:  IT GT
30A8DC:  MOVGT           R1, #2; unsigned __int16
30A8DE:  STR             R1, [R0]; CGangWars::WarFerocity
30A8E0:  MOVS            R0, #(dword_B4+1); this
30A8E2:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30A8E6:  VMOV            S0, R0
30A8EA:  LDR             R2, [SP,#0x40+var_2C]
30A8EC:  VCMPE.F32       S0, #0.0
30A8F0:  VMRS            APSR_nzcv, FPSCR
30A8F4:  BGE             loc_30A92E
30A8F6:  LDR             R0, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x30A900)
30A8F8:  VLDR            S2, =0.4
30A8FC:  ADD             R0, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
30A8FE:  LDR             R0, [R0]; CGangWars::TerritoryUnderControlPercentage ...
30A900:  VLDR            S0, [R0]
30A904:  VCMPE.F32       S0, S2
30A908:  VMRS            APSR_nzcv, FPSCR
30A90C:  BLE             loc_30A924
30A90E:  VMOV.F32        S2, #0.5
30A912:  VCMPE.F32       S0, S2
30A916:  VMRS            APSR_nzcv, FPSCR
30A91A:  BLT             loc_30A92E
30A91C:  LDR             R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30A924)
30A91E:  MOVS            R1, #5
30A920:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30A922:  B               loc_30A92A
30A924:  LDR             R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30A92C)
30A926:  MOVS            R1, #0
30A928:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30A92A:  LDR             R0, [R0]; CGangWars::WarFerocity ...
30A92C:  STR             R1, [R0]; CGangWars::WarFerocity
30A92E:  LDR             R0, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30A934)
30A930:  ADD             R0, PC; _ZN9CGangWars16bTrainingMissionE_ptr
30A932:  LDR             R0, [R0]; CGangWars::bTrainingMission ...
30A934:  LDRB            R0, [R0]; CGangWars::bTrainingMission
30A936:  CBZ             R0, loc_30A942
30A938:  LDR             R0, =(_ZN9CGangWars11WarFerocityE_ptr - 0x30A940)
30A93A:  MOVS            R1, #0
30A93C:  ADD             R0, PC; _ZN9CGangWars11WarFerocityE_ptr
30A93E:  LDR             R0, [R0]; CGangWars::WarFerocity ...
30A940:  STR             R1, [R0]; CGangWars::WarFerocity
30A942:  MOV             R0, #0xAAAAAAAB
30A94A:  UMULL.W         R0, R1, R10, R0
30A94E:  CMP.W           R2, R1,LSR#1
30A952:  BLE             loc_30A964
30A954:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30A95C)
30A956:  LDR             R1, =(_ZN9CGangWars5Gang2E_ptr - 0x30A95E)
30A958:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30A95A:  ADD             R1, PC; _ZN9CGangWars5Gang2E_ptr
30A95C:  LDR             R0, [R0]; CGangWars::Gang1 ...
30A95E:  LDR             R1, [R1]; int
30A960:  LDR             R0, [R0]; CGangWars::Gang1
30A962:  STR             R0, [R1]; CGangWars::Gang2
30A964:  MOVS            R0, #0; this
30A966:  MOVS            R4, #0
30A968:  BLX             j__ZN9CGangWars17TellGangMembersToEi; CGangWars::TellGangMembersTo(int)
30A96C:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30A97A)
30A96E:  MOVS            R3, #0xFF
30A970:  LDR             R1, =(pDriveByCar_ptr - 0x30A97C)
30A972:  MOVT            R3, #0xA000
30A976:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30A978:  ADD             R1, PC; pDriveByCar_ptr
30A97A:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30A97C:  LDR             R1, [R1]; pDriveByCar
30A97E:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver
30A980:  LDRH.W          R2, [R0,#0xF]
30A984:  STR.W           R3, [R0,#0xB]
30A988:  BIC.W           R2, R2, #0x60 ; '`'
30A98C:  ORR.W           R2, R2, #0x40 ; '@'
30A990:  STRH.W          R2, [R0,#0xF]
30A994:  STR             R4, [R1]
30A996:  ADD             SP, SP, #0x24 ; '$'
30A998:  POP.W           {R8-R11}
30A99C:  POP             {R4-R7,PC}
