; =========================================================
; Game Engine Function: _ZN6CCheat15WeaponSlotCheatEv
; Address            : 0x2FE774 - 0x2FE91E
; =========================================================

2FE774:  PUSH            {R4-R7,LR}
2FE776:  ADD             R7, SP, #0xC
2FE778:  PUSH.W          {R11}
2FE77C:  SUB.W           SP, SP, #0x510
2FE780:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FE788)
2FE782:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FE78A)
2FE784:  ADD             R0, PC; __stack_chk_guard_ptr
2FE786:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FE788:  LDR             R0, [R0]; __stack_chk_guard
2FE78A:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2FE78C:  LDR             R0, [R0]
2FE78E:  STR.W           R0, [R7,#var_14]
2FE792:  LDR.W           R0, [R1,#(dword_6F39FC - 0x6F3794)]; this
2FE796:  ADD.W           R1, SP, #0x520+var_118; char *
2FE79A:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FE79E:  LDR             R4, =(dword_6866B8 - 0x2FE7A6)
2FE7A0:  SUBS            R0, #0x64 ; 'd'
2FE7A2:  ADD             R4, PC; dword_6866B8
2FE7A4:  STR             R0, [R4]
2FE7A6:  MOVS            R0, #0x9A
2FE7A8:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FE7AC:  LDR             R5, [R4]
2FE7AE:  MOV.W           R12, #1
2FE7B2:  MOV.W           LR, #0
2FE7B6:  MOVS            R4, #0
2FE7B8:  CMP             R5, #9; switch 10 cases
2FE7BA:  BHI             def_2FE7C4; jumptable 002FE7C4 default case
2FE7BC:  ADR             R3, aAk47; "AK47"
2FE7BE:  MOVS            R1, #2
2FE7C0:  ADR             R0, aM4; "M4"
2FE7C2:  MOVS            R2, #1
2FE7C4:  TBB.W           [PC,R5]; switch jump
2FE7C8:  DCB 5; jump table for switch statement
2FE7C9:  DCB 0x2B
2FE7CA:  DCB 0x31
2FE7CB:  DCB 0x38
2FE7CC:  DCB 0x8E
2FE7CD:  DCB 0x43
2FE7CE:  DCB 0x4A
2FE7CF:  DCB 0x54
2FE7D0:  DCB 0x76
2FE7D1:  DCB 0x5E
2FE7D2:  LDR             R0, =(aNightstick - 0x2FE7DA); jumptable 002FE7C4 case 0
2FE7D4:  LDR             R1, =(aBrassKnuckles - 0x2FE7DE); "BRASS KNUCKLES"
2FE7D6:  ADD             R0, PC; "NIGHTSTICK"
2FE7D8:  LDR             R2, =(aPoolCue - 0x2FE7E6); "POOL CUE"
2FE7DA:  ADD             R1, PC; "BRASS KNUCKLES"
2FE7DC:  LDR             R4, =(aBaseballBat - 0x2FE7E8); "BASEBALL BAT"
2FE7DE:  VMOV.32         D17[0], R0
2FE7E2:  ADD             R2, PC; "POOL CUE"
2FE7E4:  ADD             R4, PC; "BASEBALL BAT"
2FE7E6:  LDR             R5, =(aShovel_0 - 0x2FE7F4); "SHOVEL"
2FE7E8:  VMOV.32         D16[0], R1
2FE7EC:  LDR             R1, =(aKnife_0 - 0x2FE7FE); "KNIFE"
2FE7EE:  LDR             R3, =(aChainsaw_0 - 0x2FE808); "CHAINSAW"
2FE7F0:  ADD             R5, PC; "SHOVEL"
2FE7F2:  VMOV.32         D17[1], R2
2FE7F6:  LDR             R2, =(aGolfClub - 0x2FE806); "GOLF CLUB"
2FE7F8:  LDR             R0, =(aKatana - 0x2FE80A); "KATANA"
2FE7FA:  ADD             R1, PC; "KNIFE"
2FE7FC:  VMOV.32         D16[1], R4
2FE800:  ADD             R4, SP, #0x520+var_518
2FE802:  ADD             R2, PC; "GOLF CLUB"
2FE804:  ADD             R3, PC; "CHAINSAW"
2FE806:  ADD             R0, PC; "KATANA"
2FE808:  VST1.32         {D16-D17}, [R4]!
2FE80C:  STR             R2, [R4]
2FE80E:  MOVS            R2, #8
2FE810:  STRD.W          R5, R1, [SP,#0x520+var_504]
2FE814:  MOVS            R1, #9
2FE816:  MOVS            R4, #7
2FE818:  B               loc_2FE8E4; jumptable 002FE7C4 case 4
2FE81A:  MOVS            R1, #0; jumptable 002FE7C4 default case
2FE81C:  B               loc_2FE8EE
2FE81E:  LDR             R3, =(aDesertEagle - 0x2FE828); jumptable 002FE7C4 case 1
2FE820:  ADR             R1, dword_2FEA28
2FE822:  LDR             R0, =(aSlienced9mm - 0x2FE82A); "SLIENCED 9MM"
2FE824:  ADD             R3, PC; "DESERT EAGLE"
2FE826:  ADD             R0, PC; "SLIENCED 9MM"
2FE828:  B               loc_2FE844
2FE82A:  LDR             R1, =(aTec9 - 0x2FE834); jumptable 002FE7C4 case 2
2FE82C:  ADR             R3, dword_2FEA1C
2FE82E:  LDR             R0, =(aMicroSmg - 0x2FE838); "MICRO SMG"
2FE830:  ADD             R1, PC; "TEC-9"
2FE832:  STR             R1, [SP,#0x520+var_518]
2FE834:  ADD             R0, PC; "MICRO SMG"
2FE836:  B               loc_2FE846
2FE838:  LDR             R1, =(aSawnoffShotgun+8 - 0x2FE842); jumptable 002FE7C4 case 3
2FE83A:  LDR             R3, =(aSpas - 0x2FE844); "SPAS"
2FE83C:  LDR             R0, =(aSawnoffShotgun - 0x2FE846); "SAWNOFF SHOTGUN"
2FE83E:  ADD             R1, PC; "SHOTGUN"
2FE840:  ADD             R3, PC; "SPAS"
2FE842:  ADD             R0, PC; "SAWNOFF SHOTGUN"
2FE844:  STR             R1, [SP,#0x520+var_518]
2FE846:  MOVS            R2, #2
2FE848:  MOVS            R1, #3
2FE84A:  MOVS            R4, #1
2FE84C:  B               loc_2FE8E4; jumptable 002FE7C4 case 4
2FE84E:  LDR             R3, =(aSniperRifle - 0x2FE85A); jumptable 002FE7C4 case 5
2FE850:  MOVS            R2, #1
2FE852:  MOVS            R1, #2
2FE854:  ADR             R0, aRifle; "RIFLE"
2FE856:  ADD             R3, PC; "SNIPER RIFLE"
2FE858:  MOVS            R4, #0
2FE85A:  B               loc_2FE8E4; jumptable 002FE7C4 case 4
2FE85C:  ADR             R0, aGrenade; jumptable 002FE7C4 case 6
2FE85E:  STR             R0, [SP,#0x520+var_514]
2FE860:  ADR             R0, aMolotovCocktai; "MOLOTOV COCKTAIL"
2FE862:  STR             R0, [SP,#0x520+var_518]
2FE864:  ADR             R3, aC4; "C4"
2FE866:  MOVS            R2, #3
2FE868:  MOVS            R1, #4
2FE86A:  ADR             R0, aTearGas; "TEAR GAS"
2FE86C:  MOVS            R4, #2
2FE86E:  B               loc_2FE8E4; jumptable 002FE7C4 case 4
2FE870:  ADR             R0, aMiniGun; jumptable 002FE7C4 case 7
2FE872:  STR             R0, [SP,#0x520+var_514]
2FE874:  ADR             R0, aFlameThrower; "FLAME THROWER"
2FE876:  STR             R0, [SP,#0x520+var_518]
2FE878:  ADR             R3, aHsRocketLaunch; "HS ROCKET LAUNCHER"
2FE87A:  MOVS            R2, #3
2FE87C:  MOVS            R1, #4
2FE87E:  ADR             R0, aRocketLauncher; "ROCKET LAUNCHER"
2FE880:  MOVS            R4, #2
2FE882:  B               loc_2FE8E4; jumptable 002FE7C4 case 4
2FE884:  LDR             R0, =(aDildo1 - 0x2FE88E); jumptable 002FE7C4 case 9
2FE886:  ADR             R3, aVibra2; "VIBRA2"
2FE888:  LDR             R1, =(aCane - 0x2FE892); "CANE"
2FE88A:  ADD             R0, PC; "DILDO1"
2FE88C:  LDR             R2, =(aDildo2 - 0x2FE89A); "DILDO2"
2FE88E:  ADD             R1, PC; "CANE"
2FE890:  VMOV.32         D17[0], R0
2FE894:  LDR             R0, =(aPGrassweeflowe+0xA - 0x2FE8A0); "FLOWERS"
2FE896:  ADD             R2, PC; "DILDO2"
2FE898:  VMOV.32         D16[0], R1
2FE89C:  ADD             R0, PC; "FLOWERS"
2FE89E:  MOVS            R1, #6
2FE8A0:  VMOV.32         D17[1], R2
2FE8A4:  MOVS            R2, #5
2FE8A6:  VMOV.32         D16[1], R0
2FE8AA:  ADD             R0, SP, #0x520+var_518
2FE8AC:  VST1.32         {D16-D17}, [R0]
2FE8B0:  ADR             R0, aVibra1; "VIBRA1"
2FE8B2:  B               loc_2FE8E2
2FE8B4:  LDR             R0, =(aFireExtinguish - 0x2FE8BE); jumptable 002FE7C4 case 8
2FE8B6:  ADR             R3, aNightVisionGog; "NIGHT-VISION GOGGLES"
2FE8B8:  LDR             R1, =(aSprayCan - 0x2FE8C2); "SPRAY CAN"
2FE8BA:  ADD             R0, PC; "FIRE EXTINGUISHER"
2FE8BC:  LDR             R2, =(aParachute_0 - 0x2FE8CA); "PARACHUTE"
2FE8BE:  ADD             R1, PC; "SPRAY CAN"
2FE8C0:  VMOV.32         D17[0], R0
2FE8C4:  LDR             R0, =(aCamera_0 - 0x2FE8D0); "CAMERA"
2FE8C6:  ADD             R2, PC; "PARACHUTE"
2FE8C8:  VMOV.32         D16[0], R1
2FE8CC:  ADD             R0, PC; "CAMERA"
2FE8CE:  MOVS            R1, #6
2FE8D0:  VMOV.32         D17[1], R2
2FE8D4:  MOVS            R2, #5
2FE8D6:  VMOV.32         D16[1], R0
2FE8DA:  ADD             R0, SP, #0x520+var_518
2FE8DC:  VST1.32         {D16-D17}, [R0]
2FE8E0:  ADR             R0, aThermalGoggles; "THERMAL GOGGLES"
2FE8E2:  MOVS            R4, #4
2FE8E4:  ADD             R5, SP, #0x520+var_518; jumptable 002FE7C4 case 4
2FE8E6:  STR.W           R0, [R5,R4,LSL#2]
2FE8EA:  STR.W           R3, [R5,R2,LSL#2]
2FE8EE:  ADD             R0, SP, #0x520+var_518
2FE8F0:  MOVS            R2, #0x97
2FE8F2:  MOVS            R3, #0
2FE8F4:  STRD.W          LR, R12, [SP,#0x520+var_520]
2FE8F8:  BLX             j__ZN15CTouchInterface20CreateListTextWidgetEPPKciNS_9WidgetIDsEbbb; CTouchInterface::CreateListTextWidget(char const**,int,CTouchInterface::WidgetIDs,bool,bool,bool)
2FE8FC:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
2FE900:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FE90A)
2FE902:  LDR.W           R1, [R7,#var_14]
2FE906:  ADD             R0, PC; __stack_chk_guard_ptr
2FE908:  LDR             R0, [R0]; __stack_chk_guard
2FE90A:  LDR             R0, [R0]
2FE90C:  SUBS            R0, R0, R1
2FE90E:  ITTT EQ
2FE910:  ADDEQ.W         SP, SP, #0x510
2FE914:  POPEQ.W         {R11}
2FE918:  POPEQ           {R4-R7,PC}
2FE91A:  BLX             __stack_chk_fail
