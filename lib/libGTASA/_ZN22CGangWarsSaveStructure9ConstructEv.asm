; =========================================================
; Game Engine Function: _ZN22CGangWarsSaveStructure9ConstructEv
; Address            : 0x484B68 - 0x484CCC
; =========================================================

484B68:  LDR             R1, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x484B70)
484B6A:  LDR             R2, =(_ZN9CGangWars5StateE_ptr - 0x484B74)
484B6C:  ADD             R1, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
484B6E:  LDR             R3, =(_ZN9CGangWars11TimeStartedE_ptr - 0x484B7C)
484B70:  ADD             R2, PC; _ZN9CGangWars5StateE_ptr
484B72:  LDR.W           R12, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x484B80)
484B76:  LDR             R1, [R1]; CGangWars::bGangWarsActive ...
484B78:  ADD             R3, PC; _ZN9CGangWars11TimeStartedE_ptr
484B7A:  LDR             R2, [R2]; CGangWars::State ...
484B7C:  ADD             R12, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
484B7E:  LDR             R3, [R3]; CGangWars::TimeStarted ...
484B80:  LDRB            R1, [R1]; CGangWars::bGangWarsActive
484B82:  STRB            R1, [R0]
484B84:  LDR             R1, [R2]; CGangWars::State
484B86:  LDR.W           R2, [R12]; CGangWars::pZoneInfoToFightOver ...
484B8A:  MOV.W           R12, #0xFFFFFFFF
484B8E:  LDR             R3, [R3]; CGangWars::TimeStarted
484B90:  STR             R1, [R0,#4]
484B92:  STR             R3, [R0,#8]
484B94:  STR.W           R12, [R0,#0xC]
484B98:  LDR             R1, [R2]; CGangWars::pZoneInfoToFightOver
484B9A:  CBZ             R1, loc_484BC0
484B9C:  LDR             R2, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x484BA2)
484B9E:  ADD             R2, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
484BA0:  LDR             R2, [R2]; CTheZones::TotalNumberOfZoneInfos ...
484BA2:  LDRH            R2, [R2]; CTheZones::TotalNumberOfZoneInfos
484BA4:  CBZ             R2, loc_484BC0
484BA6:  LDR             R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x484BAC)
484BA8:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
484BAA:  LDR             R3, [R3]; CTheZones::ZoneInfoArray ...
484BAC:  SUBS            R1, R1, R3
484BAE:  MOVS            R3, #0
484BB0:  ADDS            R1, #0x11
484BB2:  SUBS            R1, #0x11
484BB4:  BEQ             loc_484BBE
484BB6:  ADDS            R3, #1
484BB8:  CMP             R3, R2
484BBA:  BLT             loc_484BB2
484BBC:  B               loc_484BC0
484BBE:  STR             R3, [R0,#0xC]
484BC0:  LDR             R1, =(_ZN9CGangWars16pZoneToFightOverE_ptr - 0x484BCA)
484BC2:  STR.W           R12, [R0,#0x10]
484BC6:  ADD             R1, PC; _ZN9CGangWars16pZoneToFightOverE_ptr
484BC8:  LDR             R1, [R1]; CGangWars::pZoneToFightOver ...
484BCA:  LDR             R2, [R1]; CGangWars::pZoneToFightOver
484BCC:  CBZ             R2, loc_484BF4
484BCE:  LDR             R1, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x484BD4)
484BD0:  ADD             R1, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
484BD2:  LDR             R1, [R1]; CTheZones::TotalNumberOfNavigationZones ...
484BD4:  LDRH            R1, [R1]; CTheZones::TotalNumberOfNavigationZones
484BD6:  CBZ             R1, loc_484BF4
484BD8:  LDR             R3, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x484BDE)
484BDA:  ADD             R3, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
484BDC:  LDR             R3, [R3]; CTheZones::NavigationZoneArray ...
484BDE:  SUBS            R2, R2, R3
484BE0:  ADD.W           R3, R2, #0x20 ; ' '
484BE4:  MOVS            R2, #0
484BE6:  SUBS            R3, #0x20 ; ' '
484BE8:  BEQ             loc_484BF2
484BEA:  ADDS            R2, #1
484BEC:  CMP             R2, R1
484BEE:  BLT             loc_484BE6
484BF0:  B               loc_484BF4
484BF2:  STR             R2, [R0,#0x10]
484BF4:  PUSH            {R4,R6,R7,LR}
484BF6:  ADD             R7, SP, #0x10+var_8
484BF8:  LDR             R1, =(_ZN9CGangWars25CoorsOfPlayerAtStartOfWarE_ptr - 0x484C00)
484BFA:  LDR             R2, =(_ZN9CGangWars5Gang1E_ptr - 0x484C04)
484BFC:  ADD             R1, PC; _ZN9CGangWars25CoorsOfPlayerAtStartOfWarE_ptr
484BFE:  LDR             R3, =(_ZN9CGangWars5Gang2E_ptr - 0x484C0C)
484C00:  ADD             R2, PC; _ZN9CGangWars5Gang1E_ptr
484C02:  LDR.W           R12, =(_ZN9CGangWars11WarFerocityE_ptr - 0x484C10)
484C06:  LDR             R1, [R1]; CGangWars::CoorsOfPlayerAtStartOfWar ...
484C08:  ADD             R3, PC; _ZN9CGangWars5Gang2E_ptr
484C0A:  LDR             R2, [R2]; CGangWars::Gang1 ...
484C0C:  ADD             R12, PC; _ZN9CGangWars11WarFerocityE_ptr
484C0E:  LDR.W           LR, =(_ZN9CGangWars14LastTimeInAreaE_ptr - 0x484C1C)
484C12:  VLDR            D16, [R1]
484C16:  LDR             R1, [R1,#(dword_7A2310 - 0x7A2308)]
484C18:  ADD             LR, PC; _ZN9CGangWars14LastTimeInAreaE_ptr
484C1A:  STR             R1, [R0,#0x1C]
484C1C:  VSTR            D16, [R0,#0x14]
484C20:  LDR             R3, [R3]; CGangWars::Gang2 ...
484C22:  LDR             R1, [R2]; CGangWars::Gang1
484C24:  LDR             R4, =(_ZN9CGangWars6State2E_ptr - 0x484C30)
484C26:  STR             R1, [R0,#0x20]
484C28:  LDR.W           R2, [R12]; CGangWars::WarFerocity ...
484C2C:  ADD             R4, PC; _ZN9CGangWars6State2E_ptr
484C2E:  LDR             R1, [R3]; CGangWars::Gang2
484C30:  LDR.W           R12, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x484C3E)
484C34:  STR             R1, [R0,#0x24]
484C36:  LDR.W           R3, [LR]; CGangWars::LastTimeInArea ...
484C3A:  ADD             R12, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
484C3C:  LDR             R1, [R2]; CGangWars::WarFerocity
484C3E:  STR             R1, [R0,#0x28]
484C40:  LDR             R2, [R4]; CGangWars::State2 ...
484C42:  LDR             R4, =(_ZN9CGangWars13PointOfAttackE_ptr - 0x484C4A)
484C44:  LDR             R1, [R3]; CGangWars::LastTimeInArea
484C46:  ADD             R4, PC; _ZN9CGangWars13PointOfAttackE_ptr
484C48:  STR             R1, [R0,#0x2C]
484C4A:  LDR.W           R3, [R12]; CGangWars::TimeTillNextAttack ...
484C4E:  LDR             R1, [R2]; CGangWars::State2
484C50:  LDR             R2, =(_ZN9CGangWars10FightTimerE_ptr - 0x484C5A)
484C52:  STR             R1, [R0,#0x30]
484C54:  LDR             R4, [R4]; CGangWars::PointOfAttack ...
484C56:  ADD             R2, PC; _ZN9CGangWars10FightTimerE_ptr
484C58:  LDR             R1, [R3]; CGangWars::TimeTillNextAttack
484C5A:  LDR             R3, =(_ZN9CGangWars9RadarBlipE_ptr - 0x484C62)
484C5C:  STR             R1, [R0,#0x34]
484C5E:  ADD             R3, PC; _ZN9CGangWars9RadarBlipE_ptr
484C60:  LDR.W           R12, =(_ZN9CGangWars16bPlayerIsClosebyE_ptr - 0x484C6E)
484C64:  LDR             R2, [R2]; CGangWars::FightTimer ...
484C66:  VLDR            D16, [R4]
484C6A:  ADD             R12, PC; _ZN9CGangWars16bPlayerIsClosebyE_ptr
484C6C:  LDR             R1, [R4,#(dword_7A2330 - 0x7A2328)]
484C6E:  LDR.W           LR, =(_ZN9CGangWars31TerritoryUnderControlPercentageE_ptr - 0x484C7C)
484C72:  STR             R1, [R0,#0x40]
484C74:  VSTR            D16, [R0,#0x38]
484C78:  ADD             LR, PC; _ZN9CGangWars31TerritoryUnderControlPercentageE_ptr
484C7A:  LDR             R3, [R3]; CGangWars::RadarBlip ...
484C7C:  LDR             R1, [R2]; CGangWars::FightTimer
484C7E:  LDR             R4, =(_ZN9CGangWars10DifficultyE_ptr - 0x484C8A)
484C80:  STR             R1, [R0,#0x44]
484C82:  LDR.W           R2, [R12]; CGangWars::bPlayerIsCloseby ...
484C86:  ADD             R4, PC; _ZN9CGangWars10DifficultyE_ptr
484C88:  LDR             R1, [R3]; CGangWars::RadarBlip
484C8A:  LDR.W           R12, =(_ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr - 0x484C98)
484C8E:  STR             R1, [R0,#0x48]
484C90:  LDR.W           R3, [LR]; CGangWars::TerritoryUnderControlPercentage ...
484C94:  ADD             R12, PC; _ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr
484C96:  LDRB            R1, [R2]; CGangWars::bPlayerIsCloseby
484C98:  LDR.W           LR, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x484CA6)
484C9C:  STRB.W          R1, [R0,#0x4C]
484CA0:  LDR             R4, [R4]; CGangWars::Difficulty ...
484CA2:  ADD             LR, PC; _ZN9CGangWars16bTrainingMissionE_ptr
484CA4:  LDR             R1, [R3]; CGangWars::TerritoryUnderControlPercentage
484CA6:  LDR             R3, =(_ZN9CGangWars19ZoneInfoForTrainingE_ptr - 0x484CB2)
484CA8:  STR             R1, [R0,#0x50]
484CAA:  LDR.W           R2, [R12]; CGangWars::bCanTriggerGangWarWhenOnAMission ...
484CAE:  ADD             R3, PC; _ZN9CGangWars19ZoneInfoForTrainingE_ptr
484CB0:  LDR             R1, [R4]; CGangWars::Difficulty
484CB2:  STR             R1, [R0,#0x54]
484CB4:  LDR.W           R4, [LR]; CGangWars::bTrainingMission ...
484CB8:  LDRB            R1, [R2]; CGangWars::bCanTriggerGangWarWhenOnAMission
484CBA:  STRB.W          R1, [R0,#0x58]
484CBE:  LDR             R2, [R3]; CGangWars::ZoneInfoForTraining ...
484CC0:  LDRB            R1, [R4]; CGangWars::bTrainingMission
484CC2:  STRB.W          R1, [R0,#0x59]
484CC6:  LDR             R1, [R2]; CGangWars::ZoneInfoForTraining
484CC8:  STR             R1, [R0,#0x5C]
484CCA:  POP             {R4,R6,R7,PC}
