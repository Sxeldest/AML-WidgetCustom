; =========================================================
; Game Engine Function: _ZN9CGangWars37UpdateTerritoryUnderControlPercentageEv
; Address            : 0x30C6F0 - 0x30C85A
; =========================================================

30C6F0:  PUSH            {R4-R7,LR}
30C6F2:  ADD             R7, SP, #0xC
30C6F4:  PUSH.W          {R8-R10}
30C6F8:  VPUSH           {D8}
30C6FC:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x30C702)
30C6FE:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
30C700:  LDR             R0, [R0]; CTheZones::TotalNumberOfNavigationZones ...
30C702:  LDRH.W          R12, [R0]; CTheZones::TotalNumberOfNavigationZones
30C706:  CMP.W           R12, #0
30C70A:  BEQ             loc_30C766
30C70C:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x30C71E)
30C70E:  MOV.W           R10, #0
30C712:  MOV.W           R9, #0
30C716:  MOV.W           R8, #0
30C71A:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
30C71C:  MOVS            R3, #0
30C71E:  LDR             R0, [R0]; CTheZones::NavigationZoneArray ...
30C720:  ADD.W           R1, R0, #0x1C
30C724:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x30C72A)
30C726:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
30C728:  LDR             R2, [R0]; CTheZones::ZoneInfoArray ...
30C72A:  LDRH            R0, [R1]
30C72C:  CBZ             R0, loc_30C75C
30C72E:  ADD.W           R0, R0, R0,LSL#4
30C732:  LDRB            R5, [R2,R0]
30C734:  ADD             R0, R2
30C736:  LDRB            R4, [R0,#1]
30C738:  LDRB            R6, [R0,#2]
30C73A:  CMP             R4, #0
30C73C:  ADD.W           R0, R6, R5
30C740:  IT EQ
30C742:  CMPEQ           R0, #0
30C744:  BEQ             loc_30C75C
30C746:  CMP             R0, R4
30C748:  BLS             loc_30C758
30C74A:  CMP             R5, R6
30C74C:  ITE LS
30C74E:  ADDLS.W         R8, R8, #1
30C752:  ADDHI.W         R9, R9, #1
30C756:  B               loc_30C75C
30C758:  ADD.W           R10, R10, #1
30C75C:  ADDS            R3, #1
30C75E:  ADDS            R1, #0x20 ; ' '
30C760:  CMP             R3, R12
30C762:  BLT             loc_30C72A
30C764:  B               loc_30C772
30C766:  MOV.W           R8, #0
30C76A:  MOV.W           R9, #0
30C76E:  MOV.W           R10, #0
30C772:  VMOV            S0, R10
30C776:  MOVS            R0, #0xEC
30C778:  VCVT.F32.S32    S16, S0
30C77C:  VMOV            R1, S16; unsigned __int16
30C780:  NOP
30C782:  NOP
30C784:  MOVS            R0, #(dword_EC+1); this
30C786:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30C78A:  VMOV            S0, R0
30C78E:  VCMPE.F32       S0, S16
30C792:  VMOV.F32        S0, S16
30C796:  VMRS            APSR_nzcv, FPSCR
30C79A:  BLT             loc_30C7A6
30C79C:  MOVS            R0, #(dword_EC+1); this
30C79E:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30C7A2:  VMOV            S0, R0
30C7A6:  VMOV            R1, S0
30C7AA:  MOVS            R0, #0xED
30C7AC:  NOP
30C7AE:  NOP
30C7B0:  ADD.W           R0, R9, R8
30C7B4:  ADDS.W          R0, R0, R10
30C7B8:  BEQ             loc_30C846
30C7BA:  VMOV            S0, R0
30C7BE:  LDR             R0, =(_ZN9CGangWars11GangRatingsE_ptr - 0x30C7D0)
30C7C0:  LDR             R1, =(_ZN9CGangWars18GangRatingStrengthE_ptr - 0x30C7CE)
30C7C2:  MOVS            R6, #1
30C7C4:  VCVT.F32.S32    S0, S0
30C7C8:  LDR             R2, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x30C7D2)
30C7CA:  ADD             R1, PC; _ZN9CGangWars18GangRatingStrengthE_ptr
30C7CC:  ADD             R0, PC; _ZN9CGangWars11GangRatingsE_ptr
30C7CE:  ADD             R2, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
30C7D0:  MOVS            R5, #2
30C7D2:  LDR             R3, [R0]; CGangWars::GangRatings ...
30C7D4:  MOVS            R0, #0
30C7D6:  LDR             R1, [R1]; CGangWars::GangRatingStrength ...
30C7D8:  LDR             R2, [R2]; CGangWars::TerritoryUnderControlPercentage ...
30C7DA:  STRD.W          R6, R0, [R3]; CGangWars::GangRatings
30C7DE:  VDIV.F32        S0, S16, S0
30C7E2:  STR             R5, [R3,#(dword_7A2344 - 0x7A233C)]
30C7E4:  STRD.W          R10, R9, [R1]; CGangWars::GangRatingStrength
30C7E8:  MOVS            R3, #0
30C7EA:  STR.W           R8, [R1,#(dword_7A2350 - 0x7A2348)]
30C7EE:  LDR             R1, =(_ZN9CGangWars11GangRatingsE_ptr - 0x30C7F4)
30C7F0:  ADD             R1, PC; _ZN9CGangWars11GangRatingsE_ptr
30C7F2:  LDR.W           R12, [R1]; CGangWars::GangRatings ...
30C7F6:  VSTR            S0, [R2]
30C7FA:  LDR             R2, =(_ZN9CGangWars18GangRatingStrengthE_ptr - 0x30C800)
30C7FC:  ADD             R2, PC; _ZN9CGangWars18GangRatingStrengthE_ptr
30C7FE:  LDR.W           LR, [R2]; CGangWars::GangRatingStrength ...
30C802:  B               loc_30C824
30C804:  LSLS            R0, R0, #0x18
30C806:  MOV.W           R3, #0
30C80A:  MOV.W           R0, #0
30C80E:  BNE             loc_30C824
30C810:  B               loc_30C850
30C812:  LDR.W           R0, [R6,#-4]
30C816:  LDR             R5, [R6]
30C818:  STR.W           R5, [R6,#-4]
30C81C:  STR             R0, [R6]
30C81E:  MOVS            R0, #1
30C820:  STRD.W          R2, R1, [R4,#-8]
30C824:  ADD.W           R1, LR, R3,LSL#2
30C828:  ADD.W           R6, R12, R3,LSL#2
30C82C:  ADDS            R5, R1, #4
30C82E:  CMP             R3, #2
30C830:  BGE             loc_30C804
30C832:  ADDS            R4, R5, #4
30C834:  LDR.W           R1, [R5,#-4]
30C838:  LDR             R2, [R5]
30C83A:  ADDS            R6, #4
30C83C:  ADDS            R3, #1
30C83E:  MOV             R5, R4
30C840:  CMP             R1, R2
30C842:  BGE             loc_30C82E
30C844:  B               loc_30C812
30C846:  LDR             R0, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x30C84E)
30C848:  MOVS            R1, #0
30C84A:  ADD             R0, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
30C84C:  LDR             R0, [R0]; CGangWars::TerritoryUnderControlPercentage ...
30C84E:  STR             R1, [R0]; CGangWars::TerritoryUnderControlPercentage
30C850:  VPOP            {D8}
30C854:  POP.W           {R8-R10}
30C858:  POP             {R4-R7,PC}
