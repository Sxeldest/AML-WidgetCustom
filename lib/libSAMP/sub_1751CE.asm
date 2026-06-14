; =========================================================
; Game Engine Function: sub_1751CE
; Address            : 0x1751CE - 0x175354
; =========================================================

1751CE:  PUSH            {R4-R7,LR}
1751D0:  ADD             R7, SP, #0xC
1751D2:  PUSH.W          {R8-R11}
1751D6:  SUB             SP, SP, #4
1751D8:  MOV             R10, R0
1751DA:  LDRB.W          R0, [R1,#0x3C]
1751DE:  MOV             R11, R1
1751E0:  CMP             R0, #0
1751E2:  BNE             loc_175286
1751E4:  MOVS            R0, #0x58 ; 'X'
1751E6:  BL              sub_1654B0
1751EA:  VMOV.I32        Q8, #0
1751EE:  MOV             R1, R0
1751F0:  MOVS            R3, #0xC
1751F2:  MOVS            R2, #0
1751F4:  STR.W           R2, [R0,#0x3E]
1751F8:  MOV.W           R6, #0x3F800000
1751FC:  VST1.32         {D16-D17}, [R1]!
175200:  VST1.32         {D16-D17}, [R1],R3
175204:  MOVS            R3, #0xE
175206:  VST1.32         {D16-D17}, [R1]!
17520A:  VST1.32         {D16-D17}, [R1],R3
17520E:  STR             R2, [R1]
175210:  MOVS            R1, #0x3F ; '?'
175212:  STRH.W          R1, [R0,#0x42]
175216:  LDRD.W          R1, R3, [R10,#0x34]
17521A:  STRB.W          R2, [R0,#0x54]
17521E:  CMP             R1, R3
175220:  STR             R2, [R0,#0x4C]
175222:  STR             R2, [R0,#0x50]
175224:  STRD.W          R6, R2, [R0,#0x44]
175228:  STR             R0, [SP,#0x20+var_20]
17522A:  BNE             loc_175272
17522C:  CMP             R1, #0
17522E:  ADD.W           R6, R1, #1
175232:  ITTE NE
175234:  ADDNE.W         R0, R1, R1,LSR#31
175238:  ADDNE.W         R0, R1, R0,ASR#1
17523C:  MOVEQ           R0, #8
17523E:  CMP             R0, R6
175240:  IT GT
175242:  MOVGT           R6, R0
175244:  CMP             R1, R6
175246:  BGE             loc_175272
175248:  LSLS            R0, R6, #2
17524A:  BL              sub_1654B0
17524E:  LDR.W           R1, [R10,#0x3C]; src
175252:  MOV             R8, R0
175254:  CBZ             R1, loc_17526A
175256:  LDR.W           R0, [R10,#0x34]
17525A:  LSLS            R2, R0, #2; n
17525C:  MOV             R0, R8; dest
17525E:  BLX             j_memcpy
175262:  LDR.W           R0, [R10,#0x3C]
175266:  BL              sub_165578
17526A:  LDR.W           R1, [R10,#0x34]
17526E:  STRD.W          R6, R8, [R10,#0x38]
175272:  LDR.W           R0, [R10,#0x3C]
175276:  LDR             R2, [SP,#0x20+var_20]
175278:  STR.W           R2, [R0,R1,LSL#2]
17527C:  LDR.W           R0, [R10,#0x34]
175280:  ADDS            R0, #1
175282:  STR.W           R0, [R10,#0x34]
175286:  LDRD.W          R0, R1, [R10,#0x4C]
17528A:  CMP             R0, R1
17528C:  BNE             loc_1752DA
17528E:  CMP             R0, #0
175290:  ADD.W           R6, R0, #1
175294:  ITTE NE
175296:  ADDNE.W         R1, R0, R0,LSR#31
17529A:  ADDNE.W         R1, R0, R1,ASR#1
17529E:  MOVEQ           R1, #8
1752A0:  CMP             R1, R6
1752A2:  IT GT
1752A4:  MOVGT           R6, R1
1752A6:  CMP             R0, R6
1752A8:  BGE             loc_1752DA
1752AA:  MOVS            R4, #0x74 ; 't'
1752AC:  MUL.W           R0, R6, R4
1752B0:  BL              sub_1654B0
1752B4:  LDR.W           R1, [R10,#0x54]; src
1752B8:  MOV             R8, R0
1752BA:  CBZ             R1, loc_1752D2
1752BC:  LDR.W           R0, [R10,#0x4C]
1752C0:  MUL.W           R2, R0, R4; n
1752C4:  MOV             R0, R8; dest
1752C6:  BLX             j_memcpy
1752CA:  LDR.W           R0, [R10,#0x54]
1752CE:  BL              sub_165578
1752D2:  LDR.W           R0, [R10,#0x4C]
1752D6:  STRD.W          R6, R8, [R10,#0x50]
1752DA:  MOVS            R5, #0x74 ; 't'
1752DC:  LDR.W           R1, [R10,#0x54]
1752E0:  MLA.W           R0, R0, R5, R1; dest
1752E4:  MOV             R1, R11; src
1752E6:  MOVS            R2, #0x74 ; 't'; n
1752E8:  BLX             j_memcpy
1752EC:  LDR.W           R4, [R10,#0x4C]
1752F0:  LDR.W           R8, [R10,#0x54]
1752F4:  ADDS            R1, R4, #1
1752F6:  STR.W           R1, [R10,#0x4C]
1752FA:  MLA.W           R6, R4, R5, R8
1752FE:  MOV             R5, R6
175300:  LDR.W           R0, [R5,#0x70]!
175304:  CBNZ            R0, loc_175318
175306:  LDR.W           R0, [R10,#0x34]
17530A:  LDR.W           R1, [R10,#0x3C]
17530E:  ADD.W           R0, R1, R0,LSL#2
175312:  LDR.W           R0, [R0,#-4]
175316:  STR             R0, [R5]
175318:  LDRB.W          R0, [R6,#8]!
17531C:  CBNZ            R0, loc_175344
17531E:  MOVS            R0, #0x74 ; 't'
175320:  MLA.W           R9, R4, R0, R8
175324:  LDR.W           R0, [R9,#4]
175328:  BL              sub_1654B0
17532C:  MOVS            R1, #0x74 ; 't'
17532E:  LDR.W           R2, [R9,#4]; n
175332:  MULS            R1, R4
175334:  MOVS            R3, #1
175336:  STRB            R3, [R6]
175338:  STR.W           R0, [R8,R1]
17533C:  LDR.W           R1, [R11]; src
175340:  BLX             j_memcpy
175344:  MOV             R0, R10
175346:  BL              sub_175046
17534A:  LDR             R0, [R5]
17534C:  ADD             SP, SP, #4
17534E:  POP.W           {R8-R11}
175352:  POP             {R4-R7,PC}
