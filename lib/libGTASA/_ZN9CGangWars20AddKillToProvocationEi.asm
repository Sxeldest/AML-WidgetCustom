; =========================================================
; Game Engine Function: _ZN9CGangWars20AddKillToProvocationEi
; Address            : 0x30DFD0 - 0x30E060
; =========================================================

30DFD0:  PUSH            {R4,R6,R7,LR}
30DFD2:  ADD             R7, SP, #8
30DFD4:  MOV             R4, R0
30DFD6:  LDR             R0, =(_ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr - 0x30DFDC)
30DFD8:  ADD             R0, PC; _ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr
30DFDA:  LDR             R0, [R0]; CGangWars::bCanTriggerGangWarWhenOnAMission ...
30DFDC:  LDRB            R0, [R0]; this
30DFDE:  CBZ             R0, loc_30E03E
30DFE0:  CMP             R4, #9
30DFE2:  IT NE
30DFE4:  CMPNE           R4, #7
30DFE6:  BNE             locret_30E046
30DFE8:  LDR             R0, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30DFEE)
30DFEA:  ADD             R0, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30DFEC:  LDR             R0, [R0]; CGangWars::NumSpecificZones ...
30DFEE:  LDR.W           LR, [R0]; CGangWars::NumSpecificZones
30DFF2:  CMP.W           LR, #0
30DFF6:  BEQ             loc_30E048
30DFF8:  CMP.W           LR, #1
30DFFC:  BLT             locret_30E046
30DFFE:  LDR             R1, =(_ZN9CGangWars14aSpecificZonesE_ptr - 0x30E00C)
30E000:  SUB.W           R12, R4, #7
30E004:  LDR             R4, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x30E00E)
30E006:  MOVS            R2, #0
30E008:  ADD             R1, PC; _ZN9CGangWars14aSpecificZonesE_ptr
30E00A:  ADD             R4, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
30E00C:  LDR             R3, [R1]; CGangWars::aSpecificZones ...
30E00E:  LDR             R1, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x30E016)
30E010:  LDR             R4, [R4]; CTheZones::NavigationZoneArray ...
30E012:  ADD             R1, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
30E014:  LDR             R1, [R1]; CTheZones::ZoneInfoArray ...
30E016:  B               loc_30E020
30E018:  ADDS            R2, #1
30E01A:  CMP             R2, LR
30E01C:  IT GE
30E01E:  POPGE           {R4,R6,R7,PC}
30E020:  LDR.W           R0, [R3,R2,LSL#2]
30E024:  ADD.W           R0, R4, R0,LSL#5
30E028:  LDRH            R0, [R0,#0x1C]
30E02A:  ADD.W           R0, R0, R0,LSL#4
30E02E:  ADD             R0, R1
30E030:  LDRB.W          R0, [R0,R12]
30E034:  CMP             R0, #0
30E036:  BEQ             loc_30E018
30E038:  LDR             R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30E03E)
30E03A:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30E03C:  B               loc_30E04C
30E03E:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
30E042:  CMP             R0, #0
30E044:  BEQ             loc_30DFE0
30E046:  POP             {R4,R6,R7,PC}
30E048:  LDR             R0, =(_ZN9CGangWars11ProvocationE_ptr - 0x30E04E)
30E04A:  ADD             R0, PC; _ZN9CGangWars11ProvocationE_ptr
30E04C:  VMOV.F32        S0, #1.0
30E050:  LDR             R0, [R0]; CGangWars::Provocation ...
30E052:  VLDR            S2, [R0]
30E056:  VADD.F32        S0, S2, S0
30E05A:  VSTR            S0, [R0]
30E05E:  POP             {R4,R6,R7,PC}
