; =========================================================
; Game Engine Function: _ZN9CGangWars26CanPlayerStartAGangWarHereEP9CZoneInfo
; Address            : 0x30AA90 - 0x30AB0C
; =========================================================

30AA90:  PUSH            {R4,R6,R7,LR}
30AA92:  ADD             R7, SP, #8
30AA94:  LDR             R1, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30AA9A)
30AA96:  ADD             R1, PC; _ZN9CGangWars16bTrainingMissionE_ptr
30AA98:  LDR             R1, [R1]; CGangWars::bTrainingMission ...
30AA9A:  LDRB            R1, [R1]; CGangWars::bTrainingMission
30AA9C:  CBZ             R1, loc_30AABE
30AA9E:  LDR             R1, =(_ZN9CGangWars19ZoneInfoForTrainingE_ptr - 0x30AAA6)
30AAA0:  LDR             R2, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x30AAA8)
30AAA2:  ADD             R1, PC; _ZN9CGangWars19ZoneInfoForTrainingE_ptr
30AAA4:  ADD             R2, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
30AAA6:  LDR             R1, [R1]; CGangWars::ZoneInfoForTraining ...
30AAA8:  LDR             R2, [R2]; CTheZones::ZoneInfoArray ...
30AAAA:  LDR             R1, [R1]; CGangWars::ZoneInfoForTraining
30AAAC:  ADD.W           R1, R1, R1,LSL#4
30AAB0:  ADD             R2, R1
30AAB2:  MOVS            R1, #0
30AAB4:  CMP             R2, R0
30AAB6:  IT EQ
30AAB8:  MOVEQ           R1, #1
30AABA:  MOV             R0, R1
30AABC:  POP             {R4,R6,R7,PC}
30AABE:  LDR             R1, =(_ZN9CGangWars16NumSpecificZonesE_ptr - 0x30AAC4)
30AAC0:  ADD             R1, PC; _ZN9CGangWars16NumSpecificZonesE_ptr
30AAC2:  LDR             R1, [R1]; CGangWars::NumSpecificZones ...
30AAC4:  LDR             R1, [R1]; CGangWars::NumSpecificZones
30AAC6:  CBZ             R1, loc_30AB06
30AAC8:  CMP             R1, #1
30AACA:  BLT             loc_30AB00
30AACC:  LDR             R3, =(_ZN9CGangWars14aSpecificZonesE_ptr - 0x30AAD8)
30AACE:  MOVS            R2, #0
30AAD0:  LDR.W           LR, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x30AADA)
30AAD4:  ADD             R3, PC; _ZN9CGangWars14aSpecificZonesE_ptr
30AAD6:  ADD             LR, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
30AAD8:  LDR.W           R12, [R3]; CGangWars::aSpecificZones ...
30AADC:  LDR             R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x30AAE6)
30AADE:  LDR.W           LR, [LR]; CTheZones::NavigationZoneArray ...
30AAE2:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
30AAE4:  LDR             R3, [R3]; CTheZones::ZoneInfoArray ...
30AAE6:  LDR.W           R4, [R12,R2,LSL#2]
30AAEA:  ADD.W           R4, LR, R4,LSL#5
30AAEE:  LDRH            R4, [R4,#0x1C]
30AAF0:  ADD.W           R4, R4, R4,LSL#4
30AAF4:  ADD             R4, R3
30AAF6:  CMP             R4, R0
30AAF8:  BEQ             loc_30AB06
30AAFA:  ADDS            R2, #1
30AAFC:  CMP             R2, R1
30AAFE:  BLT             loc_30AAE6
30AB00:  MOVS            R1, #0
30AB02:  MOV             R0, R1
30AB04:  POP             {R4,R6,R7,PC}
30AB06:  MOVS            R1, #1
30AB08:  MOV             R0, R1
30AB0A:  POP             {R4,R6,R7,PC}
