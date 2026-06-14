; =========================================================
; Game Engine Function: sub_47903C
; Address            : 0x47903C - 0x4791A0
; =========================================================

47903C:  PUSH            {R4,R6,R7,LR}
47903E:  ADD             R7, SP, #8
479040:  MOV             R4, R0
479042:  LDR             R0, [R4,#0x18]
479044:  LDR             R1, [R0]
479046:  ADDS            R2, R1, #1
479048:  STR             R2, [R0]
47904A:  MOVS            R2, #0xFF
47904C:  STRB            R2, [R1]
47904E:  LDR             R1, [R0,#4]
479050:  SUBS            R1, #1
479052:  STR             R1, [R0,#4]
479054:  BNE             loc_47906C
479056:  LDR             R1, [R0,#0xC]
479058:  MOV             R0, R4
47905A:  BLX             R1
47905C:  CBNZ            R0, loc_47906C
47905E:  LDR             R0, [R4]
479060:  MOVS            R1, #0x18
479062:  STR             R1, [R0,#0x14]
479064:  LDR             R0, [R4]
479066:  LDR             R1, [R0]
479068:  MOV             R0, R4
47906A:  BLX             R1
47906C:  LDR             R0, [R4,#0x18]
47906E:  LDR             R1, [R0]
479070:  ADDS            R2, R1, #1
479072:  STR             R2, [R0]
479074:  MOVS            R2, #0xD8
479076:  STRB            R2, [R1]
479078:  LDR             R1, [R0,#4]
47907A:  SUBS            R1, #1
47907C:  STR             R1, [R0,#4]
47907E:  BNE             loc_479096
479080:  LDR             R1, [R0,#0xC]
479082:  MOV             R0, R4
479084:  BLX             R1
479086:  CBNZ            R0, loc_479096
479088:  LDR             R0, [R4]
47908A:  MOVS            R1, #0x18
47908C:  STR             R1, [R0,#0x14]
47908E:  LDR             R0, [R4]
479090:  LDR             R1, [R0]
479092:  MOV             R0, R4
479094:  BLX             R1
479096:  LDR             R0, [R4,#0x48]
479098:  CMP             R0, #0
47909A:  ITTT NE
47909C:  MOVNE           R0, R4
47909E:  MOVNE           R1, #0
4790A0:  BLNE            sub_4792B0
4790A4:  LDR             R0, [R4,#0x4C]
4790A6:  CMP             R0, #0
4790A8:  ITTT NE
4790AA:  MOVNE           R0, R4
4790AC:  MOVNE           R1, #1
4790AE:  BLNE            sub_4792B0
4790B2:  LDR             R0, [R4,#0x50]
4790B4:  CMP             R0, #0
4790B6:  ITTT NE
4790B8:  MOVNE           R0, R4
4790BA:  MOVNE           R1, #2
4790BC:  BLNE            sub_4792B0
4790C0:  LDR             R0, [R4,#0x54]
4790C2:  CMP             R0, #0
4790C4:  ITTT NE
4790C6:  MOVNE           R0, R4
4790C8:  MOVNE           R1, #3
4790CA:  BLNE            sub_4792B0
4790CE:  LDRB.W          R0, [R4,#0xB1]
4790D2:  CBNZ            R0, loc_479144
4790D4:  LDR             R0, [R4,#0x58]
4790D6:  CBZ             R0, loc_4790E2
4790D8:  MOV             R0, R4
4790DA:  MOVS            R1, #0
4790DC:  MOVS            R2, #0
4790DE:  BL              sub_479776
4790E2:  LDR             R0, [R4,#0x68]
4790E4:  CBZ             R0, loc_4790F0
4790E6:  MOV             R0, R4
4790E8:  MOVS            R1, #0
4790EA:  MOVS            R2, #1
4790EC:  BL              sub_479776
4790F0:  LDR             R0, [R4,#0x5C]
4790F2:  CBZ             R0, loc_4790FE
4790F4:  MOV             R0, R4
4790F6:  MOVS            R1, #1
4790F8:  MOVS            R2, #0
4790FA:  BL              sub_479776
4790FE:  LDR             R0, [R4,#0x6C]
479100:  CBZ             R0, loc_47910C
479102:  MOV             R0, R4
479104:  MOVS            R1, #1
479106:  MOVS            R2, #1
479108:  BL              sub_479776
47910C:  LDR             R0, [R4,#0x60]
47910E:  CBZ             R0, loc_47911A
479110:  MOV             R0, R4
479112:  MOVS            R1, #2
479114:  MOVS            R2, #0
479116:  BL              sub_479776
47911A:  LDR             R0, [R4,#0x70]
47911C:  CBZ             R0, loc_479128
47911E:  MOV             R0, R4
479120:  MOVS            R1, #2
479122:  MOVS            R2, #1
479124:  BL              sub_479776
479128:  LDR             R0, [R4,#0x64]
47912A:  CBZ             R0, loc_479136
47912C:  MOV             R0, R4
47912E:  MOVS            R1, #3
479130:  MOVS            R2, #0
479132:  BL              sub_479776
479136:  LDR             R0, [R4,#0x74]
479138:  CBZ             R0, loc_479144
47913A:  MOV             R0, R4
47913C:  MOVS            R1, #3
47913E:  MOVS            R2, #1
479140:  BL              sub_479776
479144:  LDR             R0, [R4,#0x18]
479146:  LDR             R1, [R0]
479148:  ADDS            R2, R1, #1
47914A:  STR             R2, [R0]
47914C:  MOVS            R2, #0xFF
47914E:  STRB            R2, [R1]
479150:  LDR             R1, [R0,#4]
479152:  SUBS            R1, #1
479154:  STR             R1, [R0,#4]
479156:  BNE             loc_47916E
479158:  LDR             R1, [R0,#0xC]
47915A:  MOV             R0, R4
47915C:  BLX             R1
47915E:  CBNZ            R0, loc_47916E
479160:  LDR             R0, [R4]
479162:  MOVS            R1, #0x18
479164:  STR             R1, [R0,#0x14]
479166:  LDR             R0, [R4]
479168:  LDR             R1, [R0]
47916A:  MOV             R0, R4
47916C:  BLX             R1
47916E:  LDR             R0, [R4,#0x18]
479170:  LDR             R1, [R0]
479172:  ADDS            R2, R1, #1
479174:  STR             R2, [R0]
479176:  MOVS            R2, #0xD9
479178:  STRB            R2, [R1]
47917A:  LDR             R1, [R0,#4]
47917C:  SUBS            R1, #1
47917E:  STR             R1, [R0,#4]
479180:  IT NE
479182:  POPNE           {R4,R6,R7,PC}
479184:  LDR             R1, [R0,#0xC]
479186:  MOV             R0, R4
479188:  BLX             R1
47918A:  CBZ             R0, loc_47918E
47918C:  POP             {R4,R6,R7,PC}
47918E:  LDR             R0, [R4]
479190:  MOVS            R1, #0x18
479192:  STR             R1, [R0,#0x14]
479194:  LDR             R0, [R4]
479196:  LDR             R1, [R0]
479198:  MOV             R0, R4
47919A:  POP.W           {R4,R6,R7,LR}
47919E:  BX              R1
