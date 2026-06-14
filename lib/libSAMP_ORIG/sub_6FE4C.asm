; =========================================================
; Game Engine Function: sub_6FE4C
; Address            : 0x6FE4C - 0x7013C
; =========================================================

6FE4C:  PUSH            {R4-R7,LR}
6FE4E:  ADD             R7, SP, #0xC
6FE50:  PUSH.W          {R8-R11}
6FE54:  SUB             SP, SP, #4
6FE56:  MOV             R5, R1
6FE58:  MOV             R9, R0
6FE5A:  LDR             R1, [R1,#0xC]
6FE5C:  MOV             R11, R2
6FE5E:  LDR             R0, [R5,#0x10]
6FE60:  CMP             R0, R1
6FE62:  BCS             loc_6FE6A
6FE64:  ADDS            R0, #1
6FE66:  STR             R0, [R5,#0x10]
6FE68:  B               loc_6FEA6
6FE6A:  LDRB            R0, [R5,#0x1C]
6FE6C:  CBNZ            R0, loc_6FEA6
6FE6E:  LDRD.W          R1, R6, [R5,#0x14]
6FE72:  MOVS            R4, #1
6FE74:  LDRD.W          R3, R0, [R5]; stream
6FE78:  LDR             R2, [R5,#8]; n
6FE7A:  ADD             R1, R6
6FE7C:  STR             R1, [R5,#0x18]
6FE7E:  MOVS            R1, #1; size
6FE80:  BLX             fread
6FE84:  LDRD.W          R2, R3, [R5,#4]
6FE88:  CMP             R0, R3
6FE8A:  STR             R0, [R5,#0x14]
6FE8C:  ADD.W           R1, R2, R0
6FE90:  SUB.W           R6, R1, #1
6FE94:  STRD.W          R6, R2, [R5,#0xC]
6FE98:  BCS             loc_6FEA6
6FE9A:  MOVS            R0, #0
6FE9C:  STRB            R0, [R1]
6FE9E:  LDR             R0, [R5,#0xC]
6FEA0:  STRB            R4, [R5,#0x1C]
6FEA2:  ADDS            R0, #1
6FEA4:  STR             R0, [R5,#0xC]
6FEA6:  LDRD.W          R0, R1, [R11,#0x24]
6FEAA:  SUBS            R1, R1, R0
6FEAC:  CMP             R1, #0xF
6FEAE:  BLE             loc_6FFA2
6FEB0:  ADD.W           R1, R0, #0x10
6FEB4:  STR.W           R1, [R11,#0x24]
6FEB8:  VMOV.I32        Q8, #0
6FEBC:  MOVS            R1, #0xE
6FEBE:  MOVW            R10, #0x13
6FEC2:  VST1.64         {D16-D17}, [R0],R1
6FEC6:  MOVS            R1, #4
6FEC8:  MOVS            R4, #1
6FECA:  MOVT            R10, #0x80
6FECE:  MOV.W           R8, #0
6FED2:  STRH            R1, [R0]
6FED4:  B               loc_6FEDA
6FED6:  ADDS            R0, #1
6FED8:  STR             R0, [R5,#0x10]
6FEDA:  LDR             R0, [R5,#0x10]
6FEDC:  LDRB            R1, [R0]
6FEDE:  SUB.W           R2, R1, #9
6FEE2:  CMP             R2, #0x17
6FEE4:  BHI             loc_6FF34
6FEE6:  LSL.W           R2, R4, R2
6FEEA:  TST.W           R2, R10
6FEEE:  BEQ             loc_6FF34
6FEF0:  LDR             R1, [R5,#0xC]
6FEF2:  CMP             R0, R1
6FEF4:  BCC             loc_6FED6
6FEF6:  LDRB            R0, [R5,#0x1C]
6FEF8:  CMP             R0, #0
6FEFA:  BNE             loc_6FEDA
6FEFC:  LDRD.W          R1, R6, [R5,#0x14]
6FF00:  LDRD.W          R3, R0, [R5]; stream
6FF04:  LDR             R2, [R5,#8]; n
6FF06:  ADD             R1, R6
6FF08:  STR             R1, [R5,#0x18]
6FF0A:  MOVS            R1, #1; size
6FF0C:  BLX             fread
6FF10:  LDRD.W          R2, R3, [R5,#4]
6FF14:  CMP             R0, R3
6FF16:  STR             R0, [R5,#0x14]
6FF18:  ADD.W           R1, R2, R0
6FF1C:  SUB.W           R6, R1, #1
6FF20:  STRD.W          R6, R2, [R5,#0xC]
6FF24:  BCS             loc_6FEDA
6FF26:  STRB.W          R8, [R1]
6FF2A:  LDR             R0, [R5,#0xC]
6FF2C:  STRB            R4, [R5,#0x1C]
6FF2E:  ADDS            R0, #1
6FF30:  STR             R0, [R5,#0xC]
6FF32:  B               loc_6FEDA
6FF34:  LDR.W           R2, [R9,#0x18]
6FF38:  CBNZ            R2, loc_6FF9A
6FF3A:  CMP             R1, #0x5D ; ']'
6FF3C:  BNE             loc_6FFB2
6FF3E:  LDR             R1, [R5,#0xC]
6FF40:  CMP             R0, R1
6FF42:  BCS             loc_6FF4A
6FF44:  ADDS            R0, #1
6FF46:  STR             R0, [R5,#0x10]
6FF48:  B               loc_6FF86
6FF4A:  LDRB            R0, [R5,#0x1C]
6FF4C:  CBNZ            R0, loc_6FF86
6FF4E:  LDRD.W          R1, R6, [R5,#0x14]
6FF52:  MOVS            R4, #1
6FF54:  LDRD.W          R3, R0, [R5]; stream
6FF58:  LDR             R2, [R5,#8]; n
6FF5A:  ADD             R1, R6
6FF5C:  STR             R1, [R5,#0x18]
6FF5E:  MOVS            R1, #1; size
6FF60:  BLX             fread
6FF64:  LDRD.W          R2, R3, [R5,#4]
6FF68:  CMP             R0, R3
6FF6A:  STR             R0, [R5,#0x14]
6FF6C:  ADD.W           R1, R2, R0
6FF70:  SUB.W           R6, R1, #1
6FF74:  STRD.W          R6, R2, [R5,#0xC]
6FF78:  BCS             loc_6FF86
6FF7A:  MOVS            R0, #0
6FF7C:  STRB            R0, [R1]
6FF7E:  LDR             R0, [R5,#0xC]
6FF80:  STRB            R4, [R5,#0x1C]
6FF82:  ADDS            R0, #1
6FF84:  STR             R0, [R5,#0xC]
6FF86:  LDR.W           R0, [R11,#0x24]
6FF8A:  MOVS            R1, #0
6FF8C:  MOVS            R2, #4
6FF8E:  STRH.W          R2, [R0,#-2]
6FF92:  STRD.W          R1, R1, [R0,#-0x10]
6FF96:  STR.W           R1, [R0,#-8]
6FF9A:  ADD             SP, SP, #4
6FF9C:  POP.W           {R8-R11}
6FFA0:  POP             {R4-R7,PC}
6FFA2:  ADD.W           R0, R11, #0x18
6FFA6:  MOVS            R1, #1
6FFA8:  BL              sub_70EA2
6FFAC:  LDR.W           R0, [R11,#0x24]
6FFB0:  B               loc_6FEB0
6FFB2:  MOVS            R0, #0
6FFB4:  MOV.W           R8, #0
6FFB8:  MOVS            R4, #1
6FFBA:  STR             R0, [SP,#0x20+var_20]
6FFBC:  B               loc_6FFC6
6FFBE:  LDR.W           R0, [R9,#0x18]
6FFC2:  CMP             R0, #0
6FFC4:  BNE             loc_6FF9A
6FFC6:  MOV             R0, R9
6FFC8:  MOV             R1, R5
6FFCA:  MOV             R2, R11
6FFCC:  BL              sub_6EF94
6FFD0:  LDR.W           R0, [R9,#0x18]
6FFD4:  CBZ             R0, loc_6FFDC
6FFD6:  B               loc_6FF9A
6FFD8:  ADDS            R0, #1
6FFDA:  STR             R0, [R5,#0x10]
6FFDC:  LDR             R0, [R5,#0x10]
6FFDE:  LDRB            R1, [R0]
6FFE0:  SUB.W           R2, R1, #9
6FFE4:  CMP             R2, #0x17
6FFE6:  BHI             loc_70036
6FFE8:  LSL.W           R2, R4, R2
6FFEC:  TST.W           R2, R10
6FFF0:  BEQ             loc_70036
6FFF2:  LDR             R1, [R5,#0xC]
6FFF4:  CMP             R0, R1
6FFF6:  BCC             loc_6FFD8
6FFF8:  LDRB            R0, [R5,#0x1C]
6FFFA:  CMP             R0, #0
6FFFC:  BNE             loc_6FFDC
6FFFE:  LDRD.W          R1, R6, [R5,#0x14]
70002:  LDRD.W          R3, R0, [R5]; stream
70006:  LDR             R2, [R5,#8]; n
70008:  ADD             R1, R6
7000A:  STR             R1, [R5,#0x18]
7000C:  MOVS            R1, #1; size
7000E:  BLX             fread
70012:  LDRD.W          R2, R3, [R5,#4]
70016:  CMP             R0, R3
70018:  STR             R0, [R5,#0x14]
7001A:  ADD.W           R1, R2, R0
7001E:  SUB.W           R6, R1, #1
70022:  STRD.W          R6, R2, [R5,#0xC]
70026:  BCS             loc_6FFDC
70028:  STRB.W          R8, [R1]
7002C:  LDR             R0, [R5,#0xC]
7002E:  STRB            R4, [R5,#0x1C]
70030:  ADDS            R0, #1
70032:  STR             R0, [R5,#0xC]
70034:  B               loc_6FFDC
70036:  LDR.W           R2, [R9,#0x18]
7003A:  CMP             R2, #0
7003C:  BNE             loc_6FF9A
7003E:  LDR             R2, [SP,#0x20+var_20]
70040:  CMP             R1, #0x2C ; ','
70042:  ADD.W           R2, R2, #1
70046:  BNE             loc_700B6
70048:  LDR             R1, [R5,#0xC]
7004A:  STR             R2, [SP,#0x20+var_20]
7004C:  CMP             R0, R1
7004E:  BCS             loc_70056
70050:  ADDS            R0, #1
70052:  STR             R0, [R5,#0x10]
70054:  B               loc_7008C
70056:  LDRB            R0, [R5,#0x1C]
70058:  CBNZ            R0, loc_7008C
7005A:  LDR             R1, [R5,#0x14]
7005C:  LDR             R6, [R5,#0x18]
7005E:  LDR             R3, [R5]; stream
70060:  LDR             R0, [R5,#4]; ptr
70062:  ADD             R1, R6
70064:  LDR             R2, [R5,#8]; n
70066:  STR             R1, [R5,#0x18]
70068:  MOVS            R1, #1; size
7006A:  BLX             fread
7006E:  LDR             R3, [R5,#4]
70070:  LDR             R6, [R5,#8]
70072:  ADDS            R2, R3, R0
70074:  STR             R3, [R5,#0x10]
70076:  SUBS            R1, R2, #1
70078:  CMP             R0, R6
7007A:  STR             R1, [R5,#0xC]
7007C:  STR             R0, [R5,#0x14]
7007E:  BCS             loc_7008C
70080:  STRB.W          R8, [R2]
70084:  LDR             R0, [R5,#0xC]
70086:  STRB            R4, [R5,#0x1C]
70088:  ADDS            R1, R0, #1
7008A:  STR             R1, [R5,#0xC]
7008C:  LDRB            R0, [R5,#0x1C]
7008E:  B               loc_70094
70090:  ADDS            R2, #1
70092:  STR             R2, [R5,#0x10]
70094:  LDR             R2, [R5,#0x10]
70096:  LDRB            R3, [R2]
70098:  SUBS            R3, #9
7009A:  CMP             R3, #0x17
7009C:  BHI.W           loc_6FFBE
700A0:  LSL.W           R3, R4, R3
700A4:  TST.W           R3, R10
700A8:  BEQ.W           loc_6FFBE
700AC:  CMP             R2, R1
700AE:  BCC             loc_70090
700B0:  CMP             R0, #0
700B2:  BNE             loc_70094
700B4:  B               loc_7005A
700B6:  CMP             R1, #0x5D ; ']'
700B8:  BNE             loc_7012C
700BA:  LDR             R1, [R5,#0xC]
700BC:  CMP             R0, R1
700BE:  BCS             loc_700C6
700C0:  ADDS            R0, #1
700C2:  STR             R0, [R5,#0x10]
700C4:  B               loc_7010A
700C6:  LDRB            R0, [R5,#0x1C]
700C8:  CBNZ            R0, loc_7010A
700CA:  LDRD.W          R1, R6, [R5,#0x14]
700CE:  MOV             R4, R2
700D0:  LDRD.W          R3, R0, [R5]; stream
700D4:  MOV.W           R8, #1
700D8:  LDR             R2, [R5,#8]; n
700DA:  ADD             R1, R6
700DC:  STR             R1, [R5,#0x18]
700DE:  MOVS            R1, #1; size
700E0:  BLX             fread
700E4:  LDRD.W          R2, R3, [R5,#4]
700E8:  CMP             R0, R3
700EA:  STR             R0, [R5,#0x14]
700EC:  ADD.W           R1, R2, R0
700F0:  SUB.W           R6, R1, #1
700F4:  STRD.W          R6, R2, [R5,#0xC]
700F8:  MOV             R2, R4
700FA:  BCS             loc_7010A
700FC:  MOVS            R0, #0
700FE:  STRB            R0, [R1]
70100:  LDR             R0, [R5,#0xC]
70102:  STRB.W          R8, [R5,#0x1C]
70106:  ADDS            R0, #1
70108:  STR             R0, [R5,#0xC]
7010A:  LDR.W           R0, [R11,#0x24]
7010E:  LDR.W           R3, [R11,#0x10]
70112:  SUB.W           R1, R0, R2,LSL#4; src
70116:  STR.W           R1, [R11,#0x24]
7011A:  SUB.W           R0, R1, #0x10; int
7011E:  ADD             SP, SP, #4
70120:  POP.W           {R8-R11}
70124:  POP.W           {R4-R7,LR}
70128:  B.W             sub_71498
7012C:  LDR             R3, [R5,#0x18]
7012E:  MOVS            R1, #7
70130:  LDR             R2, [R5,#4]
70132:  ADD             R0, R3
70134:  SUBS            R0, R0, R2
70136:  STRD.W          R1, R0, [R9,#0x18]
7013A:  B               loc_6FF9A
