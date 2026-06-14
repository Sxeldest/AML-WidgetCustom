; =========================================================
; Game Engine Function: _ZN12CTaskManager16FlushImmediatelyEv
; Address            : 0x5340AE - 0x53425C
; =========================================================

5340AE:  PUSH            {R4,R6,R7,LR}
5340B0:  ADD             R7, SP, #8
5340B2:  MOV             R4, R0
5340B4:  LDR             R0, [R4]
5340B6:  CBZ             R0, loc_5340DA
5340B8:  LDR             R2, [R0]
5340BA:  MOVS            R3, #0
5340BC:  LDR             R1, [R4,#0x2C]
5340BE:  LDR.W           R12, [R2,#0x1C]
5340C2:  MOVS            R2, #2
5340C4:  BLX             R12
5340C6:  CMP             R0, #1
5340C8:  BNE             loc_5340DA
5340CA:  LDR             R0, [R4]
5340CC:  CMP             R0, #0
5340CE:  ITTT NE
5340D0:  LDRNE           R1, [R0]
5340D2:  LDRNE           R1, [R1,#4]
5340D4:  BLXNE           R1
5340D6:  MOVS            R0, #0
5340D8:  STR             R0, [R4]
5340DA:  LDR             R0, [R4,#4]
5340DC:  CBZ             R0, loc_534100
5340DE:  LDR             R2, [R0]
5340E0:  MOVS            R3, #0
5340E2:  LDR             R1, [R4,#0x2C]
5340E4:  LDR.W           R12, [R2,#0x1C]
5340E8:  MOVS            R2, #2
5340EA:  BLX             R12
5340EC:  CMP             R0, #1
5340EE:  BNE             loc_534100
5340F0:  LDR             R0, [R4,#4]
5340F2:  CMP             R0, #0
5340F4:  ITTT NE
5340F6:  LDRNE           R1, [R0]
5340F8:  LDRNE           R1, [R1,#4]
5340FA:  BLXNE           R1
5340FC:  MOVS            R0, #0
5340FE:  STR             R0, [R4,#4]
534100:  LDR             R0, [R4,#8]
534102:  CBZ             R0, loc_534126
534104:  LDR             R2, [R0]
534106:  MOVS            R3, #0
534108:  LDR             R1, [R4,#0x2C]
53410A:  LDR.W           R12, [R2,#0x1C]
53410E:  MOVS            R2, #2
534110:  BLX             R12
534112:  CMP             R0, #1
534114:  BNE             loc_534126
534116:  LDR             R0, [R4,#8]
534118:  CMP             R0, #0
53411A:  ITTT NE
53411C:  LDRNE           R1, [R0]
53411E:  LDRNE           R1, [R1,#4]
534120:  BLXNE           R1
534122:  MOVS            R0, #0
534124:  STR             R0, [R4,#8]
534126:  LDR             R0, [R4,#0xC]
534128:  CBZ             R0, loc_53414C
53412A:  LDR             R2, [R0]
53412C:  MOVS            R3, #0
53412E:  LDR             R1, [R4,#0x2C]
534130:  LDR.W           R12, [R2,#0x1C]
534134:  MOVS            R2, #2
534136:  BLX             R12
534138:  CMP             R0, #1
53413A:  BNE             loc_53414C
53413C:  LDR             R0, [R4,#0xC]
53413E:  CMP             R0, #0
534140:  ITTT NE
534142:  LDRNE           R1, [R0]
534144:  LDRNE           R1, [R1,#4]
534146:  BLXNE           R1
534148:  MOVS            R0, #0
53414A:  STR             R0, [R4,#0xC]
53414C:  LDR             R0, [R4,#0x10]
53414E:  CBZ             R0, loc_534172
534150:  LDR             R2, [R0]
534152:  MOVS            R3, #0
534154:  LDR             R1, [R4,#0x2C]
534156:  LDR.W           R12, [R2,#0x1C]
53415A:  MOVS            R2, #2
53415C:  BLX             R12
53415E:  CMP             R0, #1
534160:  BNE             loc_534172
534162:  LDR             R0, [R4,#0x10]
534164:  CMP             R0, #0
534166:  ITTT NE
534168:  LDRNE           R1, [R0]
53416A:  LDRNE           R1, [R1,#4]
53416C:  BLXNE           R1
53416E:  MOVS            R0, #0
534170:  STR             R0, [R4,#0x10]
534172:  LDR             R0, [R4,#0x14]
534174:  CBZ             R0, loc_534198
534176:  LDR             R2, [R0]
534178:  MOVS            R3, #0
53417A:  LDR             R1, [R4,#0x2C]
53417C:  LDR.W           R12, [R2,#0x1C]
534180:  MOVS            R2, #2
534182:  BLX             R12
534184:  CMP             R0, #1
534186:  BNE             loc_534198
534188:  LDR             R0, [R4,#0x14]
53418A:  CMP             R0, #0
53418C:  ITTT NE
53418E:  LDRNE           R1, [R0]
534190:  LDRNE           R1, [R1,#4]
534192:  BLXNE           R1
534194:  MOVS            R0, #0
534196:  STR             R0, [R4,#0x14]
534198:  LDR             R0, [R4,#0x18]
53419A:  CBZ             R0, loc_5341BE
53419C:  LDR             R2, [R0]
53419E:  MOVS            R3, #0
5341A0:  LDR             R1, [R4,#0x2C]
5341A2:  LDR.W           R12, [R2,#0x1C]
5341A6:  MOVS            R2, #2
5341A8:  BLX             R12
5341AA:  CMP             R0, #1
5341AC:  BNE             loc_5341BE
5341AE:  LDR             R0, [R4,#0x18]
5341B0:  CMP             R0, #0
5341B2:  ITTT NE
5341B4:  LDRNE           R1, [R0]
5341B6:  LDRNE           R1, [R1,#4]
5341B8:  BLXNE           R1
5341BA:  MOVS            R0, #0
5341BC:  STR             R0, [R4,#0x18]
5341BE:  LDR             R0, [R4,#0x1C]
5341C0:  CBZ             R0, loc_5341E4
5341C2:  LDR             R2, [R0]
5341C4:  MOVS            R3, #0
5341C6:  LDR             R1, [R4,#0x2C]
5341C8:  LDR.W           R12, [R2,#0x1C]
5341CC:  MOVS            R2, #2
5341CE:  BLX             R12
5341D0:  CMP             R0, #1
5341D2:  BNE             loc_5341E4
5341D4:  LDR             R0, [R4,#0x1C]
5341D6:  CMP             R0, #0
5341D8:  ITTT NE
5341DA:  LDRNE           R1, [R0]
5341DC:  LDRNE           R1, [R1,#4]
5341DE:  BLXNE           R1
5341E0:  MOVS            R0, #0
5341E2:  STR             R0, [R4,#0x1C]
5341E4:  LDR             R0, [R4,#0x20]
5341E6:  CBZ             R0, loc_53420A
5341E8:  LDR             R2, [R0]
5341EA:  MOVS            R3, #0
5341EC:  LDR             R1, [R4,#0x2C]
5341EE:  LDR.W           R12, [R2,#0x1C]
5341F2:  MOVS            R2, #2
5341F4:  BLX             R12
5341F6:  CMP             R0, #1
5341F8:  BNE             loc_53420A
5341FA:  LDR             R0, [R4,#0x20]
5341FC:  CMP             R0, #0
5341FE:  ITTT NE
534200:  LDRNE           R1, [R0]
534202:  LDRNE           R1, [R1,#4]
534204:  BLXNE           R1
534206:  MOVS            R0, #0
534208:  STR             R0, [R4,#0x20]
53420A:  LDR             R0, [R4,#0x24]
53420C:  CBZ             R0, loc_534230
53420E:  LDR             R2, [R0]
534210:  MOVS            R3, #0
534212:  LDR             R1, [R4,#0x2C]
534214:  LDR.W           R12, [R2,#0x1C]
534218:  MOVS            R2, #2
53421A:  BLX             R12
53421C:  CMP             R0, #1
53421E:  BNE             loc_534230
534220:  LDR             R0, [R4,#0x24]
534222:  CMP             R0, #0
534224:  ITTT NE
534226:  LDRNE           R1, [R0]
534228:  LDRNE           R1, [R1,#4]
53422A:  BLXNE           R1
53422C:  MOVS            R0, #0
53422E:  STR             R0, [R4,#0x24]
534230:  LDR             R0, [R4,#0x28]
534232:  CMP             R0, #0
534234:  IT EQ
534236:  POPEQ           {R4,R6,R7,PC}
534238:  LDR             R2, [R0]
53423A:  MOVS            R3, #0
53423C:  LDR             R1, [R4,#0x2C]
53423E:  LDR.W           R12, [R2,#0x1C]
534242:  MOVS            R2, #2
534244:  BLX             R12
534246:  CMP             R0, #1
534248:  BNE             locret_53425A
53424A:  LDR             R0, [R4,#0x28]
53424C:  CMP             R0, #0
53424E:  ITTT NE
534250:  LDRNE           R1, [R0]
534252:  LDRNE           R1, [R1,#4]
534254:  BLXNE           R1
534256:  MOVS            R0, #0
534258:  STR             R0, [R4,#0x28]
53425A:  POP             {R4,R6,R7,PC}
