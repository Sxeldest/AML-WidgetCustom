; =========================================================
; Game Engine Function: sub_108190
; Address            : 0x108190 - 0x10833E
; =========================================================

108190:  PUSH            {R4-R7,LR}
108192:  ADD             R7, SP, #0xC
108194:  PUSH.W          {R5-R11}
108198:  LDR.W           R8, [R7,#arg_0]
10819C:  MOV             R4, R1
10819E:  LDR             R1, [R1,#8]
1081A0:  MOV             R9, R2
1081A2:  MOV             R10, R3
1081A4:  MOV             R5, R0
1081A6:  MOV             R2, R8
1081A8:  BL              sub_107A64
1081AC:  CBZ             R0, loc_1081C2
1081AE:  LDR             R0, [R4,#4]
1081B0:  CMP             R0, R9
1081B2:  BNE.W           loc_108338
1081B6:  LDR             R0, [R4,#0x1C]
1081B8:  CMP             R0, #1
1081BA:  IT NE
1081BC:  STRNE.W         R10, [R4,#0x1C]
1081C0:  B               loc_108338
1081C2:  LDR             R1, [R4]
1081C4:  MOV             R0, R5
1081C6:  MOV             R2, R8
1081C8:  BL              sub_107A64
1081CC:  CBZ             R0, loc_1081E6
1081CE:  LDR             R0, [R4,#0x10]
1081D0:  CMP             R0, R9
1081D2:  ITT NE
1081D4:  LDRNE           R0, [R4,#0x14]
1081D6:  CMPNE           R0, R9
1081D8:  BNE             loc_10823C
1081DA:  CMP.W           R10, #1
1081DE:  ITT EQ
1081E0:  MOVEQ           R0, #1
1081E2:  STREQ           R0, [R4,#0x20]
1081E4:  B               loc_108338
1081E6:  ADD.W           R6, R5, #0x10
1081EA:  MOV             R1, R4
1081EC:  MOV             R2, R9
1081EE:  MOV             R3, R10
1081F0:  MOV             R0, R6
1081F2:  LDR.W           R11, [R5,#0xC]
1081F6:  STR.W           R8, [SP,#0x28+var_28]
1081FA:  BL              sub_108378
1081FE:  CMP.W           R11, #2
108202:  BLT.W           loc_108338
108206:  LDR             R0, [R5,#8]
108208:  ADD.W           R11, R6, R11,LSL#3
10820C:  ADD.W           R6, R5, #0x18
108210:  LSLS            R1, R0, #0x1E
108212:  BMI             loc_10821A
108214:  LDR             R1, [R4,#0x24]
108216:  CMP             R1, #1
108218:  BNE             loc_1082B6
10821A:  LDRB.W          R0, [R4,#0x36]
10821E:  CMP             R0, #0
108220:  BNE.W           loc_108338
108224:  MOV             R0, R6
108226:  MOV             R1, R4
108228:  MOV             R2, R9
10822A:  MOV             R3, R10
10822C:  STR.W           R8, [SP,#0x28+var_28]
108230:  BL              sub_108378
108234:  ADDS            R6, #8
108236:  CMP             R6, R11
108238:  BCC             loc_10821A
10823A:  B               loc_108338
10823C:  LDR             R0, [R4,#0x2C]
10823E:  STR.W           R10, [R4,#0x20]
108242:  CMP             R0, #4
108244:  BEQ             loc_10831C
108246:  LDR             R0, [R5,#0xC]
108248:  ADD.W           R6, R5, #0x10
10824C:  MOV.W           R11, #0
108250:  MOV.W           R10, #0
108254:  ADD.W           R0, R6, R0,LSL#3
108258:  STR             R0, [SP,#0x28+var_20]
10825A:  LDR             R0, [SP,#0x28+var_20]
10825C:  CMP             R6, R0
10825E:  BCS             loc_1082AC
108260:  MOVS            R0, #0
108262:  MOV             R1, R4
108264:  STRH            R0, [R4,#0x34]
108266:  MOVS            R0, #1
108268:  STRD.W          R0, R8, [SP,#0x28+var_28]
10826C:  MOV             R0, R6
10826E:  MOV             R2, R9
108270:  MOV             R3, R9
108272:  BL              sub_10833E
108276:  LDRB.W          R0, [R4,#0x36]
10827A:  CBNZ            R0, loc_1082AC
10827C:  LDRB.W          R0, [R4,#0x35]
108280:  CBZ             R0, loc_1082A8
108282:  LDRB.W          R0, [R4,#0x34]
108286:  CBZ             R0, loc_10829E
108288:  LDR             R0, [R4,#0x18]
10828A:  CMP             R0, #1
10828C:  BEQ             loc_10830E
10828E:  LDRB            R0, [R5,#8]
108290:  MOV.W           R11, #1
108294:  MOV.W           R10, #1
108298:  LSLS            R0, R0, #0x1E
10829A:  BMI             loc_1082A8
10829C:  B               loc_108312
10829E:  LDRB            R0, [R5,#8]
1082A0:  LSLS            R0, R0, #0x1F
1082A2:  BEQ             loc_1082B2
1082A4:  MOV.W           R11, #1
1082A8:  ADDS            R6, #8
1082AA:  B               loc_10825A
1082AC:  MOVS.W          R0, R11,LSL#31
1082B0:  BEQ             loc_108308
1082B2:  MOV             R11, R10
1082B4:  B               loc_108312
1082B6:  LSLS            R0, R0, #0x1F
1082B8:  BNE             loc_1082DE
1082BA:  LDRB.W          R0, [R4,#0x36]
1082BE:  CBNZ            R0, loc_108338
1082C0:  LDR             R0, [R4,#0x24]
1082C2:  CMP             R0, #1
1082C4:  BEQ             loc_108338
1082C6:  MOV             R0, R6
1082C8:  MOV             R1, R4
1082CA:  MOV             R2, R9
1082CC:  MOV             R3, R10
1082CE:  STR.W           R8, [SP,#0x28+var_28]
1082D2:  BL              sub_108378
1082D6:  ADDS            R6, #8
1082D8:  CMP             R6, R11
1082DA:  BCC             loc_1082BA
1082DC:  B               loc_108338
1082DE:  LDRB.W          R0, [R4,#0x36]
1082E2:  CBNZ            R0, loc_108338
1082E4:  LDR             R0, [R4,#0x24]
1082E6:  CMP             R0, #1
1082E8:  ITT EQ
1082EA:  LDREQ           R0, [R4,#0x18]
1082EC:  CMPEQ           R0, #1
1082EE:  BEQ             loc_108338
1082F0:  MOV             R0, R6
1082F2:  MOV             R1, R4
1082F4:  MOV             R2, R9
1082F6:  MOV             R3, R10
1082F8:  STR.W           R8, [SP,#0x28+var_28]
1082FC:  BL              sub_108378
108300:  ADDS            R6, #8
108302:  CMP             R6, R11
108304:  BCC             loc_1082DE
108306:  B               loc_108338
108308:  MOVS            R0, #4
10830A:  MOV             R11, R10
10830C:  B               loc_108314
10830E:  MOV.W           R11, #1
108312:  MOVS            R0, #3
108314:  STR             R0, [R4,#0x2C]
108316:  MOVS.W          R0, R11,LSL#31
10831A:  BNE             loc_108338
10831C:  LDRD.W          R0, R1, [R4,#0x24]
108320:  STR.W           R9, [R4,#0x14]
108324:  ADDS            R1, #1
108326:  STR             R1, [R4,#0x28]
108328:  CMP             R0, #1
10832A:  BNE             loc_108338
10832C:  LDR             R0, [R4,#0x18]
10832E:  CMP             R0, #2
108330:  ITT EQ
108332:  MOVEQ           R0, #1
108334:  STRBEQ.W        R0, [R4,#0x36]
108338:  POP.W           {R1-R3,R8-R11}
10833C:  POP             {R4-R7,PC}
