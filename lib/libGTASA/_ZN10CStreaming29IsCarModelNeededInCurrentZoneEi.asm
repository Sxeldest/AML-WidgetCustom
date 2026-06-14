; =========================================================
; Game Engine Function: _ZN10CStreaming29IsCarModelNeededInCurrentZoneEi
; Address            : 0x2D8058 - 0x2D8288
; =========================================================

2D8058:  PUSH            {R4-R7,LR}
2D805A:  ADD             R7, SP, #0xC
2D805C:  PUSH.W          {R8}
2D8060:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x2D8066)
2D8062:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
2D8064:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
2D8066:  LDR             R2, [R1]; CPopCycle::m_pCurrZoneInfo
2D8068:  CMP             R2, #0
2D806A:  BEQ.W           loc_2D81C6
2D806E:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D8074)
2D8070:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D8072:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2D8074:  LDRB.W          R1, [R1,#(byte_796825 - 0x7967F4)]
2D8078:  CBZ             R1, loc_2D80A8
2D807A:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D8080)
2D807C:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D807E:  LDR             R1, [R1]; CPopulation::m_nNumCarsInGroup ...
2D8080:  LDRSH.W         R1, [R1,#(word_9F48F8 - 0x9F48F0)]
2D8084:  CMP             R1, #1
2D8086:  BLT.W           loc_2D81C6
2D808A:  LDR             R3, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D8092)
2D808C:  MOVS            R2, #0
2D808E:  ADD             R3, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D8090:  LDR             R3, [R3]; CPopulation::m_CarGroups ...
2D8092:  ADD.W           R6, R3, R2,LSL#1
2D8096:  LDRH.W          R6, [R6,#0xB8]
2D809A:  CMP             R6, R0
2D809C:  BEQ.W           loc_2D827E
2D80A0:  ADDS            R2, #1
2D80A2:  CMP             R2, R1
2D80A4:  BLT             loc_2D8092
2D80A6:  B               loc_2D81C6
2D80A8:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D80AE)
2D80AA:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D80AC:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2D80AE:  LDRB.W          R1, [R1,#(byte_796847 - 0x7967F4)]
2D80B2:  CBZ             R1, loc_2D80E2
2D80B4:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D80BA)
2D80B6:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D80B8:  LDR             R1, [R1]; CPopulation::m_nNumCarsInGroup ...
2D80BA:  LDRSH.W         R1, [R1,#(word_9F48F6 - 0x9F48F0)]
2D80BE:  CMP             R1, #1
2D80C0:  BLT.W           loc_2D81C6
2D80C4:  LDR             R3, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D80CC)
2D80C6:  MOVS            R2, #0
2D80C8:  ADD             R3, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D80CA:  LDR             R3, [R3]; CPopulation::m_CarGroups ...
2D80CC:  ADD.W           R6, R3, R2,LSL#1
2D80D0:  LDRH.W          R6, [R6,#0x8A]
2D80D4:  CMP             R6, R0
2D80D6:  BEQ.W           loc_2D827E
2D80DA:  ADDS            R2, #1
2D80DC:  CMP             R2, R1
2D80DE:  BLT             loc_2D80CC
2D80E0:  B               loc_2D81C6
2D80E2:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D80E8)
2D80E4:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D80E6:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2D80E8:  LDRB.W          R1, [R1,#(byte_79682A - 0x7967F4)]
2D80EC:  CBZ             R1, loc_2D811C
2D80EE:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D80F4)
2D80F0:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D80F2:  LDR             R1, [R1]; CPopulation::m_nNumCarsInGroup ...
2D80F4:  LDRSH.W         R2, [R1,#(word_9F492C - 0x9F48F0)]
2D80F8:  CMP             R2, #1
2D80FA:  BLT             loc_2D81C6
2D80FC:  LDR             R1, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D8104)
2D80FE:  MOVS            R3, #0
2D8100:  ADD             R1, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D8102:  LDR             R5, [R1]; CPopulation::m_CarGroups ...
2D8104:  ADD.W           R1, R5, R3,LSL#1
2D8108:  LDRH.W          R1, [R1,#0x564]
2D810C:  CMP             R1, R0
2D810E:  BEQ.W           loc_2D827E
2D8112:  ADDS            R3, #1
2D8114:  MOVS            R1, #0
2D8116:  CMP             R3, R2
2D8118:  BLT             loc_2D8104
2D811A:  B               loc_2D8280
2D811C:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D8122)
2D811E:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D8120:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2D8122:  LDRB.W          R1, [R1,#(byte_79682B - 0x7967F4)]
2D8126:  CBZ             R1, loc_2D8156
2D8128:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D812E)
2D812A:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D812C:  LDR             R1, [R1]; CPopulation::m_nNumCarsInGroup ...
2D812E:  LDRSH.W         R2, [R1,#(word_9F492E - 0x9F48F0)]
2D8132:  CMP             R2, #1
2D8134:  BLT             loc_2D81C6
2D8136:  LDR             R1, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D813E)
2D8138:  MOVS            R3, #0
2D813A:  ADD             R1, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D813C:  LDR             R5, [R1]; CPopulation::m_CarGroups ...
2D813E:  ADD.W           R1, R5, R3,LSL#1
2D8142:  LDRH.W          R1, [R1,#0x592]
2D8146:  CMP             R1, R0
2D8148:  BEQ.W           loc_2D827E
2D814C:  ADDS            R3, #1
2D814E:  MOVS            R1, #0
2D8150:  CMP             R3, R2
2D8152:  BLT             loc_2D813E
2D8154:  B               loc_2D8280
2D8156:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D815C)
2D8158:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D815A:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2D815C:  LDRB.W          R1, [R1,#(byte_796828 - 0x7967F4)]
2D8160:  CBZ             R1, loc_2D818E
2D8162:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D8168)
2D8164:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D8166:  LDR             R1, [R1]; CPopulation::m_nNumCarsInGroup ...
2D8168:  LDRSH.W         R2, [R1,#(word_9F4930 - 0x9F48F0)]
2D816C:  CMP             R2, #1
2D816E:  BLT             loc_2D81C6
2D8170:  LDR             R1, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D8178)
2D8172:  MOVS            R3, #0
2D8174:  ADD             R1, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D8176:  LDR             R5, [R1]; CPopulation::m_CarGroups ...
2D8178:  ADD.W           R1, R5, R3,LSL#1
2D817C:  LDRH.W          R1, [R1,#0x5C0]
2D8180:  CMP             R1, R0
2D8182:  BEQ             loc_2D827E
2D8184:  ADDS            R3, #1
2D8186:  MOVS            R1, #0
2D8188:  CMP             R3, R2
2D818A:  BLT             loc_2D8178
2D818C:  B               loc_2D8280
2D818E:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D8194)
2D8190:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D8192:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2D8194:  LDRB.W          R1, [R1,#(byte_796842 - 0x7967F4)]
2D8198:  CBZ             R1, loc_2D81CA
2D819A:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D81A0)
2D819C:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D819E:  LDR             R1, [R1]; CPopulation::m_nNumCarsInGroup ...
2D81A0:  LDRSH.W         R2, [R1,#(word_9F4932 - 0x9F48F0)]
2D81A4:  CMP             R2, #1
2D81A6:  BLT             loc_2D81C6
2D81A8:  LDR             R1, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D81B0)
2D81AA:  MOVS            R3, #0
2D81AC:  ADD             R1, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D81AE:  LDR             R5, [R1]; CPopulation::m_CarGroups ...
2D81B0:  ADD.W           R1, R5, R3,LSL#1
2D81B4:  LDRH.W          R1, [R1,#0x5EE]
2D81B8:  CMP             R1, R0
2D81BA:  BEQ             loc_2D827E
2D81BC:  ADDS            R3, #1
2D81BE:  MOVS            R1, #0
2D81C0:  CMP             R3, R2
2D81C2:  BLT             loc_2D81B0
2D81C4:  B               loc_2D8280
2D81C6:  MOVS            R1, #0
2D81C8:  B               loc_2D8280
2D81CA:  LDR             R3, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x2D81D6)
2D81CC:  MOV.W           LR, #0x2D0
2D81D0:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x2D81DC)
2D81D2:  ADD             R3, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
2D81D4:  LDRH.W          R4, [R2,#0xF]
2D81D8:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
2D81DA:  LDR             R6, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D81E8)
2D81DC:  LDR             R3, [R3]; CPopCycle::m_nCurrentTimeIndex ...
2D81DE:  AND.W           R12, R4, #0x1F
2D81E2:  LDR             R4, =(_ZN9CPopCycle16m_nPercTypeGroupE_ptr - 0x2D81EE)
2D81E4:  ADD             R6, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D81E6:  LDR             R5, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
2D81E8:  LDR             R3, [R3]; CPopCycle::m_nCurrentTimeIndex
2D81EA:  ADD             R4, PC; _ZN9CPopCycle16m_nPercTypeGroupE_ptr
2D81EC:  LDR             R1, [R6]; CPopulation::m_CarGroups ...
2D81EE:  LDR             R6, [R5]; CPopCycle::m_nCurrentTimeOfWeek
2D81F0:  MOVS            R5, #0
2D81F2:  LDR             R4, [R4]; CPopCycle::m_nPercTypeGroup ...
2D81F4:  MLA.W           R3, R3, LR, R4
2D81F8:  MOV.W           R4, #0x168
2D81FC:  MLA.W           R8, R6, R4, R3
2D8200:  LDR             R6, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D8206)
2D8202:  ADD             R6, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D8204:  LDR.W           LR, [R6]; CPopulation::m_nNumCarsInGroup ...
2D8208:  MOV             R4, R5
2D820A:  ADD.W           R5, R12, R12,LSL#3
2D820E:  ADD.W           R5, R8, R5,LSL#1
2D8212:  LDRB            R5, [R5,R4]
2D8214:  CBZ             R5, loc_2D822E
2D8216:  LDRSH.W         R5, [LR,R4,LSL#1]
2D821A:  CMP             R5, #1
2D821C:  BLT             loc_2D822E
2D821E:  MOVS            R6, #0
2D8220:  LDRH.W          R3, [R1,R6,LSL#1]
2D8224:  CMP             R3, R0
2D8226:  BEQ             loc_2D827E
2D8228:  ADDS            R6, #1
2D822A:  CMP             R6, R5
2D822C:  BLT             loc_2D8220
2D822E:  ADDS            R1, #0x2E ; '.'
2D8230:  ADDS            R5, R4, #1
2D8232:  CMP             R4, #0x11
2D8234:  BLT             loc_2D8208
2D8236:  LDR             R1, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x2D823E)
2D8238:  MOVS            R4, #0
2D823A:  ADD             R1, PC; _ZN11CPopulation11m_CarGroupsE_ptr
2D823C:  LDR             R1, [R1]; CPopulation::m_CarGroups ...
2D823E:  ADD.W           R3, R1, #0x33C
2D8242:  LDR             R1, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x2D8248)
2D8244:  ADD             R1, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
2D8246:  LDR.W           R12, [R1]; CPopulation::m_nNumCarsInGroup ...
2D824A:  MOV             LR, R4
2D824C:  LDRB.W          R1, [R2,LR]
2D8250:  CBZ             R1, loc_2D826E
2D8252:  ADD.W           R1, R12, LR,LSL#1
2D8256:  LDRSH.W         R1, [R1,#0x24]
2D825A:  CMP             R1, #1
2D825C:  BLT             loc_2D826E
2D825E:  MOVS            R4, #0
2D8260:  LDRH.W          R5, [R3,R4,LSL#1]
2D8264:  CMP             R5, R0
2D8266:  BEQ             loc_2D827E
2D8268:  ADDS            R4, #1
2D826A:  CMP             R4, R1
2D826C:  BLT             loc_2D8260
2D826E:  ADDS            R3, #0x2E ; '.'
2D8270:  ADD.W           R4, LR, #1
2D8274:  MOVS            R1, #0
2D8276:  CMP.W           LR, #9
2D827A:  BLT             loc_2D824A
2D827C:  B               loc_2D8280
2D827E:  MOVS            R1, #1
2D8280:  MOV             R0, R1
2D8282:  POP.W           {R8}
2D8286:  POP             {R4-R7,PC}
