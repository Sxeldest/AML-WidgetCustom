; =========================================================
; Game Engine Function: sub_1450C8
; Address            : 0x1450C8 - 0x14553E
; =========================================================

1450C8:  PUSH            {R4-R7,LR}
1450CA:  ADD             R7, SP, #0xC
1450CC:  PUSH.W          {R8-R11}
1450D0:  SUB             SP, SP, #0x16C
1450D2:  MOV             R6, R1
1450D4:  MOV             R4, R0
1450D6:  BL              sub_17D81C
1450DA:  MOVS            R0, #0
1450DC:  SUB.W           R1, R7, #-var_1E; int
1450E0:  STRH.W          R0, [R7,#var_1E]
1450E4:  MOV             R0, R4; int
1450E6:  MOVS            R2, #0x10
1450E8:  MOVS            R3, #1
1450EA:  BL              sub_17D786
1450EE:  LDR             R0, =(off_23496C - 0x1450FC)
1450F0:  SUB.W           R1, R6, #8
1450F4:  LDRH.W          R5, [R7,#var_1E]
1450F8:  ADD             R0, PC; off_23496C
1450FA:  LDR             R0, [R0]; dword_23DEF4
1450FC:  LDR             R0, [R0]
1450FE:  LDR.W           R0, [R0,#0x3B0]
145102:  LDR             R6, [R0,#4]
145104:  LSRS            R0, R5, #4
145106:  CMP             R0, #0x7C ; '|'
145108:  STR             R1, [R4,#8]
14510A:  BHI.W           loc_145526
14510E:  MOV             R0, R6
145110:  MOV             R1, R5
145112:  BL              sub_F2396
145116:  CMP             R0, #0
145118:  BEQ.W           loc_145526
14511C:  LDR.W           R0, [R6,R5,LSL#2]
145120:  CMP             R0, #0
145122:  BEQ.W           loc_145526
145126:  LDR.W           R11, [R0,#0xC]
14512A:  CMP.W           R11, #0
14512E:  BEQ.W           loc_145526
145132:  LDR             R0, [R4]
145134:  LDR             R1, [R4,#8]
145136:  CMP             R0, R1
145138:  BLE.W           loc_145526
14513C:  ADD.W           R0, R11, #0xA8
145140:  STR             R0, [SP,#0x188+var_184]
145142:  ADD             R0, SP, #0x188+var_150
145144:  ADD.W           R9, SP, #0x188+var_150
145148:  ADD.W           R1, R0, #8
14514C:  ADDS            R0, #4
14514E:  STR             R1, [SP,#0x188+var_178]
145150:  ADD.W           R8, SP, #0x188+var_B0
145154:  STR             R0, [SP,#0x188+var_17C]
145156:  LDR             R0, =(unk_314324 - 0x145160)
145158:  STR.W           R11, [SP,#0x188+var_180]
14515C:  ADD             R0, PC; unk_314324
14515E:  STR             R0, [SP,#0x188+var_170]
145160:  STR             R4, [SP,#0x188+var_174]
145162:  SUB.W           R1, R7, #-var_1F; int
145166:  MOV             R0, R4; int
145168:  MOVS            R2, #8
14516A:  MOVS            R3, #1
14516C:  BL              sub_17D786
145170:  LDR             R0, [R4]
145172:  LDR             R1, [R4,#8]
145174:  CMP             R0, R1
145176:  BLE.W           loc_145526
14517A:  LDRB.W          R0, [R7,#var_1F]
14517E:  CMP             R0, #4; switch 5 cases
145180:  BHI.W           def_145184; jumptable 00145184 default case
145184:  TBH.W           [PC,R0,LSL#1]; switch jump
145188:  DCW 5; jump table for switch statement
14518A:  DCW 0xAF
14518C:  DCW 0xE1
14518E:  DCW 0x131
145190:  DCW 0x168
145192:  LDR.W           R0, [R11,#0x388]; jumptable 00145184 case 0
145196:  LDR             R0, [R0]
145198:  BL              sub_F5428
14519C:  CMP             R0, #0
14519E:  BEQ.W           loc_145526
1451A2:  ADD             R1, SP, #0x188+var_15C; int
1451A4:  MOV             R10, R0
1451A6:  MOV             R0, R4; int
1451A8:  MOVS            R2, #8
1451AA:  MOVS            R3, #1
1451AC:  BL              sub_17D786
1451B0:  LDRB.W          R0, [SP,#0x188+var_15C]
1451B4:  CMP             R0, #0
1451B6:  BEQ.W           loc_145526
1451BA:  LDRH.W          R0, [R7,#var_1E]
1451BE:  MOVS            R2, #0xE0; n
1451C0:  LDR             R1, [SP,#0x188+var_170]
1451C2:  RSB.W           R0, R0, R0,LSL#3
1451C6:  ADD.W           R0, R1, R0,LSL#5; dest
1451CA:  MOV             R1, R10; src
1451CC:  BLX             j_memcpy
1451D0:  MOV.W           R11, #0
1451D4:  MOVS            R6, #0
1451D6:  ADD             R1, SP, #0x188+var_168; int
1451D8:  MOV             R0, R4; int
1451DA:  MOVS            R2, #8
1451DC:  MOVS            R3, #1
1451DE:  BL              sub_17D786
1451E2:  LDRB.W          R10, [SP,#0x188+var_168]
1451E6:  MOV             R0, R10
1451E8:  BL              sub_F427C
1451EC:  SUBS            R0, #1; switch 4 cases
1451EE:  MOVS            R1, #0
1451F0:  CMP             R0, #3
1451F2:  STR             R1, [SP,#0x188+var_B0]
1451F4:  STRB.W          R1, [SP,#0x188+var_B8]
1451F8:  STR             R1, [SP,#0x188+var_150]
1451FA:  BHI             def_1451FC; jumptable 001451FC default case
1451FC:  TBB.W           [PC,R0]; switch jump
145200:  DCB 2; jump table for switch statement
145201:  DCB 0x15
145202:  DCB 0x29
145203:  DCB 2
145204:  MOV             R0, R4; jumptable 001451FC cases 1,4
145206:  MOV             R1, R9; int
145208:  MOVS            R2, #0x20 ; ' '
14520A:  MOVS            R3, #1
14520C:  BL              sub_17D786
145210:  LDRH.W          R0, [R7,#var_1E]
145214:  LDR             R1, [SP,#0x188+var_170]
145216:  RSB.W           R0, R0, R0,LSL#3
14521A:  ADD.W           R0, R1, R0,LSL#5
14521E:  MOV             R1, R10
145220:  BL              sub_F4298
145224:  CBZ             R0, def_1451FC; jumptable 001451FC default case
145226:  LDR             R1, [SP,#0x188+var_150]
145228:  B               loc_14524E
14522A:  MOV             R0, R4; jumptable 001451FC case 2
14522C:  MOV             R1, R8; int
14522E:  MOVS            R2, #0x20 ; ' '
145230:  MOVS            R3, #1
145232:  BL              sub_17D786
145236:  LDRH.W          R0, [R7,#var_1E]
14523A:  LDR             R1, [SP,#0x188+var_170]
14523C:  RSB.W           R0, R0, R0,LSL#3
145240:  ADD.W           R0, R1, R0,LSL#5
145244:  MOV             R1, R10
145246:  BL              sub_F4298
14524A:  CBZ             R0, def_1451FC; jumptable 001451FC default case
14524C:  LDR             R1, [SP,#0x188+var_B0]
14524E:  STR             R1, [R0]
145250:  B               loc_14527A
145252:  ADD             R1, SP, #0x188+var_B8; jumptable 001451FC case 3
145254:  MOV             R0, R4; int
145256:  MOVS            R2, #8
145258:  MOVS            R3, #1
14525A:  BL              sub_17D786
14525E:  LDRH.W          R0, [R7,#var_1E]
145262:  LDR             R1, [SP,#0x188+var_170]
145264:  RSB.W           R0, R0, R0,LSL#3
145268:  ADD.W           R0, R1, R0,LSL#5
14526C:  MOV             R1, R10
14526E:  BL              sub_F4298
145272:  CBZ             R0, def_1451FC; jumptable 001451FC default case
145274:  LDRB.W          R1, [SP,#0x188+var_B8]
145278:  STRB            R1, [R0]
14527A:  MOVS            R6, #1
14527C:  LDRB.W          R0, [SP,#0x188+var_15C]; jumptable 001451FC default case
145280:  ADD.W           R11, R11, #1
145284:  CMP             R11, R0
145286:  BCC             loc_1451D6
145288:  LDR.W           R11, [SP,#0x188+var_180]
14528C:  LSLS            R0, R6, #0x1F
14528E:  BEQ.W           def_145184; jumptable 00145184 default case
145292:  LDR             R0, =(off_23494C - 0x14529C)
145294:  LDRH.W          R1, [R7,#var_1E]
145298:  ADD             R0, PC; off_23494C
14529A:  LDR             R2, [SP,#0x188+var_170]
14529C:  LDR             R0, [R0]; dword_23DF24
14529E:  RSB.W           R1, R1, R1,LSL#3
1452A2:  ADD.W           R1, R2, R1,LSL#5
1452A6:  MOVW            R2, #0xD59
1452AA:  LDR             R0, [R0]
1452AC:  MOVT            R2, #0x57 ; 'W'
1452B0:  STR.W           R1, [R11,#0x388]
1452B4:  ADD             R2, R0
1452B6:  MOVS            R0, #0
1452B8:  BLX             R2
1452BA:  LDR.W           R0, [R11,#0x388]
1452BE:  LDR             R1, [R0,#0xC]
1452C0:  LDR.W           R2, [R0,#0xD0]
1452C4:  STR.W           R1, [R11,#0x94]
1452C8:  LDR             R1, [R0,#4]
1452CA:  STR.W           R1, [R11,#0x90]
1452CE:  ADD.W           R1, R0, #0x14
1452D2:  STR.W           R2, [R11,#0x390]
1452D6:  VLD1.8          {D16}, [R1]
1452DA:  LDR             R1, [SP,#0x188+var_184]
1452DC:  LDR             R0, [R0,#0x1C]
1452DE:  STR             R0, [R1,#8]
1452E0:  VST1.8          {D16}, [R1]
1452E4:  B               def_145184; jumptable 00145184 default case
1452E6:  ADD             R1, SP, #0x188+var_168; jumptable 00145184 case 1
1452E8:  MOV             R0, R4; int
1452EA:  MOVS            R2, #8
1452EC:  MOVS            R3, #1
1452EE:  BL              sub_17D786
1452F2:  LDRB.W          R0, [SP,#0x188+var_168]
1452F6:  ADD             R5, SP, #0x188+var_15C
1452F8:  CMP             R0, #0
1452FA:  BEQ.W           loc_14552E
1452FE:  MOVS            R6, #0
145300:  MOV             R0, R8; int
145302:  MOVS            R1, #0x90; n
145304:  BLX             sub_22178C
145308:  MOV             R0, R4; int
14530A:  MOV             R1, R5; int
14530C:  MOVS            R2, #0x10
14530E:  MOVS            R3, #1
145310:  BL              sub_17D786
145314:  LDRH.W          R2, [SP,#0x188+var_15C]
145318:  MOV             R0, R4; int
14531A:  MOV             R1, R8; dest
14531C:  BL              sub_17D744
145320:  MOV             R0, R9; int
145322:  MOV             R1, R8; s
145324:  BL              sub_DC6DC
145328:  MOV             R0, R11
14532A:  MOV             R1, R9
14532C:  BL              sub_F6376
145330:  LDRB.W          R0, [SP,#0x188+var_150]
145334:  LSLS            R0, R0, #0x1F
145336:  ITT NE
145338:  LDRNE           R0, [SP,#0x188+var_148]; void *
14533A:  BLXNE           j__ZdlPv; operator delete(void *)
14533E:  LDRB.W          R0, [SP,#0x188+var_168]
145342:  ADDS            R6, #1
145344:  CMP             R6, R0
145346:  BCC             loc_145300
145348:  B               def_145184; jumptable 00145184 default case
14534A:  ADD             R1, SP, #0x188+var_16C; jumptable 00145184 case 2
14534C:  MOV             R0, R4; int
14534E:  MOVS            R2, #8
145350:  MOVS            R3, #1
145352:  BL              sub_17D786
145356:  LDRB.W          R0, [SP,#0x188+var_16C]
14535A:  ADD             R5, SP, #0x188+var_168
14535C:  LDR.W           R10, [SP,#0x188+var_17C]
145360:  CMP             R0, #0
145362:  BEQ.W           def_145184; jumptable 00145184 default case
145366:  MOVS            R6, #0
145368:  MOV             R0, R8; int
14536A:  MOVS            R1, #0x90; n
14536C:  BLX             sub_22178C
145370:  ADD             R1, SP, #0x188+var_B8; int
145372:  MOV             R0, R4; int
145374:  MOVS            R2, #0x10
145376:  MOVS            R3, #1
145378:  BL              sub_17D786
14537C:  LDRH.W          R2, [SP,#0x188+var_B8]
145380:  MOV             R0, R4; int
145382:  MOV             R1, R8; dest
145384:  BL              sub_17D744
145388:  MOV             R0, R4; int
14538A:  MOV             R1, R9; int
14538C:  MOVS            R2, #0x20 ; ' '
14538E:  MOVS            R3, #1
145390:  BL              sub_17D786
145394:  MOV             R0, R4; int
145396:  MOV             R1, R10; int
145398:  MOVS            R2, #0x20 ; ' '
14539A:  MOVS            R3, #1
14539C:  BL              sub_17D786
1453A0:  LDR             R1, [SP,#0x188+var_178]; int
1453A2:  MOV             R0, R4; int
1453A4:  MOVS            R2, #0x20 ; ' '
1453A6:  MOVS            R3, #1
1453A8:  BL              sub_17D786
1453AC:  MOV             R0, R4; int
1453AE:  MOV             R1, R5; int
1453B0:  MOVS            R2, #0x20 ; ' '
1453B2:  MOVS            R3, #1
1453B4:  BL              sub_17D786
1453B8:  ADD             R5, SP, #0x188+var_15C
1453BA:  MOV             R1, R8; s
1453BC:  MOV             R0, R5; int
1453BE:  BL              sub_DC6DC
1453C2:  MOV             R1, R5
1453C4:  ADD             R5, SP, #0x188+var_168
1453C6:  MOV             R0, R11
1453C8:  MOV             R2, R9
1453CA:  MOV             R3, R5
1453CC:  BL              sub_F6412
1453D0:  LDRB.W          R0, [SP,#0x188+var_15C]
1453D4:  LSLS            R0, R0, #0x1F
1453D6:  ITT NE
1453D8:  LDRNE           R0, [SP,#0x188+var_154]; void *
1453DA:  BLXNE           j__ZdlPv; operator delete(void *)
1453DE:  LDRB.W          R0, [SP,#0x188+var_16C]
1453E2:  ADDS            R6, #1
1453E4:  CMP             R6, R0
1453E6:  BCC             loc_145368
1453E8:  B               def_145184; jumptable 00145184 default case
1453EA:  ADD             R1, SP, #0x188+var_168; jumptable 00145184 case 3
1453EC:  MOV             R0, R4; int
1453EE:  MOVS            R2, #8
1453F0:  MOVS            R3, #1
1453F2:  BL              sub_17D786
1453F6:  LDRB.W          R0, [SP,#0x188+var_168]
1453FA:  ADD             R5, SP, #0x188+var_15C
1453FC:  CMP             R0, #0
1453FE:  BEQ.W           loc_145536
145402:  MOVS            R6, #0
145404:  MOV             R0, R8; int
145406:  MOVS            R1, #0x90; n
145408:  BLX             sub_22178C
14540C:  MOV             R0, R4; int
14540E:  MOV             R1, R5; int
145410:  MOVS            R2, #0x10
145412:  MOVS            R3, #1
145414:  BL              sub_17D786
145418:  LDRH.W          R2, [SP,#0x188+var_15C]
14541C:  MOV             R0, R4; int
14541E:  MOV             R1, R8; dest
145420:  BL              sub_17D744
145424:  MOV             R0, R9; int
145426:  MOV             R1, R8; s
145428:  BL              sub_DC6DC
14542C:  MOV             R0, R11
14542E:  MOV             R1, R9
145430:  BL              sub_F6C08
145434:  LDRB.W          R0, [SP,#0x188+var_150]
145438:  LSLS            R0, R0, #0x1F
14543A:  ITT NE
14543C:  LDRNE           R0, [SP,#0x188+var_148]; void *
14543E:  BLXNE           j__ZdlPv; operator delete(void *)
145442:  LDRB.W          R0, [SP,#0x188+var_168]
145446:  ADDS            R6, #1
145448:  CMP             R6, R0
14544A:  BCC             loc_145404
14544C:  B               def_145184; jumptable 00145184 default case
14544E:  ALIGN 0x10
145450:  DCD off_23496C - 0x1450FC
145454:  DCD unk_314324 - 0x145160
145458:  SUB.W           R1, R7, #-var_B1; jumptable 00145184 case 4
14545C:  MOV             R0, R4; int
14545E:  MOVS            R2, #8
145460:  MOVS            R3, #1
145462:  BL              sub_17D786
145466:  LDRB.W          R0, [R7,#var_B1]
14546A:  CMP             R0, #0
14546C:  BEQ             loc_145516
14546E:  MOVS            R6, #0
145470:  ADD             R4, SP, #0x188+var_B0
145472:  MOVS            R1, #0x90; n
145474:  MOV             R8, R11
145476:  MOV             R0, R4; int
145478:  BLX             sub_22178C
14547C:  LDR             R5, [SP,#0x188+var_174]
14547E:  ADD             R1, SP, #0x188+var_B4; int
145480:  MOVS            R2, #0x10
145482:  MOVS            R3, #1
145484:  MOV             R0, R5; int
145486:  BL              sub_17D786
14548A:  LDRH.W          R2, [SP,#0x188+var_B4]
14548E:  MOV             R0, R5; int
145490:  MOV             R1, R4; dest
145492:  BL              sub_17D744
145496:  ADD             R1, SP, #0x188+var_B8; int
145498:  MOV             R0, R5; int
14549A:  MOVS            R2, #0x20 ; ' '
14549C:  MOVS            R3, #1
14549E:  BL              sub_17D786
1454A2:  MOV             R0, R9; int
1454A4:  MOVS            R1, #0x90; n
1454A6:  BLX             sub_22178C
1454AA:  SUB.W           R1, R7, #-var_BA; int
1454AE:  MOV             R0, R5; int
1454B0:  MOVS            R2, #0x10
1454B2:  MOVS            R3, #1
1454B4:  BL              sub_17D786
1454B8:  LDRH.W          R2, [R7,#var_BA]
1454BC:  MOV             R0, R5; int
1454BE:  MOV             R1, R9; dest
1454C0:  BL              sub_17D744
1454C4:  ADD.W           R10, SP, #0x188+var_15C
1454C8:  MOV             R1, R4; s
1454CA:  LDR             R5, [SP,#0x188+var_B8]
1454CC:  MOV             R0, R10; int
1454CE:  BL              sub_DC6DC
1454D2:  ADD.W           R11, SP, #0x188+var_168
1454D6:  MOV             R1, R9; s
1454D8:  MOV             R0, R11; int
1454DA:  BL              sub_DC6DC
1454DE:  REV             R0, R5
1454E0:  STR             R0, [SP,#0x188+var_16C]
1454E2:  ADD             R3, SP, #0x188+var_16C
1454E4:  MOV             R0, R8
1454E6:  MOV             R1, R10
1454E8:  MOV             R2, R11
1454EA:  BL              sub_F6F04
1454EE:  LDRB.W          R0, [SP,#0x188+var_168]
1454F2:  LSLS            R0, R0, #0x1F
1454F4:  ITT NE
1454F6:  LDRNE           R0, [SP,#0x188+var_160]; void *
1454F8:  BLXNE           j__ZdlPv; operator delete(void *)
1454FC:  LDRB.W          R0, [SP,#0x188+var_15C]
145500:  MOV             R11, R8
145502:  LSLS            R0, R0, #0x1F
145504:  ITT NE
145506:  LDRNE           R0, [SP,#0x188+var_154]; void *
145508:  BLXNE           j__ZdlPv; operator delete(void *)
14550C:  LDRB.W          R0, [R7,#var_B1]
145510:  ADDS            R6, #1
145512:  CMP             R6, R0
145514:  BCC             loc_145470
145516:  LDR             R4, [SP,#0x188+var_174]
145518:  ADD.W           R8, SP, #0x188+var_B0
14551C:  LDR             R0, [R4]; jumptable 00145184 default case
14551E:  LDR             R1, [R4,#8]
145520:  CMP             R0, R1
145522:  BGT.W           loc_145162
145526:  ADD             SP, SP, #0x16C
145528:  POP.W           {R8-R11}
14552C:  POP             {R4-R7,PC}
14552E:  MOV             R0, R11
145530:  BL              sub_F630C
145534:  B               loc_145526
145536:  MOV             R0, R11
145538:  BL              sub_F6BA4
14553C:  B               loc_145526
