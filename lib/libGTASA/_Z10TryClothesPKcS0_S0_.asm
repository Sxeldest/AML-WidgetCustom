; =========================================================
; Game Engine Function: _Z10TryClothesPKcS0_S0_
; Address            : 0x4575D4 - 0x45784A
; =========================================================

4575D4:  PUSH            {R4-R7,LR}
4575D6:  ADD             R7, SP, #0xC
4575D8:  PUSH.W          {R8-R11}
4575DC:  SUB             SP, SP, #4
4575DE:  MOV             R5, R0
4575E0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4575EC)
4575E2:  ADR.W           R9, dword_457850
4575E6:  MOV             R4, R1
4575E8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4575EA:  MOV             R11, R2
4575EC:  MOV             R1, R9; char *
4575EE:  LDR             R0, [R0]; CWorld::Players ...
4575F0:  LDR             R0, [R0]; CWorld::Players
4575F2:  LDR.W           R6, [R0,#0x444]
4575F6:  MOV             R0, R5; char *
4575F8:  BLX             strcmp
4575FC:  LDR.W           R8, =(aPlayerTorso+7 - 0x457612); "torso"
457600:  MOV             R10, R0
457602:  CMP.W           R10, #0
457606:  MOV             R0, R4; char *
457608:  MOV             R1, R9; char *
45760A:  IT NE
45760C:  MOVNE           R10, R5
45760E:  ADD             R8, PC; "torso"
457610:  MOV             R5, R6
457612:  BLX             strcmp
457616:  MOV             R9, R0
457618:  CMP.W           R9, #0
45761C:  MOV             R0, R11; char *
45761E:  MOV             R1, R8; char *
457620:  IT NE
457622:  MOVNE           R9, R4
457624:  BLX             strcmp
457628:  CBNZ            R0, loc_45765A
45762A:  LDR             R4, [R5,#4]
45762C:  CMP.W           R10, #0
457630:  BEQ             loc_457648
457632:  MOV             R0, R10; this
457634:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457638:  MOV             R8, R0
45763A:  CMP.W           R9, #0
45763E:  BEQ             loc_457652
457640:  MOV             R0, R9; this
457642:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457646:  B               loc_457654
457648:  MOV.W           R8, #0
45764C:  CMP.W           R9, #0
457650:  BNE             loc_457640
457652:  MOVS            R0, #0
457654:  STR             R0, [R4]
457656:  STR.W           R8, [R4,#0x28]
45765A:  LDR             R1, =(aPlayerLegs+7 - 0x457662); "legs"
45765C:  MOV             R0, R11; char *
45765E:  ADD             R1, PC; char *
457660:  BLX             strcmp
457664:  CBNZ            R0, loc_457696
457666:  LDR             R4, [R5,#4]
457668:  CMP.W           R10, #0
45766C:  BEQ             loc_457684
45766E:  MOV             R0, R10; this
457670:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457674:  MOV             R8, R0
457676:  CMP.W           R9, #0
45767A:  BEQ             loc_45768E
45767C:  MOV             R0, R9; this
45767E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457682:  B               loc_457690
457684:  MOV.W           R8, #0
457688:  CMP.W           R9, #0
45768C:  BNE             loc_45767C
45768E:  MOVS            R0, #0
457690:  STR             R0, [R4,#0xC]
457692:  STR.W           R8, [R4,#0x30]
457696:  LDR             R1, =(aPlayerFeet+7 - 0x45769E); "feet"
457698:  MOV             R0, R11; char *
45769A:  ADD             R1, PC; char *
45769C:  BLX             strcmp
4576A0:  CBNZ            R0, loc_4576D2
4576A2:  LDR             R4, [R5,#4]
4576A4:  CMP.W           R10, #0
4576A8:  BEQ             loc_4576C0
4576AA:  MOV             R0, R10; this
4576AC:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4576B0:  MOV             R8, R0
4576B2:  CMP.W           R9, #0
4576B6:  BEQ             loc_4576CA
4576B8:  MOV             R0, R9; this
4576BA:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4576BE:  B               loc_4576CC
4576C0:  MOV.W           R8, #0
4576C4:  CMP.W           R9, #0
4576C8:  BNE             loc_4576B8
4576CA:  MOVS            R0, #0
4576CC:  STR             R0, [R4,#0x10]
4576CE:  STR.W           R8, [R4,#0x34]
4576D2:  LDR             R1, =(aShead+1 - 0x4576DA); "head"
4576D4:  MOV             R0, R11; char *
4576D6:  ADD             R1, PC; "head"
4576D8:  BLX             strcmp
4576DC:  CBNZ            R0, loc_45770E
4576DE:  LDR             R4, [R5,#4]
4576E0:  CMP.W           R10, #0
4576E4:  BEQ             loc_4576FC
4576E6:  MOV             R0, R10; this
4576E8:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4576EC:  MOV             R8, R0
4576EE:  CMP.W           R9, #0
4576F2:  BEQ             loc_457706
4576F4:  MOV             R0, R9; this
4576F6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4576FA:  B               loc_457708
4576FC:  MOV.W           R8, #0
457700:  CMP.W           R9, #0
457704:  BNE             loc_4576F4
457706:  MOVS            R0, #0
457708:  STR             R0, [R4,#4]
45770A:  STR.W           R8, [R4,#0x2C]
45770E:  LDR             R1, =(aNecklace - 0x457716); "necklace"
457710:  MOV             R0, R11; char *
457712:  ADD             R1, PC; "necklace"
457714:  BLX             strcmp
457718:  CBNZ            R0, loc_45774A
45771A:  LDR             R4, [R5,#4]
45771C:  CMP.W           R10, #0
457720:  BEQ             loc_457738
457722:  MOV             R0, R10; this
457724:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457728:  MOV             R8, R0
45772A:  CMP.W           R9, #0
45772E:  BEQ             loc_457742
457730:  MOV             R0, R9; this
457732:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457736:  B               loc_457744
457738:  MOV.W           R8, #0
45773C:  CMP.W           R9, #0
457740:  BNE             loc_457730
457742:  MOVS            R0, #0
457744:  STR             R0, [R4,#0x14]
457746:  STR.W           R8, [R4,#0x5C]
45774A:  LDR             R1, =(aStopwatch+4 - 0x457752); "watch"
45774C:  MOV             R0, R11; char *
45774E:  ADD             R1, PC; "watch"
457750:  BLX             strcmp
457754:  CBNZ            R0, loc_457786
457756:  LDR             R4, [R5,#4]
457758:  CMP.W           R10, #0
45775C:  BEQ             loc_457774
45775E:  MOV             R0, R10; this
457760:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457764:  MOV             R8, R0
457766:  CMP.W           R9, #0
45776A:  BEQ             loc_45777E
45776C:  MOV             R0, R9; this
45776E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457772:  B               loc_457780
457774:  MOV.W           R8, #0
457778:  CMP.W           R9, #0
45777C:  BNE             loc_45776C
45777E:  MOVS            R0, #0
457780:  STR             R0, [R4,#0x18]
457782:  STR.W           R8, [R4,#0x60]
457786:  LDR             R1, =(aGlasses - 0x45778E); "glasses"
457788:  MOV             R0, R11; char *
45778A:  ADD             R1, PC; "glasses"
45778C:  BLX             strcmp
457790:  CBNZ            R0, loc_4577C2
457792:  LDR             R4, [R5,#4]
457794:  CMP.W           R10, #0
457798:  BEQ             loc_4577B0
45779A:  MOV             R0, R10; this
45779C:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4577A0:  MOV             R8, R0
4577A2:  CMP.W           R9, #0
4577A6:  BEQ             loc_4577BA
4577A8:  MOV             R0, R9; this
4577AA:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4577AE:  B               loc_4577BC
4577B0:  MOV.W           R8, #0
4577B4:  CMP.W           R9, #0
4577B8:  BNE             loc_4577A8
4577BA:  MOVS            R0, #0
4577BC:  STR             R0, [R4,#0x1C]
4577BE:  STR.W           R8, [R4,#0x64]
4577C2:  ADR             R1, off_457870; char *
4577C4:  MOV             R0, R11; char *
4577C6:  BLX             strcmp
4577CA:  CBNZ            R0, loc_4577FC
4577CC:  LDR             R4, [R5,#4]
4577CE:  CMP.W           R10, #0
4577D2:  BEQ             loc_4577EA
4577D4:  MOV             R0, R10; this
4577D6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4577DA:  MOV             R8, R0
4577DC:  CMP.W           R9, #0
4577E0:  BEQ             loc_4577F4
4577E2:  MOV             R0, R9; this
4577E4:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4577E8:  B               loc_4577F6
4577EA:  MOV.W           R8, #0
4577EE:  CMP.W           R9, #0
4577F2:  BNE             loc_4577E2
4577F4:  MOVS            R0, #0
4577F6:  STR             R0, [R4,#0x20]
4577F8:  STR.W           R8, [R4,#0x68]
4577FC:  LDR             R1, =(aExtra1 - 0x457804); "extra1"
4577FE:  MOV             R0, R11; char *
457800:  ADD             R1, PC; "extra1"
457802:  BLX             strcmp
457806:  CBNZ            R0, loc_457834
457808:  LDR             R4, [R5,#4]
45780A:  CMP.W           R10, #0
45780E:  BEQ             loc_457826
457810:  MOV             R0, R10; this
457812:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457816:  MOV             R5, R0
457818:  CMP.W           R9, #0
45781C:  BEQ             loc_45782E
45781E:  MOV             R0, R9; this
457820:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457824:  B               loc_457830
457826:  MOVS            R5, #0
457828:  CMP.W           R9, #0
45782C:  BNE             loc_45781E
45782E:  MOVS            R0, #0
457830:  STR             R0, [R4,#0x24]
457832:  STR             R5, [R4,#0x6C]
457834:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x45783C)
457836:  MOVS            R1, #0; CPlayerPed *
457838:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
45783A:  LDR             R0, [R0]; CWorld::Players ...
45783C:  LDR             R0, [R0]; this
45783E:  ADD             SP, SP, #4
457840:  POP.W           {R8-R11}
457844:  POP.W           {R4-R7,LR}
457848:  B               _ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
