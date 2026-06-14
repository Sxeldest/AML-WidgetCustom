; =========================================================
; Game Engine Function: _ZN9CTheZones24FillZonesWithGangColoursEb
; Address            : 0x42DDA0 - 0x42DEB4
; =========================================================

42DDA0:  PUSH            {R4-R7,LR}
42DDA2:  ADD             R7, SP, #0xC
42DDA4:  PUSH.W          {R8-R11}
42DDA8:  SUB             SP, SP, #0x14
42DDAA:  STR             R0, [SP,#0x30+var_30]
42DDAC:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x42DDB2)
42DDAE:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
42DDB0:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
42DDB2:  LDRH            R0, [R0]; CTheZones::TotalNumberOfZoneInfos
42DDB4:  CMP             R0, #0
42DDB6:  BEQ             loc_42DEAC
42DDB8:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42DDC4)
42DDBA:  MOV.W           R9, #0
42DDBE:  LDR             R1, =(gaGangColoursR_ptr - 0x42DDC6)
42DDC0:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42DDC2:  ADD             R1, PC; gaGangColoursR_ptr
42DDC4:  LDR             R5, [R0]; CTheZones::ZoneInfoArray ...
42DDC6:  LDR             R0, =(gaGangColoursG_ptr - 0x42DDCC)
42DDC8:  ADD             R0, PC; gaGangColoursG_ptr
42DDCA:  LDR             R0, [R0]; gaGangColoursG
42DDCC:  STR             R0, [SP,#0x30+var_20]
42DDCE:  LDR             R0, [R1]; gaGangColoursR
42DDD0:  STR             R0, [SP,#0x30+var_24]
42DDD2:  LDR             R0, =(gaGangColoursB_ptr - 0x42DDD8)
42DDD4:  ADD             R0, PC; gaGangColoursB_ptr
42DDD6:  LDR             R0, [R0]; gaGangColoursB
42DDD8:  STR             R0, [SP,#0x30+var_28]
42DDDA:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x42DDE0)
42DDDC:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
42DDDE:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
42DDE0:  STR             R0, [SP,#0x30+var_2C]
42DDE2:  LDR             R3, [SP,#0x30+var_20]
42DDE4:  LDRB            R1, [R5,#1]; CTheZones::ZoneInfoArray
42DDE6:  LDRB            R0, [R5]; CTheZones::ZoneInfoArray
42DDE8:  LDRB            R4, [R3,#1]
42DDEA:  LDRB.W          LR, [R3]
42DDEE:  LDRB.W          R12, [R3,#2]
42DDF2:  SMULBB.W        R10, R4, R1
42DDF6:  LDR             R4, [SP,#0x30+var_24]
42DDF8:  LDRB            R2, [R5,#2]; CTheZones::ZoneInfoArray
42DDFA:  SMLABB.W        LR, LR, R0, R10
42DDFE:  LDRB            R3, [R4,#1]
42DE00:  LDRB            R6, [R4]
42DE02:  SMLABB.W        R10, R12, R2, LR
42DE06:  LDRB.W          R8, [R4,#2]
42DE0A:  SMULBB.W        R3, R3, R1
42DE0E:  SMLABB.W        R11, R6, R0, R3
42DE12:  LDR             R6, [SP,#0x30+var_28]
42DE14:  SMLABB.W        R11, R8, R2, R11
42DE18:  LDRB            R3, [R6,#1]
42DE1A:  LDRB            R4, [R6]
42DE1C:  LDRB            R6, [R6,#2]
42DE1E:  SMULBB.W        R3, R3, R1
42DE22:  SMLABB.W        R3, R4, R0, R3
42DE26:  ADD             R0, R1
42DE28:  SMLABB.W        R6, R6, R2, R3
42DE2C:  ADDS.W          R8, R0, R2
42DE30:  BEQ             loc_42DE4E
42DE32:  LDR             R0, [SP,#0x30+var_30]
42DE34:  CBNZ            R0, loc_42DE4E
42DE36:  MOV             R0, R5
42DE38:  BLX             j__ZN9CGangWars26CanPlayerStartAGangWarHereEP9CZoneInfo; CGangWars::CanPlayerStartAGangWarHere(CZoneInfo *)
42DE3C:  CMP             R0, #1
42DE3E:  BNE             loc_42DE4E
42DE40:  LDRH.W          R0, [R5,#0xF]
42DE44:  BIC.W           R0, R0, #0x60 ; '`'
42DE48:  ORR.W           R0, R0, #0x20 ; ' '
42DE4C:  B               loc_42DE56
42DE4E:  LDRH.W          R0, [R5,#0xF]
42DE52:  BIC.W           R0, R0, #0x60 ; '`'
42DE56:  CMP.W           R8, #1
42DE5A:  MOV             R4, R8
42DE5C:  STRH.W          R0, [R5,#0xF]
42DE60:  IT LS
42DE62:  MOVLS           R4, #1
42DE64:  MOV             R0, R11
42DE66:  MOV             R1, R4
42DE68:  BLX             __aeabi_uidiv
42DE6C:  STRB            R0, [R5,#0xB]
42DE6E:  MOV             R0, R10
42DE70:  MOV             R1, R4
42DE72:  BLX             __aeabi_uidiv
42DE76:  STRB            R0, [R5,#0xC]
42DE78:  MOV             R0, R6
42DE7A:  MOV             R1, R4
42DE7C:  BLX             __aeabi_uidiv
42DE80:  STRB            R0, [R5,#0xD]
42DE82:  ADD.W           R0, R8, R8,LSL#1
42DE86:  CMP             R0, #0x78 ; 'x'
42DE88:  ADD.W           R9, R9, #1
42DE8C:  IT CS
42DE8E:  MOVCS           R0, #0x78 ; 'x'
42DE90:  CMP             R0, #0x37 ; '7'
42DE92:  MOV             R1, R0
42DE94:  IT LS
42DE96:  MOVLS           R1, #0x37 ; '7'
42DE98:  CMP.W           R8, #0
42DE9C:  IT EQ
42DE9E:  MOVEQ           R1, R0
42DEA0:  LDR             R0, [SP,#0x30+var_2C]
42DEA2:  STRB            R1, [R5,#0xE]
42DEA4:  ADDS            R5, #0x11
42DEA6:  LDRH            R0, [R0]
42DEA8:  CMP             R9, R0
42DEAA:  BLT             loc_42DDE2
42DEAC:  ADD             SP, SP, #0x14
42DEAE:  POP.W           {R8-R11}
42DEB2:  POP             {R4-R7,PC}
