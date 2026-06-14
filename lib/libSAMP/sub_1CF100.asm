; =========================================================
; Game Engine Function: sub_1CF100
; Address            : 0x1CF100 - 0x1D5AC4
; =========================================================

1CF100:  PUSH            {R4-R11,LR}
1CF104:  ADD             R11, SP, #0x1C
1CF108:  SUB             SP, SP, #4
1CF10C:  VPUSH           {D8-D10}
1CF110:  SUB             SP, SP, #0x510
1CF114:  STR             R2, [SP,#0x548+src]
1CF118:  STR             R0, [SP,#0x548+dest]
1CF11C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CF128)
1CF120:  LDR             R0, [PC,R0]; __stack_chk_guard
1CF124:  LDR             R0, [R0]
1CF128:  LDR             R2, [R11,#arg_4]
1CF12C:  STR             R2, [SP,#0x548+var_528]
1CF130:  LDR             R7, [R11,#arg_0]
1CF134:  STR             R0, [R11,#var_40]
1CF138:  SUB             R0, R1, #0x1400; switch 13 cases
1CF13C:  CMP             R0, #0xC
1CF140:  BHI             def_1CF154; jumptable 001CF154 default case
1CF144:  ADR             R1, jpt_1CF154
1CF148:  MOV             R0, R0,LSL#2
1CF14C:  STR             R7, [SP,#0x548+var_530]
1CF150:  LDR             R0, [R0,R1]
1CF154:  ADD             PC, R0, R1; switch jump
1CF158:  DCD loc_1CF18C - 0x1CF158; jump table for switch statement
1CF15C:  DCD loc_1CF240 - 0x1CF158; jumptable 001CF154 case 5121
1CF160:  DCD loc_1CF2F8 - 0x1CF158; jumptable 001CF154 case 5122
1CF164:  DCD loc_1CF3B0 - 0x1CF158; jumptable 001CF154 case 5123
1CF168:  DCD loc_1CF46C - 0x1CF158; jumptable 001CF154 case 5124
1CF16C:  DCD loc_1CF524 - 0x1CF158; jumptable 001CF154 case 5125
1CF170:  DCD loc_1CF5E0 - 0x1CF158; jumptable 001CF154 case 5126
1CF174:  DCD loc_1CF6A8 - 0x1CF158; jumptable 001CF154 case 5127
1CF178:  DCD loc_1CF770 - 0x1CF158; jumptable 001CF154 case 5128
1CF17C:  DCD loc_1CF83C - 0x1CF158; jumptable 001CF154 case 5129
1CF180:  DCD loc_1CF904 - 0x1CF158; jumptable 001CF154 case 5130
1CF184:  DCD loc_1CFA20 - 0x1CF158; jumptable 001CF154 case 5131
1CF188:  DCD loc_1CFB60 - 0x1CF158; jumptable 001CF154 case 5132
1CF18C:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5120
1CF190:  CMP             R0, #0xC
1CF194:  BHI             def_1CF154; jumptable 001CF154 default case
1CF198:  ADR             R1, jpt_1CF1A4
1CF19C:  MOV             R0, R0,LSL#2
1CF1A0:  LDR             R0, [R0,R1]
1CF1A4:  ADD             PC, R0, R1; switch jump
1CF1A8:  DCD loc_1CF1DC - 0x1CF1A8; jump table for switch statement
1CF1AC:  DCD loc_1CFC5C - 0x1CF1A8; jumptable 001CF1A4 case 5121
1CF1B0:  DCD loc_1CFCC4 - 0x1CF1A8; jumptable 001CF1A4 case 5122
1CF1B4:  DCD loc_1CFD2C - 0x1CF1A8; jumptable 001CF1A4 case 5123
1CF1B8:  DCD loc_1CFD98 - 0x1CF1A8; jumptable 001CF1A4 case 5124
1CF1BC:  DCD loc_1CFE00 - 0x1CF1A8; jumptable 001CF1A4 case 5125
1CF1C0:  DCD loc_1CFE6C - 0x1CF1A8; jumptable 001CF1A4 case 5126
1CF1C4:  DCD loc_1CFF08 - 0x1CF1A8; jumptable 001CF1A4 case 5127
1CF1C8:  DCD loc_1CFFA8 - 0x1CF1A8; jumptable 001CF1A4 case 5128
1CF1CC:  DCD loc_1D0014 - 0x1CF1A8; jumptable 001CF1A4 case 5129
1CF1D0:  DCD loc_1D0084 - 0x1CF1A8; jumptable 001CF1A4 case 5130
1CF1D4:  DCD loc_1D00FC - 0x1CF1A8; jumptable 001CF1A4 case 5131
1CF1D8:  DCD loc_1D0170 - 0x1CF1A8; jumptable 001CF1A4 case 5132
1CF1DC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5120
1CF1E0:  CMP             R0, #0
1CF1E4:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF1E8:  MOV             R0, #0
1CF1EC:  CMP             R7, #0
1CF1F0:  BEQ             loc_1CF22C
1CF1F4:  LDR             R6, [SP,#0x548+dest]
1CF1F8:  MOV             R1, R7
1CF1FC:  LDR             R5, [SP,#0x548+src]
1CF200:  MOV             R2, R6
1CF204:  MOV             R3, R5
1CF208:  LDRB            R7, [R3],#1
1CF20C:  SUBS            R1, R1, #1
1CF210:  STRB            R7, [R2],#1
1CF214:  BNE             loc_1CF208
1CF218:  LDR             R7, [SP,#0x548+var_530]
1CF21C:  ADD             R6, R6, R7
1CF220:  STR             R6, [SP,#0x548+dest]
1CF224:  ADD             R5, R5, R7
1CF228:  STR             R5, [SP,#0x548+src]
1CF22C:  LDR             R1, [SP,#0x548+var_528]
1CF230:  ADD             R0, R0, #1
1CF234:  CMP             R0, R1
1CF238:  BNE             loc_1CF1EC
1CF23C:  B               def_1CF154; jumptable 001CF154 default case
1CF240:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5121
1CF244:  CMP             R0, #0xC
1CF248:  BHI             def_1CF154; jumptable 001CF154 default case
1CF24C:  ADR             R1, jpt_1CF258
1CF250:  MOV             R0, R0,LSL#2
1CF254:  LDR             R0, [R0,R1]
1CF258:  ADD             PC, R0, R1; switch jump
1CF25C:  DCD loc_1CF290 - 0x1CF25C; jump table for switch statement
1CF260:  DCD loc_1D0240 - 0x1CF25C; jumptable 001CF258 case 5121
1CF264:  DCD loc_1D02A4 - 0x1CF25C; jumptable 001CF258 case 5122
1CF268:  DCD loc_1D0318 - 0x1CF25C; jumptable 001CF258 case 5123
1CF26C:  DCD loc_1D0380 - 0x1CF25C; jumptable 001CF258 case 5124
1CF270:  DCD loc_1D03EC - 0x1CF25C; jumptable 001CF258 case 5125
1CF274:  DCD loc_1D0454 - 0x1CF25C; jumptable 001CF258 case 5126
1CF278:  DCD loc_1D04F4 - 0x1CF25C; jumptable 001CF258 case 5127
1CF27C:  DCD loc_1D0598 - 0x1CF25C; jumptable 001CF258 case 5128
1CF280:  DCD loc_1D0608 - 0x1CF25C; jumptable 001CF258 case 5129
1CF284:  DCD loc_1D0674 - 0x1CF25C; jumptable 001CF258 case 5130
1CF288:  DCD loc_1D06F0 - 0x1CF25C; jumptable 001CF258 case 5131
1CF28C:  DCD loc_1D076C - 0x1CF25C; jumptable 001CF258 case 5132
1CF290:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5120
1CF294:  CMP             R0, #0
1CF298:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF29C:  MOV             R0, #0
1CF2A0:  CMP             R7, #0
1CF2A4:  BEQ             loc_1CF2E4
1CF2A8:  LDR             R6, [SP,#0x548+dest]
1CF2AC:  MOV             R1, R7
1CF2B0:  LDR             R5, [SP,#0x548+src]
1CF2B4:  MOV             R2, R6
1CF2B8:  MOV             R3, R5
1CF2BC:  LDRB            R7, [R3],#1
1CF2C0:  SUBS            R1, R1, #1
1CF2C4:  ADD             R7, R7, #0x80
1CF2C8:  STRB            R7, [R2],#1
1CF2CC:  BNE             loc_1CF2BC
1CF2D0:  LDR             R7, [SP,#0x548+var_530]
1CF2D4:  ADD             R6, R6, R7
1CF2D8:  STR             R6, [SP,#0x548+dest]
1CF2DC:  ADD             R5, R5, R7
1CF2E0:  STR             R5, [SP,#0x548+src]
1CF2E4:  LDR             R1, [SP,#0x548+var_528]
1CF2E8:  ADD             R0, R0, #1
1CF2EC:  CMP             R0, R1
1CF2F0:  BNE             loc_1CF2A0
1CF2F4:  B               def_1CF154; jumptable 001CF154 default case
1CF2F8:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5122
1CF2FC:  CMP             R0, #0xC
1CF300:  BHI             def_1CF154; jumptable 001CF154 default case
1CF304:  ADR             R1, jpt_1CF310
1CF308:  MOV             R0, R0,LSL#2
1CF30C:  LDR             R0, [R0,R1]
1CF310:  ADD             PC, R0, R1; switch jump
1CF314:  DCD loc_1CF348 - 0x1CF314; jump table for switch statement
1CF318:  DCD loc_1D0850 - 0x1CF314; jumptable 001CF310 case 5121
1CF31C:  DCD loc_1D08BC - 0x1CF314; jumptable 001CF310 case 5122
1CF320:  DCD loc_1D0924 - 0x1CF314; jumptable 001CF310 case 5123
1CF324:  DCD loc_1D098C - 0x1CF314; jumptable 001CF310 case 5124
1CF328:  DCD loc_1D09F4 - 0x1CF314; jumptable 001CF310 case 5125
1CF32C:  DCD loc_1D0A64 - 0x1CF314; jumptable 001CF310 case 5126
1CF330:  DCD loc_1D0B00 - 0x1CF314; jumptable 001CF310 case 5127
1CF334:  DCD loc_1D0BA0 - 0x1CF314; jumptable 001CF310 case 5128
1CF338:  DCD loc_1D0C18 - 0x1CF314; jumptable 001CF310 case 5129
1CF33C:  DCD loc_1D0C94 - 0x1CF314; jumptable 001CF310 case 5130
1CF340:  DCD loc_1D0D08 - 0x1CF314; jumptable 001CF310 case 5131
1CF344:  DCD loc_1D0D7C - 0x1CF314; jumptable 001CF310 case 5132
1CF348:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5120
1CF34C:  CMP             R0, #0
1CF350:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF354:  MOV             R0, #0
1CF358:  CMP             R7, #0
1CF35C:  BEQ             loc_1CF39C
1CF360:  LDR             R6, [SP,#0x548+dest]
1CF364:  MOV             R1, R7
1CF368:  LDR             R5, [SP,#0x548+src]
1CF36C:  MOV             R2, R6
1CF370:  MOV             R3, R5
1CF374:  LDRB            R7, [R3],#1
1CF378:  SUBS            R1, R1, #1
1CF37C:  MOV             R7, R7,LSL#8
1CF380:  STRH            R7, [R2],#2
1CF384:  BNE             loc_1CF374
1CF388:  LDR             R7, [SP,#0x548+var_530]
1CF38C:  ADD             R5, R5, R7
1CF390:  ADD             R6, R6, R7,LSL#1
1CF394:  STR             R6, [SP,#0x548+dest]
1CF398:  STR             R5, [SP,#0x548+src]
1CF39C:  LDR             R1, [SP,#0x548+var_528]
1CF3A0:  ADD             R0, R0, #1
1CF3A4:  CMP             R0, R1
1CF3A8:  BNE             loc_1CF358
1CF3AC:  B               def_1CF154; jumptable 001CF154 default case
1CF3B0:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5123
1CF3B4:  CMP             R0, #0xC
1CF3B8:  BHI             def_1CF154; jumptable 001CF154 default case
1CF3BC:  ADR             R1, jpt_1CF3C8
1CF3C0:  MOV             R0, R0,LSL#2
1CF3C4:  LDR             R0, [R0,R1]
1CF3C8:  ADD             PC, R0, R1; switch jump
1CF3CC:  DCD loc_1CF400 - 0x1CF3CC; jump table for switch statement
1CF3D0:  DCD loc_1D0E48 - 0x1CF3CC; jumptable 001CF3C8 case 5121
1CF3D4:  DCD loc_1D0EB8 - 0x1CF3CC; jumptable 001CF3C8 case 5122
1CF3D8:  DCD loc_1D0F20 - 0x1CF3CC; jumptable 001CF3C8 case 5123
1CF3DC:  DCD loc_1D0F84 - 0x1CF3CC; jumptable 001CF3C8 case 5124
1CF3E0:  DCD loc_1D0FF0 - 0x1CF3CC; jumptable 001CF3C8 case 5125
1CF3E4:  DCD loc_1D105C - 0x1CF3CC; jumptable 001CF3C8 case 5126
1CF3E8:  DCD loc_1D1100 - 0x1CF3CC; jumptable 001CF3C8 case 5127
1CF3EC:  DCD loc_1D11A4 - 0x1CF3CC; jumptable 001CF3C8 case 5128
1CF3F0:  DCD loc_1D1230 - 0x1CF3CC; jumptable 001CF3C8 case 5129
1CF3F4:  DCD loc_1D12A8 - 0x1CF3CC; jumptable 001CF3C8 case 5130
1CF3F8:  DCD loc_1D1320 - 0x1CF3CC; jumptable 001CF3C8 case 5131
1CF3FC:  DCD loc_1D1398 - 0x1CF3CC; jumptable 001CF3C8 case 5132
1CF400:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5120
1CF404:  CMP             R0, #0
1CF408:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF40C:  MOV             R0, #0
1CF410:  MOV             R1, #0x8000
1CF414:  CMP             R7, #0
1CF418:  BEQ             loc_1CF458
1CF41C:  LDR             R5, [SP,#0x548+dest]
1CF420:  MOV             R2, R7
1CF424:  LDR             R4, [SP,#0x548+src]
1CF428:  MOV             R3, R5
1CF42C:  MOV             R7, R4
1CF430:  LDRB            R6, [R7],#1
1CF434:  SUBS            R2, R2, #1
1CF438:  ADD             R6, R1, R6,LSL#8
1CF43C:  STRH            R6, [R3],#2
1CF440:  BNE             loc_1CF430
1CF444:  LDR             R7, [SP,#0x548+var_530]
1CF448:  ADD             R4, R4, R7
1CF44C:  ADD             R5, R5, R7,LSL#1
1CF450:  STR             R5, [SP,#0x548+dest]
1CF454:  STR             R4, [SP,#0x548+src]
1CF458:  LDR             R2, [SP,#0x548+var_528]
1CF45C:  ADD             R0, R0, #1
1CF460:  CMP             R0, R2
1CF464:  BNE             loc_1CF414
1CF468:  B               def_1CF154; jumptable 001CF154 default case
1CF46C:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5124
1CF470:  CMP             R0, #0xC
1CF474:  BHI             def_1CF154; jumptable 001CF154 default case
1CF478:  ADR             R1, jpt_1CF484
1CF47C:  MOV             R0, R0,LSL#2
1CF480:  LDR             R0, [R0,R1]
1CF484:  ADD             PC, R0, R1; switch jump
1CF488:  DCD loc_1CF4BC - 0x1CF488; jump table for switch statement
1CF48C:  DCD loc_1D1464 - 0x1CF488; jumptable 001CF484 case 5121
1CF490:  DCD loc_1D14D0 - 0x1CF488; jumptable 001CF484 case 5122
1CF494:  DCD loc_1D1538 - 0x1CF488; jumptable 001CF484 case 5123
1CF498:  DCD loc_1D15A4 - 0x1CF488; jumptable 001CF484 case 5124
1CF49C:  DCD loc_1D1608 - 0x1CF488; jumptable 001CF484 case 5125
1CF4A0:  DCD loc_1D1678 - 0x1CF488; jumptable 001CF484 case 5126
1CF4A4:  DCD loc_1D171C - 0x1CF488; jumptable 001CF484 case 5127
1CF4A8:  DCD loc_1D17BC - 0x1CF488; jumptable 001CF484 case 5128
1CF4AC:  DCD loc_1D1834 - 0x1CF488; jumptable 001CF484 case 5129
1CF4B0:  DCD loc_1D18B0 - 0x1CF488; jumptable 001CF484 case 5130
1CF4B4:  DCD loc_1D1928 - 0x1CF488; jumptable 001CF484 case 5131
1CF4B8:  DCD loc_1D19A0 - 0x1CF488; jumptable 001CF484 case 5132
1CF4BC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5120
1CF4C0:  CMP             R0, #0
1CF4C4:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF4C8:  MOV             R0, #0
1CF4CC:  CMP             R7, #0
1CF4D0:  BEQ             loc_1CF510
1CF4D4:  LDR             R6, [SP,#0x548+dest]
1CF4D8:  MOV             R1, R7
1CF4DC:  LDR             R5, [SP,#0x548+src]
1CF4E0:  MOV             R2, R6
1CF4E4:  MOV             R3, R5
1CF4E8:  LDRB            R7, [R3],#1
1CF4EC:  SUBS            R1, R1, #1
1CF4F0:  MOV             R7, R7,LSL#24
1CF4F4:  STR             R7, [R2],#4
1CF4F8:  BNE             loc_1CF4E8
1CF4FC:  LDR             R7, [SP,#0x548+var_530]
1CF500:  ADD             R5, R5, R7
1CF504:  ADD             R6, R6, R7,LSL#2
1CF508:  STR             R6, [SP,#0x548+dest]
1CF50C:  STR             R5, [SP,#0x548+src]
1CF510:  LDR             R1, [SP,#0x548+var_528]
1CF514:  ADD             R0, R0, #1
1CF518:  CMP             R0, R1
1CF51C:  BNE             loc_1CF4CC
1CF520:  B               def_1CF154; jumptable 001CF154 default case
1CF524:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5125
1CF528:  CMP             R0, #0xC
1CF52C:  BHI             def_1CF154; jumptable 001CF154 default case
1CF530:  ADR             R1, jpt_1CF53C
1CF534:  MOV             R0, R0,LSL#2
1CF538:  LDR             R0, [R0,R1]
1CF53C:  ADD             PC, R0, R1; switch jump
1CF540:  DCD loc_1CF574 - 0x1CF540; jump table for switch statement
1CF544:  DCD loc_1D1A78 - 0x1CF540; jumptable 001CF53C case 5121
1CF548:  DCD loc_1D1AE0 - 0x1CF540; jumptable 001CF53C case 5122
1CF54C:  DCD loc_1D1B4C - 0x1CF540; jumptable 001CF53C case 5123
1CF550:  DCD loc_1D1BB4 - 0x1CF540; jumptable 001CF53C case 5124
1CF554:  DCD loc_1D1C1C - 0x1CF540; jumptable 001CF53C case 5125
1CF558:  DCD loc_1D1C88 - 0x1CF540; jumptable 001CF53C case 5126
1CF55C:  DCD loc_1D1D30 - 0x1CF540; jumptable 001CF53C case 5127
1CF560:  DCD loc_1D1DD4 - 0x1CF540; jumptable 001CF53C case 5128
1CF564:  DCD loc_1D1E50 - 0x1CF540; jumptable 001CF53C case 5129
1CF568:  DCD loc_1D1EC8 - 0x1CF540; jumptable 001CF53C case 5130
1CF56C:  DCD loc_1D1F44 - 0x1CF540; jumptable 001CF53C case 5131
1CF570:  DCD loc_1D1FC0 - 0x1CF540; jumptable 001CF53C case 5132
1CF574:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5120
1CF578:  CMP             R0, #0
1CF57C:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF580:  MOV             R0, #0
1CF584:  MOV             R1, #0x80000000
1CF588:  CMP             R7, #0
1CF58C:  BEQ             loc_1CF5CC
1CF590:  LDR             R5, [SP,#0x548+dest]
1CF594:  MOV             R2, R7
1CF598:  LDR             R4, [SP,#0x548+src]
1CF59C:  MOV             R3, R5
1CF5A0:  MOV             R7, R4
1CF5A4:  LDRB            R6, [R7],#1
1CF5A8:  SUBS            R2, R2, #1
1CF5AC:  EOR             R6, R1, R6,LSL#24
1CF5B0:  STR             R6, [R3],#4
1CF5B4:  BNE             loc_1CF5A4
1CF5B8:  LDR             R7, [SP,#0x548+var_530]
1CF5BC:  ADD             R4, R4, R7
1CF5C0:  ADD             R5, R5, R7,LSL#2
1CF5C4:  STR             R5, [SP,#0x548+dest]
1CF5C8:  STR             R4, [SP,#0x548+src]
1CF5CC:  LDR             R2, [SP,#0x548+var_528]
1CF5D0:  ADD             R0, R0, #1
1CF5D4:  CMP             R0, R2
1CF5D8:  BNE             loc_1CF588
1CF5DC:  B               def_1CF154; jumptable 001CF154 default case
1CF5E0:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5126
1CF5E4:  CMP             R0, #0xC
1CF5E8:  BHI             def_1CF154; jumptable 001CF154 default case
1CF5EC:  ADR             R1, jpt_1CF5F8
1CF5F0:  MOV             R0, R0,LSL#2
1CF5F4:  LDR             R0, [R0,R1]
1CF5F8:  ADD             PC, R0, R1; switch jump
1CF5FC:  DCD loc_1CF630 - 0x1CF5FC; jump table for switch statement
1CF600:  DCD loc_1D20A4 - 0x1CF5FC; jumptable 001CF5F8 case 5121
1CF604:  DCD loc_1D2120 - 0x1CF5FC; jumptable 001CF5F8 case 5122
1CF608:  DCD loc_1D2198 - 0x1CF5FC; jumptable 001CF5F8 case 5123
1CF60C:  DCD loc_1D2214 - 0x1CF5FC; jumptable 001CF5F8 case 5124
1CF610:  DCD loc_1D2294 - 0x1CF5FC; jumptable 001CF5F8 case 5125
1CF614:  DCD loc_1D2318 - 0x1CF5FC; jumptable 001CF5F8 case 5126
1CF618:  DCD loc_1D237C - 0x1CF5FC; jumptable 001CF5F8 case 5127
1CF61C:  DCD loc_1D23F0 - 0x1CF5FC; jumptable 001CF5F8 case 5128
1CF620:  DCD loc_1D2488 - 0x1CF5FC; jumptable 001CF5F8 case 5129
1CF624:  DCD loc_1D251C - 0x1CF5FC; jumptable 001CF5F8 case 5130
1CF628:  DCD loc_1D25C8 - 0x1CF5FC; jumptable 001CF5F8 case 5131
1CF62C:  DCD loc_1D2650 - 0x1CF5FC; jumptable 001CF5F8 case 5132
1CF630:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5120
1CF634:  CMP             R0, #0
1CF638:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF63C:  VLDR            S0, =0.007874
1CF640:  MOV             R0, #0
1CF644:  CMP             R7, #0
1CF648:  BEQ             loc_1CF694
1CF64C:  LDR             R6, [SP,#0x548+dest]
1CF650:  MOV             R1, R7
1CF654:  LDR             R5, [SP,#0x548+src]
1CF658:  MOV             R2, R6
1CF65C:  MOV             R3, R5
1CF660:  LDRSB           R7, [R3],#1
1CF664:  SUBS            R1, R1, #1
1CF668:  VMOV            S2, R7
1CF66C:  VCVT.F32.S32    S2, S2
1CF670:  VMUL.F32        S2, S2, S0
1CF674:  VSTR            S2, [R2]
1CF678:  ADD             R2, R2, #4
1CF67C:  BNE             loc_1CF660
1CF680:  LDR             R7, [SP,#0x548+var_530]
1CF684:  ADD             R5, R5, R7
1CF688:  ADD             R6, R6, R7,LSL#2
1CF68C:  STR             R6, [SP,#0x548+dest]
1CF690:  STR             R5, [SP,#0x548+src]
1CF694:  LDR             R1, [SP,#0x548+var_528]
1CF698:  ADD             R0, R0, #1
1CF69C:  CMP             R0, R1
1CF6A0:  BNE             loc_1CF644
1CF6A4:  B               def_1CF154; jumptable 001CF154 default case
1CF6A8:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5127
1CF6AC:  CMP             R0, #0xC
1CF6B0:  BHI             def_1CF154; jumptable 001CF154 default case
1CF6B4:  ADR             R1, jpt_1CF6C0
1CF6B8:  MOV             R0, R0,LSL#2
1CF6BC:  LDR             R0, [R0,R1]
1CF6C0:  ADD             PC, R0, R1; switch jump
1CF6C4:  DCD loc_1CF6F8 - 0x1CF6C4; jump table for switch statement
1CF6C8:  DCD loc_1D272C - 0x1CF6C4; jumptable 001CF6C0 case 5121
1CF6CC:  DCD loc_1D27A8 - 0x1CF6C4; jumptable 001CF6C0 case 5122
1CF6D0:  DCD loc_1D2820 - 0x1CF6C4; jumptable 001CF6C0 case 5123
1CF6D4:  DCD loc_1D28A0 - 0x1CF6C4; jumptable 001CF6C0 case 5124
1CF6D8:  DCD loc_1D291C - 0x1CF6C4; jumptable 001CF6C0 case 5125
1CF6DC:  DCD loc_1D2998 - 0x1CF6C4; jumptable 001CF6C0 case 5126
1CF6E0:  DCD loc_1D2A0C - 0x1CF6C4; jumptable 001CF6C0 case 5127
1CF6E4:  DCD loc_1D2A7C - 0x1CF6C4; jumptable 001CF6C0 case 5128
1CF6E8:  DCD loc_1D2B0C - 0x1CF6C4; jumptable 001CF6C0 case 5129
1CF6EC:  DCD loc_1D2B98 - 0x1CF6C4; jumptable 001CF6C0 case 5130
1CF6F0:  DCD loc_1D2C20 - 0x1CF6C4; jumptable 001CF6C0 case 5131
1CF6F4:  DCD loc_1D2CA8 - 0x1CF6C4; jumptable 001CF6C0 case 5132
1CF6F8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5120
1CF6FC:  CMP             R0, #0
1CF700:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF704:  VLDR            D0, =0.00787401575
1CF708:  MOV             R0, #0
1CF70C:  CMP             R7, #0
1CF710:  BEQ             loc_1CF75C
1CF714:  LDR             R6, [SP,#0x548+dest]
1CF718:  MOV             R1, R7
1CF71C:  LDR             R5, [SP,#0x548+src]
1CF720:  MOV             R2, R6
1CF724:  MOV             R3, R5
1CF728:  LDRSB           R7, [R3],#1
1CF72C:  SUBS            R1, R1, #1
1CF730:  VMOV            S2, R7
1CF734:  VCVT.F64.S32    D1, S2
1CF738:  VMUL.F64        D1, D1, D0
1CF73C:  VSTR            D1, [R2]
1CF740:  ADD             R2, R2, #8
1CF744:  BNE             loc_1CF728
1CF748:  LDR             R7, [SP,#0x548+var_530]
1CF74C:  ADD             R5, R5, R7
1CF750:  ADD             R6, R6, R7,LSL#3
1CF754:  STR             R6, [SP,#0x548+dest]
1CF758:  STR             R5, [SP,#0x548+src]
1CF75C:  LDR             R1, [SP,#0x548+var_528]
1CF760:  ADD             R0, R0, #1
1CF764:  CMP             R0, R1
1CF768:  BNE             loc_1CF70C
1CF76C:  B               def_1CF154; jumptable 001CF154 default case
1CF770:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5128
1CF774:  CMP             R0, #0xC
1CF778:  BHI             def_1CF154; jumptable 001CF154 default case
1CF77C:  ADR             R1, jpt_1CF790
1CF780:  MOV             R0, R0,LSL#2
1CF784:  MOVW            R6, #0xFFFF
1CF788:  LDR             R0, [R0,R1]
1CF78C:  MOVT            R6, #0x7F
1CF790:  ADD             PC, R0, R1; switch jump
1CF794:  DCD loc_1CF7C8 - 0x1CF794; jump table for switch statement
1CF798:  DCD loc_1D2D84 - 0x1CF794; jumptable 001CF790 case 5121
1CF79C:  DCD loc_1D2DFC - 0x1CF794; jumptable 001CF790 case 5122
1CF7A0:  DCD loc_1D2E94 - 0x1CF794; jumptable 001CF790 case 5123
1CF7A4:  DCD loc_1D2F14 - 0x1CF794; jumptable 001CF790 case 5124
1CF7A8:  DCD loc_1D2F8C - 0x1CF794; jumptable 001CF790 case 5125
1CF7AC:  DCD loc_1D3008 - 0x1CF794; jumptable 001CF790 case 5126
1CF7B0:  DCD loc_1D30C4 - 0x1CF794; jumptable 001CF790 case 5127
1CF7B4:  DCD loc_1D317C - 0x1CF794; jumptable 001CF790 case 5128
1CF7B8:  DCD loc_1D31F4 - 0x1CF794; jumptable 001CF790 case 5129
1CF7BC:  DCD loc_1D3270 - 0x1CF794; jumptable 001CF790 case 5130
1CF7C0:  DCD loc_1D32F8 - 0x1CF794; jumptable 001CF790 case 5131
1CF7C4:  DCD loc_1D3380 - 0x1CF794; jumptable 001CF790 case 5132
1CF7C8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5120
1CF7CC:  CMP             R0, #0
1CF7D0:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF7D4:  MOV             R0, #0
1CF7D8:  MOV             R1, #0
1CF7DC:  CMP             R7, #0
1CF7E0:  BEQ             loc_1CF828
1CF7E4:  LDR             R5, [SP,#0x548+dest]
1CF7E8:  MOV             R2, R7
1CF7EC:  LDR             R4, [SP,#0x548+src]
1CF7F0:  MOV             R3, R5
1CF7F4:  MOV             R7, R4
1CF7F8:  LDRB            R6, [R7],#1
1CF7FC:  SUBS            R2, R2, #1
1CF800:  STRB            R6, [R3,#2]
1CF804:  STRH            R0, [R3]
1CF808:  ADD             R3, R3, #3
1CF80C:  BNE             loc_1CF7F8
1CF810:  LDR             R7, [SP,#0x548+var_530]
1CF814:  ADD             R4, R4, R7
1CF818:  STR             R4, [SP,#0x548+src]
1CF81C:  ADD             R2, R7, R7,LSL#1
1CF820:  ADD             R5, R5, R2
1CF824:  STR             R5, [SP,#0x548+dest]
1CF828:  LDR             R2, [SP,#0x548+var_528]
1CF82C:  ADD             R1, R1, #1
1CF830:  CMP             R1, R2
1CF834:  BNE             loc_1CF7DC
1CF838:  B               def_1CF154; jumptable 001CF154 default case
1CF83C:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5129
1CF840:  CMP             R0, #0xC
1CF844:  BHI             def_1CF154; jumptable 001CF154 default case
1CF848:  ADR             R1, jpt_1CF854
1CF84C:  MOV             R0, R0,LSL#2
1CF850:  LDR             R0, [R0,R1]
1CF854:  ADD             PC, R0, R1; switch jump
1CF858:  DCD loc_1CF88C - 0x1CF858; jump table for switch statement
1CF85C:  DCD loc_1D346C - 0x1CF858; jumptable 001CF854 case 5121
1CF860:  DCD loc_1D34E4 - 0x1CF858; jumptable 001CF854 case 5122
1CF864:  DCD loc_1D3560 - 0x1CF858; jumptable 001CF854 case 5123
1CF868:  DCD loc_1D35DC - 0x1CF858; jumptable 001CF854 case 5124
1CF86C:  DCD loc_1D3658 - 0x1CF858; jumptable 001CF854 case 5125
1CF870:  DCD loc_1D36D0 - 0x1CF858; jumptable 001CF854 case 5126
1CF874:  DCD loc_1D3790 - 0x1CF858; jumptable 001CF854 case 5127
1CF878:  DCD loc_1D384C - 0x1CF858; jumptable 001CF854 case 5128
1CF87C:  DCD loc_1D38C8 - 0x1CF858; jumptable 001CF854 case 5129
1CF880:  DCD loc_1D3940 - 0x1CF858; jumptable 001CF854 case 5130
1CF884:  DCD loc_1D39D0 - 0x1CF858; jumptable 001CF854 case 5131
1CF888:  DCD loc_1D3A68 - 0x1CF858; jumptable 001CF854 case 5132
1CF88C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5120
1CF890:  CMP             R0, #0
1CF894:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF898:  MOV             R0, #0
1CF89C:  MOV             R1, #0
1CF8A0:  CMP             R7, #0
1CF8A4:  BEQ             loc_1CF8F0
1CF8A8:  LDR             R5, [SP,#0x548+dest]
1CF8AC:  MOV             R2, R7
1CF8B0:  LDR             R4, [SP,#0x548+src]
1CF8B4:  MOV             R3, R5
1CF8B8:  MOV             R7, R4
1CF8BC:  LDRB            R6, [R7],#1
1CF8C0:  SUBS            R2, R2, #1
1CF8C4:  STRH            R0, [R3]
1CF8C8:  EOR             R6, R6, #0x80
1CF8CC:  STRB            R6, [R3,#2]
1CF8D0:  ADD             R3, R3, #3
1CF8D4:  BNE             loc_1CF8BC
1CF8D8:  LDR             R7, [SP,#0x548+var_530]
1CF8DC:  ADD             R4, R4, R7
1CF8E0:  STR             R4, [SP,#0x548+src]
1CF8E4:  ADD             R2, R7, R7,LSL#1
1CF8E8:  ADD             R5, R5, R2
1CF8EC:  STR             R5, [SP,#0x548+dest]
1CF8F0:  LDR             R2, [SP,#0x548+var_528]
1CF8F4:  ADD             R1, R1, #1
1CF8F8:  CMP             R1, R2
1CF8FC:  BNE             loc_1CF8A0
1CF900:  B               def_1CF154; jumptable 001CF154 default case
1CF904:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5130
1CF908:  CMP             R0, #0xC
1CF90C:  BHI             def_1CF154; jumptable 001CF154 default case
1CF910:  ADR             R1, jpt_1CF91C
1CF914:  MOV             R0, R0,LSL#2
1CF918:  LDR             R0, [R0,R1]
1CF91C:  ADD             PC, R0, R1; switch jump
1CF920:  DCD loc_1CF954 - 0x1CF920; jump table for switch statement
1CF924:  DCD loc_1D3B64 - 0x1CF920; jumptable 001CF91C case 5121
1CF928:  DCD loc_1D3C44 - 0x1CF920; jumptable 001CF91C case 5122
1CF92C:  DCD loc_1D3D18 - 0x1CF920; jumptable 001CF91C case 5123
1CF930:  DCD loc_1D3DEC - 0x1CF920; jumptable 001CF91C case 5124
1CF934:  DCD loc_1D3EC4 - 0x1CF920; jumptable 001CF91C case 5125
1CF938:  DCD loc_1D3F9C - 0x1CF920; jumptable 001CF91C case 5126
1CF93C:  DCD loc_1D40A4 - 0x1CF920; jumptable 001CF91C case 5127
1CF940:  DCD loc_1D41B0 - 0x1CF920; jumptable 001CF91C case 5128
1CF944:  DCD loc_1D42AC - 0x1CF920; jumptable 001CF91C case 5129
1CF948:  DCD loc_1D43A0 - 0x1CF920; jumptable 001CF91C case 5130
1CF94C:  DCD loc_1D4404 - 0x1CF920; jumptable 001CF91C case 5131
1CF950:  DCD loc_1D44FC - 0x1CF920; jumptable 001CF91C case 5132
1CF954:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5120
1CF958:  CMP             R0, #0
1CF95C:  BEQ             def_1CF154; jumptable 001CF154 default case
1CF960:  LDR             R0, =(unk_C4C94 - 0x1CF978)
1CF964:  MOV             R12, #0
1CF968:  MOVW            R9, #0x7F7B
1CF96C:  MOV             LR, #0x840000
1CF970:  ADD             R3, PC, R0; unk_C4C94
1CF974:  MOV             R8, #0xF
1CF978:  CMP             R7, #0
1CF97C:  BEQ             loc_1CFA0C
1CF980:  LDR             R0, [SP,#0x548+src]
1CF984:  MOV             R5, R7
1CF988:  LDR             R7, [SP,#0x548+dest]
1CF98C:  MOV             R10, R0
1CF990:  MOV             R4, R0
1CF994:  LDRSB           R2, [R4],#1
1CF998:  ANDS            R0, R2, #0x80
1CF99C:  MOV             R2, R2,LSL#8
1CF9A0:  BEQ             loc_1CF9B8
1CF9A4:  MOV             R1, #0xFFFF8001
1CF9AC:  CMP             R2, R1
1CF9B0:  MOVLE           R2, R1
1CF9B4:  RSB             R2, R2, #0
1CF9B8:  SXTH            R2, R2
1CF9BC:  CMP             R2, R9
1CF9C0:  MOVGE           R2, R9
1CF9C4:  SUBS            R5, R5, #1
1CF9C8:  ADD             R2, LR, R2,LSL#16
1CF9CC:  UBFX            R6, R2, #0x17, #8
1CF9D0:  MOV             R2, R2,ASR#16
1CF9D4:  LDRB            R6, [R3,R6]
1CF9D8:  ADD             R1, R6, #3
1CF9DC:  ORR             R0, R0, R6,LSL#4
1CF9E0:  AND             R1, R8, R2,ASR R1
1CF9E4:  ORR             R0, R0, R1
1CF9E8:  MVN             R0, R0
1CF9EC:  STRB            R0, [R7],#1
1CF9F0:  BNE             loc_1CF994
1CF9F4:  LDR             R7, [SP,#0x548+var_530]
1CF9F8:  LDR             R0, [SP,#0x548+dest]
1CF9FC:  ADD             R10, R10, R7
1CFA00:  ADD             R0, R0, R7
1CFA04:  STR             R0, [SP,#0x548+dest]
1CFA08:  STR             R10, [SP,#0x548+src]
1CFA0C:  LDR             R0, [SP,#0x548+var_528]
1CFA10:  ADD             R12, R12, #1
1CFA14:  CMP             R12, R0
1CFA18:  BNE             loc_1CF978
1CFA1C:  B               def_1CF154; jumptable 001CF154 default case
1CFA20:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5131
1CFA24:  CMP             R0, #0xC
1CFA28:  BHI             def_1CF154; jumptable 001CF154 default case
1CFA2C:  ADR             R1, jpt_1CFA38
1CFA30:  MOV             R0, R0,LSL#2
1CFA34:  LDR             R0, [R0,R1]
1CFA38:  ADD             PC, R0, R1; switch jump
1CFA3C:  DCFS 0.007874
1CFA40:  DCD loc_1CFA80 - 0x1CFA40; jump table for switch statement
1CFA44:  DCD loc_1D464C - 0x1CFA40; jumptable 001CFA38 case 5121
1CFA48:  DCD loc_1D4738 - 0x1CFA40; jumptable 001CFA38 case 5122
1CFA4C:  DCD loc_1D4824 - 0x1CFA40; jumptable 001CFA38 case 5123
1CFA50:  DCD loc_1D4914 - 0x1CFA40; jumptable 001CFA38 case 5124
1CFA54:  DCD loc_1D4A08 - 0x1CFA40; jumptable 001CFA38 case 5125
1CFA58:  DCD loc_1D4AFC - 0x1CFA40; jumptable 001CFA38 case 5126
1CFA5C:  DCD loc_1D4C20 - 0x1CFA40; jumptable 001CFA38 case 5127
1CFA60:  DCD loc_1D4D48 - 0x1CFA40; jumptable 001CFA38 case 5128
1CFA64:  DCD loc_1D4E5C - 0x1CFA40; jumptable 001CFA38 case 5129
1CFA68:  DCD loc_1D4F60 - 0x1CFA40; jumptable 001CFA38 case 5130
1CFA6C:  DCD loc_1D5064 - 0x1CFA40; jumptable 001CFA38 case 5131
1CFA70:  DCD loc_1D50C8 - 0x1CFA40; jumptable 001CFA38 case 5132
1CFA74:  ALIGN 8
1CFA78:  DCFD 0.00787401575
1CFA80:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5120
1CFA84:  CMP             R0, #0
1CFA88:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFA8C:  LDR             R0, =(unk_C4D94 - 0x1CFAA4)
1CFA90:  MOVW            R10, #0x8001
1CFA94:  MOV             LR, #0
1CFA98:  MOVW            R1, #0x7F7B
1CFA9C:  ADD             R8, PC, R0; unk_C4D94
1CFAA0:  MOV             R12, #0xF
1CFAA4:  MOVT            R10, #0xFFFF
1CFAA8:  CMP             R7, #0
1CFAAC:  BEQ             loc_1CFB4C
1CFAB0:  LDR             R0, [SP,#0x548+src]
1CFAB4:  MOV             R6, R7
1CFAB8:  LDR             R5, [SP,#0x548+dest]
1CFABC:  MOV             R9, R0
1CFAC0:  MOV             R4, R0
1CFAC4:  LDRSB           R0, [R4],#1
1CFAC8:  ANDS            R7, R0, #0x80
1CFACC:  MOV             R3, R0,LSL#8
1CFAD0:  BEQ             loc_1CFAE0
1CFAD4:  CMP             R3, R10
1CFAD8:  MOVLE           R3, R10
1CFADC:  RSB             R3, R3, #0
1CFAE0:  SXTH            R3, R3
1CFAE4:  CMP             R3, R1
1CFAE8:  EOR             R7, R7, #0x80
1CFAEC:  MOVGE           R3, R1
1CFAF0:  CMP             R3, #0x100
1CFAF4:  BLT             loc_1CFB14
1CFAF8:  UBFX            R0, R3, #8, #7
1CFAFC:  UXTH            R3, R3
1CFB00:  LDRB            R0, [R8,R0]
1CFB04:  ADD             R2, R0, #3
1CFB08:  MOV             R0, R0,LSL#4
1CFB0C:  AND             R3, R12, R3,LSR R2
1CFB10:  B               loc_1CFB1C
1CFB14:  MOV             R3, R3,ASR#4
1CFB18:  MOV             R0, #0
1CFB1C:  ORR             R0, R0, R3
1CFB20:  ORR             R2, R7, #0x55 ; 'U'
1CFB24:  EOR             R0, R0, R2
1CFB28:  STRB            R0, [R5],#1
1CFB2C:  SUBS            R6, R6, #1
1CFB30:  BNE             loc_1CFAC4
1CFB34:  LDR             R7, [SP,#0x548+var_530]
1CFB38:  LDR             R0, [SP,#0x548+dest]
1CFB3C:  ADD             R9, R9, R7
1CFB40:  ADD             R0, R0, R7
1CFB44:  STR             R0, [SP,#0x548+dest]
1CFB48:  STR             R9, [SP,#0x548+src]
1CFB4C:  LDR             R0, [SP,#0x548+var_528]
1CFB50:  ADD             LR, LR, #1
1CFB54:  CMP             LR, R0
1CFB58:  BNE             loc_1CFAA8
1CFB5C:  B               def_1CF154; jumptable 001CF154 default case
1CFB60:  SUB             R0, R3, #0x1400; jumptable 001CF154 case 5132
1CFB64:  CMP             R0, #0xC
1CFB68:  BHI             def_1CF154; jumptable 001CF154 default case
1CFB6C:  ADR             R1, jpt_1CFB78
1CFB70:  MOV             R0, R0,LSL#2
1CFB74:  LDR             R0, [R0,R1]
1CFB78:  ADD             PC, R0, R1; switch jump
1CFB7C:  DCD loc_1CFBB0 - 0x1CFB7C; jump table for switch statement
1CFB80:  DCD loc_1D5238 - 0x1CFB7C; jumptable 001CFB78 case 5121
1CFB84:  DCD loc_1D52E4 - 0x1CFB7C; jumptable 001CFB78 case 5122
1CFB88:  DCD loc_1D5394 - 0x1CFB7C; jumptable 001CFB78 case 5123
1CFB8C:  DCD loc_1D5440 - 0x1CFB7C; jumptable 001CFB78 case 5124
1CFB90:  DCD loc_1D54F0 - 0x1CFB7C; jumptable 001CFB78 case 5125
1CFB94:  DCD loc_1D55A4 - 0x1CFB7C; jumptable 001CFB78 case 5126
1CFB98:  DCD loc_1D5688 - 0x1CFB7C; jumptable 001CFB78 case 5127
1CFB9C:  DCD loc_1D576C - 0x1CFB7C; jumptable 001CFB78 case 5128
1CFBA0:  DCD loc_1D5824 - 0x1CFB7C; jumptable 001CFB78 case 5129
1CFBA4:  DCD loc_1D58EC - 0x1CFB7C; jumptable 001CFB78 case 5130
1CFBA8:  DCD loc_1D59A8 - 0x1CFB7C; jumptable 001CFB78 case 5131
1CFBAC:  DCD loc_1D5A80 - 0x1CFB7C; jumptable 001CFB78 case 5132
1CFBB0:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5120
1CFBB4:  MOV             R1, #0x24 ; '$'; n
1CFBB8:  LDR             R7, [SP,#0x548+src]
1CFBBC:  BL              sub_22178C
1CFBC0:  SUB             R0, R11, #-var_90; int
1CFBC4:  MOV             R1, #0x24 ; '$'; n
1CFBC8:  BL              sub_22178C
1CFBCC:  LDR             R0, [SP,#0x548+var_528]
1CFBD0:  CMP             R0, #0
1CFBD4:  LDR             R0, [SP,#0x548+dest]
1CFBD8:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFBDC:  LDR             R1, [SP,#0x548+var_530]
1CFBE0:  ADD             R10, SP, #0x548+var_522
1CFBE4:  SUB             R9, R11, #-var_90
1CFBE8:  MOV             R6, #0
1CFBEC:  ADD             R4, R1, R1,LSL#6
1CFBF0:  ADD             R1, R1, R1,LSL#3
1CFBF4:  MOV             R8, R1,LSL#2
1CFBF8:  CMP             R4, #0
1CFBFC:  BEQ             loc_1CFC24
1CFC00:  MOV             R5, R10
1CFC04:  MOV             R1, R4
1CFC08:  MOV             R2, R7
1CFC0C:  LDRB            R3, [R2],#1
1CFC10:  SUBS            R1, R1, #1
1CFC14:  MOV             R3, R3,LSL#8
1CFC18:  STRH            R3, [R5],#2
1CFC1C:  BNE             loc_1CFC0C
1CFC20:  ADD             R7, R7, R4
1CFC24:  LDR             R1, [SP,#0x548+var_530]
1CFC28:  SUB             R2, R11, #-var_68
1CFC2C:  STR             R1, [SP,#0x548+var_548]
1CFC30:  MOV             R1, R10
1CFC34:  MOV             R3, R9
1CFC38:  MOV             R5, R0
1CFC3C:  BL              sub_1D69D0
1CFC40:  MOV             R0, R5
1CFC44:  LDR             R1, [SP,#0x548+var_528]
1CFC48:  ADD             R6, R6, #0x41 ; 'A'
1CFC4C:  ADD             R0, R0, R8
1CFC50:  CMP             R6, R1
1CFC54:  BCC             loc_1CFBF8
1CFC58:  B               def_1CF154; jumptable 001CF154 default case
1CFC5C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5121
1CFC60:  CMP             R0, #0
1CFC64:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFC68:  MOV             R0, #0
1CFC6C:  CMP             R7, #0
1CFC70:  BEQ             loc_1CFCB0
1CFC74:  LDR             R6, [SP,#0x548+dest]
1CFC78:  MOV             R1, R7
1CFC7C:  LDR             R5, [SP,#0x548+src]
1CFC80:  MOV             R2, R6
1CFC84:  MOV             R3, R5
1CFC88:  LDRB            R7, [R3],#1
1CFC8C:  SUBS            R1, R1, #1
1CFC90:  ADD             R7, R7, #0x80
1CFC94:  STRB            R7, [R2],#1
1CFC98:  BNE             loc_1CFC88
1CFC9C:  LDR             R7, [SP,#0x548+var_530]
1CFCA0:  ADD             R6, R6, R7
1CFCA4:  STR             R6, [SP,#0x548+dest]
1CFCA8:  ADD             R5, R5, R7
1CFCAC:  STR             R5, [SP,#0x548+src]
1CFCB0:  LDR             R1, [SP,#0x548+var_528]
1CFCB4:  ADD             R0, R0, #1
1CFCB8:  CMP             R0, R1
1CFCBC:  BNE             loc_1CFC6C
1CFCC0:  B               def_1CF154; jumptable 001CF154 default case
1CFCC4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5122
1CFCC8:  CMP             R0, #0
1CFCCC:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFCD0:  MOV             R0, #0
1CFCD4:  CMP             R7, #0
1CFCD8:  BEQ             loc_1CFD18
1CFCDC:  LDR             R6, [SP,#0x548+dest]
1CFCE0:  MOV             R1, R7
1CFCE4:  LDR             R5, [SP,#0x548+src]
1CFCE8:  MOV             R2, R6
1CFCEC:  MOV             R3, R5
1CFCF0:  LDRB            R7, [R3,#1]
1CFCF4:  SUBS            R1, R1, #1
1CFCF8:  STRB            R7, [R2],#1
1CFCFC:  ADD             R3, R3, #2
1CFD00:  BNE             loc_1CFCF0
1CFD04:  LDR             R7, [SP,#0x548+var_530]
1CFD08:  ADD             R6, R6, R7
1CFD0C:  STR             R6, [SP,#0x548+dest]
1CFD10:  ADD             R5, R5, R7,LSL#1
1CFD14:  STR             R5, [SP,#0x548+src]
1CFD18:  LDR             R1, [SP,#0x548+var_528]
1CFD1C:  ADD             R0, R0, #1
1CFD20:  CMP             R0, R1
1CFD24:  BNE             loc_1CFCD4
1CFD28:  B               def_1CF154; jumptable 001CF154 default case
1CFD2C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5123
1CFD30:  CMP             R0, #0
1CFD34:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFD38:  MOV             R0, #0
1CFD3C:  MOV             R1, #0x80
1CFD40:  CMP             R7, #0
1CFD44:  BEQ             loc_1CFD84
1CFD48:  LDR             R5, [SP,#0x548+dest]
1CFD4C:  MOV             R2, R7
1CFD50:  LDR             R4, [SP,#0x548+src]
1CFD54:  MOV             R3, R5
1CFD58:  MOV             R7, R4
1CFD5C:  LDRH            R6, [R7],#2
1CFD60:  SUBS            R2, R2, #1
1CFD64:  ADD             R6, R1, R6,LSR#8
1CFD68:  STRB            R6, [R3],#1
1CFD6C:  BNE             loc_1CFD5C
1CFD70:  LDR             R7, [SP,#0x548+var_530]
1CFD74:  ADD             R5, R5, R7
1CFD78:  STR             R5, [SP,#0x548+dest]
1CFD7C:  ADD             R4, R4, R7,LSL#1
1CFD80:  STR             R4, [SP,#0x548+src]
1CFD84:  LDR             R2, [SP,#0x548+var_528]
1CFD88:  ADD             R0, R0, #1
1CFD8C:  CMP             R0, R2
1CFD90:  BNE             loc_1CFD40
1CFD94:  B               def_1CF154; jumptable 001CF154 default case
1CFD98:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5124
1CFD9C:  CMP             R0, #0
1CFDA0:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFDA4:  MOV             R0, #0
1CFDA8:  CMP             R7, #0
1CFDAC:  BEQ             loc_1CFDEC
1CFDB0:  LDR             R6, [SP,#0x548+dest]
1CFDB4:  MOV             R1, R7
1CFDB8:  LDR             R5, [SP,#0x548+src]
1CFDBC:  MOV             R2, R6
1CFDC0:  MOV             R3, R5
1CFDC4:  LDRB            R7, [R3,#3]
1CFDC8:  SUBS            R1, R1, #1
1CFDCC:  STRB            R7, [R2],#1
1CFDD0:  ADD             R3, R3, #4
1CFDD4:  BNE             loc_1CFDC4
1CFDD8:  LDR             R7, [SP,#0x548+var_530]
1CFDDC:  ADD             R6, R6, R7
1CFDE0:  STR             R6, [SP,#0x548+dest]
1CFDE4:  ADD             R5, R5, R7,LSL#2
1CFDE8:  STR             R5, [SP,#0x548+src]
1CFDEC:  LDR             R1, [SP,#0x548+var_528]
1CFDF0:  ADD             R0, R0, #1
1CFDF4:  CMP             R0, R1
1CFDF8:  BNE             loc_1CFDA8
1CFDFC:  B               def_1CF154; jumptable 001CF154 default case
1CFE00:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5125
1CFE04:  CMP             R0, #0
1CFE08:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFE0C:  MOV             R0, #0
1CFE10:  CMP             R7, #0
1CFE14:  BEQ             loc_1CFE58
1CFE18:  LDR             R6, [SP,#0x548+dest]
1CFE1C:  MOV             R1, R7
1CFE20:  LDR             R5, [SP,#0x548+src]
1CFE24:  MOV             R2, R6
1CFE28:  MOV             R3, R5
1CFE2C:  LDRB            R7, [R3,#3]
1CFE30:  SUBS            R1, R1, #1
1CFE34:  ADD             R3, R3, #4
1CFE38:  ADD             R7, R7, #0x80
1CFE3C:  STRB            R7, [R2],#1
1CFE40:  BNE             loc_1CFE2C
1CFE44:  LDR             R7, [SP,#0x548+var_530]
1CFE48:  ADD             R6, R6, R7
1CFE4C:  STR             R6, [SP,#0x548+dest]
1CFE50:  ADD             R5, R5, R7,LSL#2
1CFE54:  STR             R5, [SP,#0x548+src]
1CFE58:  LDR             R1, [SP,#0x548+var_528]
1CFE5C:  ADD             R0, R0, #1
1CFE60:  CMP             R0, R1
1CFE64:  BNE             loc_1CFE10
1CFE68:  B               def_1CF154; jumptable 001CF154 default case
1CFE6C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5126
1CFE70:  CMP             R0, #0
1CFE74:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFE78:  VMOV.F32        S0, #1.0
1CFE7C:  VLDR            S4, =127.0
1CFE80:  VMOV.F32        S2, #-1.0
1CFE84:  MOV             R0, #0
1CFE88:  CMP             R7, #0
1CFE8C:  BEQ             loc_1CFEF4
1CFE90:  LDR             R6, [SP,#0x548+dest]
1CFE94:  MOV             R1, R7
1CFE98:  LDR             R5, [SP,#0x548+src]
1CFE9C:  MOV             R2, R6
1CFEA0:  MOV             R3, R5
1CFEA4:  VLDR            S6, [R3]
1CFEA8:  MOV             R7, #0x7F
1CFEAC:  VCMPE.F32       S6, S0
1CFEB0:  VMRS            APSR_nzcv, FPSCR
1CFEB4:  BGT             loc_1CFED0
1CFEB8:  VCMPE.F32       S6, S2
1CFEBC:  MOV             R7, #0x80
1CFEC0:  VMRS            APSR_nzcv, FPSCR
1CFEC4:  VMULGE.F32      S6, S6, S4
1CFEC8:  VCVTGE.S32.F32  S6, S6
1CFECC:  VMOVGE          R7, S6
1CFED0:  ADD             R3, R3, #4
1CFED4:  STRB            R7, [R2],#1
1CFED8:  SUBS            R1, R1, #1
1CFEDC:  BNE             loc_1CFEA4
1CFEE0:  LDR             R7, [SP,#0x548+var_530]
1CFEE4:  ADD             R6, R6, R7
1CFEE8:  STR             R6, [SP,#0x548+dest]
1CFEEC:  ADD             R5, R5, R7,LSL#2
1CFEF0:  STR             R5, [SP,#0x548+src]
1CFEF4:  LDR             R1, [SP,#0x548+var_528]
1CFEF8:  ADD             R0, R0, #1
1CFEFC:  CMP             R0, R1
1CFF00:  BNE             loc_1CFE88
1CFF04:  B               def_1CF154; jumptable 001CF154 default case
1CFF08:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5127
1CFF0C:  CMP             R0, #0
1CFF10:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFF14:  VMOV.F64        D0, #1.0
1CFF18:  MOV             R0, #0
1CFF1C:  VMOV.F64        D1, #-1.0
1CFF20:  VLDR            D2, =127.0
1CFF24:  CMP             R7, #0
1CFF28:  BEQ             loc_1CFF94
1CFF2C:  LDR             R6, [SP,#0x548+dest]
1CFF30:  MOV             R1, R7
1CFF34:  LDR             R5, [SP,#0x548+src]
1CFF38:  MOV             R2, R6
1CFF3C:  MOV             R3, R5
1CFF40:  VLDR            D3, [R3]
1CFF44:  MOV             R7, #0x7F
1CFF48:  VCMPE.F64       D3, D0
1CFF4C:  VMRS            APSR_nzcv, FPSCR
1CFF50:  BGT             loc_1CFF70
1CFF54:  VCMPE.F64       D3, D1
1CFF58:  MOV             R7, #0x80
1CFF5C:  VMRS            APSR_nzcv, FPSCR
1CFF60:  BLT             loc_1CFF70
1CFF64:  VMUL.F64        D3, D3, D2
1CFF68:  VCVT.S32.F64    S6, D3
1CFF6C:  VMOV            R7, S6
1CFF70:  ADD             R3, R3, #8
1CFF74:  STRB            R7, [R2],#1
1CFF78:  SUBS            R1, R1, #1
1CFF7C:  BNE             loc_1CFF40
1CFF80:  LDR             R7, [SP,#0x548+var_530]
1CFF84:  ADD             R6, R6, R7
1CFF88:  STR             R6, [SP,#0x548+dest]
1CFF8C:  ADD             R5, R5, R7,LSL#3
1CFF90:  STR             R5, [SP,#0x548+src]
1CFF94:  LDR             R1, [SP,#0x548+var_528]
1CFF98:  ADD             R0, R0, #1
1CFF9C:  CMP             R0, R1
1CFFA0:  BNE             loc_1CFF24
1CFFA4:  B               def_1CF154; jumptable 001CF154 default case
1CFFA8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5128
1CFFAC:  CMP             R0, #0
1CFFB0:  BEQ             def_1CF154; jumptable 001CF154 default case
1CFFB4:  MOV             R0, #0
1CFFB8:  CMP             R7, #0
1CFFBC:  BEQ             loc_1D0000
1CFFC0:  LDR             R6, [SP,#0x548+dest]
1CFFC4:  MOV             R1, R7
1CFFC8:  LDR             R5, [SP,#0x548+src]
1CFFCC:  MOV             R2, R6
1CFFD0:  MOV             R3, R5
1CFFD4:  LDRB            R7, [R3,#2]
1CFFD8:  SUBS            R1, R1, #1
1CFFDC:  STRB            R7, [R2],#1
1CFFE0:  ADD             R3, R3, #3
1CFFE4:  BNE             loc_1CFFD4
1CFFE8:  LDR             R7, [SP,#0x548+var_530]
1CFFEC:  ADD             R6, R6, R7
1CFFF0:  STR             R6, [SP,#0x548+dest]
1CFFF4:  ADD             R1, R7, R7,LSL#1
1CFFF8:  ADD             R5, R5, R1
1CFFFC:  STR             R5, [SP,#0x548+src]
1D0000:  LDR             R1, [SP,#0x548+var_528]
1D0004:  ADD             R0, R0, #1
1D0008:  CMP             R0, R1
1D000C:  BNE             loc_1CFFB8
1D0010:  B               def_1CF154; jumptable 001CF154 default case
1D0014:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5129
1D0018:  CMP             R0, #0
1D001C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0020:  MOV             R0, #0
1D0024:  CMP             R7, #0
1D0028:  BEQ             loc_1D0070
1D002C:  LDR             R6, [SP,#0x548+dest]
1D0030:  MOV             R1, R7
1D0034:  LDR             R5, [SP,#0x548+src]
1D0038:  MOV             R2, R6
1D003C:  MOV             R3, R5
1D0040:  LDRB            R7, [R3,#2]
1D0044:  SUBS            R1, R1, #1
1D0048:  ADD             R3, R3, #3
1D004C:  ADD             R7, R7, #0x80
1D0050:  STRB            R7, [R2],#1
1D0054:  BNE             loc_1D0040
1D0058:  LDR             R7, [SP,#0x548+var_530]
1D005C:  ADD             R6, R6, R7
1D0060:  STR             R6, [SP,#0x548+dest]
1D0064:  ADD             R1, R7, R7,LSL#1
1D0068:  ADD             R5, R5, R1
1D006C:  STR             R5, [SP,#0x548+src]
1D0070:  LDR             R1, [SP,#0x548+var_528]
1D0074:  ADD             R0, R0, #1
1D0078:  CMP             R0, R1
1D007C:  BNE             loc_1D0024
1D0080:  B               def_1CF154; jumptable 001CF154 default case
1D0084:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5130
1D0088:  CMP             R0, #0
1D008C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0090:  LDR             R1, =(unk_C46B0 - 0x1D00A0)
1D0094:  MOV             R0, #0
1D0098:  ADD             R1, PC, R1; unk_C46B0
1D009C:  CMP             R7, #0
1D00A0:  BEQ             loc_1D00E4
1D00A4:  LDR             R5, [SP,#0x548+dest]
1D00A8:  MOV             R2, R7
1D00AC:  LDR             R4, [SP,#0x548+src]
1D00B0:  MOV             R3, R5
1D00B4:  MOV             R7, R4
1D00B8:  LDRB            R6, [R7],#1
1D00BC:  SUBS            R2, R2, #1
1D00C0:  ADD             R6, R1, R6,LSL#1
1D00C4:  LDRB            R6, [R6,#1]
1D00C8:  STRB            R6, [R3],#1
1D00CC:  BNE             loc_1D00B8
1D00D0:  LDR             R7, [SP,#0x548+var_530]
1D00D4:  ADD             R5, R5, R7
1D00D8:  STR             R5, [SP,#0x548+dest]
1D00DC:  ADD             R4, R4, R7
1D00E0:  STR             R4, [SP,#0x548+src]
1D00E4:  LDR             R2, [SP,#0x548+var_528]
1D00E8:  ADD             R0, R0, #1
1D00EC:  CMP             R0, R2
1D00F0:  BNE             loc_1D009C
1D00F4:  B               def_1CF154; jumptable 001CF154 default case
1D00F8:  DCD __stack_chk_guard_ptr - 0x1CF128
1D00FC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5131
1D0100:  CMP             R0, #0
1D0104:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0108:  LDR             R1, =(unk_C48B0 - 0x1D0118)
1D010C:  MOV             R0, #0
1D0110:  ADD             R1, PC, R1; unk_C48B0
1D0114:  CMP             R7, #0
1D0118:  BEQ             loc_1D015C
1D011C:  LDR             R5, [SP,#0x548+dest]
1D0120:  MOV             R2, R7
1D0124:  LDR             R4, [SP,#0x548+src]
1D0128:  MOV             R3, R5
1D012C:  MOV             R7, R4
1D0130:  LDRB            R6, [R7],#1
1D0134:  SUBS            R2, R2, #1
1D0138:  ADD             R6, R1, R6,LSL#1
1D013C:  LDRB            R6, [R6,#1]
1D0140:  STRB            R6, [R3],#1
1D0144:  BNE             loc_1D0130
1D0148:  LDR             R7, [SP,#0x548+var_530]
1D014C:  ADD             R5, R5, R7
1D0150:  STR             R5, [SP,#0x548+dest]
1D0154:  ADD             R4, R4, R7
1D0158:  STR             R4, [SP,#0x548+src]
1D015C:  LDR             R2, [SP,#0x548+var_528]
1D0160:  ADD             R0, R0, #1
1D0164:  CMP             R0, R2
1D0168:  BNE             loc_1D0114
1D016C:  B               def_1CF154; jumptable 001CF154 default case
1D0170:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF1A4 case 5132
1D0174:  LDR             R1, [SP,#0x548+src]
1D0178:  CMP             R0, #0
1D017C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0180:  ADD             R0, R7, R7,LSL#3
1D0184:  MOV             R8, R7,LSL#1
1D0188:  MOV             R6, #0
1D018C:  ADD             R12, SP, #0x548+var_522
1D0190:  MOV             R9, R0,LSL#2
1D0194:  MOV             R0, R12
1D0198:  MOV             R2, R7
1D019C:  MOV             R10, R1
1D01A0:  MOV             R5, R12
1D01A4:  BL              sub_1D6750
1D01A8:  LDR             R0, [SP,#0x548+var_528]
1D01AC:  CMP             R6, R0
1D01B0:  BCS             loc_1D0218
1D01B4:  LDR             R4, [SP,#0x548+dest]
1D01B8:  MOV             R0, #0
1D01BC:  MOV             R1, R5
1D01C0:  MOV             R12, R5
1D01C4:  CMP             R7, #0
1D01C8:  BEQ             loc_1D01F4
1D01CC:  MOV             R2, R7
1D01D0:  MOV             R3, R1
1D01D4:  MOV             R7, R4
1D01D8:  LDRB            R5, [R3,#1]
1D01DC:  SUBS            R2, R2, #1
1D01E0:  STRB            R5, [R7],#1
1D01E4:  ADD             R3, R3, #2
1D01E8:  BNE             loc_1D01D8
1D01EC:  LDR             R7, [SP,#0x548+var_530]
1D01F0:  ADD             R4, R4, R7
1D01F4:  ADD             R0, R0, #1
1D01F8:  ADD             R6, R6, #1
1D01FC:  CMP             R0, #0x40 ; '@'
1D0200:  BHI             loc_1D0220
1D0204:  LDR             R2, [SP,#0x548+var_528]
1D0208:  ADD             R1, R1, R8
1D020C:  CMP             R6, R2
1D0210:  BCC             loc_1D01C4
1D0214:  B               loc_1D0220
1D0218:  LDR             R4, [SP,#0x548+dest]
1D021C:  MOV             R12, R5
1D0220:  STR             R4, [SP,#0x548+dest]
1D0224:  MOV             R1, R10
1D0228:  LDR             R0, [SP,#0x548+var_528]
1D022C:  ADD             R1, R1, R9
1D0230:  CMP             R6, R0
1D0234:  BCC             loc_1D0194
1D0238:  B               def_1CF154; jumptable 001CF154 default case
1D023C:  DCFS 127.0
1D0240:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5121
1D0244:  CMP             R0, #0
1D0248:  BEQ             def_1CF154; jumptable 001CF154 default case
1D024C:  MOV             R0, #0
1D0250:  CMP             R7, #0
1D0254:  BEQ             loc_1D0290
1D0258:  LDR             R6, [SP,#0x548+dest]
1D025C:  MOV             R1, R7
1D0260:  LDR             R5, [SP,#0x548+src]
1D0264:  MOV             R2, R6
1D0268:  MOV             R3, R5
1D026C:  LDRB            R7, [R3],#1
1D0270:  SUBS            R1, R1, #1
1D0274:  STRB            R7, [R2],#1
1D0278:  BNE             loc_1D026C
1D027C:  LDR             R7, [SP,#0x548+var_530]
1D0280:  ADD             R6, R6, R7
1D0284:  STR             R6, [SP,#0x548+dest]
1D0288:  ADD             R5, R5, R7
1D028C:  STR             R5, [SP,#0x548+src]
1D0290:  LDR             R1, [SP,#0x548+var_528]
1D0294:  ADD             R0, R0, #1
1D0298:  CMP             R0, R1
1D029C:  BNE             loc_1D0250
1D02A0:  B               def_1CF154; jumptable 001CF154 default case
1D02A4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5122
1D02A8:  CMP             R0, #0
1D02AC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D02B0:  MOV             R0, #0
1D02B4:  MOV             R1, #0x80
1D02B8:  CMP             R7, #0
1D02BC:  BEQ             loc_1D02FC
1D02C0:  LDR             R5, [SP,#0x548+dest]
1D02C4:  MOV             R2, R7
1D02C8:  LDR             R4, [SP,#0x548+src]
1D02CC:  MOV             R3, R5
1D02D0:  MOV             R7, R4
1D02D4:  LDRH            R6, [R7],#2
1D02D8:  SUBS            R2, R2, #1
1D02DC:  ADD             R6, R1, R6,LSR#8
1D02E0:  STRB            R6, [R3],#1
1D02E4:  BNE             loc_1D02D4
1D02E8:  LDR             R7, [SP,#0x548+var_530]
1D02EC:  ADD             R5, R5, R7
1D02F0:  STR             R5, [SP,#0x548+dest]
1D02F4:  ADD             R4, R4, R7,LSL#1
1D02F8:  STR             R4, [SP,#0x548+src]
1D02FC:  LDR             R2, [SP,#0x548+var_528]
1D0300:  ADD             R0, R0, #1
1D0304:  CMP             R0, R2
1D0308:  BNE             loc_1D02B8
1D030C:  B               def_1CF154; jumptable 001CF154 default case
1D0310:  DCFD 127.0
1D0318:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5123
1D031C:  CMP             R0, #0
1D0320:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0324:  MOV             R0, #0
1D0328:  CMP             R7, #0
1D032C:  BEQ             loc_1D036C
1D0330:  LDR             R6, [SP,#0x548+dest]
1D0334:  MOV             R1, R7
1D0338:  LDR             R5, [SP,#0x548+src]
1D033C:  MOV             R2, R6
1D0340:  MOV             R3, R5
1D0344:  LDRB            R7, [R3,#1]
1D0348:  SUBS            R1, R1, #1
1D034C:  STRB            R7, [R2],#1
1D0350:  ADD             R3, R3, #2
1D0354:  BNE             loc_1D0344
1D0358:  LDR             R7, [SP,#0x548+var_530]
1D035C:  ADD             R6, R6, R7
1D0360:  STR             R6, [SP,#0x548+dest]
1D0364:  ADD             R5, R5, R7,LSL#1
1D0368:  STR             R5, [SP,#0x548+src]
1D036C:  LDR             R1, [SP,#0x548+var_528]
1D0370:  ADD             R0, R0, #1
1D0374:  CMP             R0, R1
1D0378:  BNE             loc_1D0328
1D037C:  B               def_1CF154; jumptable 001CF154 default case
1D0380:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5124
1D0384:  CMP             R0, #0
1D0388:  BEQ             def_1CF154; jumptable 001CF154 default case
1D038C:  MOV             R0, #0
1D0390:  CMP             R7, #0
1D0394:  BEQ             loc_1D03D8
1D0398:  LDR             R6, [SP,#0x548+dest]
1D039C:  MOV             R1, R7
1D03A0:  LDR             R5, [SP,#0x548+src]
1D03A4:  MOV             R2, R6
1D03A8:  MOV             R3, R5
1D03AC:  LDRB            R7, [R3,#3]
1D03B0:  SUBS            R1, R1, #1
1D03B4:  ADD             R3, R3, #4
1D03B8:  ADD             R7, R7, #0x80
1D03BC:  STRB            R7, [R2],#1
1D03C0:  BNE             loc_1D03AC
1D03C4:  LDR             R7, [SP,#0x548+var_530]
1D03C8:  ADD             R6, R6, R7
1D03CC:  STR             R6, [SP,#0x548+dest]
1D03D0:  ADD             R5, R5, R7,LSL#2
1D03D4:  STR             R5, [SP,#0x548+src]
1D03D8:  LDR             R1, [SP,#0x548+var_528]
1D03DC:  ADD             R0, R0, #1
1D03E0:  CMP             R0, R1
1D03E4:  BNE             loc_1D0390
1D03E8:  B               def_1CF154; jumptable 001CF154 default case
1D03EC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5125
1D03F0:  CMP             R0, #0
1D03F4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D03F8:  MOV             R0, #0
1D03FC:  CMP             R7, #0
1D0400:  BEQ             loc_1D0440
1D0404:  LDR             R6, [SP,#0x548+dest]
1D0408:  MOV             R1, R7
1D040C:  LDR             R5, [SP,#0x548+src]
1D0410:  MOV             R2, R6
1D0414:  MOV             R3, R5
1D0418:  LDRB            R7, [R3,#3]
1D041C:  SUBS            R1, R1, #1
1D0420:  STRB            R7, [R2],#1
1D0424:  ADD             R3, R3, #4
1D0428:  BNE             loc_1D0418
1D042C:  LDR             R7, [SP,#0x548+var_530]
1D0430:  ADD             R6, R6, R7
1D0434:  STR             R6, [SP,#0x548+dest]
1D0438:  ADD             R5, R5, R7,LSL#2
1D043C:  STR             R5, [SP,#0x548+src]
1D0440:  LDR             R1, [SP,#0x548+var_528]
1D0444:  ADD             R0, R0, #1
1D0448:  CMP             R0, R1
1D044C:  BNE             loc_1D03FC
1D0450:  B               def_1CF154; jumptable 001CF154 default case
1D0454:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5126
1D0458:  CMP             R0, #0
1D045C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0460:  VMOV.F32        S0, #1.0
1D0464:  VLDR            S4, =127.0
1D0468:  VMOV.F32        S2, #-1.0
1D046C:  MOV             R0, #0
1D0470:  CMP             R7, #0
1D0474:  BEQ             loc_1D04E0
1D0478:  LDR             R6, [SP,#0x548+dest]
1D047C:  MOV             R1, R7
1D0480:  LDR             R5, [SP,#0x548+src]
1D0484:  MOV             R2, R6
1D0488:  MOV             R3, R5
1D048C:  VLDR            S6, [R3]
1D0490:  MOV             R7, #0xFF
1D0494:  VCMPE.F32       S6, S0
1D0498:  VMRS            APSR_nzcv, FPSCR
1D049C:  BGT             loc_1D04BC
1D04A0:  VCMPE.F32       S6, S2
1D04A4:  MOV             R7, #0
1D04A8:  VMRS            APSR_nzcv, FPSCR
1D04AC:  VMULGE.F32      S6, S6, S4
1D04B0:  VCVTGE.S32.F32  S6, S6
1D04B4:  VMOVGE          R7, S6
1D04B8:  ADDGE           R7, R7, #0x80
1D04BC:  ADD             R3, R3, #4
1D04C0:  STRB            R7, [R2],#1
1D04C4:  SUBS            R1, R1, #1
1D04C8:  BNE             loc_1D048C
1D04CC:  LDR             R7, [SP,#0x548+var_530]
1D04D0:  ADD             R6, R6, R7
1D04D4:  STR             R6, [SP,#0x548+dest]
1D04D8:  ADD             R5, R5, R7,LSL#2
1D04DC:  STR             R5, [SP,#0x548+src]
1D04E0:  LDR             R1, [SP,#0x548+var_528]
1D04E4:  ADD             R0, R0, #1
1D04E8:  CMP             R0, R1
1D04EC:  BNE             loc_1D0470
1D04F0:  B               def_1CF154; jumptable 001CF154 default case
1D04F4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5127
1D04F8:  CMP             R0, #0
1D04FC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0500:  VMOV.F64        D0, #1.0
1D0504:  MOV             R0, #0
1D0508:  VMOV.F64        D1, #-1.0
1D050C:  VLDR            D2, =127.0
1D0510:  CMP             R7, #0
1D0514:  BEQ             loc_1D0584
1D0518:  LDR             R6, [SP,#0x548+dest]
1D051C:  MOV             R1, R7
1D0520:  LDR             R5, [SP,#0x548+src]
1D0524:  MOV             R2, R6
1D0528:  MOV             R3, R5
1D052C:  VLDR            D3, [R3]
1D0530:  MOV             R7, #0xFF
1D0534:  VCMPE.F64       D3, D0
1D0538:  VMRS            APSR_nzcv, FPSCR
1D053C:  BGT             loc_1D0560
1D0540:  VCMPE.F64       D3, D1
1D0544:  MOV             R7, #0
1D0548:  VMRS            APSR_nzcv, FPSCR
1D054C:  BLT             loc_1D0560
1D0550:  VMUL.F64        D3, D3, D2
1D0554:  VCVT.S32.F64    S6, D3
1D0558:  VMOV            R7, S6
1D055C:  ADD             R7, R7, #0x80
1D0560:  ADD             R3, R3, #8
1D0564:  STRB            R7, [R2],#1
1D0568:  SUBS            R1, R1, #1
1D056C:  BNE             loc_1D052C
1D0570:  LDR             R7, [SP,#0x548+var_530]
1D0574:  ADD             R6, R6, R7
1D0578:  STR             R6, [SP,#0x548+dest]
1D057C:  ADD             R5, R5, R7,LSL#3
1D0580:  STR             R5, [SP,#0x548+src]
1D0584:  LDR             R1, [SP,#0x548+var_528]
1D0588:  ADD             R0, R0, #1
1D058C:  CMP             R0, R1
1D0590:  BNE             loc_1D0510
1D0594:  B               def_1CF154; jumptable 001CF154 default case
1D0598:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5128
1D059C:  CMP             R0, #0
1D05A0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D05A4:  MOV             R0, #0
1D05A8:  CMP             R7, #0
1D05AC:  BEQ             loc_1D05F4
1D05B0:  LDR             R6, [SP,#0x548+dest]
1D05B4:  MOV             R1, R7
1D05B8:  LDR             R5, [SP,#0x548+src]
1D05BC:  MOV             R2, R6
1D05C0:  MOV             R3, R5
1D05C4:  LDRB            R7, [R3,#2]
1D05C8:  SUBS            R1, R1, #1
1D05CC:  ADD             R3, R3, #3
1D05D0:  ADD             R7, R7, #0x80
1D05D4:  STRB            R7, [R2],#1
1D05D8:  BNE             loc_1D05C4
1D05DC:  LDR             R7, [SP,#0x548+var_530]
1D05E0:  ADD             R6, R6, R7
1D05E4:  STR             R6, [SP,#0x548+dest]
1D05E8:  ADD             R1, R7, R7,LSL#1
1D05EC:  ADD             R5, R5, R1
1D05F0:  STR             R5, [SP,#0x548+src]
1D05F4:  LDR             R1, [SP,#0x548+var_528]
1D05F8:  ADD             R0, R0, #1
1D05FC:  CMP             R0, R1
1D0600:  BNE             loc_1D05A8
1D0604:  B               def_1CF154; jumptable 001CF154 default case
1D0608:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5129
1D060C:  CMP             R0, #0
1D0610:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0614:  MOV             R0, #0
1D0618:  CMP             R7, #0
1D061C:  BEQ             loc_1D0660
1D0620:  LDR             R6, [SP,#0x548+dest]
1D0624:  MOV             R1, R7
1D0628:  LDR             R5, [SP,#0x548+src]
1D062C:  MOV             R2, R6
1D0630:  MOV             R3, R5
1D0634:  LDRB            R7, [R3,#2]
1D0638:  SUBS            R1, R1, #1
1D063C:  STRB            R7, [R2],#1
1D0640:  ADD             R3, R3, #3
1D0644:  BNE             loc_1D0634
1D0648:  LDR             R7, [SP,#0x548+var_530]
1D064C:  ADD             R6, R6, R7
1D0650:  STR             R6, [SP,#0x548+dest]
1D0654:  ADD             R1, R7, R7,LSL#1
1D0658:  ADD             R5, R5, R1
1D065C:  STR             R5, [SP,#0x548+src]
1D0660:  LDR             R1, [SP,#0x548+var_528]
1D0664:  ADD             R0, R0, #1
1D0668:  CMP             R0, R1
1D066C:  BNE             loc_1D0618
1D0670:  B               def_1CF154; jumptable 001CF154 default case
1D0674:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5130
1D0678:  CMP             R0, #0
1D067C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0680:  LDR             R1, =(unk_C46B0 - 0x1D0694)
1D0684:  MOV             R0, #0
1D0688:  MOV             R2, #0x80
1D068C:  ADD             R1, PC, R1; unk_C46B0
1D0690:  CMP             R7, #0
1D0694:  BEQ             loc_1D06DC
1D0698:  LDR             R12, [SP,#0x548+src]
1D069C:  MOV             R3, R7
1D06A0:  LDR             R4, [SP,#0x548+dest]
1D06A4:  MOV             R6, R12
1D06A8:  MOV             R7, R4
1D06AC:  LDRB            R5, [R6],#1
1D06B0:  SUBS            R3, R3, #1
1D06B4:  ADD             R5, R1, R5,LSL#1
1D06B8:  LDRH            R5, [R5]
1D06BC:  ADD             R5, R2, R5,LSR#8
1D06C0:  STRB            R5, [R7],#1
1D06C4:  BNE             loc_1D06AC
1D06C8:  LDR             R7, [SP,#0x548+var_530]
1D06CC:  ADD             R4, R4, R7
1D06D0:  STR             R4, [SP,#0x548+dest]
1D06D4:  ADD             R12, R12, R7
1D06D8:  STR             R12, [SP,#0x548+src]
1D06DC:  LDR             R3, [SP,#0x548+var_528]
1D06E0:  ADD             R0, R0, #1
1D06E4:  CMP             R0, R3
1D06E8:  BNE             loc_1D0690
1D06EC:  B               def_1CF154; jumptable 001CF154 default case
1D06F0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5131
1D06F4:  CMP             R0, #0
1D06F8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D06FC:  LDR             R1, =(unk_C48B0 - 0x1D0710)
1D0700:  MOV             R0, #0
1D0704:  MOV             R2, #0x80
1D0708:  ADD             R1, PC, R1; unk_C48B0
1D070C:  CMP             R7, #0
1D0710:  BEQ             loc_1D0758
1D0714:  LDR             R12, [SP,#0x548+src]
1D0718:  MOV             R3, R7
1D071C:  LDR             R4, [SP,#0x548+dest]
1D0720:  MOV             R6, R12
1D0724:  MOV             R7, R4
1D0728:  LDRB            R5, [R6],#1
1D072C:  SUBS            R3, R3, #1
1D0730:  ADD             R5, R1, R5,LSL#1
1D0734:  LDRH            R5, [R5]
1D0738:  ADD             R5, R2, R5,LSR#8
1D073C:  STRB            R5, [R7],#1
1D0740:  BNE             loc_1D0728
1D0744:  LDR             R7, [SP,#0x548+var_530]
1D0748:  ADD             R4, R4, R7
1D074C:  STR             R4, [SP,#0x548+dest]
1D0750:  ADD             R12, R12, R7
1D0754:  STR             R12, [SP,#0x548+src]
1D0758:  LDR             R3, [SP,#0x548+var_528]
1D075C:  ADD             R0, R0, #1
1D0760:  CMP             R0, R3
1D0764:  BNE             loc_1D070C
1D0768:  B               def_1CF154; jumptable 001CF154 default case
1D076C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF258 case 5132
1D0770:  LDR             R1, [SP,#0x548+src]
1D0774:  CMP             R0, #0
1D0778:  BEQ             def_1CF154; jumptable 001CF154 default case
1D077C:  LDR             R0, [SP,#0x548+var_530]
1D0780:  MOV             R6, #0
1D0784:  ADD             R4, SP, #0x548+var_522
1D0788:  MOV             R7, #0x80
1D078C:  MOV             R10, R0,LSL#1
1D0790:  ADD             R0, R0, R0,LSL#3
1D0794:  MOV             R0, R0,LSL#2
1D0798:  STR             R0, [SP,#0x548+var_538]
1D079C:  LDR             R2, [SP,#0x548+var_528]
1D07A0:  MOV             R0, R4
1D07A4:  MOV             R9, R1
1D07A8:  MOV             R5, R2
1D07AC:  LDR             R2, [SP,#0x548+var_530]
1D07B0:  BL              sub_1D6750
1D07B4:  CMP             R6, R5
1D07B8:  BCS             loc_1D0828
1D07BC:  LDR             LR, [SP,#0x548+dest]
1D07C0:  MOV             R0, #0
1D07C4:  MOV             R8, R4
1D07C8:  MOV             R1, R9
1D07CC:  LDR             R2, [SP,#0x548+var_530]
1D07D0:  CMP             R2, #0
1D07D4:  BEQ             loc_1D0804
1D07D8:  MOV             R12, R1
1D07DC:  MOV             R3, R8
1D07E0:  MOV             R5, LR
1D07E4:  LDRH            R4, [R3],#2
1D07E8:  SUBS            R2, R2, #1
1D07EC:  ADD             R4, R7, R4,LSR#8
1D07F0:  STRB            R4, [R5],#1
1D07F4:  BNE             loc_1D07E4
1D07F8:  LDR             R2, [SP,#0x548+var_530]
1D07FC:  MOV             R1, R12
1D0800:  ADD             LR, LR, R2
1D0804:  ADD             R0, R0, #1
1D0808:  ADD             R6, R6, #1
1D080C:  CMP             R0, #0x40 ; '@'
1D0810:  BHI             loc_1D0830
1D0814:  LDR             R2, [SP,#0x548+var_528]
1D0818:  ADD             R8, R8, R10
1D081C:  CMP             R6, R2
1D0820:  BCC             loc_1D07CC
1D0824:  B               loc_1D0830
1D0828:  LDR             LR, [SP,#0x548+dest]
1D082C:  MOV             R1, R9
1D0830:  STR             LR, [SP,#0x548+dest]
1D0834:  ADD             R4, SP, #0x548+var_522
1D0838:  LDR             R0, [SP,#0x548+var_538]
1D083C:  ADD             R1, R1, R0
1D0840:  LDR             R0, [SP,#0x548+var_528]
1D0844:  CMP             R6, R0
1D0848:  BCC             loc_1D079C
1D084C:  B               def_1CF154; jumptable 001CF154 default case
1D0850:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5121
1D0854:  CMP             R0, #0
1D0858:  BEQ             def_1CF154; jumptable 001CF154 default case
1D085C:  MOV             R0, #0
1D0860:  MOV             R1, #0x8000
1D0864:  CMP             R7, #0
1D0868:  BEQ             loc_1D08A8
1D086C:  LDR             R5, [SP,#0x548+dest]
1D0870:  MOV             R2, R7
1D0874:  LDR             R4, [SP,#0x548+src]
1D0878:  MOV             R3, R5
1D087C:  MOV             R7, R4
1D0880:  LDRB            R6, [R7],#1
1D0884:  SUBS            R2, R2, #1
1D0888:  ADD             R6, R1, R6,LSL#8
1D088C:  STRH            R6, [R3],#2
1D0890:  BNE             loc_1D0880
1D0894:  LDR             R7, [SP,#0x548+var_530]
1D0898:  ADD             R4, R4, R7
1D089C:  ADD             R5, R5, R7,LSL#1
1D08A0:  STR             R5, [SP,#0x548+dest]
1D08A4:  STR             R4, [SP,#0x548+src]
1D08A8:  LDR             R2, [SP,#0x548+var_528]
1D08AC:  ADD             R0, R0, #1
1D08B0:  CMP             R0, R2
1D08B4:  BNE             loc_1D0864
1D08B8:  B               def_1CF154; jumptable 001CF154 default case
1D08BC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5122
1D08C0:  CMP             R0, #0
1D08C4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D08C8:  MOV             R0, #0
1D08CC:  CMP             R7, #0
1D08D0:  BEQ             loc_1D090C
1D08D4:  LDR             R6, [SP,#0x548+dest]
1D08D8:  MOV             R1, R7
1D08DC:  LDR             R5, [SP,#0x548+src]
1D08E0:  MOV             R2, R6
1D08E4:  MOV             R3, R5
1D08E8:  LDRH            R7, [R3],#2
1D08EC:  SUBS            R1, R1, #1
1D08F0:  STRH            R7, [R2],#2
1D08F4:  BNE             loc_1D08E8
1D08F8:  LDR             R7, [SP,#0x548+var_530]
1D08FC:  ADD             R6, R6, R7,LSL#1
1D0900:  STR             R6, [SP,#0x548+dest]
1D0904:  ADD             R5, R5, R7,LSL#1
1D0908:  STR             R5, [SP,#0x548+src]
1D090C:  LDR             R1, [SP,#0x548+var_528]
1D0910:  ADD             R0, R0, #1
1D0914:  CMP             R0, R1
1D0918:  BNE             loc_1D08CC
1D091C:  B               def_1CF154; jumptable 001CF154 default case
1D0920:  DCD unk_C4C94 - 0x1CF978
1D0924:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5123
1D0928:  CMP             R0, #0
1D092C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0930:  MOV             R0, #0
1D0934:  CMP             R7, #0
1D0938:  BEQ             loc_1D0978
1D093C:  LDR             R6, [SP,#0x548+dest]
1D0940:  MOV             R1, R7
1D0944:  LDR             R5, [SP,#0x548+src]
1D0948:  MOV             R2, R6
1D094C:  MOV             R3, R5
1D0950:  LDRH            R7, [R3],#2
1D0954:  SUBS            R1, R1, #1
1D0958:  ADD             R7, R7, #0x8000
1D095C:  STRH            R7, [R2],#2
1D0960:  BNE             loc_1D0950
1D0964:  LDR             R7, [SP,#0x548+var_530]
1D0968:  ADD             R6, R6, R7,LSL#1
1D096C:  STR             R6, [SP,#0x548+dest]
1D0970:  ADD             R5, R5, R7,LSL#1
1D0974:  STR             R5, [SP,#0x548+src]
1D0978:  LDR             R1, [SP,#0x548+var_528]
1D097C:  ADD             R0, R0, #1
1D0980:  CMP             R0, R1
1D0984:  BNE             loc_1D0934
1D0988:  B               def_1CF154; jumptable 001CF154 default case
1D098C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5124
1D0990:  CMP             R0, #0
1D0994:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0998:  MOV             R0, #0
1D099C:  CMP             R7, #0
1D09A0:  BEQ             loc_1D09E0
1D09A4:  LDR             R6, [SP,#0x548+dest]
1D09A8:  MOV             R1, R7
1D09AC:  LDR             R5, [SP,#0x548+src]
1D09B0:  MOV             R2, R6
1D09B4:  MOV             R3, R5
1D09B8:  LDRH            R7, [R3,#2]
1D09BC:  SUBS            R1, R1, #1
1D09C0:  STRH            R7, [R2],#2
1D09C4:  ADD             R3, R3, #4
1D09C8:  BNE             loc_1D09B8
1D09CC:  LDR             R7, [SP,#0x548+var_530]
1D09D0:  ADD             R6, R6, R7,LSL#1
1D09D4:  STR             R6, [SP,#0x548+dest]
1D09D8:  ADD             R5, R5, R7,LSL#2
1D09DC:  STR             R5, [SP,#0x548+src]
1D09E0:  LDR             R1, [SP,#0x548+var_528]
1D09E4:  ADD             R0, R0, #1
1D09E8:  CMP             R0, R1
1D09EC:  BNE             loc_1D099C
1D09F0:  B               def_1CF154; jumptable 001CF154 default case
1D09F4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5125
1D09F8:  CMP             R0, #0
1D09FC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0A00:  MOV             R0, #0
1D0A04:  CMP             R7, #0
1D0A08:  BEQ             loc_1D0A4C
1D0A0C:  LDR             R6, [SP,#0x548+dest]
1D0A10:  MOV             R1, R7
1D0A14:  LDR             R5, [SP,#0x548+src]
1D0A18:  MOV             R2, R6
1D0A1C:  MOV             R3, R5
1D0A20:  LDRH            R7, [R3,#2]
1D0A24:  SUBS            R1, R1, #1
1D0A28:  ADD             R3, R3, #4
1D0A2C:  ADD             R7, R7, #0x8000
1D0A30:  STRH            R7, [R2],#2
1D0A34:  BNE             loc_1D0A20
1D0A38:  LDR             R7, [SP,#0x548+var_530]
1D0A3C:  ADD             R6, R6, R7,LSL#1
1D0A40:  STR             R6, [SP,#0x548+dest]
1D0A44:  ADD             R5, R5, R7,LSL#2
1D0A48:  STR             R5, [SP,#0x548+src]
1D0A4C:  LDR             R1, [SP,#0x548+var_528]
1D0A50:  ADD             R0, R0, #1
1D0A54:  CMP             R0, R1
1D0A58:  BNE             loc_1D0A04
1D0A5C:  B               def_1CF154; jumptable 001CF154 default case
1D0A60:  DCD unk_C4D94 - 0x1CFAA4
1D0A64:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5126
1D0A68:  CMP             R0, #0
1D0A6C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0A70:  VMOV.F32        S0, #1.0
1D0A74:  VLDR            S4, =32767.0
1D0A78:  VMOV.F32        S2, #-1.0
1D0A7C:  MOV             R0, #0
1D0A80:  CMP             R7, #0
1D0A84:  BEQ             loc_1D0AEC
1D0A88:  LDR             R6, [SP,#0x548+dest]
1D0A8C:  MOV             R1, R7
1D0A90:  LDR             R5, [SP,#0x548+src]
1D0A94:  MOV             R2, R6
1D0A98:  MOV             R3, R5
1D0A9C:  VLDR            S6, [R3]
1D0AA0:  MOVW            R7, #0x7FFF
1D0AA4:  VCMPE.F32       S6, S0
1D0AA8:  VMRS            APSR_nzcv, FPSCR
1D0AAC:  BGT             loc_1D0AC8
1D0AB0:  VCMPE.F32       S6, S2
1D0AB4:  MOV             R7, #0x8000
1D0AB8:  VMRS            APSR_nzcv, FPSCR
1D0ABC:  VMULGE.F32      S6, S6, S4
1D0AC0:  VCVTGE.S32.F32  S6, S6
1D0AC4:  VMOVGE          R7, S6
1D0AC8:  ADD             R3, R3, #4
1D0ACC:  STRH            R7, [R2],#2
1D0AD0:  SUBS            R1, R1, #1
1D0AD4:  BNE             loc_1D0A9C
1D0AD8:  LDR             R7, [SP,#0x548+var_530]
1D0ADC:  ADD             R6, R6, R7,LSL#1
1D0AE0:  STR             R6, [SP,#0x548+dest]
1D0AE4:  ADD             R5, R5, R7,LSL#2
1D0AE8:  STR             R5, [SP,#0x548+src]
1D0AEC:  LDR             R1, [SP,#0x548+var_528]
1D0AF0:  ADD             R0, R0, #1
1D0AF4:  CMP             R0, R1
1D0AF8:  BNE             loc_1D0A80
1D0AFC:  B               def_1CF154; jumptable 001CF154 default case
1D0B00:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5127
1D0B04:  CMP             R0, #0
1D0B08:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0B0C:  VMOV.F64        D0, #1.0
1D0B10:  MOV             R0, #0
1D0B14:  VMOV.F64        D1, #-1.0
1D0B18:  VLDR            D2, =32767.0
1D0B1C:  CMP             R7, #0
1D0B20:  BEQ             loc_1D0B8C
1D0B24:  LDR             R6, [SP,#0x548+dest]
1D0B28:  MOV             R1, R7
1D0B2C:  LDR             R5, [SP,#0x548+src]
1D0B30:  MOV             R2, R6
1D0B34:  MOV             R3, R5
1D0B38:  VLDR            D3, [R3]
1D0B3C:  MOVW            R7, #0x7FFF
1D0B40:  VCMPE.F64       D3, D0
1D0B44:  VMRS            APSR_nzcv, FPSCR
1D0B48:  BGT             loc_1D0B68
1D0B4C:  VCMPE.F64       D3, D1
1D0B50:  MOV             R7, #0x8000
1D0B54:  VMRS            APSR_nzcv, FPSCR
1D0B58:  BLT             loc_1D0B68
1D0B5C:  VMUL.F64        D3, D3, D2
1D0B60:  VCVT.S32.F64    S6, D3
1D0B64:  VMOV            R7, S6
1D0B68:  ADD             R3, R3, #8
1D0B6C:  STRH            R7, [R2],#2
1D0B70:  SUBS            R1, R1, #1
1D0B74:  BNE             loc_1D0B38
1D0B78:  LDR             R7, [SP,#0x548+var_530]
1D0B7C:  ADD             R6, R6, R7,LSL#1
1D0B80:  STR             R6, [SP,#0x548+dest]
1D0B84:  ADD             R5, R5, R7,LSL#3
1D0B88:  STR             R5, [SP,#0x548+src]
1D0B8C:  LDR             R1, [SP,#0x548+var_528]
1D0B90:  ADD             R0, R0, #1
1D0B94:  CMP             R0, R1
1D0B98:  BNE             loc_1D0B1C
1D0B9C:  B               def_1CF154; jumptable 001CF154 default case
1D0BA0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5128
1D0BA4:  CMP             R0, #0
1D0BA8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0BAC:  MOV             R0, #0
1D0BB0:  CMP             R7, #0
1D0BB4:  BEQ             loc_1D0C04
1D0BB8:  LDR             R5, [SP,#0x548+dest]
1D0BBC:  MOV             R1, R7
1D0BC0:  LDR             R4, [SP,#0x548+src]
1D0BC4:  MOV             R2, R5
1D0BC8:  MOV             R3, R4
1D0BCC:  LDRB            R7, [R3,#2]
1D0BD0:  SUBS            R1, R1, #1
1D0BD4:  LDRH            R6, [R3]
1D0BD8:  ADD             R3, R3, #3
1D0BDC:  ORR             R7, R6, R7,LSL#16
1D0BE0:  MOV             R7, R7,LSR#8
1D0BE4:  STRH            R7, [R2],#2
1D0BE8:  BNE             loc_1D0BCC
1D0BEC:  LDR             R7, [SP,#0x548+var_530]
1D0BF0:  ADD             R1, R7, R7,LSL#1
1D0BF4:  ADD             R5, R5, R7,LSL#1
1D0BF8:  STR             R5, [SP,#0x548+dest]
1D0BFC:  ADD             R4, R4, R1
1D0C00:  STR             R4, [SP,#0x548+src]
1D0C04:  LDR             R1, [SP,#0x548+var_528]
1D0C08:  ADD             R0, R0, #1
1D0C0C:  CMP             R0, R1
1D0C10:  BNE             loc_1D0BB0
1D0C14:  B               def_1CF154; jumptable 001CF154 default case
1D0C18:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5129
1D0C1C:  CMP             R0, #0
1D0C20:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0C24:  MOV             R0, #0
1D0C28:  MOV             R1, #0x8000
1D0C2C:  CMP             R7, #0
1D0C30:  BEQ             loc_1D0C80
1D0C34:  LDR             R4, [SP,#0x548+dest]
1D0C38:  MOV             R2, R7
1D0C3C:  LDR             R12, [SP,#0x548+src]
1D0C40:  MOV             R3, R4
1D0C44:  MOV             R7, R12
1D0C48:  LDRB            R6, [R7,#2]
1D0C4C:  SUBS            R2, R2, #1
1D0C50:  LDRH            R5, [R7]
1D0C54:  ADD             R7, R7, #3
1D0C58:  ORR             R6, R5, R6,LSL#16
1D0C5C:  ADD             R6, R1, R6,LSR#8
1D0C60:  STRH            R6, [R3],#2
1D0C64:  BNE             loc_1D0C48
1D0C68:  LDR             R7, [SP,#0x548+var_530]
1D0C6C:  ADD             R2, R7, R7,LSL#1
1D0C70:  ADD             R4, R4, R7,LSL#1
1D0C74:  STR             R4, [SP,#0x548+dest]
1D0C78:  ADD             R12, R12, R2
1D0C7C:  STR             R12, [SP,#0x548+src]
1D0C80:  LDR             R2, [SP,#0x548+var_528]
1D0C84:  ADD             R0, R0, #1
1D0C88:  CMP             R0, R2
1D0C8C:  BNE             loc_1D0C2C
1D0C90:  B               def_1CF154; jumptable 001CF154 default case
1D0C94:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5130
1D0C98:  CMP             R0, #0
1D0C9C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0CA0:  LDR             R1, =(unk_C46B0 - 0x1D0CB0)
1D0CA4:  MOV             R0, #0
1D0CA8:  ADD             R1, PC, R1; unk_C46B0
1D0CAC:  CMP             R7, #0
1D0CB0:  BEQ             loc_1D0CF4
1D0CB4:  LDR             R5, [SP,#0x548+dest]
1D0CB8:  MOV             R2, R7
1D0CBC:  LDR             R4, [SP,#0x548+src]
1D0CC0:  MOV             R3, R5
1D0CC4:  MOV             R7, R4
1D0CC8:  LDRB            R6, [R7],#1
1D0CCC:  SUBS            R2, R2, #1
1D0CD0:  ADD             R6, R1, R6,LSL#1
1D0CD4:  LDRH            R6, [R6]
1D0CD8:  STRH            R6, [R3],#2
1D0CDC:  BNE             loc_1D0CC8
1D0CE0:  LDR             R7, [SP,#0x548+var_530]
1D0CE4:  ADD             R4, R4, R7
1D0CE8:  ADD             R5, R5, R7,LSL#1
1D0CEC:  STR             R5, [SP,#0x548+dest]
1D0CF0:  STR             R4, [SP,#0x548+src]
1D0CF4:  LDR             R2, [SP,#0x548+var_528]
1D0CF8:  ADD             R0, R0, #1
1D0CFC:  CMP             R0, R2
1D0D00:  BNE             loc_1D0CAC
1D0D04:  B               def_1CF154; jumptable 001CF154 default case
1D0D08:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5131
1D0D0C:  CMP             R0, #0
1D0D10:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0D14:  LDR             R1, =(unk_C48B0 - 0x1D0D24)
1D0D18:  MOV             R0, #0
1D0D1C:  ADD             R1, PC, R1; unk_C48B0
1D0D20:  CMP             R7, #0
1D0D24:  BEQ             loc_1D0D68
1D0D28:  LDR             R5, [SP,#0x548+dest]
1D0D2C:  MOV             R2, R7
1D0D30:  LDR             R4, [SP,#0x548+src]
1D0D34:  MOV             R3, R5
1D0D38:  MOV             R7, R4
1D0D3C:  LDRB            R6, [R7],#1
1D0D40:  SUBS            R2, R2, #1
1D0D44:  ADD             R6, R1, R6,LSL#1
1D0D48:  LDRH            R6, [R6]
1D0D4C:  STRH            R6, [R3],#2
1D0D50:  BNE             loc_1D0D3C
1D0D54:  LDR             R7, [SP,#0x548+var_530]
1D0D58:  ADD             R4, R4, R7
1D0D5C:  ADD             R5, R5, R7,LSL#1
1D0D60:  STR             R5, [SP,#0x548+dest]
1D0D64:  STR             R4, [SP,#0x548+src]
1D0D68:  LDR             R2, [SP,#0x548+var_528]
1D0D6C:  ADD             R0, R0, #1
1D0D70:  CMP             R0, R2
1D0D74:  BNE             loc_1D0D20
1D0D78:  B               def_1CF154; jumptable 001CF154 default case
1D0D7C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF310 case 5132
1D0D80:  LDR             R1, [SP,#0x548+src]
1D0D84:  CMP             R0, #0
1D0D88:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0D8C:  ADD             R0, R7, R7,LSL#3
1D0D90:  MOV             R8, R7,LSL#1
1D0D94:  MOV             R6, #0
1D0D98:  ADD             R12, SP, #0x548+var_522
1D0D9C:  MOV             R9, R0,LSL#2
1D0DA0:  MOV             R0, R12
1D0DA4:  MOV             R2, R7
1D0DA8:  MOV             R10, R1
1D0DAC:  MOV             R5, R12
1D0DB0:  BL              sub_1D6750
1D0DB4:  LDR             R0, [SP,#0x548+var_528]
1D0DB8:  CMP             R6, R0
1D0DBC:  BCS             loc_1D0E20
1D0DC0:  LDR             R4, [SP,#0x548+dest]
1D0DC4:  MOV             R0, #0
1D0DC8:  MOV             R1, R5
1D0DCC:  MOV             R12, R5
1D0DD0:  CMP             R7, #0
1D0DD4:  BEQ             loc_1D0DFC
1D0DD8:  MOV             R2, R7
1D0DDC:  MOV             R3, R1
1D0DE0:  MOV             R7, R4
1D0DE4:  LDRH            R5, [R3],#2
1D0DE8:  SUBS            R2, R2, #1
1D0DEC:  STRH            R5, [R7],#2
1D0DF0:  BNE             loc_1D0DE4
1D0DF4:  LDR             R7, [SP,#0x548+var_530]
1D0DF8:  ADD             R4, R4, R7,LSL#1
1D0DFC:  ADD             R0, R0, #1
1D0E00:  ADD             R6, R6, #1
1D0E04:  CMP             R0, #0x40 ; '@'
1D0E08:  BHI             loc_1D0E28
1D0E0C:  LDR             R2, [SP,#0x548+var_528]
1D0E10:  ADD             R1, R1, R8
1D0E14:  CMP             R6, R2
1D0E18:  BCC             loc_1D0DD0
1D0E1C:  B               loc_1D0E28
1D0E20:  LDR             R4, [SP,#0x548+dest]
1D0E24:  MOV             R12, R5
1D0E28:  STR             R4, [SP,#0x548+dest]
1D0E2C:  MOV             R1, R10
1D0E30:  LDR             R0, [SP,#0x548+var_528]
1D0E34:  ADD             R1, R1, R9
1D0E38:  CMP             R6, R0
1D0E3C:  BCC             loc_1D0DA0
1D0E40:  B               def_1CF154; jumptable 001CF154 default case
1D0E44:  DCFS 32767.0
1D0E48:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5121
1D0E4C:  CMP             R0, #0
1D0E50:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0E54:  MOV             R0, #0
1D0E58:  CMP             R7, #0
1D0E5C:  BEQ             loc_1D0E9C
1D0E60:  LDR             R6, [SP,#0x548+dest]
1D0E64:  MOV             R1, R7
1D0E68:  LDR             R5, [SP,#0x548+src]
1D0E6C:  MOV             R2, R6
1D0E70:  MOV             R3, R5
1D0E74:  LDRB            R7, [R3],#1
1D0E78:  SUBS            R1, R1, #1
1D0E7C:  MOV             R7, R7,LSL#8
1D0E80:  STRH            R7, [R2],#2
1D0E84:  BNE             loc_1D0E74
1D0E88:  LDR             R7, [SP,#0x548+var_530]
1D0E8C:  ADD             R5, R5, R7
1D0E90:  ADD             R6, R6, R7,LSL#1
1D0E94:  STR             R6, [SP,#0x548+dest]
1D0E98:  STR             R5, [SP,#0x548+src]
1D0E9C:  LDR             R1, [SP,#0x548+var_528]
1D0EA0:  ADD             R0, R0, #1
1D0EA4:  CMP             R0, R1
1D0EA8:  BNE             loc_1D0E58
1D0EAC:  B               def_1CF154; jumptable 001CF154 default case
1D0EB0:  DCFD 32767.0
1D0EB8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5122
1D0EBC:  CMP             R0, #0
1D0EC0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0EC4:  MOV             R0, #0
1D0EC8:  CMP             R7, #0
1D0ECC:  BEQ             loc_1D0F0C
1D0ED0:  LDR             R6, [SP,#0x548+dest]
1D0ED4:  MOV             R1, R7
1D0ED8:  LDR             R5, [SP,#0x548+src]
1D0EDC:  MOV             R2, R6
1D0EE0:  MOV             R3, R5
1D0EE4:  LDRH            R7, [R3],#2
1D0EE8:  SUBS            R1, R1, #1
1D0EEC:  ADD             R7, R7, #0x8000
1D0EF0:  STRH            R7, [R2],#2
1D0EF4:  BNE             loc_1D0EE4
1D0EF8:  LDR             R7, [SP,#0x548+var_530]
1D0EFC:  ADD             R6, R6, R7,LSL#1
1D0F00:  STR             R6, [SP,#0x548+dest]
1D0F04:  ADD             R5, R5, R7,LSL#1
1D0F08:  STR             R5, [SP,#0x548+src]
1D0F0C:  LDR             R1, [SP,#0x548+var_528]
1D0F10:  ADD             R0, R0, #1
1D0F14:  CMP             R0, R1
1D0F18:  BNE             loc_1D0EC8
1D0F1C:  B               def_1CF154; jumptable 001CF154 default case
1D0F20:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5123
1D0F24:  CMP             R0, #0
1D0F28:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0F2C:  MOV             R0, #0
1D0F30:  CMP             R7, #0
1D0F34:  BEQ             loc_1D0F70
1D0F38:  LDR             R6, [SP,#0x548+dest]
1D0F3C:  MOV             R1, R7
1D0F40:  LDR             R5, [SP,#0x548+src]
1D0F44:  MOV             R2, R6
1D0F48:  MOV             R3, R5
1D0F4C:  LDRH            R7, [R3],#2
1D0F50:  SUBS            R1, R1, #1
1D0F54:  STRH            R7, [R2],#2
1D0F58:  BNE             loc_1D0F4C
1D0F5C:  LDR             R7, [SP,#0x548+var_530]
1D0F60:  ADD             R6, R6, R7,LSL#1
1D0F64:  STR             R6, [SP,#0x548+dest]
1D0F68:  ADD             R5, R5, R7,LSL#1
1D0F6C:  STR             R5, [SP,#0x548+src]
1D0F70:  LDR             R1, [SP,#0x548+var_528]
1D0F74:  ADD             R0, R0, #1
1D0F78:  CMP             R0, R1
1D0F7C:  BNE             loc_1D0F30
1D0F80:  B               def_1CF154; jumptable 001CF154 default case
1D0F84:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5124
1D0F88:  CMP             R0, #0
1D0F8C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0F90:  MOV             R0, #0
1D0F94:  CMP             R7, #0
1D0F98:  BEQ             loc_1D0FDC
1D0F9C:  LDR             R6, [SP,#0x548+dest]
1D0FA0:  MOV             R1, R7
1D0FA4:  LDR             R5, [SP,#0x548+src]
1D0FA8:  MOV             R2, R6
1D0FAC:  MOV             R3, R5
1D0FB0:  LDRH            R7, [R3,#2]
1D0FB4:  SUBS            R1, R1, #1
1D0FB8:  ADD             R3, R3, #4
1D0FBC:  ADD             R7, R7, #0x8000
1D0FC0:  STRH            R7, [R2],#2
1D0FC4:  BNE             loc_1D0FB0
1D0FC8:  LDR             R7, [SP,#0x548+var_530]
1D0FCC:  ADD             R6, R6, R7,LSL#1
1D0FD0:  STR             R6, [SP,#0x548+dest]
1D0FD4:  ADD             R5, R5, R7,LSL#2
1D0FD8:  STR             R5, [SP,#0x548+src]
1D0FDC:  LDR             R1, [SP,#0x548+var_528]
1D0FE0:  ADD             R0, R0, #1
1D0FE4:  CMP             R0, R1
1D0FE8:  BNE             loc_1D0F94
1D0FEC:  B               def_1CF154; jumptable 001CF154 default case
1D0FF0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5125
1D0FF4:  CMP             R0, #0
1D0FF8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D0FFC:  MOV             R0, #0
1D1000:  CMP             R7, #0
1D1004:  BEQ             loc_1D1044
1D1008:  LDR             R6, [SP,#0x548+dest]
1D100C:  MOV             R1, R7
1D1010:  LDR             R5, [SP,#0x548+src]
1D1014:  MOV             R2, R6
1D1018:  MOV             R3, R5
1D101C:  LDRH            R7, [R3,#2]
1D1020:  SUBS            R1, R1, #1
1D1024:  STRH            R7, [R2],#2
1D1028:  ADD             R3, R3, #4
1D102C:  BNE             loc_1D101C
1D1030:  LDR             R7, [SP,#0x548+var_530]
1D1034:  ADD             R6, R6, R7,LSL#1
1D1038:  STR             R6, [SP,#0x548+dest]
1D103C:  ADD             R5, R5, R7,LSL#2
1D1040:  STR             R5, [SP,#0x548+src]
1D1044:  LDR             R1, [SP,#0x548+var_528]
1D1048:  ADD             R0, R0, #1
1D104C:  CMP             R0, R1
1D1050:  BNE             loc_1D1000
1D1054:  B               def_1CF154; jumptable 001CF154 default case
1D1058:  DCD unk_C46B0 - 0x1D00A0
1D105C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5126
1D1060:  CMP             R0, #0
1D1064:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1068:  VMOV.F32        S0, #1.0
1D106C:  VLDR            S4, =32767.0
1D1070:  VMOV.F32        S2, #-1.0
1D1074:  MOV             R0, #0
1D1078:  CMP             R7, #0
1D107C:  BEQ             loc_1D10E8
1D1080:  LDR             R6, [SP,#0x548+dest]
1D1084:  MOV             R1, R7
1D1088:  LDR             R5, [SP,#0x548+src]
1D108C:  MOV             R2, R6
1D1090:  MOV             R3, R5
1D1094:  VLDR            S6, [R3]
1D1098:  MOVW            R7, #0xFFFF
1D109C:  VCMPE.F32       S6, S0
1D10A0:  VMRS            APSR_nzcv, FPSCR
1D10A4:  BGT             loc_1D10C4
1D10A8:  VCMPE.F32       S6, S2
1D10AC:  MOV             R7, #0
1D10B0:  VMRS            APSR_nzcv, FPSCR
1D10B4:  VMULGE.F32      S6, S6, S4
1D10B8:  VCVTGE.S32.F32  S6, S6
1D10BC:  VMOVGE          R7, S6
1D10C0:  ADDGE           R7, R7, #0x8000
1D10C4:  ADD             R3, R3, #4
1D10C8:  STRH            R7, [R2],#2
1D10CC:  SUBS            R1, R1, #1
1D10D0:  BNE             loc_1D1094
1D10D4:  LDR             R7, [SP,#0x548+var_530]
1D10D8:  ADD             R6, R6, R7,LSL#1
1D10DC:  STR             R6, [SP,#0x548+dest]
1D10E0:  ADD             R5, R5, R7,LSL#2
1D10E4:  STR             R5, [SP,#0x548+src]
1D10E8:  LDR             R1, [SP,#0x548+var_528]
1D10EC:  ADD             R0, R0, #1
1D10F0:  CMP             R0, R1
1D10F4:  BNE             loc_1D1078
1D10F8:  B               def_1CF154; jumptable 001CF154 default case
1D10FC:  DCD unk_C48B0 - 0x1D0118
1D1100:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5127
1D1104:  CMP             R0, #0
1D1108:  BEQ             def_1CF154; jumptable 001CF154 default case
1D110C:  VMOV.F64        D0, #1.0
1D1110:  MOV             R0, #0
1D1114:  VMOV.F64        D1, #-1.0
1D1118:  VLDR            D2, =32767.0
1D111C:  CMP             R7, #0
1D1120:  BEQ             loc_1D1190
1D1124:  LDR             R6, [SP,#0x548+dest]
1D1128:  MOV             R1, R7
1D112C:  LDR             R5, [SP,#0x548+src]
1D1130:  MOV             R2, R6
1D1134:  MOV             R3, R5
1D1138:  VLDR            D3, [R3]
1D113C:  MOVW            R7, #0xFFFF
1D1140:  VCMPE.F64       D3, D0
1D1144:  VMRS            APSR_nzcv, FPSCR
1D1148:  BGT             loc_1D116C
1D114C:  VCMPE.F64       D3, D1
1D1150:  MOV             R7, #0
1D1154:  VMRS            APSR_nzcv, FPSCR
1D1158:  BLT             loc_1D116C
1D115C:  VMUL.F64        D3, D3, D2
1D1160:  VCVT.S32.F64    S6, D3
1D1164:  VMOV            R7, S6
1D1168:  ADD             R7, R7, #0x8000
1D116C:  ADD             R3, R3, #8
1D1170:  STRH            R7, [R2],#2
1D1174:  SUBS            R1, R1, #1
1D1178:  BNE             loc_1D1138
1D117C:  LDR             R7, [SP,#0x548+var_530]
1D1180:  ADD             R6, R6, R7,LSL#1
1D1184:  STR             R6, [SP,#0x548+dest]
1D1188:  ADD             R5, R5, R7,LSL#3
1D118C:  STR             R5, [SP,#0x548+src]
1D1190:  LDR             R1, [SP,#0x548+var_528]
1D1194:  ADD             R0, R0, #1
1D1198:  CMP             R0, R1
1D119C:  BNE             loc_1D111C
1D11A0:  B               def_1CF154; jumptable 001CF154 default case
1D11A4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5128
1D11A8:  CMP             R0, #0
1D11AC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D11B0:  MOVW            R1, #0xFF00
1D11B4:  MOV             R0, #0
1D11B8:  MOVT            R1, #0xFF
1D11BC:  MOV             R2, #0x8000
1D11C0:  CMP             R7, #0
1D11C4:  BEQ             loc_1D121C
1D11C8:  LDR             R4, [SP,#0x548+src]
1D11CC:  MOV             R3, R7
1D11D0:  LDR             LR, [SP,#0x548+dest]
1D11D4:  MOV             R12, R4
1D11D8:  MOV             R6, R4
1D11DC:  MOV             R7, LR
1D11E0:  LDRB            R5, [R6,#2]
1D11E4:  SUBS            R3, R3, #1
1D11E8:  LDRH            R4, [R6]
1D11EC:  ADD             R6, R6, #3
1D11F0:  ORR             R5, R4, R5,LSL#16
1D11F4:  AND             R5, R5, R1
1D11F8:  ADD             R5, R2, R5,LSR#8
1D11FC:  STRH            R5, [R7],#2
1D1200:  BNE             loc_1D11E0
1D1204:  LDR             R7, [SP,#0x548+var_530]
1D1208:  ADD             R3, R7, R7,LSL#1
1D120C:  ADD             LR, LR, R7,LSL#1
1D1210:  STR             LR, [SP,#0x548+dest]
1D1214:  ADD             R12, R12, R3
1D1218:  STR             R12, [SP,#0x548+src]
1D121C:  LDR             R3, [SP,#0x548+var_528]
1D1220:  ADD             R0, R0, #1
1D1224:  CMP             R0, R3
1D1228:  BNE             loc_1D11C0
1D122C:  B               def_1CF154; jumptable 001CF154 default case
1D1230:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5129
1D1234:  CMP             R0, #0
1D1238:  BEQ             def_1CF154; jumptable 001CF154 default case
1D123C:  MOV             R0, #0
1D1240:  CMP             R7, #0
1D1244:  BEQ             loc_1D1294
1D1248:  LDR             R5, [SP,#0x548+dest]
1D124C:  MOV             R1, R7
1D1250:  LDR             R4, [SP,#0x548+src]
1D1254:  MOV             R2, R5
1D1258:  MOV             R3, R4
1D125C:  LDRB            R7, [R3,#2]
1D1260:  SUBS            R1, R1, #1
1D1264:  LDRH            R6, [R3]
1D1268:  ADD             R3, R3, #3
1D126C:  ORR             R7, R6, R7,LSL#16
1D1270:  MOV             R7, R7,LSR#8
1D1274:  STRH            R7, [R2],#2
1D1278:  BNE             loc_1D125C
1D127C:  LDR             R7, [SP,#0x548+var_530]
1D1280:  ADD             R1, R7, R7,LSL#1
1D1284:  ADD             R5, R5, R7,LSL#1
1D1288:  STR             R5, [SP,#0x548+dest]
1D128C:  ADD             R4, R4, R1
1D1290:  STR             R4, [SP,#0x548+src]
1D1294:  LDR             R1, [SP,#0x548+var_528]
1D1298:  ADD             R0, R0, #1
1D129C:  CMP             R0, R1
1D12A0:  BNE             loc_1D1240
1D12A4:  B               def_1CF154; jumptable 001CF154 default case
1D12A8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5130
1D12AC:  CMP             R0, #0
1D12B0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D12B4:  LDR             R1, =(unk_C46B0 - 0x1D12C4)
1D12B8:  MOV             R0, #0
1D12BC:  ADD             R1, PC, R1; unk_C46B0
1D12C0:  CMP             R7, #0
1D12C4:  BEQ             loc_1D130C
1D12C8:  LDR             R5, [SP,#0x548+dest]
1D12CC:  MOV             R2, R7
1D12D0:  LDR             R4, [SP,#0x548+src]
1D12D4:  MOV             R3, R5
1D12D8:  MOV             R7, R4
1D12DC:  LDRB            R6, [R7],#1
1D12E0:  SUBS            R2, R2, #1
1D12E4:  ADD             R6, R1, R6,LSL#1
1D12E8:  LDRH            R6, [R6]
1D12EC:  ADD             R6, R6, #0x8000
1D12F0:  STRH            R6, [R3],#2
1D12F4:  BNE             loc_1D12DC
1D12F8:  LDR             R7, [SP,#0x548+var_530]
1D12FC:  ADD             R4, R4, R7
1D1300:  ADD             R5, R5, R7,LSL#1
1D1304:  STR             R5, [SP,#0x548+dest]
1D1308:  STR             R4, [SP,#0x548+src]
1D130C:  LDR             R2, [SP,#0x548+var_528]
1D1310:  ADD             R0, R0, #1
1D1314:  CMP             R0, R2
1D1318:  BNE             loc_1D12C0
1D131C:  B               def_1CF154; jumptable 001CF154 default case
1D1320:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5131
1D1324:  CMP             R0, #0
1D1328:  BEQ             def_1CF154; jumptable 001CF154 default case
1D132C:  LDR             R1, =(unk_C48B0 - 0x1D133C)
1D1330:  MOV             R0, #0
1D1334:  ADD             R1, PC, R1; unk_C48B0
1D1338:  CMP             R7, #0
1D133C:  BEQ             loc_1D1384
1D1340:  LDR             R5, [SP,#0x548+dest]
1D1344:  MOV             R2, R7
1D1348:  LDR             R4, [SP,#0x548+src]
1D134C:  MOV             R3, R5
1D1350:  MOV             R7, R4
1D1354:  LDRB            R6, [R7],#1
1D1358:  SUBS            R2, R2, #1
1D135C:  ADD             R6, R1, R6,LSL#1
1D1360:  LDRH            R6, [R6]
1D1364:  ADD             R6, R6, #0x8000
1D1368:  STRH            R6, [R3],#2
1D136C:  BNE             loc_1D1354
1D1370:  LDR             R7, [SP,#0x548+var_530]
1D1374:  ADD             R4, R4, R7
1D1378:  ADD             R5, R5, R7,LSL#1
1D137C:  STR             R5, [SP,#0x548+dest]
1D1380:  STR             R4, [SP,#0x548+src]
1D1384:  LDR             R2, [SP,#0x548+var_528]
1D1388:  ADD             R0, R0, #1
1D138C:  CMP             R0, R2
1D1390:  BNE             loc_1D1338
1D1394:  B               def_1CF154; jumptable 001CF154 default case
1D1398:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF3C8 case 5132
1D139C:  LDR             R1, [SP,#0x548+src]
1D13A0:  CMP             R0, #0
1D13A4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D13A8:  ADD             R0, R7, R7,LSL#3
1D13AC:  MOV             R8, R7,LSL#1
1D13B0:  MOV             R6, #0
1D13B4:  ADD             R12, SP, #0x548+var_522
1D13B8:  MOV             R9, R0,LSL#2
1D13BC:  MOV             R0, R12
1D13C0:  MOV             R2, R7
1D13C4:  MOV             R10, R1
1D13C8:  MOV             R5, R12
1D13CC:  BL              sub_1D6750
1D13D0:  LDR             R0, [SP,#0x548+var_528]
1D13D4:  CMP             R6, R0
1D13D8:  BCS             loc_1D1440
1D13DC:  LDR             R4, [SP,#0x548+dest]
1D13E0:  MOV             R0, #0
1D13E4:  MOV             R1, R5
1D13E8:  MOV             R12, R5
1D13EC:  CMP             R7, #0
1D13F0:  BEQ             loc_1D141C
1D13F4:  MOV             R2, R7
1D13F8:  MOV             R3, R1
1D13FC:  MOV             R7, R4
1D1400:  LDRH            R5, [R3],#2
1D1404:  SUBS            R2, R2, #1
1D1408:  ADD             R5, R5, #0x8000
1D140C:  STRH            R5, [R7],#2
1D1410:  BNE             loc_1D1400
1D1414:  LDR             R7, [SP,#0x548+var_530]
1D1418:  ADD             R4, R4, R7,LSL#1
1D141C:  ADD             R0, R0, #1
1D1420:  ADD             R6, R6, #1
1D1424:  CMP             R0, #0x40 ; '@'
1D1428:  BHI             loc_1D1448
1D142C:  LDR             R2, [SP,#0x548+var_528]
1D1430:  ADD             R1, R1, R8
1D1434:  CMP             R6, R2
1D1438:  BCC             loc_1D13EC
1D143C:  B               loc_1D1448
1D1440:  LDR             R4, [SP,#0x548+dest]
1D1444:  MOV             R12, R5
1D1448:  STR             R4, [SP,#0x548+dest]
1D144C:  MOV             R1, R10
1D1450:  LDR             R0, [SP,#0x548+var_528]
1D1454:  ADD             R1, R1, R9
1D1458:  CMP             R6, R0
1D145C:  BCC             loc_1D13BC
1D1460:  B               def_1CF154; jumptable 001CF154 default case
1D1464:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5121
1D1468:  CMP             R0, #0
1D146C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1470:  MOV             R0, #0
1D1474:  MOV             R1, #0x80000000
1D1478:  CMP             R7, #0
1D147C:  BEQ             loc_1D14BC
1D1480:  LDR             R5, [SP,#0x548+dest]
1D1484:  MOV             R2, R7
1D1488:  LDR             R4, [SP,#0x548+src]
1D148C:  MOV             R3, R5
1D1490:  MOV             R7, R4
1D1494:  LDRB            R6, [R7],#1
1D1498:  SUBS            R2, R2, #1
1D149C:  EOR             R6, R1, R6,LSL#24
1D14A0:  STR             R6, [R3],#4
1D14A4:  BNE             loc_1D1494
1D14A8:  LDR             R7, [SP,#0x548+var_530]
1D14AC:  ADD             R4, R4, R7
1D14B0:  ADD             R5, R5, R7,LSL#2
1D14B4:  STR             R5, [SP,#0x548+dest]
1D14B8:  STR             R4, [SP,#0x548+src]
1D14BC:  LDR             R2, [SP,#0x548+var_528]
1D14C0:  ADD             R0, R0, #1
1D14C4:  CMP             R0, R2
1D14C8:  BNE             loc_1D1478
1D14CC:  B               def_1CF154; jumptable 001CF154 default case
1D14D0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5122
1D14D4:  CMP             R0, #0
1D14D8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D14DC:  MOV             R0, #0
1D14E0:  CMP             R7, #0
1D14E4:  BEQ             loc_1D1524
1D14E8:  LDR             R6, [SP,#0x548+dest]
1D14EC:  MOV             R1, R7
1D14F0:  LDR             R5, [SP,#0x548+src]
1D14F4:  MOV             R2, R6
1D14F8:  MOV             R3, R5
1D14FC:  LDRH            R7, [R3],#2
1D1500:  SUBS            R1, R1, #1
1D1504:  MOV             R7, R7,LSL#16
1D1508:  STR             R7, [R2],#4
1D150C:  BNE             loc_1D14FC
1D1510:  LDR             R7, [SP,#0x548+var_530]
1D1514:  ADD             R6, R6, R7,LSL#2
1D1518:  STR             R6, [SP,#0x548+dest]
1D151C:  ADD             R5, R5, R7,LSL#1
1D1520:  STR             R5, [SP,#0x548+src]
1D1524:  LDR             R1, [SP,#0x548+var_528]
1D1528:  ADD             R0, R0, #1
1D152C:  CMP             R0, R1
1D1530:  BNE             loc_1D14E0
1D1534:  B               def_1CF154; jumptable 001CF154 default case
1D1538:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5123
1D153C:  CMP             R0, #0
1D1540:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1544:  MOV             R0, #0
1D1548:  MOV             R1, #0x80000000
1D154C:  CMP             R7, #0
1D1550:  BEQ             loc_1D1590
1D1554:  LDR             R5, [SP,#0x548+dest]
1D1558:  MOV             R2, R7
1D155C:  LDR             R4, [SP,#0x548+src]
1D1560:  MOV             R3, R5
1D1564:  MOV             R7, R4
1D1568:  LDRH            R6, [R7],#2
1D156C:  SUBS            R2, R2, #1
1D1570:  EOR             R6, R1, R6,LSL#16
1D1574:  STR             R6, [R3],#4
1D1578:  BNE             loc_1D1568
1D157C:  LDR             R7, [SP,#0x548+var_530]
1D1580:  ADD             R5, R5, R7,LSL#2
1D1584:  STR             R5, [SP,#0x548+dest]
1D1588:  ADD             R4, R4, R7,LSL#1
1D158C:  STR             R4, [SP,#0x548+src]
1D1590:  LDR             R2, [SP,#0x548+var_528]
1D1594:  ADD             R0, R0, #1
1D1598:  CMP             R0, R2
1D159C:  BNE             loc_1D154C
1D15A0:  B               def_1CF154; jumptable 001CF154 default case
1D15A4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5124
1D15A8:  CMP             R0, #0
1D15AC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D15B0:  MOV             R0, #0
1D15B4:  CMP             R7, #0
1D15B8:  BEQ             loc_1D15F4
1D15BC:  LDR             R6, [SP,#0x548+dest]
1D15C0:  MOV             R1, R7
1D15C4:  LDR             R5, [SP,#0x548+src]
1D15C8:  MOV             R2, R6
1D15CC:  MOV             R3, R5
1D15D0:  LDR             R7, [R3],#4
1D15D4:  SUBS            R1, R1, #1
1D15D8:  STR             R7, [R2],#4
1D15DC:  BNE             loc_1D15D0
1D15E0:  LDR             R7, [SP,#0x548+var_530]
1D15E4:  ADD             R6, R6, R7,LSL#2
1D15E8:  STR             R6, [SP,#0x548+dest]
1D15EC:  ADD             R5, R5, R7,LSL#2
1D15F0:  STR             R5, [SP,#0x548+src]
1D15F4:  LDR             R1, [SP,#0x548+var_528]
1D15F8:  ADD             R0, R0, #1
1D15FC:  CMP             R0, R1
1D1600:  BNE             loc_1D15B4
1D1604:  B               def_1CF154; jumptable 001CF154 default case
1D1608:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5125
1D160C:  CMP             R0, #0
1D1610:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1614:  MOV             R0, #0
1D1618:  CMP             R7, #0
1D161C:  BEQ             loc_1D165C
1D1620:  LDR             R6, [SP,#0x548+dest]
1D1624:  MOV             R1, R7
1D1628:  LDR             R5, [SP,#0x548+src]
1D162C:  MOV             R2, R6
1D1630:  MOV             R3, R5
1D1634:  LDR             R7, [R3],#4
1D1638:  SUBS            R1, R1, #1
1D163C:  EOR             R7, R7, #0x80000000
1D1640:  STR             R7, [R2],#4
1D1644:  BNE             loc_1D1634
1D1648:  LDR             R7, [SP,#0x548+var_530]
1D164C:  ADD             R6, R6, R7,LSL#2
1D1650:  STR             R6, [SP,#0x548+dest]
1D1654:  ADD             R5, R5, R7,LSL#2
1D1658:  STR             R5, [SP,#0x548+src]
1D165C:  LDR             R1, [SP,#0x548+var_528]
1D1660:  ADD             R0, R0, #1
1D1664:  CMP             R0, R1
1D1668:  BNE             loc_1D1618
1D166C:  B               def_1CF154; jumptable 001CF154 default case
1D1670:  DCD unk_C46B0 - 0x1D0694
1D1674:  DCD unk_C48B0 - 0x1D0710
1D1678:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5126
1D167C:  CMP             R0, #0
1D1680:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1684:  VMOV.F32        S0, #1.0
1D1688:  VLDR            D2, =2.14748365e9
1D168C:  VMOV.F32        S2, #-1.0
1D1690:  MOV             R0, #0
1D1694:  CMP             R7, #0
1D1698:  BEQ             loc_1D1708
1D169C:  LDR             R6, [SP,#0x548+dest]
1D16A0:  MOV             R1, R7
1D16A4:  LDR             R5, [SP,#0x548+src]
1D16A8:  MOV             R2, R6
1D16AC:  MOV             R3, R5
1D16B0:  VLDR            S6, [R3]
1D16B4:  MOV             R7, #0x7FFFFFFF
1D16B8:  VCMPE.F32       S6, S0
1D16BC:  VMRS            APSR_nzcv, FPSCR
1D16C0:  BGT             loc_1D16E4
1D16C4:  VCMPE.F32       S6, S2
1D16C8:  MOV             R7, #0x80000000
1D16CC:  VMRS            APSR_nzcv, FPSCR
1D16D0:  BLT             loc_1D16E4
1D16D4:  VCVT.F64.F32    D3, S6
1D16D8:  VMUL.F64        D3, D3, D2
1D16DC:  VCVT.S32.F64    S6, D3
1D16E0:  VMOV            R7, S6
1D16E4:  ADD             R3, R3, #4
1D16E8:  STR             R7, [R2],#4
1D16EC:  SUBS            R1, R1, #1
1D16F0:  BNE             loc_1D16B0
1D16F4:  LDR             R7, [SP,#0x548+var_530]
1D16F8:  ADD             R6, R6, R7,LSL#2
1D16FC:  STR             R6, [SP,#0x548+dest]
1D1700:  ADD             R5, R5, R7,LSL#2
1D1704:  STR             R5, [SP,#0x548+src]
1D1708:  LDR             R1, [SP,#0x548+var_528]
1D170C:  ADD             R0, R0, #1
1D1710:  CMP             R0, R1
1D1714:  BNE             loc_1D1694
1D1718:  B               def_1CF154; jumptable 001CF154 default case
1D171C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5127
1D1720:  CMP             R0, #0
1D1724:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1728:  VMOV.F64        D0, #1.0
1D172C:  MOV             R0, #0
1D1730:  VMOV.F64        D1, #-1.0
1D1734:  VLDR            D2, =2.14748365e9
1D1738:  CMP             R7, #0
1D173C:  BEQ             loc_1D17A8
1D1740:  LDR             R6, [SP,#0x548+dest]
1D1744:  MOV             R1, R7
1D1748:  LDR             R5, [SP,#0x548+src]
1D174C:  MOV             R2, R6
1D1750:  MOV             R3, R5
1D1754:  VLDR            D3, [R3]
1D1758:  MOV             R7, #0x7FFFFFFF
1D175C:  VCMPE.F64       D3, D0
1D1760:  VMRS            APSR_nzcv, FPSCR
1D1764:  BGT             loc_1D1784
1D1768:  VCMPE.F64       D3, D1
1D176C:  MOV             R7, #0x80000000
1D1770:  VMRS            APSR_nzcv, FPSCR
1D1774:  BLT             loc_1D1784
1D1778:  VMUL.F64        D3, D3, D2
1D177C:  VCVT.S32.F64    S6, D3
1D1780:  VMOV            R7, S6
1D1784:  ADD             R3, R3, #8
1D1788:  STR             R7, [R2],#4
1D178C:  SUBS            R1, R1, #1
1D1790:  BNE             loc_1D1754
1D1794:  LDR             R7, [SP,#0x548+var_530]
1D1798:  ADD             R6, R6, R7,LSL#2
1D179C:  STR             R6, [SP,#0x548+dest]
1D17A0:  ADD             R5, R5, R7,LSL#3
1D17A4:  STR             R5, [SP,#0x548+src]
1D17A8:  LDR             R1, [SP,#0x548+var_528]
1D17AC:  ADD             R0, R0, #1
1D17B0:  CMP             R0, R1
1D17B4:  BNE             loc_1D1738
1D17B8:  B               def_1CF154; jumptable 001CF154 default case
1D17BC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5128
1D17C0:  CMP             R0, #0
1D17C4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D17C8:  MOV             R0, #0
1D17CC:  CMP             R7, #0
1D17D0:  BEQ             loc_1D1820
1D17D4:  LDR             R5, [SP,#0x548+dest]
1D17D8:  MOV             R1, R7
1D17DC:  LDR             R4, [SP,#0x548+src]
1D17E0:  MOV             R2, R5
1D17E4:  MOV             R3, R4
1D17E8:  LDRB            R7, [R3,#2]
1D17EC:  SUBS            R1, R1, #1
1D17F0:  LDRH            R6, [R3]
1D17F4:  ADD             R3, R3, #3
1D17F8:  ORR             R7, R6, R7,LSL#16
1D17FC:  MOV             R7, R7,LSL#8
1D1800:  STR             R7, [R2],#4
1D1804:  BNE             loc_1D17E8
1D1808:  LDR             R7, [SP,#0x548+var_530]
1D180C:  ADD             R1, R7, R7,LSL#1
1D1810:  ADD             R5, R5, R7,LSL#2
1D1814:  STR             R5, [SP,#0x548+dest]
1D1818:  ADD             R4, R4, R1
1D181C:  STR             R4, [SP,#0x548+src]
1D1820:  LDR             R1, [SP,#0x548+var_528]
1D1824:  ADD             R0, R0, #1
1D1828:  CMP             R0, R1
1D182C:  BNE             loc_1D17CC
1D1830:  B               def_1CF154; jumptable 001CF154 default case
1D1834:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5129
1D1838:  CMP             R0, #0
1D183C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1840:  MOV             R0, #0
1D1844:  MOV             R1, #0x80000000
1D1848:  CMP             R7, #0
1D184C:  BEQ             loc_1D189C
1D1850:  LDR             R4, [SP,#0x548+dest]
1D1854:  MOV             R2, R7
1D1858:  LDR             R12, [SP,#0x548+src]
1D185C:  MOV             R3, R4
1D1860:  MOV             R7, R12
1D1864:  LDRB            R6, [R7,#2]
1D1868:  SUBS            R2, R2, #1
1D186C:  LDRH            R5, [R7]
1D1870:  ADD             R7, R7, #3
1D1874:  ORR             R6, R5, R6,LSL#16
1D1878:  EOR             R6, R1, R6,LSL#8
1D187C:  STR             R6, [R3],#4
1D1880:  BNE             loc_1D1864
1D1884:  LDR             R7, [SP,#0x548+var_530]
1D1888:  ADD             R2, R7, R7,LSL#1
1D188C:  ADD             R4, R4, R7,LSL#2
1D1890:  STR             R4, [SP,#0x548+dest]
1D1894:  ADD             R12, R12, R2
1D1898:  STR             R12, [SP,#0x548+src]
1D189C:  LDR             R2, [SP,#0x548+var_528]
1D18A0:  ADD             R0, R0, #1
1D18A4:  CMP             R0, R2
1D18A8:  BNE             loc_1D1848
1D18AC:  B               def_1CF154; jumptable 001CF154 default case
1D18B0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5130
1D18B4:  CMP             R0, #0
1D18B8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D18BC:  LDR             R1, =(unk_C46B0 - 0x1D18CC)
1D18C0:  MOV             R0, #0
1D18C4:  ADD             R1, PC, R1; unk_C46B0
1D18C8:  CMP             R7, #0
1D18CC:  BEQ             loc_1D1914
1D18D0:  LDR             R5, [SP,#0x548+dest]
1D18D4:  MOV             R2, R7
1D18D8:  LDR             R4, [SP,#0x548+src]
1D18DC:  MOV             R3, R5
1D18E0:  MOV             R7, R4
1D18E4:  LDRB            R6, [R7],#1
1D18E8:  SUBS            R2, R2, #1
1D18EC:  ADD             R6, R1, R6,LSL#1
1D18F0:  LDRH            R6, [R6]
1D18F4:  MOV             R6, R6,LSL#16
1D18F8:  STR             R6, [R3],#4
1D18FC:  BNE             loc_1D18E4
1D1900:  LDR             R7, [SP,#0x548+var_530]
1D1904:  ADD             R4, R4, R7
1D1908:  ADD             R5, R5, R7,LSL#2
1D190C:  STR             R5, [SP,#0x548+dest]
1D1910:  STR             R4, [SP,#0x548+src]
1D1914:  LDR             R2, [SP,#0x548+var_528]
1D1918:  ADD             R0, R0, #1
1D191C:  CMP             R0, R2
1D1920:  BNE             loc_1D18C8
1D1924:  B               def_1CF154; jumptable 001CF154 default case
1D1928:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5131
1D192C:  CMP             R0, #0
1D1930:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1934:  LDR             R1, =(unk_C48B0 - 0x1D1944)
1D1938:  MOV             R0, #0
1D193C:  ADD             R1, PC, R1; unk_C48B0
1D1940:  CMP             R7, #0
1D1944:  BEQ             loc_1D198C
1D1948:  LDR             R5, [SP,#0x548+dest]
1D194C:  MOV             R2, R7
1D1950:  LDR             R4, [SP,#0x548+src]
1D1954:  MOV             R3, R5
1D1958:  MOV             R7, R4
1D195C:  LDRB            R6, [R7],#1
1D1960:  SUBS            R2, R2, #1
1D1964:  ADD             R6, R1, R6,LSL#1
1D1968:  LDRH            R6, [R6]
1D196C:  MOV             R6, R6,LSL#16
1D1970:  STR             R6, [R3],#4
1D1974:  BNE             loc_1D195C
1D1978:  LDR             R7, [SP,#0x548+var_530]
1D197C:  ADD             R4, R4, R7
1D1980:  ADD             R5, R5, R7,LSL#2
1D1984:  STR             R5, [SP,#0x548+dest]
1D1988:  STR             R4, [SP,#0x548+src]
1D198C:  LDR             R2, [SP,#0x548+var_528]
1D1990:  ADD             R0, R0, #1
1D1994:  CMP             R0, R2
1D1998:  BNE             loc_1D1940
1D199C:  B               def_1CF154; jumptable 001CF154 default case
1D19A0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF484 case 5132
1D19A4:  LDR             R1, [SP,#0x548+src]
1D19A8:  CMP             R0, #0
1D19AC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D19B0:  ADD             R0, R7, R7,LSL#3
1D19B4:  MOV             R8, R7,LSL#1
1D19B8:  MOV             R6, #0
1D19BC:  ADD             R12, SP, #0x548+var_522
1D19C0:  MOV             R9, R0,LSL#2
1D19C4:  MOV             R0, R12
1D19C8:  MOV             R2, R7
1D19CC:  MOV             R10, R1
1D19D0:  MOV             R5, R12
1D19D4:  BL              sub_1D6750
1D19D8:  LDR             R0, [SP,#0x548+var_528]
1D19DC:  CMP             R6, R0
1D19E0:  BCS             loc_1D1A48
1D19E4:  LDR             R4, [SP,#0x548+dest]
1D19E8:  MOV             R0, #0
1D19EC:  MOV             R1, R5
1D19F0:  MOV             R12, R5
1D19F4:  CMP             R7, #0
1D19F8:  BEQ             loc_1D1A24
1D19FC:  MOV             R2, R7
1D1A00:  MOV             R3, R1
1D1A04:  MOV             R7, R4
1D1A08:  LDRH            R5, [R3],#2
1D1A0C:  SUBS            R2, R2, #1
1D1A10:  MOV             R5, R5,LSL#16
1D1A14:  STR             R5, [R7],#4
1D1A18:  BNE             loc_1D1A08
1D1A1C:  LDR             R7, [SP,#0x548+var_530]
1D1A20:  ADD             R4, R4, R7,LSL#2
1D1A24:  ADD             R0, R0, #1
1D1A28:  ADD             R6, R6, #1
1D1A2C:  CMP             R0, #0x40 ; '@'
1D1A30:  BHI             loc_1D1A50
1D1A34:  LDR             R2, [SP,#0x548+var_528]
1D1A38:  ADD             R1, R1, R8
1D1A3C:  CMP             R6, R2
1D1A40:  BCC             loc_1D19F4
1D1A44:  B               loc_1D1A50
1D1A48:  LDR             R4, [SP,#0x548+dest]
1D1A4C:  MOV             R12, R5
1D1A50:  STR             R4, [SP,#0x548+dest]
1D1A54:  MOV             R1, R10
1D1A58:  LDR             R0, [SP,#0x548+var_528]
1D1A5C:  ADD             R1, R1, R9
1D1A60:  CMP             R6, R0
1D1A64:  BCC             loc_1D19C4
1D1A68:  B               def_1CF154; jumptable 001CF154 default case
1D1A6C:  ALIGN 0x10
1D1A70:  DCFD 2.14748365e9
1D1A78:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5121
1D1A7C:  CMP             R0, #0
1D1A80:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1A84:  MOV             R0, #0
1D1A88:  CMP             R7, #0
1D1A8C:  BEQ             loc_1D1ACC
1D1A90:  LDR             R6, [SP,#0x548+dest]
1D1A94:  MOV             R1, R7
1D1A98:  LDR             R5, [SP,#0x548+src]
1D1A9C:  MOV             R2, R6
1D1AA0:  MOV             R3, R5
1D1AA4:  LDRB            R7, [R3],#1
1D1AA8:  SUBS            R1, R1, #1
1D1AAC:  MOV             R7, R7,LSL#24
1D1AB0:  STR             R7, [R2],#4
1D1AB4:  BNE             loc_1D1AA4
1D1AB8:  LDR             R7, [SP,#0x548+var_530]
1D1ABC:  ADD             R5, R5, R7
1D1AC0:  ADD             R6, R6, R7,LSL#2
1D1AC4:  STR             R6, [SP,#0x548+dest]
1D1AC8:  STR             R5, [SP,#0x548+src]
1D1ACC:  LDR             R1, [SP,#0x548+var_528]
1D1AD0:  ADD             R0, R0, #1
1D1AD4:  CMP             R0, R1
1D1AD8:  BNE             loc_1D1A88
1D1ADC:  B               def_1CF154; jumptable 001CF154 default case
1D1AE0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5122
1D1AE4:  CMP             R0, #0
1D1AE8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1AEC:  MOV             R0, #0
1D1AF0:  MOV             R1, #0x80000000
1D1AF4:  CMP             R7, #0
1D1AF8:  BEQ             loc_1D1B38
1D1AFC:  LDR             R5, [SP,#0x548+dest]
1D1B00:  MOV             R2, R7
1D1B04:  LDR             R4, [SP,#0x548+src]
1D1B08:  MOV             R3, R5
1D1B0C:  MOV             R7, R4
1D1B10:  LDRH            R6, [R7],#2
1D1B14:  SUBS            R2, R2, #1
1D1B18:  EOR             R6, R1, R6,LSL#16
1D1B1C:  STR             R6, [R3],#4
1D1B20:  BNE             loc_1D1B10
1D1B24:  LDR             R7, [SP,#0x548+var_530]
1D1B28:  ADD             R5, R5, R7,LSL#2
1D1B2C:  STR             R5, [SP,#0x548+dest]
1D1B30:  ADD             R4, R4, R7,LSL#1
1D1B34:  STR             R4, [SP,#0x548+src]
1D1B38:  LDR             R2, [SP,#0x548+var_528]
1D1B3C:  ADD             R0, R0, #1
1D1B40:  CMP             R0, R2
1D1B44:  BNE             loc_1D1AF4
1D1B48:  B               def_1CF154; jumptable 001CF154 default case
1D1B4C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5123
1D1B50:  CMP             R0, #0
1D1B54:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1B58:  MOV             R0, #0
1D1B5C:  CMP             R7, #0
1D1B60:  BEQ             loc_1D1BA0
1D1B64:  LDR             R6, [SP,#0x548+dest]
1D1B68:  MOV             R1, R7
1D1B6C:  LDR             R5, [SP,#0x548+src]
1D1B70:  MOV             R2, R6
1D1B74:  MOV             R3, R5
1D1B78:  LDRH            R7, [R3],#2
1D1B7C:  SUBS            R1, R1, #1
1D1B80:  MOV             R7, R7,LSL#16
1D1B84:  STR             R7, [R2],#4
1D1B88:  BNE             loc_1D1B78
1D1B8C:  LDR             R7, [SP,#0x548+var_530]
1D1B90:  ADD             R6, R6, R7,LSL#2
1D1B94:  STR             R6, [SP,#0x548+dest]
1D1B98:  ADD             R5, R5, R7,LSL#1
1D1B9C:  STR             R5, [SP,#0x548+src]
1D1BA0:  LDR             R1, [SP,#0x548+var_528]
1D1BA4:  ADD             R0, R0, #1
1D1BA8:  CMP             R0, R1
1D1BAC:  BNE             loc_1D1B5C
1D1BB0:  B               def_1CF154; jumptable 001CF154 default case
1D1BB4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5124
1D1BB8:  CMP             R0, #0
1D1BBC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1BC0:  MOV             R0, #0
1D1BC4:  CMP             R7, #0
1D1BC8:  BEQ             loc_1D1C08
1D1BCC:  LDR             R6, [SP,#0x548+dest]
1D1BD0:  MOV             R1, R7
1D1BD4:  LDR             R5, [SP,#0x548+src]
1D1BD8:  MOV             R2, R6
1D1BDC:  MOV             R3, R5
1D1BE0:  LDR             R7, [R3],#4
1D1BE4:  SUBS            R1, R1, #1
1D1BE8:  EOR             R7, R7, #0x80000000
1D1BEC:  STR             R7, [R2],#4
1D1BF0:  BNE             loc_1D1BE0
1D1BF4:  LDR             R7, [SP,#0x548+var_530]
1D1BF8:  ADD             R6, R6, R7,LSL#2
1D1BFC:  STR             R6, [SP,#0x548+dest]
1D1C00:  ADD             R5, R5, R7,LSL#2
1D1C04:  STR             R5, [SP,#0x548+src]
1D1C08:  LDR             R1, [SP,#0x548+var_528]
1D1C0C:  ADD             R0, R0, #1
1D1C10:  CMP             R0, R1
1D1C14:  BNE             loc_1D1BC4
1D1C18:  B               def_1CF154; jumptable 001CF154 default case
1D1C1C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5125
1D1C20:  CMP             R0, #0
1D1C24:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1C28:  MOV             R0, #0
1D1C2C:  CMP             R7, #0
1D1C30:  BEQ             loc_1D1C6C
1D1C34:  LDR             R6, [SP,#0x548+dest]
1D1C38:  MOV             R1, R7
1D1C3C:  LDR             R5, [SP,#0x548+src]
1D1C40:  MOV             R2, R6
1D1C44:  MOV             R3, R5
1D1C48:  LDR             R7, [R3],#4
1D1C4C:  SUBS            R1, R1, #1
1D1C50:  STR             R7, [R2],#4
1D1C54:  BNE             loc_1D1C48
1D1C58:  LDR             R7, [SP,#0x548+var_530]
1D1C5C:  ADD             R6, R6, R7,LSL#2
1D1C60:  STR             R6, [SP,#0x548+dest]
1D1C64:  ADD             R5, R5, R7,LSL#2
1D1C68:  STR             R5, [SP,#0x548+src]
1D1C6C:  LDR             R1, [SP,#0x548+var_528]
1D1C70:  ADD             R0, R0, #1
1D1C74:  CMP             R0, R1
1D1C78:  BNE             loc_1D1C2C
1D1C7C:  B               def_1CF154; jumptable 001CF154 default case
1D1C80:  DCD unk_C46B0 - 0x1D0CB0
1D1C84:  DCD unk_C48B0 - 0x1D0D24
1D1C88:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5126
1D1C8C:  CMP             R0, #0
1D1C90:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1C94:  VMOV.F32        S0, #1.0
1D1C98:  VLDR            D2, =2.14748365e9
1D1C9C:  VMOV.F32        S2, #-1.0
1D1CA0:  MOV             R0, #0
1D1CA4:  CMP             R7, #0
1D1CA8:  BEQ             loc_1D1D1C
1D1CAC:  LDR             R6, [SP,#0x548+dest]
1D1CB0:  MOV             R1, R7
1D1CB4:  LDR             R5, [SP,#0x548+src]
1D1CB8:  MOV             R2, R6
1D1CBC:  MOV             R3, R5
1D1CC0:  VLDR            S6, [R3]
1D1CC4:  MOV             R7, #0xFFFFFFFF
1D1CC8:  VCMPE.F32       S6, S0
1D1CCC:  VMRS            APSR_nzcv, FPSCR
1D1CD0:  BGT             loc_1D1CF8
1D1CD4:  VCMPE.F32       S6, S2
1D1CD8:  MOV             R7, #0
1D1CDC:  VMRS            APSR_nzcv, FPSCR
1D1CE0:  BLT             loc_1D1CF8
1D1CE4:  VCVT.F64.F32    D3, S6
1D1CE8:  VMUL.F64        D3, D3, D2
1D1CEC:  VCVT.S32.F64    S6, D3
1D1CF0:  VMOV            R7, S6
1D1CF4:  EOR             R7, R7, #0x80000000
1D1CF8:  ADD             R3, R3, #4
1D1CFC:  STR             R7, [R2],#4
1D1D00:  SUBS            R1, R1, #1
1D1D04:  BNE             loc_1D1CC0
1D1D08:  LDR             R7, [SP,#0x548+var_530]
1D1D0C:  ADD             R6, R6, R7,LSL#2
1D1D10:  STR             R6, [SP,#0x548+dest]
1D1D14:  ADD             R5, R5, R7,LSL#2
1D1D18:  STR             R5, [SP,#0x548+src]
1D1D1C:  LDR             R1, [SP,#0x548+var_528]
1D1D20:  ADD             R0, R0, #1
1D1D24:  CMP             R0, R1
1D1D28:  BNE             loc_1D1CA4
1D1D2C:  B               def_1CF154; jumptable 001CF154 default case
1D1D30:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5127
1D1D34:  CMP             R0, #0
1D1D38:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1D3C:  VMOV.F64        D0, #1.0
1D1D40:  MOV             R0, #0
1D1D44:  VMOV.F64        D1, #-1.0
1D1D48:  VLDR            D2, =2.14748365e9
1D1D4C:  CMP             R7, #0
1D1D50:  BEQ             loc_1D1DC0
1D1D54:  LDR             R6, [SP,#0x548+dest]
1D1D58:  MOV             R1, R7
1D1D5C:  LDR             R5, [SP,#0x548+src]
1D1D60:  MOV             R2, R6
1D1D64:  MOV             R3, R5
1D1D68:  VLDR            D3, [R3]
1D1D6C:  MOV             R7, #0xFFFFFFFF
1D1D70:  VCMPE.F64       D3, D0
1D1D74:  VMRS            APSR_nzcv, FPSCR
1D1D78:  BGT             loc_1D1D9C
1D1D7C:  VCMPE.F64       D3, D1
1D1D80:  MOV             R7, #0
1D1D84:  VMRS            APSR_nzcv, FPSCR
1D1D88:  BLT             loc_1D1D9C
1D1D8C:  VMUL.F64        D3, D3, D2
1D1D90:  VCVT.S32.F64    S6, D3
1D1D94:  VMOV            R7, S6
1D1D98:  EOR             R7, R7, #0x80000000
1D1D9C:  ADD             R3, R3, #8
1D1DA0:  STR             R7, [R2],#4
1D1DA4:  SUBS            R1, R1, #1
1D1DA8:  BNE             loc_1D1D68
1D1DAC:  LDR             R7, [SP,#0x548+var_530]
1D1DB0:  ADD             R6, R6, R7,LSL#2
1D1DB4:  STR             R6, [SP,#0x548+dest]
1D1DB8:  ADD             R5, R5, R7,LSL#3
1D1DBC:  STR             R5, [SP,#0x548+src]
1D1DC0:  LDR             R1, [SP,#0x548+var_528]
1D1DC4:  ADD             R0, R0, #1
1D1DC8:  CMP             R0, R1
1D1DCC:  BNE             loc_1D1D4C
1D1DD0:  B               def_1CF154; jumptable 001CF154 default case
1D1DD4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5128
1D1DD8:  CMP             R0, #0
1D1DDC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1DE0:  MOV             R0, #0
1D1DE4:  MOV             R1, #0x80000000
1D1DE8:  CMP             R7, #0
1D1DEC:  BEQ             loc_1D1E3C
1D1DF0:  LDR             R4, [SP,#0x548+dest]
1D1DF4:  MOV             R2, R7
1D1DF8:  LDR             R12, [SP,#0x548+src]
1D1DFC:  MOV             R3, R4
1D1E00:  MOV             R7, R12
1D1E04:  LDRB            R6, [R7,#2]
1D1E08:  SUBS            R2, R2, #1
1D1E0C:  LDRH            R5, [R7]
1D1E10:  ADD             R7, R7, #3
1D1E14:  ORR             R6, R5, R6,LSL#16
1D1E18:  EOR             R6, R1, R6,LSL#8
1D1E1C:  STR             R6, [R3],#4
1D1E20:  BNE             loc_1D1E04
1D1E24:  LDR             R7, [SP,#0x548+var_530]
1D1E28:  ADD             R2, R7, R7,LSL#1
1D1E2C:  ADD             R4, R4, R7,LSL#2
1D1E30:  STR             R4, [SP,#0x548+dest]
1D1E34:  ADD             R12, R12, R2
1D1E38:  STR             R12, [SP,#0x548+src]
1D1E3C:  LDR             R2, [SP,#0x548+var_528]
1D1E40:  ADD             R0, R0, #1
1D1E44:  CMP             R0, R2
1D1E48:  BNE             loc_1D1DE8
1D1E4C:  B               def_1CF154; jumptable 001CF154 default case
1D1E50:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5129
1D1E54:  CMP             R0, #0
1D1E58:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1E5C:  MOV             R0, #0
1D1E60:  CMP             R7, #0
1D1E64:  BEQ             loc_1D1EB4
1D1E68:  LDR             R5, [SP,#0x548+dest]
1D1E6C:  MOV             R1, R7
1D1E70:  LDR             R4, [SP,#0x548+src]
1D1E74:  MOV             R2, R5
1D1E78:  MOV             R3, R4
1D1E7C:  LDRB            R7, [R3,#2]
1D1E80:  SUBS            R1, R1, #1
1D1E84:  LDRH            R6, [R3]
1D1E88:  ADD             R3, R3, #3
1D1E8C:  ORR             R7, R6, R7,LSL#16
1D1E90:  MOV             R7, R7,LSL#8
1D1E94:  STR             R7, [R2],#4
1D1E98:  BNE             loc_1D1E7C
1D1E9C:  LDR             R7, [SP,#0x548+var_530]
1D1EA0:  ADD             R1, R7, R7,LSL#1
1D1EA4:  ADD             R5, R5, R7,LSL#2
1D1EA8:  STR             R5, [SP,#0x548+dest]
1D1EAC:  ADD             R4, R4, R1
1D1EB0:  STR             R4, [SP,#0x548+src]
1D1EB4:  LDR             R1, [SP,#0x548+var_528]
1D1EB8:  ADD             R0, R0, #1
1D1EBC:  CMP             R0, R1
1D1EC0:  BNE             loc_1D1E60
1D1EC4:  B               def_1CF154; jumptable 001CF154 default case
1D1EC8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5130
1D1ECC:  CMP             R0, #0
1D1ED0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1ED4:  LDR             R1, =(unk_C46B0 - 0x1D1EE8)
1D1ED8:  MOV             R0, #0
1D1EDC:  MOV             R2, #0x80000000
1D1EE0:  ADD             R1, PC, R1; unk_C46B0
1D1EE4:  CMP             R7, #0
1D1EE8:  BEQ             loc_1D1F30
1D1EEC:  LDR             R12, [SP,#0x548+src]
1D1EF0:  MOV             R3, R7
1D1EF4:  LDR             R4, [SP,#0x548+dest]
1D1EF8:  MOV             R6, R12
1D1EFC:  MOV             R7, R4
1D1F00:  LDRB            R5, [R6],#1
1D1F04:  SUBS            R3, R3, #1
1D1F08:  ADD             R5, R1, R5,LSL#1
1D1F0C:  LDRH            R5, [R5]
1D1F10:  EOR             R5, R2, R5,LSL#16
1D1F14:  STR             R5, [R7],#4
1D1F18:  BNE             loc_1D1F00
1D1F1C:  LDR             R7, [SP,#0x548+var_530]
1D1F20:  ADD             R12, R12, R7
1D1F24:  ADD             R4, R4, R7,LSL#2
1D1F28:  STR             R4, [SP,#0x548+dest]
1D1F2C:  STR             R12, [SP,#0x548+src]
1D1F30:  LDR             R3, [SP,#0x548+var_528]
1D1F34:  ADD             R0, R0, #1
1D1F38:  CMP             R0, R3
1D1F3C:  BNE             loc_1D1EE4
1D1F40:  B               def_1CF154; jumptable 001CF154 default case
1D1F44:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5131
1D1F48:  CMP             R0, #0
1D1F4C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1F50:  LDR             R1, =(unk_C48B0 - 0x1D1F64)
1D1F54:  MOV             R0, #0
1D1F58:  MOV             R2, #0x80000000
1D1F5C:  ADD             R1, PC, R1; unk_C48B0
1D1F60:  CMP             R7, #0
1D1F64:  BEQ             loc_1D1FAC
1D1F68:  LDR             R12, [SP,#0x548+src]
1D1F6C:  MOV             R3, R7
1D1F70:  LDR             R4, [SP,#0x548+dest]
1D1F74:  MOV             R6, R12
1D1F78:  MOV             R7, R4
1D1F7C:  LDRB            R5, [R6],#1
1D1F80:  SUBS            R3, R3, #1
1D1F84:  ADD             R5, R1, R5,LSL#1
1D1F88:  LDRH            R5, [R5]
1D1F8C:  EOR             R5, R2, R5,LSL#16
1D1F90:  STR             R5, [R7],#4
1D1F94:  BNE             loc_1D1F7C
1D1F98:  LDR             R7, [SP,#0x548+var_530]
1D1F9C:  ADD             R12, R12, R7
1D1FA0:  ADD             R4, R4, R7,LSL#2
1D1FA4:  STR             R4, [SP,#0x548+dest]
1D1FA8:  STR             R12, [SP,#0x548+src]
1D1FAC:  LDR             R3, [SP,#0x548+var_528]
1D1FB0:  ADD             R0, R0, #1
1D1FB4:  CMP             R0, R3
1D1FB8:  BNE             loc_1D1F60
1D1FBC:  B               def_1CF154; jumptable 001CF154 default case
1D1FC0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF53C case 5132
1D1FC4:  LDR             R1, [SP,#0x548+src]
1D1FC8:  CMP             R0, #0
1D1FCC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D1FD0:  LDR             R0, [SP,#0x548+var_530]
1D1FD4:  MOV             R6, #0
1D1FD8:  ADD             R4, SP, #0x548+var_522
1D1FDC:  MOV             R7, #0x80000000
1D1FE0:  MOV             R10, R0,LSL#1
1D1FE4:  ADD             R0, R0, R0,LSL#3
1D1FE8:  MOV             R0, R0,LSL#2
1D1FEC:  STR             R0, [SP,#0x548+var_538]
1D1FF0:  LDR             R2, [SP,#0x548+var_528]
1D1FF4:  MOV             R0, R4
1D1FF8:  MOV             R9, R1
1D1FFC:  MOV             R5, R2
1D2000:  LDR             R2, [SP,#0x548+var_530]
1D2004:  BL              sub_1D6750
1D2008:  CMP             R6, R5
1D200C:  BCS             loc_1D207C
1D2010:  LDR             LR, [SP,#0x548+dest]
1D2014:  MOV             R0, #0
1D2018:  MOV             R8, R4
1D201C:  MOV             R1, R9
1D2020:  LDR             R2, [SP,#0x548+var_530]
1D2024:  CMP             R2, #0
1D2028:  BEQ             loc_1D2058
1D202C:  MOV             R12, R1
1D2030:  MOV             R3, R8
1D2034:  MOV             R5, LR
1D2038:  LDRH            R4, [R3],#2
1D203C:  SUBS            R2, R2, #1
1D2040:  EOR             R4, R7, R4,LSL#16
1D2044:  STR             R4, [R5],#4
1D2048:  BNE             loc_1D2038
1D204C:  LDR             R2, [SP,#0x548+var_530]
1D2050:  MOV             R1, R12
1D2054:  ADD             LR, LR, R2,LSL#2
1D2058:  ADD             R0, R0, #1
1D205C:  ADD             R6, R6, #1
1D2060:  CMP             R0, #0x40 ; '@'
1D2064:  BHI             loc_1D2084
1D2068:  LDR             R2, [SP,#0x548+var_528]
1D206C:  ADD             R8, R8, R10
1D2070:  CMP             R6, R2
1D2074:  BCC             loc_1D2020
1D2078:  B               loc_1D2084
1D207C:  LDR             LR, [SP,#0x548+dest]
1D2080:  MOV             R1, R9
1D2084:  STR             LR, [SP,#0x548+dest]
1D2088:  ADD             R4, SP, #0x548+var_522
1D208C:  LDR             R0, [SP,#0x548+var_538]
1D2090:  ADD             R1, R1, R0
1D2094:  LDR             R0, [SP,#0x548+var_528]
1D2098:  CMP             R6, R0
1D209C:  BCC             loc_1D1FF0
1D20A0:  B               def_1CF154; jumptable 001CF154 default case
1D20A4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5121
1D20A8:  CMP             R0, #0
1D20AC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D20B0:  VLDR            S0, =0.007874
1D20B4:  MOV             R0, #0
1D20B8:  CMP             R7, #0
1D20BC:  BEQ             loc_1D210C
1D20C0:  LDR             R6, [SP,#0x548+dest]
1D20C4:  MOV             R1, R7
1D20C8:  LDR             R5, [SP,#0x548+src]
1D20CC:  MOV             R2, R6
1D20D0:  MOV             R3, R5
1D20D4:  LDRB            R7, [R3],#1
1D20D8:  SUBS            R1, R1, #1
1D20DC:  SUB             R7, R7, #0x80
1D20E0:  VMOV            S2, R7
1D20E4:  VCVT.F32.S32    S2, S2
1D20E8:  VMUL.F32        S2, S2, S0
1D20EC:  VSTR            S2, [R2]
1D20F0:  ADD             R2, R2, #4
1D20F4:  BNE             loc_1D20D4
1D20F8:  LDR             R7, [SP,#0x548+var_530]
1D20FC:  ADD             R5, R5, R7
1D2100:  ADD             R6, R6, R7,LSL#2
1D2104:  STR             R6, [SP,#0x548+dest]
1D2108:  STR             R5, [SP,#0x548+src]
1D210C:  LDR             R1, [SP,#0x548+var_528]
1D2110:  ADD             R0, R0, #1
1D2114:  CMP             R0, R1
1D2118:  BNE             loc_1D20B8
1D211C:  B               def_1CF154; jumptable 001CF154 default case
1D2120:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5122
1D2124:  CMP             R0, #0
1D2128:  BEQ             def_1CF154; jumptable 001CF154 default case
1D212C:  VLDR            S0, =0.000030519
1D2130:  MOV             R0, #0
1D2134:  CMP             R7, #0
1D2138:  BEQ             loc_1D2184
1D213C:  LDR             R6, [SP,#0x548+dest]
1D2140:  MOV             R1, R7
1D2144:  LDR             R5, [SP,#0x548+src]
1D2148:  MOV             R2, R6
1D214C:  MOV             R3, R5
1D2150:  LDRSH           R7, [R3],#2
1D2154:  SUBS            R1, R1, #1
1D2158:  VMOV            S2, R7
1D215C:  VCVT.F32.S32    S2, S2
1D2160:  VMUL.F32        S2, S2, S0
1D2164:  VSTR            S2, [R2]
1D2168:  ADD             R2, R2, #4
1D216C:  BNE             loc_1D2150
1D2170:  LDR             R7, [SP,#0x548+var_530]
1D2174:  ADD             R6, R6, R7,LSL#2
1D2178:  STR             R6, [SP,#0x548+dest]
1D217C:  ADD             R5, R5, R7,LSL#1
1D2180:  STR             R5, [SP,#0x548+src]
1D2184:  LDR             R1, [SP,#0x548+var_528]
1D2188:  ADD             R0, R0, #1
1D218C:  CMP             R0, R1
1D2190:  BNE             loc_1D2134
1D2194:  B               def_1CF154; jumptable 001CF154 default case
1D2198:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5123
1D219C:  CMP             R0, #0
1D21A0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D21A4:  VLDR            S0, =0.000030519
1D21A8:  MOV             R0, #0
1D21AC:  CMP             R7, #0
1D21B0:  BEQ             loc_1D2200
1D21B4:  LDR             R6, [SP,#0x548+dest]
1D21B8:  MOV             R1, R7
1D21BC:  LDR             R5, [SP,#0x548+src]
1D21C0:  MOV             R2, R6
1D21C4:  MOV             R3, R5
1D21C8:  LDRH            R7, [R3],#2
1D21CC:  SUBS            R1, R1, #1
1D21D0:  SUB             R7, R7, #0x8000
1D21D4:  VMOV            S2, R7
1D21D8:  VCVT.F32.S32    S2, S2
1D21DC:  VMUL.F32        S2, S2, S0
1D21E0:  VSTR            S2, [R2]
1D21E4:  ADD             R2, R2, #4
1D21E8:  BNE             loc_1D21C8
1D21EC:  LDR             R7, [SP,#0x548+var_530]
1D21F0:  ADD             R6, R6, R7,LSL#2
1D21F4:  STR             R6, [SP,#0x548+dest]
1D21F8:  ADD             R5, R5, R7,LSL#1
1D21FC:  STR             R5, [SP,#0x548+src]
1D2200:  LDR             R1, [SP,#0x548+var_528]
1D2204:  ADD             R0, R0, #1
1D2208:  CMP             R0, R1
1D220C:  BNE             loc_1D21AC
1D2210:  B               def_1CF154; jumptable 001CF154 default case
1D2214:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5124
1D2218:  CMP             R0, #0
1D221C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2220:  VLDR            D0, =4.65661288e-10
1D2224:  MOV             R0, #0
1D2228:  CMP             R7, #0
1D222C:  BEQ             loc_1D227C
1D2230:  LDR             R6, [SP,#0x548+dest]
1D2234:  MOV             R1, R7
1D2238:  LDR             R5, [SP,#0x548+src]
1D223C:  MOV             R2, R6
1D2240:  MOV             R3, R5
1D2244:  LDR             R7, [R3],#4
1D2248:  SUBS            R1, R1, #1
1D224C:  VMOV            S2, R7
1D2250:  VCVT.F64.S32    D1, S2
1D2254:  VMUL.F64        D1, D1, D0
1D2258:  VCVT.F32.F64    S2, D1
1D225C:  VSTR            S2, [R2]
1D2260:  ADD             R2, R2, #4
1D2264:  BNE             loc_1D2244
1D2268:  LDR             R7, [SP,#0x548+var_530]
1D226C:  ADD             R6, R6, R7,LSL#2
1D2270:  STR             R6, [SP,#0x548+dest]
1D2274:  ADD             R5, R5, R7,LSL#2
1D2278:  STR             R5, [SP,#0x548+src]
1D227C:  LDR             R1, [SP,#0x548+var_528]
1D2280:  ADD             R0, R0, #1
1D2284:  CMP             R0, R1
1D2288:  BNE             loc_1D2228
1D228C:  B               def_1CF154; jumptable 001CF154 default case
1D2290:  DCD unk_C46B0 - 0x1D12C4
1D2294:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5125
1D2298:  CMP             R0, #0
1D229C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D22A0:  VLDR            D0, =4.65661288e-10
1D22A4:  MOV             R0, #0
1D22A8:  CMP             R7, #0
1D22AC:  BEQ             loc_1D2300
1D22B0:  LDR             R6, [SP,#0x548+dest]
1D22B4:  MOV             R1, R7
1D22B8:  LDR             R5, [SP,#0x548+src]
1D22BC:  MOV             R2, R6
1D22C0:  MOV             R3, R5
1D22C4:  LDR             R7, [R3],#4
1D22C8:  SUBS            R1, R1, #1
1D22CC:  EOR             R7, R7, #0x80000000
1D22D0:  VMOV            S2, R7
1D22D4:  VCVT.F64.S32    D1, S2
1D22D8:  VMUL.F64        D1, D1, D0
1D22DC:  VCVT.F32.F64    S2, D1
1D22E0:  VSTR            S2, [R2]
1D22E4:  ADD             R2, R2, #4
1D22E8:  BNE             loc_1D22C4
1D22EC:  LDR             R7, [SP,#0x548+var_530]
1D22F0:  ADD             R6, R6, R7,LSL#2
1D22F4:  STR             R6, [SP,#0x548+dest]
1D22F8:  ADD             R5, R5, R7,LSL#2
1D22FC:  STR             R5, [SP,#0x548+src]
1D2300:  LDR             R1, [SP,#0x548+var_528]
1D2304:  ADD             R0, R0, #1
1D2308:  CMP             R0, R1
1D230C:  BNE             loc_1D22A8
1D2310:  B               def_1CF154; jumptable 001CF154 default case
1D2314:  DCD unk_C48B0 - 0x1D133C
1D2318:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5126
1D231C:  CMP             R0, #0
1D2320:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2324:  MOV             R0, #0
1D2328:  CMP             R7, #0
1D232C:  BEQ             loc_1D2368
1D2330:  LDR             R6, [SP,#0x548+dest]
1D2334:  MOV             R1, R7
1D2338:  LDR             R5, [SP,#0x548+src]
1D233C:  MOV             R2, R6
1D2340:  MOV             R3, R5
1D2344:  LDR             R7, [R3],#4
1D2348:  SUBS            R1, R1, #1
1D234C:  STR             R7, [R2],#4
1D2350:  BNE             loc_1D2344
1D2354:  LDR             R7, [SP,#0x548+var_530]
1D2358:  ADD             R6, R6, R7,LSL#2
1D235C:  STR             R6, [SP,#0x548+dest]
1D2360:  ADD             R5, R5, R7,LSL#2
1D2364:  STR             R5, [SP,#0x548+src]
1D2368:  LDR             R1, [SP,#0x548+var_528]
1D236C:  ADD             R0, R0, #1
1D2370:  CMP             R0, R1
1D2374:  BNE             loc_1D2328
1D2378:  B               def_1CF154; jumptable 001CF154 default case
1D237C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5127
1D2380:  CMP             R0, #0
1D2384:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2388:  MOV             R0, #0
1D238C:  CMP             R7, #0
1D2390:  BEQ             loc_1D23DC
1D2394:  MOV             R1, R7
1D2398:  LDR             R7, [SP,#0x548+dest]
1D239C:  LDR             R6, [SP,#0x548+src]
1D23A0:  MOV             R2, R7
1D23A4:  MOV             R3, R6
1D23A8:  VLDR            D0, [R3]
1D23AC:  SUBS            R1, R1, #1
1D23B0:  ADD             R3, R3, #8
1D23B4:  VCVT.F32.F64    S0, D0
1D23B8:  VSTR            S0, [R2]
1D23BC:  ADD             R2, R2, #4
1D23C0:  BNE             loc_1D23A8
1D23C4:  LDR             R1, [SP,#0x548+var_530]
1D23C8:  ADD             R7, R7, R1,LSL#2
1D23CC:  STR             R7, [SP,#0x548+dest]
1D23D0:  MOV             R7, R1
1D23D4:  ADD             R6, R6, R7,LSL#3
1D23D8:  STR             R6, [SP,#0x548+src]
1D23DC:  LDR             R1, [SP,#0x548+var_528]
1D23E0:  ADD             R0, R0, #1
1D23E4:  CMP             R0, R1
1D23E8:  BNE             loc_1D238C
1D23EC:  B               def_1CF154; jumptable 001CF154 default case
1D23F0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5128
1D23F4:  CMP             R0, #0
1D23F8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D23FC:  VLDR            D0, =1.19209304e-7
1D2400:  MOV             R0, #0
1D2404:  CMP             R7, #0
1D2408:  BEQ             loc_1D2470
1D240C:  LDR             R5, [SP,#0x548+dest]
1D2410:  MOV             R1, R7
1D2414:  LDR             R4, [SP,#0x548+src]
1D2418:  MOV             R2, R5
1D241C:  MOV             R3, R4
1D2420:  LDRB            R7, [R3,#2]
1D2424:  SUBS            R1, R1, #1
1D2428:  LDRH            R6, [R3]
1D242C:  ADD             R3, R3, #3
1D2430:  ORR             R7, R6, R7,LSL#16
1D2434:  SBFX            R6, R7, #0x10, #8
1D2438:  PKHBT           R7, R7, R6,LSL#16
1D243C:  VMOV            S2, R7
1D2440:  VCVT.F64.S32    D1, S2
1D2444:  VMUL.F64        D1, D1, D0
1D2448:  VCVT.F32.F64    S2, D1
1D244C:  VSTR            S2, [R2]
1D2450:  ADD             R2, R2, #4
1D2454:  BNE             loc_1D2420
1D2458:  LDR             R7, [SP,#0x548+var_530]
1D245C:  ADD             R1, R7, R7,LSL#1
1D2460:  ADD             R5, R5, R7,LSL#2
1D2464:  STR             R5, [SP,#0x548+dest]
1D2468:  ADD             R4, R4, R1
1D246C:  STR             R4, [SP,#0x548+src]
1D2470:  LDR             R1, [SP,#0x548+var_528]
1D2474:  ADD             R0, R0, #1
1D2478:  CMP             R0, R1
1D247C:  BNE             loc_1D2404
1D2480:  B               def_1CF154; jumptable 001CF154 default case
1D2484:  DCFS 0.007874
1D2488:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5129
1D248C:  CMP             R0, #0
1D2490:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2494:  VLDR            D0, =1.19209304e-7
1D2498:  MOV             R0, #0
1D249C:  CMP             R7, #0
1D24A0:  BEQ             loc_1D2504
1D24A4:  LDR             R5, [SP,#0x548+dest]
1D24A8:  MOV             R1, R7
1D24AC:  LDR             R4, [SP,#0x548+src]
1D24B0:  MOV             R2, R5
1D24B4:  MOV             R3, R4
1D24B8:  LDRB            R7, [R3,#2]
1D24BC:  SUBS            R1, R1, #1
1D24C0:  LDRH            R6, [R3]
1D24C4:  ADD             R3, R3, #3
1D24C8:  ORR             R7, R6, R7,LSL#16
1D24CC:  SUB             R7, R7, #0x800000
1D24D0:  VMOV            S2, R7
1D24D4:  VCVT.F64.S32    D1, S2
1D24D8:  VMUL.F64        D1, D1, D0
1D24DC:  VCVT.F32.F64    S2, D1
1D24E0:  VSTR            S2, [R2]
1D24E4:  ADD             R2, R2, #4
1D24E8:  BNE             loc_1D24B8
1D24EC:  LDR             R7, [SP,#0x548+var_530]
1D24F0:  ADD             R1, R7, R7,LSL#1
1D24F4:  ADD             R5, R5, R7,LSL#2
1D24F8:  STR             R5, [SP,#0x548+dest]
1D24FC:  ADD             R4, R4, R1
1D2500:  STR             R4, [SP,#0x548+src]
1D2504:  LDR             R1, [SP,#0x548+var_528]
1D2508:  ADD             R0, R0, #1
1D250C:  CMP             R0, R1
1D2510:  BNE             loc_1D249C
1D2514:  B               def_1CF154; jumptable 001CF154 default case
1D2518:  DCFS 0.000030519
1D251C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5130
1D2520:  CMP             R0, #0
1D2524:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2528:  LDR             R1, =(unk_C46B0 - 0x1D253C)
1D252C:  MOV             R0, #0
1D2530:  VLDR            S0, =0.000030519
1D2534:  ADD             R1, PC, R1; unk_C46B0
1D2538:  CMP             R7, #0
1D253C:  BEQ             loc_1D2590
1D2540:  LDR             R5, [SP,#0x548+dest]
1D2544:  MOV             R2, R7
1D2548:  LDR             R4, [SP,#0x548+src]
1D254C:  MOV             R3, R5
1D2550:  MOV             R7, R4
1D2554:  LDRB            R6, [R7],#1
1D2558:  SUBS            R2, R2, #1
1D255C:  ADD             R6, R1, R6,LSL#1
1D2560:  LDRSH           R6, [R6]
1D2564:  VMOV            S2, R6
1D2568:  VCVT.F32.S32    S2, S2
1D256C:  VMUL.F32        S2, S2, S0
1D2570:  VSTR            S2, [R3]
1D2574:  ADD             R3, R3, #4
1D2578:  BNE             loc_1D2554
1D257C:  LDR             R7, [SP,#0x548+var_530]
1D2580:  ADD             R4, R4, R7
1D2584:  ADD             R5, R5, R7,LSL#2
1D2588:  STR             R5, [SP,#0x548+dest]
1D258C:  STR             R4, [SP,#0x548+src]
1D2590:  LDR             R2, [SP,#0x548+var_528]
1D2594:  ADD             R0, R0, #1
1D2598:  CMP             R0, R2
1D259C:  BNE             loc_1D2538
1D25A0:  B               def_1CF154; jumptable 001CF154 default case
1D25A4:  ALIGN 8
1D25A8:  DCFD 4.65661288e-10
1D25B0:  DCFD 1.19209304e-7
1D25B8:  DCFD 0.00787401575
1D25C0:  DCFD 0.0000305185095
1D25C8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5131
1D25CC:  CMP             R0, #0
1D25D0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D25D4:  LDR             R1, =(unk_C48B0 - 0x1D25E8)
1D25D8:  MOV             R0, #0
1D25DC:  VLDR            S0, =0.000030519
1D25E0:  ADD             R1, PC, R1; unk_C48B0
1D25E4:  CMP             R7, #0
1D25E8:  BEQ             loc_1D263C
1D25EC:  LDR             R5, [SP,#0x548+dest]
1D25F0:  MOV             R2, R7
1D25F4:  LDR             R4, [SP,#0x548+src]
1D25F8:  MOV             R3, R5
1D25FC:  MOV             R7, R4
1D2600:  LDRB            R6, [R7],#1
1D2604:  SUBS            R2, R2, #1
1D2608:  ADD             R6, R1, R6,LSL#1
1D260C:  LDRSH           R6, [R6]
1D2610:  VMOV            S2, R6
1D2614:  VCVT.F32.S32    S2, S2
1D2618:  VMUL.F32        S2, S2, S0
1D261C:  VSTR            S2, [R3]
1D2620:  ADD             R3, R3, #4
1D2624:  BNE             loc_1D2600
1D2628:  LDR             R7, [SP,#0x548+var_530]
1D262C:  ADD             R4, R4, R7
1D2630:  ADD             R5, R5, R7,LSL#2
1D2634:  STR             R5, [SP,#0x548+dest]
1D2638:  STR             R4, [SP,#0x548+src]
1D263C:  LDR             R2, [SP,#0x548+var_528]
1D2640:  ADD             R0, R0, #1
1D2644:  CMP             R0, R2
1D2648:  BNE             loc_1D25E4
1D264C:  B               def_1CF154; jumptable 001CF154 default case
1D2650:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF5F8 case 5132
1D2654:  LDR             R1, [SP,#0x548+src]
1D2658:  CMP             R0, #0
1D265C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2660:  ADD             R0, R7, R7,LSL#3
1D2664:  MOV             R8, R7,LSL#1
1D2668:  MOV             R6, #0
1D266C:  ADD             R12, SP, #0x548+var_522
1D2670:  MOV             R9, R0,LSL#2
1D2674:  VLDR            S16, =0.000030519
1D2678:  MOV             R0, R12
1D267C:  MOV             R2, R7
1D2680:  MOV             R10, R1
1D2684:  MOV             R5, R12
1D2688:  BL              sub_1D6750
1D268C:  LDR             R0, [SP,#0x548+var_528]
1D2690:  CMP             R6, R0
1D2694:  BCS             loc_1D2708
1D2698:  LDR             R4, [SP,#0x548+dest]
1D269C:  MOV             R0, #0
1D26A0:  MOV             R1, R5
1D26A4:  MOV             R12, R5
1D26A8:  CMP             R7, #0
1D26AC:  BEQ             loc_1D26E4
1D26B0:  MOV             R2, R7
1D26B4:  MOV             R3, R1
1D26B8:  MOV             R7, R4
1D26BC:  LDRSH           R5, [R3],#2
1D26C0:  SUBS            R2, R2, #1
1D26C4:  VMOV            S0, R5
1D26C8:  VCVT.F32.S32    S0, S0
1D26CC:  VMUL.F32        S0, S0, S16
1D26D0:  VSTR            S0, [R7]
1D26D4:  ADD             R7, R7, #4
1D26D8:  BNE             loc_1D26BC
1D26DC:  LDR             R7, [SP,#0x548+var_530]
1D26E0:  ADD             R4, R4, R7,LSL#2
1D26E4:  ADD             R0, R0, #1
1D26E8:  ADD             R6, R6, #1
1D26EC:  CMP             R0, #0x40 ; '@'
1D26F0:  BHI             loc_1D2710
1D26F4:  LDR             R2, [SP,#0x548+var_528]
1D26F8:  ADD             R1, R1, R8
1D26FC:  CMP             R6, R2
1D2700:  BCC             loc_1D26A8
1D2704:  B               loc_1D2710
1D2708:  LDR             R4, [SP,#0x548+dest]
1D270C:  MOV             R12, R5
1D2710:  STR             R4, [SP,#0x548+dest]
1D2714:  MOV             R1, R10
1D2718:  LDR             R0, [SP,#0x548+var_528]
1D271C:  ADD             R1, R1, R9
1D2720:  CMP             R6, R0
1D2724:  BCC             loc_1D2678
1D2728:  B               def_1CF154; jumptable 001CF154 default case
1D272C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5121
1D2730:  CMP             R0, #0
1D2734:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2738:  VLDR            D0, =0.00787401575
1D273C:  MOV             R0, #0
1D2740:  CMP             R7, #0
1D2744:  BEQ             loc_1D2794
1D2748:  LDR             R6, [SP,#0x548+dest]
1D274C:  MOV             R1, R7
1D2750:  LDR             R5, [SP,#0x548+src]
1D2754:  MOV             R2, R6
1D2758:  MOV             R3, R5
1D275C:  LDRB            R7, [R3],#1
1D2760:  SUBS            R1, R1, #1
1D2764:  SUB             R7, R7, #0x80
1D2768:  VMOV            S2, R7
1D276C:  VCVT.F64.S32    D1, S2
1D2770:  VMUL.F64        D1, D1, D0
1D2774:  VSTR            D1, [R2]
1D2778:  ADD             R2, R2, #8
1D277C:  BNE             loc_1D275C
1D2780:  LDR             R7, [SP,#0x548+var_530]
1D2784:  ADD             R5, R5, R7
1D2788:  ADD             R6, R6, R7,LSL#3
1D278C:  STR             R6, [SP,#0x548+dest]
1D2790:  STR             R5, [SP,#0x548+src]
1D2794:  LDR             R1, [SP,#0x548+var_528]
1D2798:  ADD             R0, R0, #1
1D279C:  CMP             R0, R1
1D27A0:  BNE             loc_1D2740
1D27A4:  B               def_1CF154; jumptable 001CF154 default case
1D27A8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5122
1D27AC:  CMP             R0, #0
1D27B0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D27B4:  VLDR            D0, =0.0000305185095
1D27B8:  MOV             R0, #0
1D27BC:  CMP             R7, #0
1D27C0:  BEQ             loc_1D280C
1D27C4:  LDR             R6, [SP,#0x548+dest]
1D27C8:  MOV             R1, R7
1D27CC:  LDR             R5, [SP,#0x548+src]
1D27D0:  MOV             R2, R6
1D27D4:  MOV             R3, R5
1D27D8:  LDRSH           R7, [R3],#2
1D27DC:  SUBS            R1, R1, #1
1D27E0:  VMOV            S2, R7
1D27E4:  VCVT.F64.S32    D1, S2
1D27E8:  VMUL.F64        D1, D1, D0
1D27EC:  VSTR            D1, [R2]
1D27F0:  ADD             R2, R2, #8
1D27F4:  BNE             loc_1D27D8
1D27F8:  LDR             R7, [SP,#0x548+var_530]
1D27FC:  ADD             R6, R6, R7,LSL#3
1D2800:  STR             R6, [SP,#0x548+dest]
1D2804:  ADD             R5, R5, R7,LSL#1
1D2808:  STR             R5, [SP,#0x548+src]
1D280C:  LDR             R1, [SP,#0x548+var_528]
1D2810:  ADD             R0, R0, #1
1D2814:  CMP             R0, R1
1D2818:  BNE             loc_1D27BC
1D281C:  B               def_1CF154; jumptable 001CF154 default case
1D2820:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5123
1D2824:  CMP             R0, #0
1D2828:  BEQ             def_1CF154; jumptable 001CF154 default case
1D282C:  VLDR            D0, =0.0000305185095
1D2830:  MOV             R0, #0
1D2834:  CMP             R7, #0
1D2838:  BEQ             loc_1D2888
1D283C:  LDR             R6, [SP,#0x548+dest]
1D2840:  MOV             R1, R7
1D2844:  LDR             R5, [SP,#0x548+src]
1D2848:  MOV             R2, R6
1D284C:  MOV             R3, R5
1D2850:  LDRH            R7, [R3],#2
1D2854:  SUBS            R1, R1, #1
1D2858:  SUB             R7, R7, #0x8000
1D285C:  VMOV            S2, R7
1D2860:  VCVT.F64.S32    D1, S2
1D2864:  VMUL.F64        D1, D1, D0
1D2868:  VSTR            D1, [R2]
1D286C:  ADD             R2, R2, #8
1D2870:  BNE             loc_1D2850
1D2874:  LDR             R7, [SP,#0x548+var_530]
1D2878:  ADD             R6, R6, R7,LSL#3
1D287C:  STR             R6, [SP,#0x548+dest]
1D2880:  ADD             R5, R5, R7,LSL#1
1D2884:  STR             R5, [SP,#0x548+src]
1D2888:  LDR             R1, [SP,#0x548+var_528]
1D288C:  ADD             R0, R0, #1
1D2890:  CMP             R0, R1
1D2894:  BNE             loc_1D2834
1D2898:  B               def_1CF154; jumptable 001CF154 default case
1D289C:  DCD unk_C46B0 - 0x1D18CC
1D28A0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5124
1D28A4:  CMP             R0, #0
1D28A8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D28AC:  VLDR            D0, =4.65661288e-10
1D28B0:  MOV             R0, #0
1D28B4:  CMP             R7, #0
1D28B8:  BEQ             loc_1D2904
1D28BC:  LDR             R6, [SP,#0x548+dest]
1D28C0:  MOV             R1, R7
1D28C4:  LDR             R5, [SP,#0x548+src]
1D28C8:  MOV             R2, R6
1D28CC:  MOV             R3, R5
1D28D0:  LDR             R7, [R3],#4
1D28D4:  SUBS            R1, R1, #1
1D28D8:  VMOV            S2, R7
1D28DC:  VCVT.F64.S32    D1, S2
1D28E0:  VMUL.F64        D1, D1, D0
1D28E4:  VSTR            D1, [R2]
1D28E8:  ADD             R2, R2, #8
1D28EC:  BNE             loc_1D28D0
1D28F0:  LDR             R7, [SP,#0x548+var_530]
1D28F4:  ADD             R6, R6, R7,LSL#3
1D28F8:  STR             R6, [SP,#0x548+dest]
1D28FC:  ADD             R5, R5, R7,LSL#2
1D2900:  STR             R5, [SP,#0x548+src]
1D2904:  LDR             R1, [SP,#0x548+var_528]
1D2908:  ADD             R0, R0, #1
1D290C:  CMP             R0, R1
1D2910:  BNE             loc_1D28B4
1D2914:  B               def_1CF154; jumptable 001CF154 default case
1D2918:  DCD unk_C48B0 - 0x1D1944
1D291C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5125
1D2920:  CMP             R0, #0
1D2924:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2928:  VLDR            D0, =4.65661288e-10
1D292C:  MOV             R0, #0
1D2930:  CMP             R7, #0
1D2934:  BEQ             loc_1D2984
1D2938:  LDR             R6, [SP,#0x548+dest]
1D293C:  MOV             R1, R7
1D2940:  LDR             R5, [SP,#0x548+src]
1D2944:  MOV             R2, R6
1D2948:  MOV             R3, R5
1D294C:  LDR             R7, [R3],#4
1D2950:  SUBS            R1, R1, #1
1D2954:  EOR             R7, R7, #0x80000000
1D2958:  VMOV            S2, R7
1D295C:  VCVT.F64.S32    D1, S2
1D2960:  VMUL.F64        D1, D1, D0
1D2964:  VSTR            D1, [R2]
1D2968:  ADD             R2, R2, #8
1D296C:  BNE             loc_1D294C
1D2970:  LDR             R7, [SP,#0x548+var_530]
1D2974:  ADD             R6, R6, R7,LSL#3
1D2978:  STR             R6, [SP,#0x548+dest]
1D297C:  ADD             R5, R5, R7,LSL#2
1D2980:  STR             R5, [SP,#0x548+src]
1D2984:  LDR             R1, [SP,#0x548+var_528]
1D2988:  ADD             R0, R0, #1
1D298C:  CMP             R0, R1
1D2990:  BNE             loc_1D2930
1D2994:  B               def_1CF154; jumptable 001CF154 default case
1D2998:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5126
1D299C:  CMP             R0, #0
1D29A0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D29A4:  MOV             R0, #0
1D29A8:  CMP             R7, #0
1D29AC:  BEQ             loc_1D29F8
1D29B0:  MOV             R1, R7
1D29B4:  LDR             R7, [SP,#0x548+dest]
1D29B8:  LDR             R6, [SP,#0x548+src]
1D29BC:  MOV             R2, R7
1D29C0:  MOV             R3, R6
1D29C4:  VLDR            S0, [R3]
1D29C8:  SUBS            R1, R1, #1
1D29CC:  ADD             R3, R3, #4
1D29D0:  VCVT.F64.F32    D0, S0
1D29D4:  VSTR            D0, [R2]
1D29D8:  ADD             R2, R2, #8
1D29DC:  BNE             loc_1D29C4
1D29E0:  LDR             R1, [SP,#0x548+var_530]
1D29E4:  ADD             R7, R7, R1,LSL#3
1D29E8:  STR             R7, [SP,#0x548+dest]
1D29EC:  MOV             R7, R1
1D29F0:  ADD             R6, R6, R7,LSL#2
1D29F4:  STR             R6, [SP,#0x548+src]
1D29F8:  LDR             R1, [SP,#0x548+var_528]
1D29FC:  ADD             R0, R0, #1
1D2A00:  CMP             R0, R1
1D2A04:  BNE             loc_1D29A8
1D2A08:  B               def_1CF154; jumptable 001CF154 default case
1D2A0C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5127
1D2A10:  CMP             R0, #0
1D2A14:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2A18:  MOV             R0, #0
1D2A1C:  CMP             R7, #0
1D2A20:  BEQ             loc_1D2A68
1D2A24:  MOV             R1, R7
1D2A28:  LDR             R7, [SP,#0x548+dest]
1D2A2C:  LDR             R6, [SP,#0x548+src]
1D2A30:  MOV             R2, R7
1D2A34:  MOV             R3, R6
1D2A38:  VLDR            D0, [R3]
1D2A3C:  SUBS            R1, R1, #1
1D2A40:  ADD             R3, R3, #8
1D2A44:  VSTR            D0, [R2]
1D2A48:  ADD             R2, R2, #8
1D2A4C:  BNE             loc_1D2A38
1D2A50:  LDR             R1, [SP,#0x548+var_530]
1D2A54:  ADD             R7, R7, R1,LSL#3
1D2A58:  STR             R7, [SP,#0x548+dest]
1D2A5C:  MOV             R7, R1
1D2A60:  ADD             R6, R6, R7,LSL#3
1D2A64:  STR             R6, [SP,#0x548+src]
1D2A68:  LDR             R1, [SP,#0x548+var_528]
1D2A6C:  ADD             R0, R0, #1
1D2A70:  CMP             R0, R1
1D2A74:  BNE             loc_1D2A1C
1D2A78:  B               def_1CF154; jumptable 001CF154 default case
1D2A7C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5128
1D2A80:  CMP             R0, #0
1D2A84:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2A88:  VLDR            D0, =1.19209304e-7
1D2A8C:  MOV             R0, #0
1D2A90:  CMP             R7, #0
1D2A94:  BEQ             loc_1D2AF8
1D2A98:  LDR             R5, [SP,#0x548+dest]
1D2A9C:  MOV             R1, R7
1D2AA0:  LDR             R4, [SP,#0x548+src]
1D2AA4:  MOV             R2, R5
1D2AA8:  MOV             R3, R4
1D2AAC:  LDRB            R7, [R3,#2]
1D2AB0:  SUBS            R1, R1, #1
1D2AB4:  LDRH            R6, [R3]
1D2AB8:  ADD             R3, R3, #3
1D2ABC:  ORR             R7, R6, R7,LSL#16
1D2AC0:  SBFX            R6, R7, #0x10, #8
1D2AC4:  PKHBT           R7, R7, R6,LSL#16
1D2AC8:  VMOV            S2, R7
1D2ACC:  VCVT.F64.S32    D1, S2
1D2AD0:  VMUL.F64        D1, D1, D0
1D2AD4:  VSTR            D1, [R2]
1D2AD8:  ADD             R2, R2, #8
1D2ADC:  BNE             loc_1D2AAC
1D2AE0:  LDR             R7, [SP,#0x548+var_530]
1D2AE4:  ADD             R1, R7, R7,LSL#1
1D2AE8:  ADD             R5, R5, R7,LSL#3
1D2AEC:  STR             R5, [SP,#0x548+dest]
1D2AF0:  ADD             R4, R4, R1
1D2AF4:  STR             R4, [SP,#0x548+src]
1D2AF8:  LDR             R1, [SP,#0x548+var_528]
1D2AFC:  ADD             R0, R0, #1
1D2B00:  CMP             R0, R1
1D2B04:  BNE             loc_1D2A90
1D2B08:  B               def_1CF154; jumptable 001CF154 default case
1D2B0C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5129
1D2B10:  CMP             R0, #0
1D2B14:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2B18:  VLDR            D0, =1.19209304e-7
1D2B1C:  MOV             R0, #0
1D2B20:  CMP             R7, #0
1D2B24:  BEQ             loc_1D2B84
1D2B28:  LDR             R5, [SP,#0x548+dest]
1D2B2C:  MOV             R1, R7
1D2B30:  LDR             R4, [SP,#0x548+src]
1D2B34:  MOV             R2, R5
1D2B38:  MOV             R3, R4
1D2B3C:  LDRB            R7, [R3,#2]
1D2B40:  SUBS            R1, R1, #1
1D2B44:  LDRH            R6, [R3]
1D2B48:  ADD             R3, R3, #3
1D2B4C:  ORR             R7, R6, R7,LSL#16
1D2B50:  SUB             R7, R7, #0x800000
1D2B54:  VMOV            S2, R7
1D2B58:  VCVT.F64.S32    D1, S2
1D2B5C:  VMUL.F64        D1, D1, D0
1D2B60:  VSTR            D1, [R2]
1D2B64:  ADD             R2, R2, #8
1D2B68:  BNE             loc_1D2B3C
1D2B6C:  LDR             R7, [SP,#0x548+var_530]
1D2B70:  ADD             R1, R7, R7,LSL#1
1D2B74:  ADD             R5, R5, R7,LSL#3
1D2B78:  STR             R5, [SP,#0x548+dest]
1D2B7C:  ADD             R4, R4, R1
1D2B80:  STR             R4, [SP,#0x548+src]
1D2B84:  LDR             R1, [SP,#0x548+var_528]
1D2B88:  ADD             R0, R0, #1
1D2B8C:  CMP             R0, R1
1D2B90:  BNE             loc_1D2B20
1D2B94:  B               def_1CF154; jumptable 001CF154 default case
1D2B98:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5130
1D2B9C:  CMP             R0, #0
1D2BA0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2BA4:  LDR             R1, =(unk_C46B0 - 0x1D2BB8)
1D2BA8:  MOV             R0, #0
1D2BAC:  VLDR            D0, =0.0000305185095
1D2BB0:  ADD             R1, PC, R1; unk_C46B0
1D2BB4:  CMP             R7, #0
1D2BB8:  BEQ             loc_1D2C0C
1D2BBC:  LDR             R5, [SP,#0x548+dest]
1D2BC0:  MOV             R2, R7
1D2BC4:  LDR             R4, [SP,#0x548+src]
1D2BC8:  MOV             R3, R5
1D2BCC:  MOV             R7, R4
1D2BD0:  LDRB            R6, [R7],#1
1D2BD4:  SUBS            R2, R2, #1
1D2BD8:  ADD             R6, R1, R6,LSL#1
1D2BDC:  LDRSH           R6, [R6]
1D2BE0:  VMOV            S2, R6
1D2BE4:  VCVT.F64.S32    D1, S2
1D2BE8:  VMUL.F64        D1, D1, D0
1D2BEC:  VSTR            D1, [R3]
1D2BF0:  ADD             R3, R3, #8
1D2BF4:  BNE             loc_1D2BD0
1D2BF8:  LDR             R7, [SP,#0x548+var_530]
1D2BFC:  ADD             R4, R4, R7
1D2C00:  ADD             R5, R5, R7,LSL#3
1D2C04:  STR             R5, [SP,#0x548+dest]
1D2C08:  STR             R4, [SP,#0x548+src]
1D2C0C:  LDR             R2, [SP,#0x548+var_528]
1D2C10:  ADD             R0, R0, #1
1D2C14:  CMP             R0, R2
1D2C18:  BNE             loc_1D2BB4
1D2C1C:  B               def_1CF154; jumptable 001CF154 default case
1D2C20:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5131
1D2C24:  CMP             R0, #0
1D2C28:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2C2C:  LDR             R1, =(unk_C48B0 - 0x1D2C40)
1D2C30:  MOV             R0, #0
1D2C34:  VLDR            D0, =0.0000305185095
1D2C38:  ADD             R1, PC, R1; unk_C48B0
1D2C3C:  CMP             R7, #0
1D2C40:  BEQ             loc_1D2C94
1D2C44:  LDR             R5, [SP,#0x548+dest]
1D2C48:  MOV             R2, R7
1D2C4C:  LDR             R4, [SP,#0x548+src]
1D2C50:  MOV             R3, R5
1D2C54:  MOV             R7, R4
1D2C58:  LDRB            R6, [R7],#1
1D2C5C:  SUBS            R2, R2, #1
1D2C60:  ADD             R6, R1, R6,LSL#1
1D2C64:  LDRSH           R6, [R6]
1D2C68:  VMOV            S2, R6
1D2C6C:  VCVT.F64.S32    D1, S2
1D2C70:  VMUL.F64        D1, D1, D0
1D2C74:  VSTR            D1, [R3]
1D2C78:  ADD             R3, R3, #8
1D2C7C:  BNE             loc_1D2C58
1D2C80:  LDR             R7, [SP,#0x548+var_530]
1D2C84:  ADD             R4, R4, R7
1D2C88:  ADD             R5, R5, R7,LSL#3
1D2C8C:  STR             R5, [SP,#0x548+dest]
1D2C90:  STR             R4, [SP,#0x548+src]
1D2C94:  LDR             R2, [SP,#0x548+var_528]
1D2C98:  ADD             R0, R0, #1
1D2C9C:  CMP             R0, R2
1D2CA0:  BNE             loc_1D2C3C
1D2CA4:  B               def_1CF154; jumptable 001CF154 default case
1D2CA8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF6C0 case 5132
1D2CAC:  LDR             R1, [SP,#0x548+src]
1D2CB0:  CMP             R0, #0
1D2CB4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2CB8:  ADD             R0, R7, R7,LSL#3
1D2CBC:  MOV             R8, R7,LSL#1
1D2CC0:  MOV             R6, #0
1D2CC4:  ADD             R12, SP, #0x548+var_522
1D2CC8:  MOV             R9, R0,LSL#2
1D2CCC:  VLDR            D8, =0.0000305185095
1D2CD0:  MOV             R0, R12
1D2CD4:  MOV             R2, R7
1D2CD8:  MOV             R10, R1
1D2CDC:  MOV             R5, R12
1D2CE0:  BL              sub_1D6750
1D2CE4:  LDR             R0, [SP,#0x548+var_528]
1D2CE8:  CMP             R6, R0
1D2CEC:  BCS             loc_1D2D60
1D2CF0:  LDR             R4, [SP,#0x548+dest]
1D2CF4:  MOV             R0, #0
1D2CF8:  MOV             R1, R5
1D2CFC:  MOV             R12, R5
1D2D00:  CMP             R7, #0
1D2D04:  BEQ             loc_1D2D3C
1D2D08:  MOV             R2, R7
1D2D0C:  MOV             R3, R1
1D2D10:  MOV             R7, R4
1D2D14:  LDRSH           R5, [R3],#2
1D2D18:  SUBS            R2, R2, #1
1D2D1C:  VMOV            S0, R5
1D2D20:  VCVT.F64.S32    D0, S0
1D2D24:  VMUL.F64        D0, D0, D8
1D2D28:  VSTR            D0, [R7]
1D2D2C:  ADD             R7, R7, #8
1D2D30:  BNE             loc_1D2D14
1D2D34:  LDR             R7, [SP,#0x548+var_530]
1D2D38:  ADD             R4, R4, R7,LSL#3
1D2D3C:  ADD             R0, R0, #1
1D2D40:  ADD             R6, R6, #1
1D2D44:  CMP             R0, #0x40 ; '@'
1D2D48:  BHI             loc_1D2D68
1D2D4C:  LDR             R2, [SP,#0x548+var_528]
1D2D50:  ADD             R1, R1, R8
1D2D54:  CMP             R6, R2
1D2D58:  BCC             loc_1D2D00
1D2D5C:  B               loc_1D2D68
1D2D60:  LDR             R4, [SP,#0x548+dest]
1D2D64:  MOV             R12, R5
1D2D68:  STR             R4, [SP,#0x548+dest]
1D2D6C:  MOV             R1, R10
1D2D70:  LDR             R0, [SP,#0x548+var_528]
1D2D74:  ADD             R1, R1, R9
1D2D78:  CMP             R6, R0
1D2D7C:  BCC             loc_1D2CD0
1D2D80:  B               def_1CF154; jumptable 001CF154 default case
1D2D84:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5121
1D2D88:  CMP             R0, #0
1D2D8C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2D90:  MOV             R0, #0
1D2D94:  MOV             R1, #0
1D2D98:  CMP             R7, #0
1D2D9C:  BEQ             loc_1D2DE8
1D2DA0:  LDR             R5, [SP,#0x548+dest]
1D2DA4:  MOV             R2, R7
1D2DA8:  LDR             R4, [SP,#0x548+src]
1D2DAC:  MOV             R3, R5
1D2DB0:  MOV             R7, R4
1D2DB4:  LDRB            R6, [R7],#1
1D2DB8:  SUBS            R2, R2, #1
1D2DBC:  STRH            R0, [R3]
1D2DC0:  EOR             R6, R6, #0x80
1D2DC4:  STRB            R6, [R3,#2]
1D2DC8:  ADD             R3, R3, #3
1D2DCC:  BNE             loc_1D2DB4
1D2DD0:  LDR             R7, [SP,#0x548+var_530]
1D2DD4:  ADD             R4, R4, R7
1D2DD8:  STR             R4, [SP,#0x548+src]
1D2DDC:  ADD             R2, R7, R7,LSL#1
1D2DE0:  ADD             R5, R5, R2
1D2DE4:  STR             R5, [SP,#0x548+dest]
1D2DE8:  LDR             R2, [SP,#0x548+var_528]
1D2DEC:  ADD             R1, R1, #1
1D2DF0:  CMP             R1, R2
1D2DF4:  BNE             loc_1D2D98
1D2DF8:  B               def_1CF154; jumptable 001CF154 default case
1D2DFC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5122
1D2E00:  CMP             R0, #0
1D2E04:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2E08:  MOV             R0, #0
1D2E0C:  CMP             R7, #0
1D2E10:  BEQ             loc_1D2E60
1D2E14:  LDR             R5, [SP,#0x548+dest]
1D2E18:  MOV             R1, R7
1D2E1C:  LDR             R4, [SP,#0x548+src]
1D2E20:  MOV             R2, R5
1D2E24:  MOV             R3, R4
1D2E28:  LDRH            R7, [R3],#2
1D2E2C:  SUBS            R1, R1, #1
1D2E30:  MOV             R6, R7,LSR#8
1D2E34:  MOV             R7, R7,LSL#8
1D2E38:  STRB            R6, [R2,#2]
1D2E3C:  STRH            R7, [R2]
1D2E40:  ADD             R2, R2, #3
1D2E44:  BNE             loc_1D2E28
1D2E48:  LDR             R7, [SP,#0x548+var_530]
1D2E4C:  ADD             R1, R7, R7,LSL#1
1D2E50:  ADD             R4, R4, R7,LSL#1
1D2E54:  STR             R4, [SP,#0x548+src]
1D2E58:  ADD             R5, R5, R1
1D2E5C:  STR             R5, [SP,#0x548+dest]
1D2E60:  LDR             R1, [SP,#0x548+var_528]
1D2E64:  ADD             R0, R0, #1
1D2E68:  CMP             R0, R1
1D2E6C:  BNE             loc_1D2E0C
1D2E70:  B               def_1CF154; jumptable 001CF154 default case
1D2E74:  ALIGN 8
1D2E78:  DCFD 1.19209304e-7
1D2E80:  DCFD 0.0000305185095
1D2E88:  DCFD 2.14748365e9
1D2E90:  DCD unk_C46B0 - 0x1D1EE8
1D2E94:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5123
1D2E98:  CMP             R0, #0
1D2E9C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2EA0:  MOV             R0, #0
1D2EA4:  MOV             R1, #0x80
1D2EA8:  CMP             R7, #0
1D2EAC:  BEQ             loc_1D2EFC
1D2EB0:  LDR             R12, [SP,#0x548+dest]
1D2EB4:  MOV             R2, R7
1D2EB8:  LDR             R4, [SP,#0x548+src]
1D2EBC:  MOV             R3, R12
1D2EC0:  MOV             R7, R4
1D2EC4:  LDRH            R6, [R7],#2
1D2EC8:  SUBS            R2, R2, #1
1D2ECC:  EOR             R5, R1, R6,LSR#8
1D2ED0:  MOV             R6, R6,LSL#8
1D2ED4:  STRB            R5, [R3,#2]
1D2ED8:  STRH            R6, [R3]
1D2EDC:  ADD             R3, R3, #3
1D2EE0:  BNE             loc_1D2EC4
1D2EE4:  LDR             R7, [SP,#0x548+var_530]
1D2EE8:  ADD             R2, R7, R7,LSL#1
1D2EEC:  ADD             R4, R4, R7,LSL#1
1D2EF0:  STR             R4, [SP,#0x548+src]
1D2EF4:  ADD             R12, R12, R2
1D2EF8:  STR             R12, [SP,#0x548+dest]
1D2EFC:  LDR             R2, [SP,#0x548+var_528]
1D2F00:  ADD             R0, R0, #1
1D2F04:  CMP             R0, R2
1D2F08:  BNE             loc_1D2EA8
1D2F0C:  B               def_1CF154; jumptable 001CF154 default case
1D2F10:  DCD unk_C48B0 - 0x1D1F64
1D2F14:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5124
1D2F18:  CMP             R0, #0
1D2F1C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2F20:  MOV             R0, #0
1D2F24:  CMP             R7, #0
1D2F28:  BEQ             loc_1D2F78
1D2F2C:  LDR             R5, [SP,#0x548+dest]
1D2F30:  MOV             R1, R7
1D2F34:  LDR             R4, [SP,#0x548+src]
1D2F38:  MOV             R2, R5
1D2F3C:  MOV             R3, R4
1D2F40:  LDR             R7, [R3],#4
1D2F44:  SUBS            R1, R1, #1
1D2F48:  MOV             R6, R7,LSR#24
1D2F4C:  MOV             R7, R7,LSR#8
1D2F50:  STRB            R6, [R2,#2]
1D2F54:  STRH            R7, [R2]
1D2F58:  ADD             R2, R2, #3
1D2F5C:  BNE             loc_1D2F40
1D2F60:  LDR             R7, [SP,#0x548+var_530]
1D2F64:  ADD             R1, R7, R7,LSL#1
1D2F68:  ADD             R4, R4, R7,LSL#2
1D2F6C:  STR             R4, [SP,#0x548+src]
1D2F70:  ADD             R5, R5, R1
1D2F74:  STR             R5, [SP,#0x548+dest]
1D2F78:  LDR             R1, [SP,#0x548+var_528]
1D2F7C:  ADD             R0, R0, #1
1D2F80:  CMP             R0, R1
1D2F84:  BNE             loc_1D2F24
1D2F88:  B               def_1CF154; jumptable 001CF154 default case
1D2F8C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5125
1D2F90:  CMP             R0, #0
1D2F94:  BEQ             def_1CF154; jumptable 001CF154 default case
1D2F98:  MOV             R0, #0
1D2F9C:  MOV             R1, #0x80
1D2FA0:  CMP             R7, #0
1D2FA4:  BEQ             loc_1D2FF4
1D2FA8:  LDR             R12, [SP,#0x548+dest]
1D2FAC:  MOV             R2, R7
1D2FB0:  LDR             R4, [SP,#0x548+src]
1D2FB4:  MOV             R3, R12
1D2FB8:  MOV             R7, R4
1D2FBC:  LDR             R6, [R7],#4
1D2FC0:  SUBS            R2, R2, #1
1D2FC4:  EOR             R5, R1, R6,LSR#24
1D2FC8:  MOV             R6, R6,LSR#8
1D2FCC:  STRB            R5, [R3,#2]
1D2FD0:  STRH            R6, [R3]
1D2FD4:  ADD             R3, R3, #3
1D2FD8:  BNE             loc_1D2FBC
1D2FDC:  LDR             R7, [SP,#0x548+var_530]
1D2FE0:  ADD             R2, R7, R7,LSL#1
1D2FE4:  ADD             R4, R4, R7,LSL#2
1D2FE8:  STR             R4, [SP,#0x548+src]
1D2FEC:  ADD             R12, R12, R2
1D2FF0:  STR             R12, [SP,#0x548+dest]
1D2FF4:  LDR             R2, [SP,#0x548+var_528]
1D2FF8:  ADD             R0, R0, #1
1D2FFC:  CMP             R0, R2
1D3000:  BNE             loc_1D2FA0
1D3004:  B               def_1CF154; jumptable 001CF154 default case
1D3008:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5126
1D300C:  CMP             R0, #0
1D3010:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3014:  VMOV.F32        S0, #1.0
1D3018:  VLDR            D2, =2.14748365e9
1D301C:  VMOV.F32        S2, #-1.0
1D3020:  MOV             R1, #0
1D3024:  CMP             R7, #0
1D3028:  BEQ             loc_1D30B0
1D302C:  LDR             R12, [SP,#0x548+dest]
1D3030:  MOV             R2, R7
1D3034:  LDR             R3, [SP,#0x548+src]
1D3038:  MOV             R7, R12
1D303C:  VLDR            S6, [R3]
1D3040:  MOV             R5, R7
1D3044:  MOV             R0, R6
1D3048:  VCMPE.F32       S6, S0
1D304C:  VMRS            APSR_nzcv, FPSCR
1D3050:  BGT             loc_1D3078
1D3054:  VCMPE.F32       S6, S2
1D3058:  MOV             R0, #0x800000
1D305C:  VMRS            APSR_nzcv, FPSCR
1D3060:  BLT             loc_1D3078
1D3064:  VCVT.F64.F32    D3, S6
1D3068:  VMUL.F64        D3, D3, D2
1D306C:  VCVT.S32.F64    S6, D3
1D3070:  VMOV            R0, S6
1D3074:  MOV             R0, R0,LSR#8
1D3078:  ADD             R3, R3, #4
1D307C:  ADD             R7, R5, #3
1D3080:  SUBS            R2, R2, #1
1D3084:  STRH            R0, [R5]
1D3088:  MOV             R0, R0,LSR#16
1D308C:  STRB            R0, [R5,#2]
1D3090:  BNE             loc_1D303C
1D3094:  LDR             R7, [SP,#0x548+var_530]
1D3098:  LDR             R0, [SP,#0x548+src]
1D309C:  ADD             R0, R0, R7,LSL#2
1D30A0:  STR             R0, [SP,#0x548+src]
1D30A4:  ADD             R0, R7, R7,LSL#1
1D30A8:  ADD             R12, R12, R0
1D30AC:  STR             R12, [SP,#0x548+dest]
1D30B0:  LDR             R0, [SP,#0x548+var_528]
1D30B4:  ADD             R1, R1, #1
1D30B8:  CMP             R1, R0
1D30BC:  BNE             loc_1D3024
1D30C0:  B               def_1CF154; jumptable 001CF154 default case
1D30C4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5127
1D30C8:  CMP             R0, #0
1D30CC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D30D0:  VMOV.F64        D0, #1.0
1D30D4:  MOV             R1, #0
1D30D8:  VMOV.F64        D1, #-1.0
1D30DC:  VLDR            D2, =2.14748365e9
1D30E0:  CMP             R7, #0
1D30E4:  BEQ             loc_1D3168
1D30E8:  LDR             R12, [SP,#0x548+dest]
1D30EC:  MOV             R2, R7
1D30F0:  LDR             R3, [SP,#0x548+src]
1D30F4:  MOV             R7, R12
1D30F8:  VLDR            D3, [R3]
1D30FC:  MOV             R5, R7
1D3100:  MOV             R0, R6
1D3104:  VCMPE.F64       D3, D0
1D3108:  VMRS            APSR_nzcv, FPSCR
1D310C:  BGT             loc_1D3130
1D3110:  VCMPE.F64       D3, D1
1D3114:  MOV             R0, #0x800000
1D3118:  VMRS            APSR_nzcv, FPSCR
1D311C:  BLT             loc_1D3130
1D3120:  VMUL.F64        D3, D3, D2
1D3124:  VCVT.S32.F64    S6, D3
1D3128:  VMOV            R0, S6
1D312C:  MOV             R0, R0,LSR#8
1D3130:  ADD             R3, R3, #8
1D3134:  ADD             R7, R5, #3
1D3138:  SUBS            R2, R2, #1
1D313C:  STRH            R0, [R5]
1D3140:  MOV             R0, R0,LSR#16
1D3144:  STRB            R0, [R5,#2]
1D3148:  BNE             loc_1D30F8
1D314C:  LDR             R7, [SP,#0x548+var_530]
1D3150:  LDR             R0, [SP,#0x548+src]
1D3154:  ADD             R0, R0, R7,LSL#3
1D3158:  STR             R0, [SP,#0x548+src]
1D315C:  ADD             R0, R7, R7,LSL#1
1D3160:  ADD             R12, R12, R0
1D3164:  STR             R12, [SP,#0x548+dest]
1D3168:  LDR             R0, [SP,#0x548+var_528]
1D316C:  ADD             R1, R1, #1
1D3170:  CMP             R1, R0
1D3174:  BNE             loc_1D30E0
1D3178:  B               def_1CF154; jumptable 001CF154 default case
1D317C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5128
1D3180:  CMP             R0, #0
1D3184:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3188:  MOV             R0, #0
1D318C:  CMP             R7, #0
1D3190:  BEQ             loc_1D31E0
1D3194:  LDR             R5, [SP,#0x548+dest]
1D3198:  MOV             R1, R7
1D319C:  LDR             R4, [SP,#0x548+src]
1D31A0:  MOV             R2, R5
1D31A4:  MOV             R3, R4
1D31A8:  LDRH            R7, [R3]
1D31AC:  SUBS            R1, R1, #1
1D31B0:  LDRB            R6, [R3,#2]
1D31B4:  ADD             R3, R3, #3
1D31B8:  STRB            R6, [R2,#2]
1D31BC:  STRH            R7, [R2]
1D31C0:  ADD             R2, R2, #3
1D31C4:  BNE             loc_1D31A8
1D31C8:  LDR             R7, [SP,#0x548+var_530]
1D31CC:  ADD             R1, R7, R7,LSL#1
1D31D0:  ADD             R4, R4, R1
1D31D4:  STR             R4, [SP,#0x548+src]
1D31D8:  ADD             R5, R5, R1
1D31DC:  STR             R5, [SP,#0x548+dest]
1D31E0:  LDR             R1, [SP,#0x548+var_528]
1D31E4:  ADD             R0, R0, #1
1D31E8:  CMP             R0, R1
1D31EC:  BNE             loc_1D318C
1D31F0:  B               def_1CF154; jumptable 001CF154 default case
1D31F4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5129
1D31F8:  CMP             R0, #0
1D31FC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3200:  MOV             R0, #0
1D3204:  CMP             R7, #0
1D3208:  BEQ             loc_1D325C
1D320C:  LDR             R5, [SP,#0x548+dest]
1D3210:  MOV             R1, R7
1D3214:  LDR             R4, [SP,#0x548+src]
1D3218:  MOV             R2, R5
1D321C:  MOV             R3, R4
1D3220:  LDRB            R7, [R3,#2]
1D3224:  SUBS            R1, R1, #1
1D3228:  LDRH            R6, [R3]
1D322C:  ADD             R3, R3, #3
1D3230:  STRH            R6, [R2]
1D3234:  EOR             R7, R7, #0x80
1D3238:  STRB            R7, [R2,#2]
1D323C:  ADD             R2, R2, #3
1D3240:  BNE             loc_1D3220
1D3244:  LDR             R7, [SP,#0x548+var_530]
1D3248:  ADD             R1, R7, R7,LSL#1
1D324C:  ADD             R4, R4, R1
1D3250:  STR             R4, [SP,#0x548+src]
1D3254:  ADD             R5, R5, R1
1D3258:  STR             R5, [SP,#0x548+dest]
1D325C:  LDR             R1, [SP,#0x548+var_528]
1D3260:  ADD             R0, R0, #1
1D3264:  CMP             R0, R1
1D3268:  BNE             loc_1D3204
1D326C:  B               def_1CF154; jumptable 001CF154 default case
1D3270:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5130
1D3274:  CMP             R0, #0
1D3278:  BEQ             def_1CF154; jumptable 001CF154 default case
1D327C:  LDR             R1, =(unk_C46B0 - 0x1D328C)
1D3280:  MOV             R0, #0
1D3284:  ADD             R1, PC, R1; unk_C46B0
1D3288:  CMP             R7, #0
1D328C:  BEQ             loc_1D32E4
1D3290:  LDR             R12, [SP,#0x548+dest]
1D3294:  MOV             R2, R7
1D3298:  LDR             R4, [SP,#0x548+src]
1D329C:  MOV             R3, R12
1D32A0:  MOV             R7, R4
1D32A4:  LDRB            R6, [R7],#1
1D32A8:  SUBS            R2, R2, #1
1D32AC:  ADD             R6, R1, R6,LSL#1
1D32B0:  LDRH            R6, [R6]
1D32B4:  MOV             R5, R6,LSR#8
1D32B8:  MOV             R6, R6,LSL#8
1D32BC:  STRB            R5, [R3,#2]
1D32C0:  STRH            R6, [R3]
1D32C4:  ADD             R3, R3, #3
1D32C8:  BNE             loc_1D32A4
1D32CC:  LDR             R7, [SP,#0x548+var_530]
1D32D0:  ADD             R4, R4, R7
1D32D4:  STR             R4, [SP,#0x548+src]
1D32D8:  ADD             R2, R7, R7,LSL#1
1D32DC:  ADD             R12, R12, R2
1D32E0:  STR             R12, [SP,#0x548+dest]
1D32E4:  LDR             R2, [SP,#0x548+var_528]
1D32E8:  ADD             R0, R0, #1
1D32EC:  CMP             R0, R2
1D32F0:  BNE             loc_1D3288
1D32F4:  B               def_1CF154; jumptable 001CF154 default case
1D32F8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5131
1D32FC:  CMP             R0, #0
1D3300:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3304:  LDR             R1, =(unk_C48B0 - 0x1D3314)
1D3308:  MOV             R0, #0
1D330C:  ADD             R1, PC, R1; unk_C48B0
1D3310:  CMP             R7, #0
1D3314:  BEQ             loc_1D336C
1D3318:  LDR             R12, [SP,#0x548+dest]
1D331C:  MOV             R2, R7
1D3320:  LDR             R4, [SP,#0x548+src]
1D3324:  MOV             R3, R12
1D3328:  MOV             R7, R4
1D332C:  LDRB            R6, [R7],#1
1D3330:  SUBS            R2, R2, #1
1D3334:  ADD             R6, R1, R6,LSL#1
1D3338:  LDRH            R6, [R6]
1D333C:  MOV             R5, R6,LSR#8
1D3340:  MOV             R6, R6,LSL#8
1D3344:  STRB            R5, [R3,#2]
1D3348:  STRH            R6, [R3]
1D334C:  ADD             R3, R3, #3
1D3350:  BNE             loc_1D332C
1D3354:  LDR             R7, [SP,#0x548+var_530]
1D3358:  ADD             R4, R4, R7
1D335C:  STR             R4, [SP,#0x548+src]
1D3360:  ADD             R2, R7, R7,LSL#1
1D3364:  ADD             R12, R12, R2
1D3368:  STR             R12, [SP,#0x548+dest]
1D336C:  LDR             R2, [SP,#0x548+var_528]
1D3370:  ADD             R0, R0, #1
1D3374:  CMP             R0, R2
1D3378:  BNE             loc_1D3310
1D337C:  B               def_1CF154; jumptable 001CF154 default case
1D3380:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF790 case 5132
1D3384:  LDR             R1, [SP,#0x548+src]
1D3388:  CMP             R0, #0
1D338C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3390:  ADD             R0, R7, R7,LSL#3
1D3394:  MOV             R10, R7,LSL#1
1D3398:  MOV             R6, #0
1D339C:  ADD             R4, SP, #0x548+var_522
1D33A0:  MOV             R0, R0,LSL#2
1D33A4:  STR             R0, [SP,#0x548+var_538]
1D33A8:  LDR             R2, [SP,#0x548+var_528]
1D33AC:  MOV             R0, R4
1D33B0:  MOV             R9, R1
1D33B4:  MOV             R5, R2
1D33B8:  MOV             R2, R7
1D33BC:  BL              sub_1D6750
1D33C0:  CMP             R6, R5
1D33C4:  BCS             loc_1D3444
1D33C8:  LDR             LR, [SP,#0x548+dest]
1D33CC:  MOV             R0, #0
1D33D0:  MOV             R8, R4
1D33D4:  MOV             R1, R9
1D33D8:  CMP             R7, #0
1D33DC:  BEQ             loc_1D3420
1D33E0:  MOV             R2, R7
1D33E4:  MOV             R12, R1
1D33E8:  MOV             R3, R8
1D33EC:  MOV             R7, LR
1D33F0:  LDRH            R5, [R3],#2
1D33F4:  SUBS            R2, R2, #1
1D33F8:  MOV             R4, R5,LSR#8
1D33FC:  MOV             R5, R5,LSL#8
1D3400:  STRB            R4, [R7,#2]
1D3404:  STRH            R5, [R7]
1D3408:  ADD             R7, R7, #3
1D340C:  BNE             loc_1D33F0
1D3410:  LDR             R7, [SP,#0x548+var_530]
1D3414:  MOV             R1, R12
1D3418:  ADD             R2, R7, R7,LSL#1
1D341C:  ADD             LR, LR, R2
1D3420:  ADD             R0, R0, #1
1D3424:  ADD             R6, R6, #1
1D3428:  CMP             R0, #0x40 ; '@'
1D342C:  BHI             loc_1D344C
1D3430:  LDR             R2, [SP,#0x548+var_528]
1D3434:  ADD             R8, R8, R10
1D3438:  CMP             R6, R2
1D343C:  BCC             loc_1D33D8
1D3440:  B               loc_1D344C
1D3444:  LDR             LR, [SP,#0x548+dest]
1D3448:  MOV             R1, R9
1D344C:  STR             LR, [SP,#0x548+dest]
1D3450:  ADD             R4, SP, #0x548+var_522
1D3454:  LDR             R0, [SP,#0x548+var_538]
1D3458:  ADD             R1, R1, R0
1D345C:  LDR             R0, [SP,#0x548+var_528]
1D3460:  CMP             R6, R0
1D3464:  BCC             loc_1D33A8
1D3468:  B               def_1CF154; jumptable 001CF154 default case
1D346C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5121
1D3470:  CMP             R0, #0
1D3474:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3478:  MOV             R0, #0
1D347C:  MOV             R1, #0
1D3480:  CMP             R7, #0
1D3484:  BEQ             loc_1D34CC
1D3488:  LDR             R5, [SP,#0x548+dest]
1D348C:  MOV             R2, R7
1D3490:  LDR             R4, [SP,#0x548+src]
1D3494:  MOV             R3, R5
1D3498:  MOV             R7, R4
1D349C:  LDRB            R6, [R7],#1
1D34A0:  SUBS            R2, R2, #1
1D34A4:  STRB            R6, [R3,#2]
1D34A8:  STRH            R0, [R3]
1D34AC:  ADD             R3, R3, #3
1D34B0:  BNE             loc_1D349C
1D34B4:  LDR             R7, [SP,#0x548+var_530]
1D34B8:  ADD             R4, R4, R7
1D34BC:  STR             R4, [SP,#0x548+src]
1D34C0:  ADD             R2, R7, R7,LSL#1
1D34C4:  ADD             R5, R5, R2
1D34C8:  STR             R5, [SP,#0x548+dest]
1D34CC:  LDR             R2, [SP,#0x548+var_528]
1D34D0:  ADD             R1, R1, #1
1D34D4:  CMP             R1, R2
1D34D8:  BNE             loc_1D3480
1D34DC:  B               def_1CF154; jumptable 001CF154 default case
1D34E0:  DCD unk_C46B0 - 0x1D253C
1D34E4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5122
1D34E8:  CMP             R0, #0
1D34EC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D34F0:  MOV             R0, #0
1D34F4:  MOV             R1, #0x80
1D34F8:  CMP             R7, #0
1D34FC:  BEQ             loc_1D354C
1D3500:  LDR             R12, [SP,#0x548+dest]
1D3504:  MOV             R2, R7
1D3508:  LDR             R4, [SP,#0x548+src]
1D350C:  MOV             R3, R12
1D3510:  MOV             R7, R4
1D3514:  LDRH            R6, [R7],#2
1D3518:  SUBS            R2, R2, #1
1D351C:  EOR             R5, R1, R6,LSR#8
1D3520:  MOV             R6, R6,LSL#8
1D3524:  STRB            R5, [R3,#2]
1D3528:  STRH            R6, [R3]
1D352C:  ADD             R3, R3, #3
1D3530:  BNE             loc_1D3514
1D3534:  LDR             R7, [SP,#0x548+var_530]
1D3538:  ADD             R2, R7, R7,LSL#1
1D353C:  ADD             R4, R4, R7,LSL#1
1D3540:  STR             R4, [SP,#0x548+src]
1D3544:  ADD             R12, R12, R2
1D3548:  STR             R12, [SP,#0x548+dest]
1D354C:  LDR             R2, [SP,#0x548+var_528]
1D3550:  ADD             R0, R0, #1
1D3554:  CMP             R0, R2
1D3558:  BNE             loc_1D34F8
1D355C:  B               def_1CF154; jumptable 001CF154 default case
1D3560:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5123
1D3564:  CMP             R0, #0
1D3568:  BEQ             def_1CF154; jumptable 001CF154 default case
1D356C:  MOV             R0, #0
1D3570:  CMP             R7, #0
1D3574:  BEQ             loc_1D35C4
1D3578:  LDR             R5, [SP,#0x548+dest]
1D357C:  MOV             R1, R7
1D3580:  LDR             R4, [SP,#0x548+src]
1D3584:  MOV             R2, R5
1D3588:  MOV             R3, R4
1D358C:  LDRH            R7, [R3],#2
1D3590:  SUBS            R1, R1, #1
1D3594:  MOV             R6, R7,LSR#8
1D3598:  MOV             R7, R7,LSL#8
1D359C:  STRB            R6, [R2,#2]
1D35A0:  STRH            R7, [R2]
1D35A4:  ADD             R2, R2, #3
1D35A8:  BNE             loc_1D358C
1D35AC:  LDR             R7, [SP,#0x548+var_530]
1D35B0:  ADD             R1, R7, R7,LSL#1
1D35B4:  ADD             R4, R4, R7,LSL#1
1D35B8:  STR             R4, [SP,#0x548+src]
1D35BC:  ADD             R5, R5, R1
1D35C0:  STR             R5, [SP,#0x548+dest]
1D35C4:  LDR             R1, [SP,#0x548+var_528]
1D35C8:  ADD             R0, R0, #1
1D35CC:  CMP             R0, R1
1D35D0:  BNE             loc_1D3570
1D35D4:  B               def_1CF154; jumptable 001CF154 default case
1D35D8:  DCD unk_C48B0 - 0x1D25E8
1D35DC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5124
1D35E0:  CMP             R0, #0
1D35E4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D35E8:  MOV             R0, #0
1D35EC:  MOV             R1, #0x80
1D35F0:  CMP             R7, #0
1D35F4:  BEQ             loc_1D3644
1D35F8:  LDR             R12, [SP,#0x548+dest]
1D35FC:  MOV             R2, R7
1D3600:  LDR             R4, [SP,#0x548+src]
1D3604:  MOV             R3, R12
1D3608:  MOV             R7, R4
1D360C:  LDR             R6, [R7],#4
1D3610:  SUBS            R2, R2, #1
1D3614:  EOR             R5, R1, R6,LSR#24
1D3618:  MOV             R6, R6,LSR#8
1D361C:  STRB            R5, [R3,#2]
1D3620:  STRH            R6, [R3]
1D3624:  ADD             R3, R3, #3
1D3628:  BNE             loc_1D360C
1D362C:  LDR             R7, [SP,#0x548+var_530]
1D3630:  ADD             R2, R7, R7,LSL#1
1D3634:  ADD             R4, R4, R7,LSL#2
1D3638:  STR             R4, [SP,#0x548+src]
1D363C:  ADD             R12, R12, R2
1D3640:  STR             R12, [SP,#0x548+dest]
1D3644:  LDR             R2, [SP,#0x548+var_528]
1D3648:  ADD             R0, R0, #1
1D364C:  CMP             R0, R2
1D3650:  BNE             loc_1D35F0
1D3654:  B               def_1CF154; jumptable 001CF154 default case
1D3658:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5125
1D365C:  CMP             R0, #0
1D3660:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3664:  MOV             R0, #0
1D3668:  CMP             R7, #0
1D366C:  BEQ             loc_1D36BC
1D3670:  LDR             R5, [SP,#0x548+dest]
1D3674:  MOV             R1, R7
1D3678:  LDR             R4, [SP,#0x548+src]
1D367C:  MOV             R2, R5
1D3680:  MOV             R3, R4
1D3684:  LDR             R7, [R3],#4
1D3688:  SUBS            R1, R1, #1
1D368C:  MOV             R6, R7,LSR#24
1D3690:  MOV             R7, R7,LSR#8
1D3694:  STRB            R6, [R2,#2]
1D3698:  STRH            R7, [R2]
1D369C:  ADD             R2, R2, #3
1D36A0:  BNE             loc_1D3684
1D36A4:  LDR             R7, [SP,#0x548+var_530]
1D36A8:  ADD             R1, R7, R7,LSL#1
1D36AC:  ADD             R4, R4, R7,LSL#2
1D36B0:  STR             R4, [SP,#0x548+src]
1D36B4:  ADD             R5, R5, R1
1D36B8:  STR             R5, [SP,#0x548+dest]
1D36BC:  LDR             R1, [SP,#0x548+var_528]
1D36C0:  ADD             R0, R0, #1
1D36C4:  CMP             R0, R1
1D36C8:  BNE             loc_1D3668
1D36CC:  B               def_1CF154; jumptable 001CF154 default case
1D36D0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5126
1D36D4:  CMP             R0, #0
1D36D8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D36DC:  VMOV.F32        S0, #1.0
1D36E0:  VLDR            D2, =2.14748365e9
1D36E4:  VMOV.F32        S2, #-1.0
1D36E8:  MOV             R0, #0
1D36EC:  MOV             R12, #0x800000
1D36F0:  CMP             R7, #0
1D36F4:  BEQ             loc_1D377C
1D36F8:  LDR             R1, [SP,#0x548+dest]
1D36FC:  MOV             R2, R7
1D3700:  LDR             R3, [SP,#0x548+src]
1D3704:  MOV             R7, R1
1D3708:  VLDR            S6, [R3]
1D370C:  MOV             R5, R7
1D3710:  MOV             R6, #0xFFFFFF
1D3714:  VCMPE.F32       S6, S0
1D3718:  VMRS            APSR_nzcv, FPSCR
1D371C:  BGT             loc_1D3744
1D3720:  VCMPE.F32       S6, S2
1D3724:  MOV             R6, #0
1D3728:  VMRS            APSR_nzcv, FPSCR
1D372C:  BLT             loc_1D3744
1D3730:  VCVT.F64.F32    D3, S6
1D3734:  VMUL.F64        D3, D3, D2
1D3738:  VCVT.S32.F64    S6, D3
1D373C:  VMOV            R7, S6
1D3740:  EOR             R6, R12, R7,LSR#8
1D3744:  ADD             R3, R3, #4
1D3748:  ADD             R7, R5, #3
1D374C:  SUBS            R2, R2, #1
1D3750:  STRH            R6, [R5]
1D3754:  MOV             R6, R6,LSR#16
1D3758:  STRB            R6, [R5,#2]
1D375C:  BNE             loc_1D3708
1D3760:  LDR             R7, [SP,#0x548+var_530]
1D3764:  LDR             R2, [SP,#0x548+src]
1D3768:  ADD             R2, R2, R7,LSL#2
1D376C:  STR             R2, [SP,#0x548+src]
1D3770:  ADD             R2, R7, R7,LSL#1
1D3774:  ADD             R1, R1, R2
1D3778:  STR             R1, [SP,#0x548+dest]
1D377C:  LDR             R1, [SP,#0x548+var_528]
1D3780:  ADD             R0, R0, #1
1D3784:  CMP             R0, R1
1D3788:  BNE             loc_1D36F0
1D378C:  B               def_1CF154; jumptable 001CF154 default case
1D3790:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5127
1D3794:  CMP             R0, #0
1D3798:  BEQ             def_1CF154; jumptable 001CF154 default case
1D379C:  VMOV.F64        D0, #1.0
1D37A0:  MOV             R0, #0
1D37A4:  MOV             R12, #0x800000
1D37A8:  VMOV.F64        D1, #-1.0
1D37AC:  VLDR            D2, =2.14748365e9
1D37B0:  CMP             R7, #0
1D37B4:  BEQ             loc_1D3838
1D37B8:  LDR             R1, [SP,#0x548+dest]
1D37BC:  MOV             R2, R7
1D37C0:  LDR             R3, [SP,#0x548+src]
1D37C4:  MOV             R7, R1
1D37C8:  VLDR            D3, [R3]
1D37CC:  MOV             R5, R7
1D37D0:  MOV             R6, #0xFFFFFF
1D37D4:  VCMPE.F64       D3, D0
1D37D8:  VMRS            APSR_nzcv, FPSCR
1D37DC:  BGT             loc_1D3800
1D37E0:  VCMPE.F64       D3, D1
1D37E4:  MOV             R6, #0
1D37E8:  VMRS            APSR_nzcv, FPSCR
1D37EC:  BLT             loc_1D3800
1D37F0:  VMUL.F64        D3, D3, D2
1D37F4:  VCVT.S32.F64    S6, D3
1D37F8:  VMOV            R7, S6
1D37FC:  EOR             R6, R12, R7,LSR#8
1D3800:  ADD             R3, R3, #8
1D3804:  ADD             R7, R5, #3
1D3808:  SUBS            R2, R2, #1
1D380C:  STRH            R6, [R5]
1D3810:  MOV             R6, R6,LSR#16
1D3814:  STRB            R6, [R5,#2]
1D3818:  BNE             loc_1D37C8
1D381C:  LDR             R7, [SP,#0x548+var_530]
1D3820:  LDR             R2, [SP,#0x548+src]
1D3824:  ADD             R2, R2, R7,LSL#3
1D3828:  STR             R2, [SP,#0x548+src]
1D382C:  ADD             R2, R7, R7,LSL#1
1D3830:  ADD             R1, R1, R2
1D3834:  STR             R1, [SP,#0x548+dest]
1D3838:  LDR             R1, [SP,#0x548+var_528]
1D383C:  ADD             R0, R0, #1
1D3840:  CMP             R0, R1
1D3844:  BNE             loc_1D37B0
1D3848:  B               def_1CF154; jumptable 001CF154 default case
1D384C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5128
1D3850:  CMP             R0, #0
1D3854:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3858:  MOV             R0, #0
1D385C:  CMP             R7, #0
1D3860:  BEQ             loc_1D38B4
1D3864:  LDR             R5, [SP,#0x548+dest]
1D3868:  MOV             R1, R7
1D386C:  LDR             R4, [SP,#0x548+src]
1D3870:  MOV             R2, R5
1D3874:  MOV             R3, R4
1D3878:  LDRB            R7, [R3,#2]
1D387C:  SUBS            R1, R1, #1
1D3880:  LDRH            R6, [R3]
1D3884:  ADD             R3, R3, #3
1D3888:  STRH            R6, [R2]
1D388C:  EOR             R7, R7, #0x80
1D3890:  STRB            R7, [R2,#2]
1D3894:  ADD             R2, R2, #3
1D3898:  BNE             loc_1D3878
1D389C:  LDR             R7, [SP,#0x548+var_530]
1D38A0:  ADD             R1, R7, R7,LSL#1
1D38A4:  ADD             R4, R4, R1
1D38A8:  STR             R4, [SP,#0x548+src]
1D38AC:  ADD             R5, R5, R1
1D38B0:  STR             R5, [SP,#0x548+dest]
1D38B4:  LDR             R1, [SP,#0x548+var_528]
1D38B8:  ADD             R0, R0, #1
1D38BC:  CMP             R0, R1
1D38C0:  BNE             loc_1D385C
1D38C4:  B               def_1CF154; jumptable 001CF154 default case
1D38C8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5129
1D38CC:  CMP             R0, #0
1D38D0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D38D4:  MOV             R0, #0
1D38D8:  CMP             R7, #0
1D38DC:  BEQ             loc_1D392C
1D38E0:  LDR             R5, [SP,#0x548+dest]
1D38E4:  MOV             R1, R7
1D38E8:  LDR             R4, [SP,#0x548+src]
1D38EC:  MOV             R2, R5
1D38F0:  MOV             R3, R4
1D38F4:  LDRH            R7, [R3]
1D38F8:  SUBS            R1, R1, #1
1D38FC:  LDRB            R6, [R3,#2]
1D3900:  ADD             R3, R3, #3
1D3904:  STRB            R6, [R2,#2]
1D3908:  STRH            R7, [R2]
1D390C:  ADD             R2, R2, #3
1D3910:  BNE             loc_1D38F4
1D3914:  LDR             R7, [SP,#0x548+var_530]
1D3918:  ADD             R1, R7, R7,LSL#1
1D391C:  ADD             R4, R4, R1
1D3920:  STR             R4, [SP,#0x548+src]
1D3924:  ADD             R5, R5, R1
1D3928:  STR             R5, [SP,#0x548+dest]
1D392C:  LDR             R1, [SP,#0x548+var_528]
1D3930:  ADD             R0, R0, #1
1D3934:  CMP             R0, R1
1D3938:  BNE             loc_1D38D8
1D393C:  B               def_1CF154; jumptable 001CF154 default case
1D3940:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5130
1D3944:  CMP             R0, #0
1D3948:  BEQ             def_1CF154; jumptable 001CF154 default case
1D394C:  LDR             R1, =(unk_C46B0 - 0x1D3960)
1D3950:  MOV             R0, #0
1D3954:  MOV             R2, #0x80
1D3958:  ADD             R1, PC, R1; unk_C46B0
1D395C:  CMP             R7, #0
1D3960:  BEQ             loc_1D39BC
1D3964:  LDR             R4, [SP,#0x548+src]
1D3968:  MOV             R3, R7
1D396C:  LDR             LR, [SP,#0x548+dest]
1D3970:  MOV             R12, R4
1D3974:  MOV             R6, R4
1D3978:  MOV             R7, LR
1D397C:  LDRB            R5, [R6],#1
1D3980:  SUBS            R3, R3, #1
1D3984:  ADD             R5, R1, R5,LSL#1
1D3988:  LDRH            R5, [R5]
1D398C:  EOR             R4, R2, R5,LSR#8
1D3990:  MOV             R5, R5,LSL#8
1D3994:  STRB            R4, [R7,#2]
1D3998:  STRH            R5, [R7]
1D399C:  ADD             R7, R7, #3
1D39A0:  BNE             loc_1D397C
1D39A4:  LDR             R7, [SP,#0x548+var_530]
1D39A8:  ADD             R12, R12, R7
1D39AC:  STR             R12, [SP,#0x548+src]
1D39B0:  ADD             R3, R7, R7,LSL#1
1D39B4:  ADD             LR, LR, R3
1D39B8:  STR             LR, [SP,#0x548+dest]
1D39BC:  LDR             R3, [SP,#0x548+var_528]
1D39C0:  ADD             R0, R0, #1
1D39C4:  CMP             R0, R3
1D39C8:  BNE             loc_1D395C
1D39CC:  B               def_1CF154; jumptable 001CF154 default case
1D39D0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5131
1D39D4:  CMP             R0, #0
1D39D8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D39DC:  LDR             R1, =(unk_C48B0 - 0x1D39F0)
1D39E0:  MOV             R0, #0
1D39E4:  MOV             R2, #0x80
1D39E8:  ADD             R1, PC, R1; unk_C48B0
1D39EC:  CMP             R7, #0
1D39F0:  BEQ             loc_1D3A4C
1D39F4:  LDR             R4, [SP,#0x548+src]
1D39F8:  MOV             R3, R7
1D39FC:  LDR             LR, [SP,#0x548+dest]
1D3A00:  MOV             R12, R4
1D3A04:  MOV             R6, R4
1D3A08:  MOV             R7, LR
1D3A0C:  LDRB            R5, [R6],#1
1D3A10:  SUBS            R3, R3, #1
1D3A14:  ADD             R5, R1, R5,LSL#1
1D3A18:  LDRH            R5, [R5]
1D3A1C:  EOR             R4, R2, R5,LSR#8
1D3A20:  MOV             R5, R5,LSL#8
1D3A24:  STRB            R4, [R7,#2]
1D3A28:  STRH            R5, [R7]
1D3A2C:  ADD             R7, R7, #3
1D3A30:  BNE             loc_1D3A0C
1D3A34:  LDR             R7, [SP,#0x548+var_530]
1D3A38:  ADD             R12, R12, R7
1D3A3C:  STR             R12, [SP,#0x548+src]
1D3A40:  ADD             R3, R7, R7,LSL#1
1D3A44:  ADD             LR, LR, R3
1D3A48:  STR             LR, [SP,#0x548+dest]
1D3A4C:  LDR             R3, [SP,#0x548+var_528]
1D3A50:  ADD             R0, R0, #1
1D3A54:  CMP             R0, R3
1D3A58:  BNE             loc_1D39EC
1D3A5C:  B               def_1CF154; jumptable 001CF154 default case
1D3A60:  DCFD 2.14748365e9
1D3A68:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF854 case 5132
1D3A6C:  LDR             R1, [SP,#0x548+src]
1D3A70:  CMP             R0, #0
1D3A74:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3A78:  LDR             R0, [SP,#0x548+var_530]
1D3A7C:  MOV             R8, #0
1D3A80:  ADD             R6, SP, #0x548+var_522
1D3A84:  MOV             R7, #0x80
1D3A88:  MOV             R10, R0,LSL#1
1D3A8C:  ADD             R0, R0, R0,LSL#3
1D3A90:  MOV             R0, R0,LSL#2
1D3A94:  STR             R0, [SP,#0x548+var_538]
1D3A98:  LDR             R2, [SP,#0x548+var_528]
1D3A9C:  MOV             R0, R6
1D3AA0:  MOV             R4, R1
1D3AA4:  MOV             R5, R2
1D3AA8:  LDR             R2, [SP,#0x548+var_530]
1D3AAC:  BL              sub_1D6750
1D3AB0:  CMP             R8, R5
1D3AB4:  BCS             loc_1D3B34
1D3AB8:  LDR             LR, [SP,#0x548+dest]
1D3ABC:  MOV             R0, #0
1D3AC0:  MOV             R9, R6
1D3AC4:  MOV             R1, R4
1D3AC8:  LDR             R2, [SP,#0x548+var_530]
1D3ACC:  CMP             R2, #0
1D3AD0:  BEQ             loc_1D3B10
1D3AD4:  MOV             R12, R1
1D3AD8:  MOV             R3, R9
1D3ADC:  MOV             R5, LR
1D3AE0:  LDRH            R4, [R3],#2
1D3AE4:  SUBS            R2, R2, #1
1D3AE8:  EOR             R6, R7, R4,LSR#8
1D3AEC:  STRB            R6, [R5,#2]
1D3AF0:  MOV             R6, R4,LSL#8
1D3AF4:  STRH            R6, [R5]
1D3AF8:  ADD             R5, R5, #3
1D3AFC:  BNE             loc_1D3AE0
1D3B00:  LDR             R2, [SP,#0x548+var_530]
1D3B04:  MOV             R1, R12
1D3B08:  ADD             R2, R2, R2,LSL#1
1D3B0C:  ADD             LR, LR, R2
1D3B10:  ADD             R0, R0, #1
1D3B14:  ADD             R8, R8, #1
1D3B18:  CMP             R0, #0x40 ; '@'
1D3B1C:  BHI             loc_1D3B3C
1D3B20:  LDR             R2, [SP,#0x548+var_528]
1D3B24:  ADD             R9, R9, R10
1D3B28:  CMP             R8, R2
1D3B2C:  BCC             loc_1D3AC8
1D3B30:  B               loc_1D3B3C
1D3B34:  LDR             LR, [SP,#0x548+dest]
1D3B38:  MOV             R1, R4
1D3B3C:  STR             LR, [SP,#0x548+dest]
1D3B40:  ADD             R6, SP, #0x548+var_522
1D3B44:  LDR             R0, [SP,#0x548+var_538]
1D3B48:  ADD             R1, R1, R0
1D3B4C:  LDR             R0, [SP,#0x548+var_528]
1D3B50:  CMP             R8, R0
1D3B54:  BCC             loc_1D3A98
1D3B58:  B               def_1CF154; jumptable 001CF154 default case
1D3B5C:  DCD unk_C46B0 - 0x1D2BB8
1D3B60:  DCD unk_C48B0 - 0x1D2C40
1D3B64:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5121
1D3B68:  CMP             R0, #0
1D3B6C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3B70:  LDR             R0, =(unk_C4C94 - 0x1D3B88)
1D3B74:  MOV             R1, #0
1D3B78:  MOV             LR, #0x8000
1D3B7C:  MOV             R8, #0x80
1D3B80:  ADD             R5, PC, R0; unk_C4C94
1D3B84:  MOVW            R3, #0x7F7B
1D3B88:  MOV             R9, #0x840000
1D3B8C:  MOV             R10, #0xF
1D3B90:  CMP             R7, #0
1D3B94:  BEQ             loc_1D3C30
1D3B98:  STR             R1, [SP,#0x548+var_538]
1D3B9C:  MOV             R0, R7
1D3BA0:  LDR             R1, [SP,#0x548+dest]
1D3BA4:  LDR             R7, [SP,#0x548+src]
1D3BA8:  LDRB            R2, [R7],#1
1D3BAC:  ADD             R6, LR, R2,LSL#8
1D3BB0:  SXTH            R4, R6
1D3BB4:  AND             R2, R8, R4,LSR#8
1D3BB8:  CMP             R2, #0
1D3BBC:  BEQ             loc_1D3BD4
1D3BC0:  MOV             R6, #0xFFFF8001
1D3BC8:  CMP             R4, R6
1D3BCC:  MOVLE           R4, R6
1D3BD0:  RSB             R6, R4, #0
1D3BD4:  SXTH            R4, R6
1D3BD8:  CMP             R4, R3
1D3BDC:  MOVGE           R4, R3
1D3BE0:  SUBS            R0, R0, #1
1D3BE4:  ADD             R4, R9, R4,LSL#16
1D3BE8:  UBFX            R6, R4, #0x17, #8
1D3BEC:  MOV             R4, R4,ASR#16
1D3BF0:  LDRB            R6, [R5,R6]
1D3BF4:  ADD             R12, R6, #3
1D3BF8:  ORR             R2, R2, R6,LSL#4
1D3BFC:  AND             R4, R10, R4,ASR R12
1D3C00:  ORR             R2, R2, R4
1D3C04:  MVN             R2, R2
1D3C08:  STRB            R2, [R1],#1
1D3C0C:  BNE             loc_1D3BA8
1D3C10:  LDR             R0, [SP,#0x548+dest]
1D3C14:  LDR             R7, [SP,#0x548+var_530]
1D3C18:  ADD             R0, R0, R7
1D3C1C:  STR             R0, [SP,#0x548+dest]
1D3C20:  LDR             R0, [SP,#0x548+src]
1D3C24:  ADD             R0, R0, R7
1D3C28:  STR             R0, [SP,#0x548+src]
1D3C2C:  LDR             R1, [SP,#0x548+var_538]
1D3C30:  LDR             R0, [SP,#0x548+var_528]
1D3C34:  ADD             R1, R1, #1
1D3C38:  CMP             R1, R0
1D3C3C:  BNE             loc_1D3B90
1D3C40:  B               def_1CF154; jumptable 001CF154 default case
1D3C44:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5122
1D3C48:  CMP             R0, #0
1D3C4C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3C50:  LDR             R0, =(unk_C4C94 - 0x1D3C68)
1D3C54:  MOV             R12, #0
1D3C58:  MOV             LR, #0x80
1D3C5C:  MOVW            R10, #0x7F7B
1D3C60:  ADD             R6, PC, R0; unk_C4C94
1D3C64:  MOV             R8, #0x840000
1D3C68:  MOV             R9, #0xF
1D3C6C:  CMP             R7, #0
1D3C70:  BEQ             loc_1D3D04
1D3C74:  LDR             R0, [SP,#0x548+dest]
1D3C78:  MOV             R4, R7
1D3C7C:  LDR             R1, [SP,#0x548+src]
1D3C80:  LDRSH           R3, [R1],#2
1D3C84:  AND             R7, LR, R3,LSR#8
1D3C88:  CMP             R7, #0
1D3C8C:  BNE             loc_1D3C98
1D3C90:  UXTH            R3, R3
1D3C94:  B               loc_1D3CAC
1D3C98:  MOV             R2, #0xFFFF8001
1D3CA0:  CMP             R3, R2
1D3CA4:  MOVLE           R3, R2
1D3CA8:  RSB             R3, R3, #0
1D3CAC:  SXTH            R3, R3
1D3CB0:  CMP             R3, R10
1D3CB4:  MOVGE           R3, R10
1D3CB8:  SUBS            R4, R4, #1
1D3CBC:  ADD             R3, R8, R3,LSL#16
1D3CC0:  UBFX            R5, R3, #0x17, #8
1D3CC4:  MOV             R3, R3,ASR#16
1D3CC8:  LDRB            R5, [R6,R5]
1D3CCC:  ADD             R2, R5, #3
1D3CD0:  AND             R2, R9, R3,ASR R2
1D3CD4:  ORR             R3, R7, R5,LSL#4
1D3CD8:  ORR             R2, R3, R2
1D3CDC:  MVN             R2, R2
1D3CE0:  STRB            R2, [R0],#1
1D3CE4:  BNE             loc_1D3C80
1D3CE8:  LDR             R7, [SP,#0x548+var_530]
1D3CEC:  LDR             R0, [SP,#0x548+dest]
1D3CF0:  ADD             R0, R0, R7
1D3CF4:  STR             R0, [SP,#0x548+dest]
1D3CF8:  LDR             R0, [SP,#0x548+src]
1D3CFC:  ADD             R0, R0, R7,LSL#1
1D3D00:  STR             R0, [SP,#0x548+src]
1D3D04:  LDR             R0, [SP,#0x548+var_528]
1D3D08:  ADD             R12, R12, #1
1D3D0C:  CMP             R12, R0
1D3D10:  BNE             loc_1D3C6C
1D3D14:  B               def_1CF154; jumptable 001CF154 default case
1D3D18:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5123
1D3D1C:  CMP             R0, #0
1D3D20:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3D24:  LDR             R0, =(unk_C4C94 - 0x1D3D3C)
1D3D28:  MOV             R12, #0
1D3D2C:  MOV             LR, #0x80
1D3D30:  MOVW            R10, #0x7F7B
1D3D34:  ADD             R6, PC, R0; unk_C4C94
1D3D38:  MOV             R8, #0x840000
1D3D3C:  MOV             R9, #0xF
1D3D40:  CMP             R7, #0
1D3D44:  BEQ             loc_1D3DD8
1D3D48:  MOV             R4, R7
1D3D4C:  LDR             R0, [SP,#0x548+dest]
1D3D50:  LDR             R7, [SP,#0x548+src]
1D3D54:  LDRH            R1, [R7],#2
1D3D58:  ADD             R3, R1, #0x8000
1D3D5C:  SXTH            R5, R3
1D3D60:  AND             R1, LR, R5,LSR#8
1D3D64:  CMP             R1, #0
1D3D68:  BEQ             loc_1D3D80
1D3D6C:  MOV             R2, #0xFFFF8001
1D3D74:  CMP             R5, R2
1D3D78:  MOVLE           R5, R2
1D3D7C:  RSB             R3, R5, #0
1D3D80:  SXTH            R3, R3
1D3D84:  CMP             R3, R10
1D3D88:  MOVGE           R3, R10
1D3D8C:  SUBS            R4, R4, #1
1D3D90:  ADD             R3, R8, R3,LSL#16
1D3D94:  UBFX            R5, R3, #0x17, #8
1D3D98:  MOV             R3, R3,ASR#16
1D3D9C:  LDRB            R5, [R6,R5]
1D3DA0:  ADD             R2, R5, #3
1D3DA4:  ORR             R1, R1, R5,LSL#4
1D3DA8:  AND             R2, R9, R3,ASR R2
1D3DAC:  ORR             R1, R1, R2
1D3DB0:  MVN             R1, R1
1D3DB4:  STRB            R1, [R0],#1
1D3DB8:  BNE             loc_1D3D54
1D3DBC:  LDR             R7, [SP,#0x548+var_530]
1D3DC0:  LDR             R0, [SP,#0x548+dest]
1D3DC4:  ADD             R0, R0, R7
1D3DC8:  STR             R0, [SP,#0x548+dest]
1D3DCC:  LDR             R0, [SP,#0x548+src]
1D3DD0:  ADD             R0, R0, R7,LSL#1
1D3DD4:  STR             R0, [SP,#0x548+src]
1D3DD8:  LDR             R0, [SP,#0x548+var_528]
1D3DDC:  ADD             R12, R12, #1
1D3DE0:  CMP             R12, R0
1D3DE4:  BNE             loc_1D3D40
1D3DE8:  B               def_1CF154; jumptable 001CF154 default case
1D3DEC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5124
1D3DF0:  CMP             R0, #0
1D3DF4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3DF8:  LDR             R0, =(unk_C4C94 - 0x1D3E10)
1D3DFC:  MOV             R12, #0
1D3E00:  MOV             LR, #0x80
1D3E04:  MOVW            R10, #0x7F7B
1D3E08:  ADD             R6, PC, R0; unk_C4C94
1D3E0C:  MOV             R8, #0x840000
1D3E10:  MOV             R9, #0xF
1D3E14:  CMP             R7, #0
1D3E18:  BEQ             loc_1D3EB0
1D3E1C:  LDR             R0, [SP,#0x548+dest]
1D3E20:  MOV             R4, R7
1D3E24:  LDR             R1, [SP,#0x548+src]
1D3E28:  LDR             R5, [R1],#4
1D3E2C:  MOV             R3, R5,ASR#16
1D3E30:  AND             R7, LR, R3,LSR#8
1D3E34:  CMP             R7, #0
1D3E38:  BNE             loc_1D3E44
1D3E3C:  MOV             R3, R5,LSR#16
1D3E40:  B               loc_1D3E58
1D3E44:  MOV             R2, #0xFFFF8001
1D3E4C:  CMP             R3, R2
1D3E50:  MOVLE           R3, R2
1D3E54:  RSB             R3, R3, #0
1D3E58:  SXTH            R3, R3
1D3E5C:  CMP             R3, R10
1D3E60:  MOVGE           R3, R10
1D3E64:  SUBS            R4, R4, #1
1D3E68:  ADD             R3, R8, R3,LSL#16
1D3E6C:  UBFX            R5, R3, #0x17, #8
1D3E70:  MOV             R3, R3,ASR#16
1D3E74:  LDRB            R5, [R6,R5]
1D3E78:  ADD             R2, R5, #3
1D3E7C:  AND             R2, R9, R3,ASR R2
1D3E80:  ORR             R3, R7, R5,LSL#4
1D3E84:  ORR             R2, R3, R2
1D3E88:  MVN             R2, R2
1D3E8C:  STRB            R2, [R0],#1
1D3E90:  BNE             loc_1D3E28
1D3E94:  LDR             R7, [SP,#0x548+var_530]
1D3E98:  LDR             R0, [SP,#0x548+dest]
1D3E9C:  ADD             R0, R0, R7
1D3EA0:  STR             R0, [SP,#0x548+dest]
1D3EA4:  LDR             R0, [SP,#0x548+src]
1D3EA8:  ADD             R0, R0, R7,LSL#2
1D3EAC:  STR             R0, [SP,#0x548+src]
1D3EB0:  LDR             R0, [SP,#0x548+var_528]
1D3EB4:  ADD             R12, R12, #1
1D3EB8:  CMP             R12, R0
1D3EBC:  BNE             loc_1D3E14
1D3EC0:  B               def_1CF154; jumptable 001CF154 default case
1D3EC4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5125
1D3EC8:  CMP             R0, #0
1D3ECC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3ED0:  LDR             R0, =(unk_C4C94 - 0x1D3EE8)
1D3ED4:  MOV             R12, #0
1D3ED8:  MOV             LR, #0x80
1D3EDC:  MOVW            R10, #0x7F7B
1D3EE0:  ADD             R6, PC, R0; unk_C4C94
1D3EE4:  MOV             R8, #0x840000
1D3EE8:  MOV             R9, #0xF
1D3EEC:  CMP             R7, #0
1D3EF0:  BEQ             loc_1D3F88
1D3EF4:  MOV             R4, R7
1D3EF8:  LDR             R0, [SP,#0x548+dest]
1D3EFC:  LDR             R7, [SP,#0x548+src]
1D3F00:  LDRH            R1, [R7,#2]
1D3F04:  ADD             R3, R1, #0x8000
1D3F08:  SXTH            R5, R3
1D3F0C:  AND             R1, LR, R5,LSR#8
1D3F10:  CMP             R1, #0
1D3F14:  BEQ             loc_1D3F2C
1D3F18:  MOV             R2, #0xFFFF8001
1D3F20:  CMP             R5, R2
1D3F24:  MOVLE           R5, R2
1D3F28:  RSB             R3, R5, #0
1D3F2C:  SXTH            R3, R3
1D3F30:  CMP             R3, R10
1D3F34:  MOVGE           R3, R10
1D3F38:  ADD             R7, R7, #4
1D3F3C:  ADD             R3, R8, R3,LSL#16
1D3F40:  SUBS            R4, R4, #1
1D3F44:  UBFX            R5, R3, #0x17, #8
1D3F48:  MOV             R3, R3,ASR#16
1D3F4C:  LDRB            R5, [R6,R5]
1D3F50:  ADD             R2, R5, #3
1D3F54:  ORR             R1, R1, R5,LSL#4
1D3F58:  AND             R2, R9, R3,ASR R2
1D3F5C:  ORR             R1, R1, R2
1D3F60:  MVN             R1, R1
1D3F64:  STRB            R1, [R0],#1
1D3F68:  BNE             loc_1D3F00
1D3F6C:  LDR             R7, [SP,#0x548+var_530]
1D3F70:  LDR             R0, [SP,#0x548+dest]
1D3F74:  ADD             R0, R0, R7
1D3F78:  STR             R0, [SP,#0x548+dest]
1D3F7C:  LDR             R0, [SP,#0x548+src]
1D3F80:  ADD             R0, R0, R7,LSL#2
1D3F84:  STR             R0, [SP,#0x548+src]
1D3F88:  LDR             R0, [SP,#0x548+var_528]
1D3F8C:  ADD             R12, R12, #1
1D3F90:  CMP             R12, R0
1D3F94:  BNE             loc_1D3EEC
1D3F98:  B               def_1CF154; jumptable 001CF154 default case
1D3F9C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5126
1D3FA0:  CMP             R0, #0
1D3FA4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D3FA8:  VMOV.F32        S0, #1.0
1D3FAC:  LDR             R0, =(unk_C4C94 - 0x1D3FC0)
1D3FB0:  VMOV.F32        S2, #-1.0
1D3FB4:  VLDR            S4, =32767.0
1D3FB8:  ADD             R6, PC, R0; unk_C4C94
1D3FBC:  MOV             R12, #0
1D3FC0:  MOV             LR, #0x80
1D3FC4:  MOVW            R10, #0x7F7B
1D3FC8:  MOV             R8, #0x840000
1D3FCC:  MOV             R9, #0xF
1D3FD0:  CMP             R7, #0
1D3FD4:  BEQ             loc_1D4090
1D3FD8:  LDR             R0, [SP,#0x548+dest]
1D3FDC:  MOV             R4, R7
1D3FE0:  LDR             R1, [SP,#0x548+src]
1D3FE4:  VLDR            S6, [R1]
1D3FE8:  MOVW            R7, #0x7FFF
1D3FEC:  VCMPE.F32       S6, S0
1D3FF0:  VMRS            APSR_nzcv, FPSCR
1D3FF4:  BGT             loc_1D4010
1D3FF8:  VCMPE.F32       S6, S2
1D3FFC:  MOV             R7, #0x8000
1D4000:  VMRS            APSR_nzcv, FPSCR
1D4004:  VMULGE.F32      S6, S6, S4
1D4008:  VCVTGE.S32.F32  S6, S6
1D400C:  VMOVGE          R7, S6
1D4010:  SXTH            R5, R7
1D4014:  AND             R3, LR, R5,LSR#8
1D4018:  CMP             R3, #0
1D401C:  BEQ             loc_1D4034
1D4020:  MOV             R2, #0xFFFF8001
1D4028:  CMP             R5, R2
1D402C:  MOVLE           R5, R2
1D4030:  RSB             R7, R5, #0
1D4034:  SXTH            R5, R7
1D4038:  CMP             R5, R10
1D403C:  MOVGE           R5, R10
1D4040:  ADD             R1, R1, #4
1D4044:  ADD             R5, R8, R5,LSL#16
1D4048:  SUBS            R4, R4, #1
1D404C:  UBFX            R7, R5, #0x17, #8
1D4050:  MOV             R5, R5,ASR#16
1D4054:  LDRB            R7, [R6,R7]
1D4058:  ADD             R2, R7, #3
1D405C:  ORR             R3, R3, R7,LSL#4
1D4060:  AND             R2, R9, R5,ASR R2
1D4064:  ORR             R2, R3, R2
1D4068:  MVN             R2, R2
1D406C:  STRB            R2, [R0],#1
1D4070:  BNE             loc_1D3FE4
1D4074:  LDR             R7, [SP,#0x548+var_530]
1D4078:  LDR             R0, [SP,#0x548+dest]
1D407C:  ADD             R0, R0, R7
1D4080:  STR             R0, [SP,#0x548+dest]
1D4084:  LDR             R0, [SP,#0x548+src]
1D4088:  ADD             R0, R0, R7,LSL#2
1D408C:  STR             R0, [SP,#0x548+src]
1D4090:  LDR             R0, [SP,#0x548+var_528]
1D4094:  ADD             R12, R12, #1
1D4098:  CMP             R12, R0
1D409C:  BNE             loc_1D3FD0
1D40A0:  B               def_1CF154; jumptable 001CF154 default case
1D40A4:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5127
1D40A8:  CMP             R0, #0
1D40AC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D40B0:  LDR             R0, =(unk_C4C94 - 0x1D40C8)
1D40B4:  VMOV.F64        D0, #1.0
1D40B8:  MOV             R12, #0
1D40BC:  MOV             LR, #0x80
1D40C0:  ADD             R6, PC, R0; unk_C4C94
1D40C4:  MOVW            R10, #0x7F7B
1D40C8:  MOV             R8, #0x840000
1D40CC:  MOV             R9, #0xF
1D40D0:  VMOV.F64        D1, #-1.0
1D40D4:  VLDR            D2, =32767.0
1D40D8:  CMP             R7, #0
1D40DC:  BEQ             loc_1D419C
1D40E0:  LDR             R0, [SP,#0x548+dest]
1D40E4:  MOV             R4, R7
1D40E8:  LDR             R1, [SP,#0x548+src]
1D40EC:  VLDR            D3, [R1]
1D40F0:  MOVW            R7, #0x7FFF
1D40F4:  VCMPE.F64       D3, D0
1D40F8:  VMRS            APSR_nzcv, FPSCR
1D40FC:  BGT             loc_1D411C
1D4100:  VCMPE.F64       D3, D1
1D4104:  MOV             R7, #0x8000
1D4108:  VMRS            APSR_nzcv, FPSCR
1D410C:  BLT             loc_1D411C
1D4110:  VMUL.F64        D3, D3, D2
1D4114:  VCVT.S32.F64    S6, D3
1D4118:  VMOV            R7, S6
1D411C:  SXTH            R5, R7
1D4120:  AND             R3, LR, R5,LSR#8
1D4124:  CMP             R3, #0
1D4128:  BEQ             loc_1D4140
1D412C:  MOV             R2, #0xFFFF8001
1D4134:  CMP             R5, R2
1D4138:  MOVLE           R5, R2
1D413C:  RSB             R7, R5, #0
1D4140:  SXTH            R5, R7
1D4144:  CMP             R5, R10
1D4148:  MOVGE           R5, R10
1D414C:  ADD             R1, R1, #8
1D4150:  ADD             R5, R8, R5,LSL#16
1D4154:  SUBS            R4, R4, #1
1D4158:  UBFX            R7, R5, #0x17, #8
1D415C:  MOV             R5, R5,ASR#16
1D4160:  LDRB            R7, [R6,R7]
1D4164:  ADD             R2, R7, #3
1D4168:  ORR             R3, R3, R7,LSL#4
1D416C:  AND             R2, R9, R5,ASR R2
1D4170:  ORR             R2, R3, R2
1D4174:  MVN             R2, R2
1D4178:  STRB            R2, [R0],#1
1D417C:  BNE             loc_1D40EC
1D4180:  LDR             R7, [SP,#0x548+var_530]
1D4184:  LDR             R0, [SP,#0x548+dest]
1D4188:  ADD             R0, R0, R7
1D418C:  STR             R0, [SP,#0x548+dest]
1D4190:  LDR             R0, [SP,#0x548+src]
1D4194:  ADD             R0, R0, R7,LSL#3
1D4198:  STR             R0, [SP,#0x548+src]
1D419C:  LDR             R0, [SP,#0x548+var_528]
1D41A0:  ADD             R12, R12, #1
1D41A4:  CMP             R12, R0
1D41A8:  BNE             loc_1D40D8
1D41AC:  B               def_1CF154; jumptable 001CF154 default case
1D41B0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5128
1D41B4:  CMP             R0, #0
1D41B8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D41BC:  LDR             R0, =(unk_C4C94 - 0x1D41D4)
1D41C0:  MOV             R12, #0
1D41C4:  MOV             LR, #0x80
1D41C8:  MOVW            R10, #0x7F7B
1D41CC:  ADD             R6, PC, R0; unk_C4C94
1D41D0:  MOV             R8, #0x840000
1D41D4:  MOV             R9, #0xF
1D41D8:  CMP             R7, #0
1D41DC:  BEQ             loc_1D4294
1D41E0:  LDR             R0, [SP,#0x548+dest]
1D41E4:  MOV             R4, R7
1D41E8:  LDR             R1, [SP,#0x548+src]
1D41EC:  LDRB            R3, [R1,#2]
1D41F0:  LDRH            R5, [R1]
1D41F4:  ORR             R3, R5, R3,LSL#16
1D41F8:  SBFX            R5, R3, #0x10, #8
1D41FC:  AND             R3, R3, #0xFF00
1D4200:  ORR             R5, R3, R5,LSL#16
1D4204:  MOV             R3, R5,ASR#8
1D4208:  AND             R7, LR, R3,LSR#8
1D420C:  CMP             R7, #0
1D4210:  BNE             loc_1D4220
1D4214:  MOV             R3, R5,LSR#8
1D4218:  B               loc_1D4234
1D421C:  DCD unk_C46B0 - 0x1D328C
1D4220:  MOV             R2, #0xFFFF8001
1D4228:  CMP             R3, R2
1D422C:  MOVLE           R3, R2
1D4230:  RSB             R3, R3, #0
1D4234:  SXTH            R3, R3
1D4238:  CMP             R3, R10
1D423C:  MOVGE           R3, R10
1D4240:  ADD             R1, R1, #3
1D4244:  ADD             R3, R8, R3,LSL#16
1D4248:  SUBS            R4, R4, #1
1D424C:  UBFX            R5, R3, #0x17, #8
1D4250:  MOV             R3, R3,ASR#16
1D4254:  LDRB            R5, [R6,R5]
1D4258:  ADD             R2, R5, #3
1D425C:  AND             R2, R9, R3,ASR R2
1D4260:  ORR             R3, R7, R5,LSL#4
1D4264:  ORR             R2, R3, R2
1D4268:  MVN             R2, R2
1D426C:  STRB            R2, [R0],#1
1D4270:  BNE             loc_1D41EC
1D4274:  LDR             R7, [SP,#0x548+var_530]
1D4278:  LDR             R0, [SP,#0x548+dest]
1D427C:  ADD             R0, R0, R7
1D4280:  STR             R0, [SP,#0x548+dest]
1D4284:  LDR             R1, [SP,#0x548+src]
1D4288:  ADD             R0, R7, R7,LSL#1
1D428C:  ADD             R1, R1, R0
1D4290:  STR             R1, [SP,#0x548+src]
1D4294:  LDR             R0, [SP,#0x548+var_528]
1D4298:  ADD             R12, R12, #1
1D429C:  CMP             R12, R0
1D42A0:  BNE             loc_1D41D8
1D42A4:  B               def_1CF154; jumptable 001CF154 default case
1D42A8:  DCD unk_C48B0 - 0x1D3314
1D42AC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5129
1D42B0:  CMP             R0, #0
1D42B4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D42B8:  LDR             R0, =(unk_C4C94 - 0x1D42D0)
1D42BC:  MOV             R1, #0
1D42C0:  MOV             LR, #0x8000
1D42C4:  MOV             R8, #0x80
1D42C8:  ADD             R5, PC, R0; unk_C4C94
1D42CC:  MOVW            R3, #0x7F7B
1D42D0:  MOV             R9, #0x840000
1D42D4:  MOV             R10, #0xF
1D42D8:  CMP             R7, #0
1D42DC:  BEQ             loc_1D4388
1D42E0:  STR             R1, [SP,#0x548+var_538]
1D42E4:  MOV             R0, R7
1D42E8:  LDR             R1, [SP,#0x548+dest]
1D42EC:  LDR             R2, [SP,#0x548+src]
1D42F0:  LDRB            R4, [R2,#2]
1D42F4:  LDRH            R6, [R2]
1D42F8:  ORR             R4, R6, R4,LSL#16
1D42FC:  ADD             R6, LR, R4,LSR#8
1D4300:  SXTH            R4, R6
1D4304:  AND             R7, R8, R4,LSR#8
1D4308:  CMP             R7, #0
1D430C:  BEQ             loc_1D4324
1D4310:  MOV             R6, #0xFFFF8001
1D4318:  CMP             R4, R6
1D431C:  MOVLE           R4, R6
1D4320:  RSB             R6, R4, #0
1D4324:  SXTH            R4, R6
1D4328:  CMP             R4, R3
1D432C:  MOVGE           R4, R3
1D4330:  ADD             R2, R2, #3
1D4334:  ADD             R4, R9, R4,LSL#16
1D4338:  SUBS            R0, R0, #1
1D433C:  UBFX            R6, R4, #0x17, #8
1D4340:  MOV             R4, R4,ASR#16
1D4344:  LDRB            R6, [R5,R6]
1D4348:  ADD             R12, R6, #3
1D434C:  ORR             R7, R7, R6,LSL#4
1D4350:  AND             R4, R10, R4,ASR R12
1D4354:  ORR             R7, R7, R4
1D4358:  MVN             R7, R7
1D435C:  STRB            R7, [R1],#1
1D4360:  BNE             loc_1D42F0
1D4364:  LDR             R0, [SP,#0x548+dest]
1D4368:  LDR             R7, [SP,#0x548+var_530]
1D436C:  ADD             R0, R0, R7
1D4370:  STR             R0, [SP,#0x548+dest]
1D4374:  LDR             R1, [SP,#0x548+src]
1D4378:  ADD             R0, R7, R7,LSL#1
1D437C:  ADD             R1, R1, R0
1D4380:  STR             R1, [SP,#0x548+src]
1D4384:  LDR             R1, [SP,#0x548+var_538]
1D4388:  LDR             R0, [SP,#0x548+var_528]
1D438C:  ADD             R1, R1, #1
1D4390:  CMP             R1, R0
1D4394:  BNE             loc_1D42D8
1D4398:  B               def_1CF154; jumptable 001CF154 default case
1D439C:  DCFS 32767.0
1D43A0:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5130
1D43A4:  CMP             R0, #0
1D43A8:  BEQ             def_1CF154; jumptable 001CF154 default case
1D43AC:  MOV             R0, #0
1D43B0:  CMP             R7, #0
1D43B4:  BEQ             loc_1D43F0
1D43B8:  LDR             R6, [SP,#0x548+dest]
1D43BC:  MOV             R1, R7
1D43C0:  LDR             R5, [SP,#0x548+src]
1D43C4:  MOV             R2, R6
1D43C8:  MOV             R3, R5
1D43CC:  LDRB            R7, [R3],#1
1D43D0:  SUBS            R1, R1, #1
1D43D4:  STRB            R7, [R2],#1
1D43D8:  BNE             loc_1D43CC
1D43DC:  LDR             R7, [SP,#0x548+var_530]
1D43E0:  ADD             R6, R6, R7
1D43E4:  STR             R6, [SP,#0x548+dest]
1D43E8:  ADD             R5, R5, R7
1D43EC:  STR             R5, [SP,#0x548+src]
1D43F0:  LDR             R1, [SP,#0x548+var_528]
1D43F4:  ADD             R0, R0, #1
1D43F8:  CMP             R0, R1
1D43FC:  BNE             loc_1D43B0
1D4400:  B               def_1CF154; jumptable 001CF154 default case
1D4404:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5131
1D4408:  CMP             R0, #0
1D440C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4410:  LDR             R0, =(unk_C48B0 - 0x1D4428)
1D4414:  MOV             R1, #0
1D4418:  MOV             LR, #0x80
1D441C:  MOVW            R3, #0x7F7B
1D4420:  ADD             R10, PC, R0; unk_C48B0
1D4424:  LDR             R0, =(unk_C4C94 - 0x1D4438)
1D4428:  MOV             R8, #0x840000
1D442C:  MOV             R9, #0xF
1D4430:  ADD             R5, PC, R0; unk_C4C94
1D4434:  CMP             R7, #0
1D4438:  BEQ             loc_1D44E8
1D443C:  STR             R1, [SP,#0x548+var_538]
1D4440:  MOV             R0, R7
1D4444:  LDR             R2, [SP,#0x548+dest]
1D4448:  LDR             R6, [SP,#0x548+src]
1D444C:  LDRB            R4, [R6],#1
1D4450:  ADD             R4, R10, R4,LSL#1
1D4454:  LDRSH           R4, [R4]
1D4458:  AND             R7, LR, R4,LSR#8
1D445C:  CMP             R7, #0
1D4460:  BNE             loc_1D4478
1D4464:  UXTH            R4, R4
1D4468:  B               loc_1D448C
1D446C:  ALIGN 0x10
1D4470:  DCFD 32767.0
1D4478:  MOV             R1, #0xFFFF8001
1D4480:  CMP             R4, R1
1D4484:  MOVLE           R4, R1
1D4488:  RSB             R4, R4, #0
1D448C:  SXTH            R4, R4
1D4490:  CMP             R4, R3
1D4494:  MOVGE           R4, R3
1D4498:  SUBS            R0, R0, #1
1D449C:  ADD             R4, R8, R4,LSL#16
1D44A0:  UBFX            R1, R4, #0x17, #8
1D44A4:  MOV             R4, R4,ASR#16
1D44A8:  LDRB            R1, [R5,R1]
1D44AC:  ADD             R12, R1, #3
1D44B0:  ORR             R1, R7, R1,LSL#4
1D44B4:  AND             R4, R9, R4,ASR R12
1D44B8:  ORR             R1, R1, R4
1D44BC:  MVN             R1, R1
1D44C0:  STRB            R1, [R2],#1
1D44C4:  BNE             loc_1D444C
1D44C8:  LDR             R0, [SP,#0x548+dest]
1D44CC:  LDR             R7, [SP,#0x548+var_530]
1D44D0:  ADD             R0, R0, R7
1D44D4:  STR             R0, [SP,#0x548+dest]
1D44D8:  LDR             R0, [SP,#0x548+src]
1D44DC:  ADD             R0, R0, R7
1D44E0:  STR             R0, [SP,#0x548+src]
1D44E4:  LDR             R1, [SP,#0x548+var_538]
1D44E8:  LDR             R0, [SP,#0x548+var_528]
1D44EC:  ADD             R1, R1, #1
1D44F0:  CMP             R1, R0
1D44F4:  BNE             loc_1D4434
1D44F8:  B               def_1CF154; jumptable 001CF154 default case
1D44FC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CF91C case 5132
1D4500:  LDR             R1, [SP,#0x548+src]
1D4504:  CMP             R0, #0
1D4508:  MOV             R6, R0
1D450C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4510:  MOV             R0, R7,LSL#1
1D4514:  LDR             R3, =(unk_C4C94 - 0x1D4544)
1D4518:  STR             R0, [SP,#0x548+var_540]
1D451C:  ADD             R0, R7, R7,LSL#3
1D4520:  MOV             R2, #0
1D4524:  MOV             R5, #0x80
1D4528:  MOV             R0, R0,LSL#2
1D452C:  MOVW            R4, #0x7F7B
1D4530:  STR             R0, [SP,#0x548+var_544]
1D4534:  ADD             R0, SP, #0x548+var_522
1D4538:  MOV             R8, #0x840000
1D453C:  ADD             R9, PC, R3; unk_C4C94
1D4540:  MOV             R10, #0xF
1D4544:  STR             R2, [SP,#0x548+var_538]
1D4548:  MOV             R2, R7
1D454C:  STR             R1, [SP,#0x548+src]
1D4550:  BL              sub_1D6750
1D4554:  LDR             R2, [SP,#0x548+var_538]
1D4558:  CMP             R2, R6
1D455C:  BCS             loc_1D462C
1D4560:  ADD             R1, SP, #0x548+var_522
1D4564:  MOV             LR, #0
1D4568:  CMP             R7, #0
1D456C:  BEQ             loc_1D4608
1D4570:  STR             R2, [SP,#0x548+var_538]
1D4574:  MOV             R2, R7
1D4578:  STR             R1, [SP,#0x548+var_53C]
1D457C:  MOV             R3, R1
1D4580:  LDR             R7, [SP,#0x548+dest]
1D4584:  LDRSH           R1, [R3]
1D4588:  AND             R6, R5, R1,LSR#8
1D458C:  CMP             R6, #0
1D4590:  BNE             loc_1D459C
1D4594:  UXTH            R1, R1
1D4598:  B               loc_1D45B0
1D459C:  MOV             R0, #0xFFFF8001
1D45A4:  CMP             R1, R0
1D45A8:  MOVLE           R1, R0
1D45AC:  RSB             R1, R1, #0
1D45B0:  SXTH            R1, R1
1D45B4:  CMP             R1, R4
1D45B8:  MOVGE           R1, R4
1D45BC:  SUBS            R2, R2, #1
1D45C0:  ADD             R1, R8, R1,LSL#16
1D45C4:  ADD             R3, R3, #2
1D45C8:  UBFX            R0, R1, #0x17, #8
1D45CC:  MOV             R1, R1,ASR#16
1D45D0:  LDRB            R0, [R9,R0]
1D45D4:  ADD             R12, R0, #3
1D45D8:  ORR             R0, R6, R0,LSL#4
1D45DC:  AND             R1, R10, R1,ASR R12
1D45E0:  ORR             R0, R0, R1
1D45E4:  MVN             R0, R0
1D45E8:  STRB            R0, [R7],#1
1D45EC:  BNE             loc_1D4584
1D45F0:  LDR             R0, [SP,#0x548+dest]
1D45F4:  LDR             R7, [SP,#0x548+var_530]
1D45F8:  ADD             R0, R0, R7
1D45FC:  STR             R0, [SP,#0x548+dest]
1D4600:  LDR             R2, [SP,#0x548+var_538]
1D4604:  LDR             R1, [SP,#0x548+var_53C]
1D4608:  ADD             LR, LR, #1
1D460C:  ADD             R2, R2, #1
1D4610:  CMP             LR, #0x40 ; '@'
1D4614:  BHI             loc_1D462C
1D4618:  LDR             R0, [SP,#0x548+var_540]
1D461C:  ADD             R1, R1, R0
1D4620:  LDR             R0, [SP,#0x548+var_528]
1D4624:  CMP             R2, R0
1D4628:  BCC             loc_1D4568
1D462C:  LDR             R1, [SP,#0x548+src]
1D4630:  LDR             R0, [SP,#0x548+var_544]
1D4634:  LDR             R6, [SP,#0x548+var_528]
1D4638:  ADD             R1, R1, R0
1D463C:  ADD             R0, SP, #0x548+var_522
1D4640:  CMP             R2, R6
1D4644:  BCC             loc_1D4544
1D4648:  B               def_1CF154; jumptable 001CF154 default case
1D464C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5121
1D4650:  CMP             R0, #0
1D4654:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4658:  LDR             R0, =(unk_C4D94 - 0x1D4670)
1D465C:  MOV             LR, #0
1D4660:  MOV             R8, #0x8000
1D4664:  MOV             R9, #0x80
1D4668:  ADD             R10, PC, R0; unk_C4D94
1D466C:  MOVW            R3, #0x7F7B
1D4670:  MOV             R12, #0xF
1D4674:  CMP             R7, #0
1D4678:  BEQ             loc_1D4724
1D467C:  LDR             R5, [SP,#0x548+dest]
1D4680:  MOV             R4, R7
1D4684:  LDR             R0, [SP,#0x548+src]
1D4688:  LDRB            R1, [R0],#1
1D468C:  ADD             R1, R8, R1,LSL#8
1D4690:  SXTH            R2, R1
1D4694:  AND             R7, R9, R2,LSR#8
1D4698:  CMP             R7, #0
1D469C:  BEQ             loc_1D46B4
1D46A0:  MOV             R1, #0xFFFF8001
1D46A8:  CMP             R2, R1
1D46AC:  MOVLE           R2, R1
1D46B0:  RSB             R1, R2, #0
1D46B4:  SXTH            R1, R1
1D46B8:  CMP             R1, R3
1D46BC:  EOR             R7, R7, #0x80
1D46C0:  MOVGE           R1, R3
1D46C4:  CMP             R1, #0x100
1D46C8:  BLT             loc_1D46E8
1D46CC:  UBFX            R2, R1, #8, #7
1D46D0:  UXTH            R1, R1
1D46D4:  LDRB            R2, [R10,R2]
1D46D8:  ADD             R6, R2, #3
1D46DC:  MOV             R2, R2,LSL#4
1D46E0:  AND             R1, R12, R1,LSR R6
1D46E4:  B               loc_1D46F0
1D46E8:  MOV             R1, R1,ASR#4
1D46EC:  MOV             R2, #0
1D46F0:  ORR             R1, R2, R1
1D46F4:  ORR             R2, R7, #0x55 ; 'U'
1D46F8:  EOR             R1, R1, R2
1D46FC:  STRB            R1, [R5],#1
1D4700:  SUBS            R4, R4, #1
1D4704:  BNE             loc_1D4688
1D4708:  LDR             R7, [SP,#0x548+var_530]
1D470C:  LDR             R0, [SP,#0x548+dest]
1D4710:  ADD             R0, R0, R7
1D4714:  STR             R0, [SP,#0x548+dest]
1D4718:  LDR             R0, [SP,#0x548+src]
1D471C:  ADD             R0, R0, R7
1D4720:  STR             R0, [SP,#0x548+src]
1D4724:  LDR             R0, [SP,#0x548+var_528]
1D4728:  ADD             LR, LR, #1
1D472C:  CMP             LR, R0
1D4730:  BNE             loc_1D4674
1D4734:  B               def_1CF154; jumptable 001CF154 default case
1D4738:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5122
1D473C:  CMP             R0, #0
1D4740:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4744:  LDR             R0, =(unk_C4D94 - 0x1D475C)
1D4748:  MOV             LR, #0
1D474C:  MOV             R8, #0x80
1D4750:  MOVW            R2, #0x7F7B
1D4754:  ADD             R9, PC, R0; unk_C4D94
1D4758:  MOV             R12, #0xF
1D475C:  CMP             R7, #0
1D4760:  BEQ             loc_1D4810
1D4764:  LDR             R0, [SP,#0x548+src]
1D4768:  MOV             R5, R7
1D476C:  LDR             R4, [SP,#0x548+dest]
1D4770:  MOV             R10, R0
1D4774:  MOV             R6, R0
1D4778:  LDRSH           R0, [R6],#2
1D477C:  AND             R7, R8, R0,LSR#8
1D4780:  CMP             R7, #0
1D4784:  BNE             loc_1D4790
1D4788:  UXTH            R0, R0
1D478C:  B               loc_1D47A4
1D4790:  MOV             R1, #0xFFFF8001
1D4798:  CMP             R0, R1
1D479C:  MOVLE           R0, R1
1D47A0:  RSB             R0, R0, #0
1D47A4:  SXTH            R0, R0
1D47A8:  CMP             R0, R2
1D47AC:  EOR             R7, R7, #0x80
1D47B0:  MOVGE           R0, R2
1D47B4:  CMP             R0, #0x100
1D47B8:  BLT             loc_1D47D8
1D47BC:  UBFX            R1, R0, #8, #7
1D47C0:  UXTH            R0, R0
1D47C4:  LDRB            R1, [R9,R1]
1D47C8:  ADD             R3, R1, #3
1D47CC:  MOV             R1, R1,LSL#4
1D47D0:  AND             R0, R12, R0,LSR R3
1D47D4:  B               loc_1D47E0
1D47D8:  MOV             R0, R0,ASR#4
1D47DC:  MOV             R1, #0
1D47E0:  ORR             R0, R1, R0
1D47E4:  ORR             R1, R7, #0x55 ; 'U'
1D47E8:  EOR             R0, R0, R1
1D47EC:  STRB            R0, [R4],#1
1D47F0:  SUBS            R5, R5, #1
1D47F4:  BNE             loc_1D4778
1D47F8:  LDR             R7, [SP,#0x548+var_530]
1D47FC:  LDR             R0, [SP,#0x548+dest]
1D4800:  ADD             R0, R0, R7
1D4804:  STR             R0, [SP,#0x548+dest]
1D4808:  ADD             R10, R10, R7,LSL#1
1D480C:  STR             R10, [SP,#0x548+src]
1D4810:  LDR             R0, [SP,#0x548+var_528]
1D4814:  ADD             LR, LR, #1
1D4818:  CMP             LR, R0
1D481C:  BNE             loc_1D475C
1D4820:  B               def_1CF154; jumptable 001CF154 default case
1D4824:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5123
1D4828:  CMP             R0, #0
1D482C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4830:  LDR             R0, =(unk_C4D94 - 0x1D4848)
1D4834:  MOV             LR, #0
1D4838:  MOV             R8, #0x80
1D483C:  MOVW            R2, #0x7F7B
1D4840:  ADD             R9, PC, R0; unk_C4D94
1D4844:  MOV             R12, #0xF
1D4848:  CMP             R7, #0
1D484C:  BEQ             loc_1D48FC
1D4850:  LDR             R0, [SP,#0x548+src]
1D4854:  MOV             R5, R7
1D4858:  LDR             R4, [SP,#0x548+dest]
1D485C:  MOV             R10, R0
1D4860:  MOV             R6, R0
1D4864:  LDRH            R0, [R6],#2
1D4868:  ADD             R0, R0, #0x8000
1D486C:  SXTH            R1, R0
1D4870:  AND             R7, R8, R1,LSR#8
1D4874:  CMP             R7, #0
1D4878:  BEQ             loc_1D4890
1D487C:  MOV             R0, #0xFFFF8001
1D4884:  CMP             R1, R0
1D4888:  MOVLE           R1, R0
1D488C:  RSB             R0, R1, #0
1D4890:  SXTH            R0, R0
1D4894:  CMP             R0, R2
1D4898:  EOR             R7, R7, #0x80
1D489C:  MOVGE           R0, R2
1D48A0:  CMP             R0, #0x100
1D48A4:  BLT             loc_1D48C4
1D48A8:  UBFX            R1, R0, #8, #7
1D48AC:  UXTH            R0, R0
1D48B0:  LDRB            R1, [R9,R1]
1D48B4:  ADD             R3, R1, #3
1D48B8:  MOV             R1, R1,LSL#4
1D48BC:  AND             R0, R12, R0,LSR R3
1D48C0:  B               loc_1D48CC
1D48C4:  MOV             R0, R0,ASR#4
1D48C8:  MOV             R1, #0
1D48CC:  ORR             R0, R1, R0
1D48D0:  ORR             R1, R7, #0x55 ; 'U'
1D48D4:  EOR             R0, R0, R1
1D48D8:  STRB            R0, [R4],#1
1D48DC:  SUBS            R5, R5, #1
1D48E0:  BNE             loc_1D4864
1D48E4:  LDR             R7, [SP,#0x548+var_530]
1D48E8:  LDR             R0, [SP,#0x548+dest]
1D48EC:  ADD             R0, R0, R7
1D48F0:  STR             R0, [SP,#0x548+dest]
1D48F4:  ADD             R10, R10, R7,LSL#1
1D48F8:  STR             R10, [SP,#0x548+src]
1D48FC:  LDR             R0, [SP,#0x548+var_528]
1D4900:  ADD             LR, LR, #1
1D4904:  CMP             LR, R0
1D4908:  BNE             loc_1D4848
1D490C:  B               def_1CF154; jumptable 001CF154 default case
1D4910:  DCD unk_C46B0 - 0x1D3960
1D4914:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5124
1D4918:  CMP             R0, #0
1D491C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4920:  LDR             R0, =(unk_C4D94 - 0x1D4938)
1D4924:  MOV             LR, #0
1D4928:  MOV             R8, #0x80
1D492C:  MOVW            R2, #0x7F7B
1D4930:  ADD             R9, PC, R0; unk_C4D94
1D4934:  MOV             R12, #0xF
1D4938:  CMP             R7, #0
1D493C:  BEQ             loc_1D49F4
1D4940:  LDR             R0, [SP,#0x548+src]
1D4944:  MOV             R5, R7
1D4948:  LDR             R4, [SP,#0x548+dest]
1D494C:  MOV             R10, R0
1D4950:  MOV             R6, R0
1D4954:  LDR             R1, [R6],#4
1D4958:  MOV             R0, R1,ASR#16
1D495C:  AND             R7, R8, R0,LSR#8
1D4960:  CMP             R7, #0
1D4964:  BNE             loc_1D4970
1D4968:  MOV             R0, R1,LSR#16
1D496C:  B               loc_1D4984
1D4970:  MOV             R1, #0xFFFF8001
1D4978:  CMP             R0, R1
1D497C:  MOVLE           R0, R1
1D4980:  RSB             R0, R0, #0
1D4984:  SXTH            R0, R0
1D4988:  CMP             R0, R2
1D498C:  EOR             R7, R7, #0x80
1D4990:  MOVGE           R0, R2
1D4994:  CMP             R0, #0x100
1D4998:  BLT             loc_1D49BC
1D499C:  UBFX            R1, R0, #8, #7
1D49A0:  UXTH            R0, R0
1D49A4:  LDRB            R1, [R9,R1]
1D49A8:  ADD             R3, R1, #3
1D49AC:  MOV             R1, R1,LSL#4
1D49B0:  AND             R0, R12, R0,LSR R3
1D49B4:  B               loc_1D49C4
1D49B8:  DCD unk_C48B0 - 0x1D39F0
1D49BC:  MOV             R0, R0,ASR#4
1D49C0:  MOV             R1, #0
1D49C4:  ORR             R0, R1, R0
1D49C8:  ORR             R1, R7, #0x55 ; 'U'
1D49CC:  EOR             R0, R0, R1
1D49D0:  STRB            R0, [R4],#1
1D49D4:  SUBS            R5, R5, #1
1D49D8:  BNE             loc_1D4954
1D49DC:  LDR             R7, [SP,#0x548+var_530]
1D49E0:  LDR             R0, [SP,#0x548+dest]
1D49E4:  ADD             R0, R0, R7
1D49E8:  STR             R0, [SP,#0x548+dest]
1D49EC:  ADD             R10, R10, R7,LSL#2
1D49F0:  STR             R10, [SP,#0x548+src]
1D49F4:  LDR             R0, [SP,#0x548+var_528]
1D49F8:  ADD             LR, LR, #1
1D49FC:  CMP             LR, R0
1D4A00:  BNE             loc_1D4938
1D4A04:  B               def_1CF154; jumptable 001CF154 default case
1D4A08:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5125
1D4A0C:  CMP             R0, #0
1D4A10:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4A14:  LDR             R0, =(unk_C4D94 - 0x1D4A2C)
1D4A18:  MOV             LR, #0
1D4A1C:  MOV             R8, #0x80
1D4A20:  MOVW            R2, #0x7F7B
1D4A24:  ADD             R9, PC, R0; unk_C4D94
1D4A28:  MOV             R12, #0xF
1D4A2C:  CMP             R7, #0
1D4A30:  BEQ             loc_1D4AE4
1D4A34:  LDR             R0, [SP,#0x548+src]
1D4A38:  MOV             R5, R7
1D4A3C:  LDR             R4, [SP,#0x548+dest]
1D4A40:  MOV             R10, R0
1D4A44:  MOV             R6, R0
1D4A48:  LDRH            R0, [R6,#2]
1D4A4C:  ADD             R0, R0, #0x8000
1D4A50:  SXTH            R1, R0
1D4A54:  AND             R7, R8, R1,LSR#8
1D4A58:  CMP             R7, #0
1D4A5C:  BEQ             loc_1D4A74
1D4A60:  MOV             R0, #0xFFFF8001
1D4A68:  CMP             R1, R0
1D4A6C:  MOVLE           R1, R0
1D4A70:  RSB             R0, R1, #0
1D4A74:  SXTH            R0, R0
1D4A78:  CMP             R0, R2
1D4A7C:  EOR             R7, R7, #0x80
1D4A80:  MOVGE           R0, R2
1D4A84:  CMP             R0, #0x100
1D4A88:  BLT             loc_1D4AA8
1D4A8C:  UBFX            R1, R0, #8, #7
1D4A90:  UXTH            R0, R0
1D4A94:  LDRB            R1, [R9,R1]
1D4A98:  ADD             R3, R1, #3
1D4A9C:  MOV             R1, R1,LSL#4
1D4AA0:  AND             R0, R12, R0,LSR R3
1D4AA4:  B               loc_1D4AB0
1D4AA8:  MOV             R0, R0,ASR#4
1D4AAC:  MOV             R1, #0
1D4AB0:  ORR             R0, R1, R0
1D4AB4:  ORR             R1, R7, #0x55 ; 'U'
1D4AB8:  EOR             R0, R0, R1
1D4ABC:  ADD             R6, R6, #4
1D4AC0:  STRB            R0, [R4],#1
1D4AC4:  SUBS            R5, R5, #1
1D4AC8:  BNE             loc_1D4A48
1D4ACC:  LDR             R7, [SP,#0x548+var_530]
1D4AD0:  LDR             R0, [SP,#0x548+dest]
1D4AD4:  ADD             R0, R0, R7
1D4AD8:  STR             R0, [SP,#0x548+dest]
1D4ADC:  ADD             R10, R10, R7,LSL#2
1D4AE0:  STR             R10, [SP,#0x548+src]
1D4AE4:  LDR             R0, [SP,#0x548+var_528]
1D4AE8:  ADD             LR, LR, #1
1D4AEC:  CMP             LR, R0
1D4AF0:  BNE             loc_1D4A2C
1D4AF4:  B               def_1CF154; jumptable 001CF154 default case
1D4AF8:  DCD unk_C4C94 - 0x1D3B88
1D4AFC:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5126
1D4B00:  CMP             R0, #0
1D4B04:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4B08:  VMOV.F32        S0, #1.0
1D4B0C:  LDR             R0, =(unk_C4D94 - 0x1D4B20)
1D4B10:  VMOV.F32        S2, #-1.0
1D4B14:  VLDR            S4, =32767.0
1D4B18:  ADD             R9, PC, R0; unk_C4D94
1D4B1C:  MOV             LR, #0
1D4B20:  MOV             R8, #0x80
1D4B24:  MOVW            R2, #0x7F7B
1D4B28:  MOV             R12, #0xF
1D4B2C:  CMP             R7, #0
1D4B30:  BEQ             loc_1D4C08
1D4B34:  LDR             R0, [SP,#0x548+src]
1D4B38:  MOV             R5, R7
1D4B3C:  LDR             R4, [SP,#0x548+dest]
1D4B40:  MOV             R10, R0
1D4B44:  MOV             R6, R0
1D4B48:  VLDR            S6, [R6]
1D4B4C:  MOVW            R0, #0x7FFF
1D4B50:  VCMPE.F32       S6, S0
1D4B54:  VMRS            APSR_nzcv, FPSCR
1D4B58:  BGT             loc_1D4B74
1D4B5C:  VCMPE.F32       S6, S2
1D4B60:  MOV             R0, #0x8000
1D4B64:  VMRS            APSR_nzcv, FPSCR
1D4B68:  VMULGE.F32      S6, S6, S4
1D4B6C:  VCVTGE.S32.F32  S6, S6
1D4B70:  VMOVGE          R0, S6
1D4B74:  SXTH            R1, R0
1D4B78:  AND             R7, R8, R1,LSR#8
1D4B7C:  CMP             R7, #0
1D4B80:  BEQ             loc_1D4B98
1D4B84:  MOV             R0, #0xFFFF8001
1D4B8C:  CMP             R1, R0
1D4B90:  MOVLE           R1, R0
1D4B94:  RSB             R0, R1, #0
1D4B98:  SXTH            R0, R0
1D4B9C:  CMP             R0, R2
1D4BA0:  EOR             R7, R7, #0x80
1D4BA4:  MOVGE           R0, R2
1D4BA8:  CMP             R0, #0x100
1D4BAC:  BLT             loc_1D4BCC
1D4BB0:  UBFX            R1, R0, #8, #7
1D4BB4:  UXTH            R0, R0
1D4BB8:  LDRB            R1, [R9,R1]
1D4BBC:  ADD             R3, R1, #3
1D4BC0:  MOV             R1, R1,LSL#4
1D4BC4:  AND             R0, R12, R0,LSR R3
1D4BC8:  B               loc_1D4BD4
1D4BCC:  MOV             R0, R0,ASR#4
1D4BD0:  MOV             R1, #0
1D4BD4:  ORR             R0, R1, R0
1D4BD8:  ORR             R1, R7, #0x55 ; 'U'
1D4BDC:  EOR             R0, R0, R1
1D4BE0:  ADD             R6, R6, #4
1D4BE4:  STRB            R0, [R4],#1
1D4BE8:  SUBS            R5, R5, #1
1D4BEC:  BNE             loc_1D4B48
1D4BF0:  LDR             R7, [SP,#0x548+var_530]
1D4BF4:  LDR             R0, [SP,#0x548+dest]
1D4BF8:  ADD             R0, R0, R7
1D4BFC:  STR             R0, [SP,#0x548+dest]
1D4C00:  ADD             R10, R10, R7,LSL#2
1D4C04:  STR             R10, [SP,#0x548+src]
1D4C08:  LDR             R0, [SP,#0x548+var_528]
1D4C0C:  ADD             LR, LR, #1
1D4C10:  CMP             LR, R0
1D4C14:  BNE             loc_1D4B2C
1D4C18:  B               def_1CF154; jumptable 001CF154 default case
1D4C1C:  DCD unk_C4C94 - 0x1D3C68
1D4C20:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5127
1D4C24:  CMP             R0, #0
1D4C28:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4C2C:  LDR             R0, =(unk_C4D94 - 0x1D4C44)
1D4C30:  VMOV.F64        D0, #1.0
1D4C34:  MOV             LR, #0
1D4C38:  MOV             R8, #0x80
1D4C3C:  ADD             R9, PC, R0; unk_C4D94
1D4C40:  MOVW            R2, #0x7F7B
1D4C44:  MOV             R12, #0xF
1D4C48:  VMOV.F64        D1, #-1.0
1D4C4C:  VLDR            D2, =32767.0
1D4C50:  CMP             R7, #0
1D4C54:  BEQ             loc_1D4D34
1D4C58:  LDR             R0, [SP,#0x548+src]
1D4C5C:  MOV             R5, R7
1D4C60:  LDR             R4, [SP,#0x548+dest]
1D4C64:  MOV             R10, R0
1D4C68:  MOV             R6, R0
1D4C6C:  VLDR            D3, [R6]
1D4C70:  MOVW            R0, #0x7FFF
1D4C74:  VCMPE.F64       D3, D0
1D4C78:  VMRS            APSR_nzcv, FPSCR
1D4C7C:  BGT             loc_1D4C9C
1D4C80:  VCMPE.F64       D3, D1
1D4C84:  MOV             R0, #0x8000
1D4C88:  VMRS            APSR_nzcv, FPSCR
1D4C8C:  BLT             loc_1D4C9C
1D4C90:  VMUL.F64        D3, D3, D2
1D4C94:  VCVT.S32.F64    S6, D3
1D4C98:  VMOV            R0, S6
1D4C9C:  SXTH            R1, R0
1D4CA0:  AND             R7, R8, R1,LSR#8
1D4CA4:  CMP             R7, #0
1D4CA8:  BEQ             loc_1D4CC0
1D4CAC:  MOV             R0, #0xFFFF8001
1D4CB4:  CMP             R1, R0
1D4CB8:  MOVLE           R1, R0
1D4CBC:  RSB             R0, R1, #0
1D4CC0:  SXTH            R0, R0
1D4CC4:  CMP             R0, R2
1D4CC8:  EOR             R7, R7, #0x80
1D4CCC:  MOVGE           R0, R2
1D4CD0:  CMP             R0, #0x100
1D4CD4:  BLT             loc_1D4CF8
1D4CD8:  UBFX            R1, R0, #8, #7
1D4CDC:  UXTH            R0, R0
1D4CE0:  LDRB            R1, [R9,R1]
1D4CE4:  ADD             R3, R1, #3
1D4CE8:  MOV             R1, R1,LSL#4
1D4CEC:  AND             R0, R12, R0,LSR R3
1D4CF0:  B               loc_1D4D00
1D4CF4:  DCD unk_C4C94 - 0x1D3D3C
1D4CF8:  MOV             R0, R0,ASR#4
1D4CFC:  MOV             R1, #0
1D4D00:  ORR             R0, R1, R0
1D4D04:  ORR             R1, R7, #0x55 ; 'U'
1D4D08:  EOR             R0, R0, R1
1D4D0C:  ADD             R6, R6, #8
1D4D10:  STRB            R0, [R4],#1
1D4D14:  SUBS            R5, R5, #1
1D4D18:  BNE             loc_1D4C6C
1D4D1C:  LDR             R7, [SP,#0x548+var_530]
1D4D20:  LDR             R0, [SP,#0x548+dest]
1D4D24:  ADD             R0, R0, R7
1D4D28:  STR             R0, [SP,#0x548+dest]
1D4D2C:  ADD             R10, R10, R7,LSL#3
1D4D30:  STR             R10, [SP,#0x548+src]
1D4D34:  LDR             R0, [SP,#0x548+var_528]
1D4D38:  ADD             LR, LR, #1
1D4D3C:  CMP             LR, R0
1D4D40:  BNE             loc_1D4C50
1D4D44:  B               def_1CF154; jumptable 001CF154 default case
1D4D48:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5128
1D4D4C:  CMP             R0, #0
1D4D50:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4D54:  LDR             R0, =(unk_C4D94 - 0x1D4D6C)
1D4D58:  MOV             LR, #0
1D4D5C:  MOV             R8, #0x80
1D4D60:  MOVW            R2, #0x7F7B
1D4D64:  ADD             R9, PC, R0; unk_C4D94
1D4D68:  MOV             R12, #0xF
1D4D6C:  CMP             R7, #0
1D4D70:  BEQ             loc_1D4E44
1D4D74:  LDR             R0, [SP,#0x548+src]
1D4D78:  MOV             R5, R7
1D4D7C:  LDR             R4, [SP,#0x548+dest]
1D4D80:  MOV             R10, R0
1D4D84:  MOV             R6, R0
1D4D88:  LDRB            R0, [R6,#2]
1D4D8C:  LDRH            R1, [R6]
1D4D90:  ORR             R0, R1, R0,LSL#16
1D4D94:  SBFX            R1, R0, #0x10, #8
1D4D98:  AND             R0, R0, #0xFF00
1D4D9C:  ORR             R1, R0, R1,LSL#16
1D4DA0:  MOV             R0, R1,ASR#8
1D4DA4:  AND             R7, R8, R0,LSR#8
1D4DA8:  CMP             R7, #0
1D4DAC:  BNE             loc_1D4DBC
1D4DB0:  MOV             R0, R1,LSR#8
1D4DB4:  B               loc_1D4DD0
1D4DB8:  DCD unk_C4C94 - 0x1D3E10
1D4DBC:  MOV             R1, #0xFFFF8001
1D4DC4:  CMP             R0, R1
1D4DC8:  MOVLE           R0, R1
1D4DCC:  RSB             R0, R0, #0
1D4DD0:  SXTH            R0, R0
1D4DD4:  CMP             R0, R2
1D4DD8:  EOR             R7, R7, #0x80
1D4DDC:  MOVGE           R0, R2
1D4DE0:  CMP             R0, #0x100
1D4DE4:  BLT             loc_1D4E04
1D4DE8:  UBFX            R1, R0, #8, #7
1D4DEC:  UXTH            R0, R0
1D4DF0:  LDRB            R1, [R9,R1]
1D4DF4:  ADD             R3, R1, #3
1D4DF8:  MOV             R1, R1,LSL#4
1D4DFC:  AND             R0, R12, R0,LSR R3
1D4E00:  B               loc_1D4E0C
1D4E04:  MOV             R0, R0,ASR#4
1D4E08:  MOV             R1, #0
1D4E0C:  ORR             R0, R1, R0
1D4E10:  ORR             R1, R7, #0x55 ; 'U'
1D4E14:  EOR             R0, R0, R1
1D4E18:  ADD             R6, R6, #3
1D4E1C:  STRB            R0, [R4],#1
1D4E20:  SUBS            R5, R5, #1
1D4E24:  BNE             loc_1D4D88
1D4E28:  LDR             R7, [SP,#0x548+var_530]
1D4E2C:  LDR             R0, [SP,#0x548+dest]
1D4E30:  ADD             R0, R0, R7
1D4E34:  STR             R0, [SP,#0x548+dest]
1D4E38:  ADD             R0, R7, R7,LSL#1
1D4E3C:  ADD             R10, R10, R0
1D4E40:  STR             R10, [SP,#0x548+src]
1D4E44:  LDR             R0, [SP,#0x548+var_528]
1D4E48:  ADD             LR, LR, #1
1D4E4C:  CMP             LR, R0
1D4E50:  BNE             loc_1D4D6C
1D4E54:  B               def_1CF154; jumptable 001CF154 default case
1D4E58:  DCD unk_C4C94 - 0x1D3EE8
1D4E5C:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5129
1D4E60:  CMP             R0, #0
1D4E64:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4E68:  LDR             R0, =(unk_C4D94 - 0x1D4E80)
1D4E6C:  MOV             LR, #0
1D4E70:  MOV             R8, #0x8000
1D4E74:  MOV             R9, #0x80
1D4E78:  ADD             R10, PC, R0; unk_C4D94
1D4E7C:  MOVW            R3, #0x7F7B
1D4E80:  MOV             R12, #0xF
1D4E84:  CMP             R7, #0
1D4E88:  BEQ             loc_1D4F48
1D4E8C:  LDR             R5, [SP,#0x548+dest]
1D4E90:  MOV             R4, R7
1D4E94:  LDR             R0, [SP,#0x548+src]
1D4E98:  LDRB            R1, [R0,#2]
1D4E9C:  LDRH            R2, [R0]
1D4EA0:  ORR             R1, R2, R1,LSL#16
1D4EA4:  ADD             R1, R8, R1,LSR#8
1D4EA8:  SXTH            R2, R1
1D4EAC:  AND             R7, R9, R2,LSR#8
1D4EB0:  CMP             R7, #0
1D4EB4:  BEQ             loc_1D4ECC
1D4EB8:  MOV             R1, #0xFFFF8001
1D4EC0:  CMP             R2, R1
1D4EC4:  MOVLE           R2, R1
1D4EC8:  RSB             R1, R2, #0
1D4ECC:  SXTH            R1, R1
1D4ED0:  CMP             R1, R3
1D4ED4:  EOR             R7, R7, #0x80
1D4ED8:  MOVGE           R1, R3
1D4EDC:  CMP             R1, #0x100
1D4EE0:  BLT             loc_1D4F04
1D4EE4:  UBFX            R2, R1, #8, #7
1D4EE8:  UXTH            R1, R1
1D4EEC:  LDRB            R2, [R10,R2]
1D4EF0:  ADD             R6, R2, #3
1D4EF4:  MOV             R2, R2,LSL#4
1D4EF8:  AND             R1, R12, R1,LSR R6
1D4EFC:  B               loc_1D4F0C
1D4F00:  DCFS 32767.0
1D4F04:  MOV             R1, R1,ASR#4
1D4F08:  MOV             R2, #0
1D4F0C:  ORR             R1, R2, R1
1D4F10:  ORR             R2, R7, #0x55 ; 'U'
1D4F14:  EOR             R1, R1, R2
1D4F18:  ADD             R0, R0, #3
1D4F1C:  STRB            R1, [R5],#1
1D4F20:  SUBS            R4, R4, #1
1D4F24:  BNE             loc_1D4E98
1D4F28:  LDR             R7, [SP,#0x548+var_530]
1D4F2C:  LDR             R0, [SP,#0x548+dest]
1D4F30:  ADD             R0, R0, R7
1D4F34:  STR             R0, [SP,#0x548+dest]
1D4F38:  LDR             R1, [SP,#0x548+src]
1D4F3C:  ADD             R0, R7, R7,LSL#1
1D4F40:  ADD             R1, R1, R0
1D4F44:  STR             R1, [SP,#0x548+src]
1D4F48:  LDR             R0, [SP,#0x548+var_528]
1D4F4C:  ADD             LR, LR, #1
1D4F50:  CMP             LR, R0
1D4F54:  BNE             loc_1D4E84
1D4F58:  B               def_1CF154; jumptable 001CF154 default case
1D4F5C:  DCD unk_C4C94 - 0x1D3FC0
1D4F60:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5130
1D4F64:  CMP             R0, #0
1D4F68:  BEQ             def_1CF154; jumptable 001CF154 default case
1D4F6C:  LDR             R0, =(unk_C46B0 - 0x1D4F84)
1D4F70:  MOV             LR, #0
1D4F74:  MOV             R8, #0x80
1D4F78:  MOVW            R3, #0x7F7B
1D4F7C:  ADD             R10, PC, R0; unk_C46B0
1D4F80:  LDR             R0, =(unk_C4D94 - 0x1D4F90)
1D4F84:  MOV             R12, #0xF
1D4F88:  ADD             R9, PC, R0; unk_C4D94
1D4F8C:  CMP             R7, #0
1D4F90:  BEQ             loc_1D504C
1D4F94:  LDR             R5, [SP,#0x548+dest]
1D4F98:  MOV             R4, R7
1D4F9C:  LDR             R0, [SP,#0x548+src]
1D4FA0:  LDRB            R2, [R0],#1
1D4FA4:  ADD             R2, R10, R2,LSL#1
1D4FA8:  LDRSH           R2, [R2]
1D4FAC:  AND             R7, R8, R2,LSR#8
1D4FB0:  CMP             R7, #0
1D4FB4:  BNE             loc_1D4FC0
1D4FB8:  UXTH            R2, R2
1D4FBC:  B               loc_1D4FD4
1D4FC0:  MOV             R1, #0xFFFF8001
1D4FC8:  CMP             R2, R1
1D4FCC:  MOVLE           R2, R1
1D4FD0:  RSB             R2, R2, #0
1D4FD4:  SXTH            R2, R2
1D4FD8:  CMP             R2, R3
1D4FDC:  EOR             R7, R7, #0x80
1D4FE0:  MOVGE           R2, R3
1D4FE4:  CMP             R2, #0x100
1D4FE8:  BLT             loc_1D5010
1D4FEC:  UBFX            R6, R2, #8, #7
1D4FF0:  UXTH            R2, R2
1D4FF4:  LDRB            R6, [R9,R6]
1D4FF8:  ADD             R1, R6, #3
1D4FFC:  MOV             R6, R6,LSL#4
1D5000:  AND             R2, R12, R2,LSR R1
1D5004:  B               loc_1D5018
1D5008:  DCFD 32767.0
1D5010:  MOV             R2, R2,ASR#4
1D5014:  MOV             R6, #0
1D5018:  ORR             R1, R6, R2
1D501C:  ORR             R2, R7, #0x55 ; 'U'
1D5020:  EOR             R1, R1, R2
1D5024:  STRB            R1, [R5],#1
1D5028:  SUBS            R4, R4, #1
1D502C:  BNE             loc_1D4FA0
1D5030:  LDR             R7, [SP,#0x548+var_530]
1D5034:  LDR             R0, [SP,#0x548+dest]
1D5038:  ADD             R0, R0, R7
1D503C:  STR             R0, [SP,#0x548+dest]
1D5040:  LDR             R0, [SP,#0x548+src]
1D5044:  ADD             R0, R0, R7
1D5048:  STR             R0, [SP,#0x548+src]
1D504C:  LDR             R0, [SP,#0x548+var_528]
1D5050:  ADD             LR, LR, #1
1D5054:  CMP             LR, R0
1D5058:  BNE             loc_1D4F8C
1D505C:  B               def_1CF154; jumptable 001CF154 default case
1D5060:  DCD unk_C4C94 - 0x1D40C8
1D5064:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5131
1D5068:  CMP             R0, #0
1D506C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D5070:  MOV             R0, #0
1D5074:  CMP             R7, #0
1D5078:  BEQ             loc_1D50B4
1D507C:  LDR             R6, [SP,#0x548+dest]
1D5080:  MOV             R1, R7
1D5084:  LDR             R5, [SP,#0x548+src]
1D5088:  MOV             R2, R6
1D508C:  MOV             R3, R5
1D5090:  LDRB            R7, [R3],#1
1D5094:  SUBS            R1, R1, #1
1D5098:  STRB            R7, [R2],#1
1D509C:  BNE             loc_1D5090
1D50A0:  LDR             R7, [SP,#0x548+var_530]
1D50A4:  ADD             R6, R6, R7
1D50A8:  STR             R6, [SP,#0x548+dest]
1D50AC:  ADD             R5, R5, R7
1D50B0:  STR             R5, [SP,#0x548+src]
1D50B4:  LDR             R1, [SP,#0x548+var_528]
1D50B8:  ADD             R0, R0, #1
1D50BC:  CMP             R0, R1
1D50C0:  BNE             loc_1D5074
1D50C4:  B               def_1CF154; jumptable 001CF154 default case
1D50C8:  LDR             R0, [SP,#0x548+var_528]; jumptable 001CFA38 case 5132
1D50CC:  LDR             R1, [SP,#0x548+src]
1D50D0:  CMP             R0, #0
1D50D4:  BEQ             def_1CF154; jumptable 001CF154 default case
1D50D8:  MOV             R0, R7,LSL#1
1D50DC:  LDR             R2, =(unk_C4D94 - 0x1D5108)
1D50E0:  STR             R0, [SP,#0x548+var_53C]
1D50E4:  ADD             R0, R7, R7,LSL#3
1D50E8:  MOV             R3, #0
1D50EC:  MOV             R9, #0x80
1D50F0:  MOV             R0, R0,LSL#2
1D50F4:  MOVW            R10, #0x7F7B
1D50F8:  STR             R0, [SP,#0x548+var_540]
1D50FC:  ADD             R0, SP, #0x548+var_522
1D5100:  ADD             R5, PC, R2; unk_C4D94
1D5104:  MOV             R2, R7
1D5108:  MOV             R6, R1
1D510C:  MOV             R8, R0
1D5110:  MOV             R4, R3
1D5114:  BL              sub_1D6750
1D5118:  LDR             R0, [SP,#0x548+var_528]
1D511C:  MOV             R3, R4
1D5120:  CMP             R3, R0
1D5124:  BCS             loc_1D5214
1D5128:  MOV             LR, #0
1D512C:  MOV             R12, R8
1D5130:  STR             R6, [SP,#0x548+src]
1D5134:  CMP             R7, #0
1D5138:  BEQ             loc_1D51F0
1D513C:  STR             R3, [SP,#0x548+var_538]
1D5140:  MOV             R2, R7
1D5144:  LDR             R4, [SP,#0x548+dest]
1D5148:  MOV             R3, R12
1D514C:  LDRSH           R1, [R3]
1D5150:  AND             R7, R9, R1,LSR#8
1D5154:  CMP             R7, #0
1D5158:  BNE             loc_1D5164
1D515C:  UXTH            R1, R1
1D5160:  B               loc_1D5178
1D5164:  MOV             R0, #0xFFFF8001
1D516C:  CMP             R1, R0
1D5170:  MOVLE           R1, R0
1D5174:  RSB             R1, R1, #0
1D5178:  SXTH            R6, R1
1D517C:  CMP             R6, R10
1D5180:  EOR             R7, R7, #0x80
1D5184:  MOVGE           R6, R10
1D5188:  CMP             R6, #0x100
1D518C:  BLT             loc_1D51B4
1D5190:  UBFX            R1, R6, #8, #7
1D5194:  UXTH            R6, R6
1D5198:  MOV             R8, #0xF
1D519C:  LDRB            R1, [R5,R1]
1D51A0:  ADD             R0, R1, #3
1D51A4:  MOV             R1, R1,LSL#4
1D51A8:  AND             R6, R8, R6,LSR R0
1D51AC:  B               loc_1D51BC
1D51B0:  DCD unk_C4C94 - 0x1D41D4
1D51B4:  MOV             R6, R6,ASR#4
1D51B8:  MOV             R1, #0
1D51BC:  ORR             R0, R1, R6
1D51C0:  ORR             R1, R7, #0x55 ; 'U'
1D51C4:  EOR             R0, R0, R1
1D51C8:  STRB            R0, [R4],#1
1D51CC:  SUBS            R2, R2, #1
1D51D0:  ADD             R3, R3, #2
1D51D4:  BNE             loc_1D514C
1D51D8:  LDR             R0, [SP,#0x548+dest]
1D51DC:  LDR             R7, [SP,#0x548+var_530]
1D51E0:  ADD             R0, R0, R7
1D51E4:  STR             R0, [SP,#0x548+dest]
1D51E8:  LDR             R6, [SP,#0x548+src]
1D51EC:  LDR             R3, [SP,#0x548+var_538]
1D51F0:  ADD             LR, LR, #1
1D51F4:  ADD             R3, R3, #1
1D51F8:  CMP             LR, #0x40 ; '@'
1D51FC:  BHI             loc_1D5214
1D5200:  LDR             R0, [SP,#0x548+var_53C]
1D5204:  ADD             R12, R12, R0
1D5208:  LDR             R0, [SP,#0x548+var_528]
1D520C:  CMP             R3, R0
1D5210:  BCC             loc_1D5134
1D5214:  LDR             R0, [SP,#0x548+var_540]
1D5218:  MOV             R1, R6
1D521C:  ADD             R1, R1, R0
1D5220:  LDR             R0, [SP,#0x548+var_528]
1D5224:  CMP             R3, R0
1D5228:  ADD             R0, SP, #0x548+var_522
1D522C:  BCC             loc_1D5104
1D5230:  B               def_1CF154; jumptable 001CF154 default case
1D5234:  DCD unk_C4C94 - 0x1D42D0
1D5238:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5121
1D523C:  MOV             R1, #0x24 ; '$'; n
1D5240:  LDR             R8, [SP,#0x548+src]
1D5244:  BL              sub_22178C
1D5248:  SUB             R0, R11, #-var_90; int
1D524C:  MOV             R1, #0x24 ; '$'; n
1D5250:  BL              sub_22178C
1D5254:  LDR             R0, [SP,#0x548+var_528]
1D5258:  CMP             R0, #0
1D525C:  LDR             R0, [SP,#0x548+dest]
1D5260:  BEQ             def_1CF154; jumptable 001CF154 default case
1D5264:  LDR             R1, [SP,#0x548+var_530]
1D5268:  ADD             R10, SP, #0x548+var_522
1D526C:  MOV             R6, #0
1D5270:  MOV             R7, #0x8000
1D5274:  ADD             R4, R1, R1,LSL#6
1D5278:  ADD             R1, R1, R1,LSL#3
1D527C:  MOV             R9, R1,LSL#2
1D5280:  CMP             R4, #0
1D5284:  BEQ             loc_1D52AC
1D5288:  MOV             R5, R10
1D528C:  MOV             R1, R4
1D5290:  MOV             R2, R8
1D5294:  LDRB            R3, [R2],#1
1D5298:  SUBS            R1, R1, #1
1D529C:  ADD             R3, R7, R3,LSL#8
1D52A0:  STRH            R3, [R5],#2
1D52A4:  BNE             loc_1D5294
1D52A8:  ADD             R8, R8, R4
1D52AC:  LDR             R1, [SP,#0x548+var_530]
1D52B0:  SUB             R2, R11, #-var_68
1D52B4:  SUB             R3, R11, #-var_90
1D52B8:  STR             R1, [SP,#0x548+var_548]
1D52BC:  MOV             R1, R10
1D52C0:  MOV             R5, R0
1D52C4:  BL              sub_1D69D0
1D52C8:  MOV             R0, R5
1D52CC:  LDR             R1, [SP,#0x548+var_528]
1D52D0:  ADD             R6, R6, #0x41 ; 'A'
1D52D4:  ADD             R0, R0, R9
1D52D8:  CMP             R6, R1
1D52DC:  BCC             loc_1D5280
1D52E0:  B               def_1CF154; jumptable 001CF154 default case
1D52E4:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5122
1D52E8:  MOV             R1, #0x24 ; '$'; n
1D52EC:  LDR             R7, [SP,#0x548+src]
1D52F0:  BL              sub_22178C
1D52F4:  SUB             R0, R11, #-var_90; int
1D52F8:  MOV             R1, #0x24 ; '$'; n
1D52FC:  BL              sub_22178C
1D5300:  LDR             R0, [SP,#0x548+var_528]
1D5304:  CMP             R0, #0
1D5308:  LDR             R0, [SP,#0x548+dest]
1D530C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D5310:  LDR             R1, [SP,#0x548+var_530]
1D5314:  ADD             R10, SP, #0x548+var_522
1D5318:  SUB             R9, R11, #-var_90
1D531C:  MOV             R6, #0
1D5320:  ADD             R4, R1, R1,LSL#6
1D5324:  ADD             R1, R1, R1,LSL#3
1D5328:  MOV             R8, R1,LSL#2
1D532C:  CMP             R4, #0
1D5330:  BEQ             loc_1D5354
1D5334:  MOV             R5, R10
1D5338:  MOV             R1, R4
1D533C:  MOV             R2, R7
1D5340:  LDRH            R3, [R2],#2
1D5344:  SUBS            R1, R1, #1
1D5348:  STRH            R3, [R5],#2
1D534C:  BNE             loc_1D5340
1D5350:  ADD             R7, R7, R4,LSL#1
1D5354:  LDR             R1, [SP,#0x548+var_530]
1D5358:  SUB             R2, R11, #-var_68
1D535C:  STR             R1, [SP,#0x548+var_548]
1D5360:  MOV             R1, R10
1D5364:  MOV             R3, R9
1D5368:  MOV             R5, R0
1D536C:  BL              sub_1D69D0
1D5370:  MOV             R0, R5
1D5374:  LDR             R1, [SP,#0x548+var_528]
1D5378:  ADD             R6, R6, #0x41 ; 'A'
1D537C:  ADD             R0, R0, R8
1D5380:  CMP             R6, R1
1D5384:  BCC             loc_1D532C
1D5388:  B               def_1CF154; jumptable 001CF154 default case
1D538C:  DCD unk_C48B0 - 0x1D4428
1D5390:  DCD unk_C4C94 - 0x1D4438
1D5394:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5123
1D5398:  MOV             R1, #0x24 ; '$'; n
1D539C:  LDR             R7, [SP,#0x548+src]
1D53A0:  BL              sub_22178C
1D53A4:  SUB             R0, R11, #-var_90; int
1D53A8:  MOV             R1, #0x24 ; '$'; n
1D53AC:  BL              sub_22178C
1D53B0:  LDR             R0, [SP,#0x548+var_528]
1D53B4:  CMP             R0, #0
1D53B8:  LDR             R0, [SP,#0x548+dest]
1D53BC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D53C0:  LDR             R1, [SP,#0x548+var_530]
1D53C4:  ADD             R10, SP, #0x548+var_522
1D53C8:  SUB             R9, R11, #-var_90
1D53CC:  MOV             R6, #0
1D53D0:  ADD             R4, R1, R1,LSL#6
1D53D4:  ADD             R1, R1, R1,LSL#3
1D53D8:  MOV             R8, R1,LSL#2
1D53DC:  CMP             R4, #0
1D53E0:  BEQ             loc_1D5408
1D53E4:  MOV             R5, R10
1D53E8:  MOV             R1, R4
1D53EC:  MOV             R2, R7
1D53F0:  LDRH            R3, [R2],#2
1D53F4:  SUBS            R1, R1, #1
1D53F8:  ADD             R3, R3, #0x8000
1D53FC:  STRH            R3, [R5],#2
1D5400:  BNE             loc_1D53F0
1D5404:  ADD             R7, R7, R4,LSL#1
1D5408:  LDR             R1, [SP,#0x548+var_530]
1D540C:  SUB             R2, R11, #-var_68
1D5410:  STR             R1, [SP,#0x548+var_548]
1D5414:  MOV             R1, R10
1D5418:  MOV             R3, R9
1D541C:  MOV             R5, R0
1D5420:  BL              sub_1D69D0
1D5424:  MOV             R0, R5
1D5428:  LDR             R1, [SP,#0x548+var_528]
1D542C:  ADD             R6, R6, #0x41 ; 'A'
1D5430:  ADD             R0, R0, R8
1D5434:  CMP             R6, R1
1D5438:  BCC             loc_1D53DC
1D543C:  B               def_1CF154; jumptable 001CF154 default case
1D5440:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5124
1D5444:  MOV             R1, #0x24 ; '$'; n
1D5448:  LDR             R7, [SP,#0x548+src]
1D544C:  BL              sub_22178C
1D5450:  SUB             R0, R11, #-var_90; int
1D5454:  MOV             R1, #0x24 ; '$'; n
1D5458:  BL              sub_22178C
1D545C:  LDR             R0, [SP,#0x548+var_528]
1D5460:  CMP             R0, #0
1D5464:  LDR             R0, [SP,#0x548+dest]
1D5468:  BEQ             def_1CF154; jumptable 001CF154 default case
1D546C:  LDR             R1, [SP,#0x548+var_530]
1D5470:  ADD             R10, SP, #0x548+var_522
1D5474:  SUB             R9, R11, #-var_90
1D5478:  MOV             R6, #0
1D547C:  ADD             R4, R1, R1,LSL#6
1D5480:  ADD             R1, R1, R1,LSL#3
1D5484:  MOV             R8, R1,LSL#2
1D5488:  CMP             R4, #0
1D548C:  BEQ             loc_1D54B4
1D5490:  MOV             R5, R10
1D5494:  MOV             R1, R4
1D5498:  MOV             R2, R7
1D549C:  LDRH            R3, [R2,#2]
1D54A0:  SUBS            R1, R1, #1
1D54A4:  STRH            R3, [R5],#2
1D54A8:  ADD             R2, R2, #4
1D54AC:  BNE             loc_1D549C
1D54B0:  ADD             R7, R7, R4,LSL#2
1D54B4:  LDR             R1, [SP,#0x548+var_530]
1D54B8:  SUB             R2, R11, #-var_68
1D54BC:  STR             R1, [SP,#0x548+var_548]
1D54C0:  MOV             R1, R10
1D54C4:  MOV             R3, R9
1D54C8:  MOV             R5, R0
1D54CC:  BL              sub_1D69D0
1D54D0:  MOV             R0, R5
1D54D4:  LDR             R1, [SP,#0x548+var_528]
1D54D8:  ADD             R6, R6, #0x41 ; 'A'
1D54DC:  ADD             R0, R0, R8
1D54E0:  CMP             R6, R1
1D54E4:  BCC             loc_1D5488
1D54E8:  B               def_1CF154; jumptable 001CF154 default case
1D54EC:  DCD unk_C4C94 - 0x1D4544
1D54F0:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5125
1D54F4:  MOV             R1, #0x24 ; '$'; n
1D54F8:  LDR             R7, [SP,#0x548+src]
1D54FC:  BL              sub_22178C
1D5500:  SUB             R0, R11, #-var_90; int
1D5504:  MOV             R1, #0x24 ; '$'; n
1D5508:  BL              sub_22178C
1D550C:  LDR             R0, [SP,#0x548+var_528]
1D5510:  CMP             R0, #0
1D5514:  LDR             R0, [SP,#0x548+dest]
1D5518:  BEQ             def_1CF154; jumptable 001CF154 default case
1D551C:  LDR             R1, [SP,#0x548+var_530]
1D5520:  ADD             R10, SP, #0x548+var_522
1D5524:  SUB             R9, R11, #-var_90
1D5528:  MOV             R6, #0
1D552C:  ADD             R4, R1, R1,LSL#6
1D5530:  ADD             R1, R1, R1,LSL#3
1D5534:  MOV             R8, R1,LSL#2
1D5538:  CMP             R4, #0
1D553C:  BEQ             loc_1D5568
1D5540:  MOV             R5, R10
1D5544:  MOV             R1, R4
1D5548:  MOV             R2, R7
1D554C:  LDRH            R3, [R2,#2]
1D5550:  SUBS            R1, R1, #1
1D5554:  ADD             R2, R2, #4
1D5558:  ADD             R3, R3, #0x8000
1D555C:  STRH            R3, [R5],#2
1D5560:  BNE             loc_1D554C
1D5564:  ADD             R7, R7, R4,LSL#2
1D5568:  LDR             R1, [SP,#0x548+var_530]
1D556C:  SUB             R2, R11, #-var_68
1D5570:  STR             R1, [SP,#0x548+var_548]
1D5574:  MOV             R1, R10
1D5578:  MOV             R3, R9
1D557C:  MOV             R5, R0
1D5580:  BL              sub_1D69D0
1D5584:  MOV             R0, R5
1D5588:  LDR             R1, [SP,#0x548+var_528]
1D558C:  ADD             R6, R6, #0x41 ; 'A'
1D5590:  ADD             R0, R0, R8
1D5594:  CMP             R6, R1
1D5598:  BCC             loc_1D5538
1D559C:  B               def_1CF154; jumptable 001CF154 default case
1D55A0:  DCD unk_C4D94 - 0x1D4670
1D55A4:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5126
1D55A8:  MOV             R1, #0x24 ; '$'; n
1D55AC:  LDR             R7, [SP,#0x548+src]
1D55B0:  BL              sub_22178C
1D55B4:  SUB             R0, R11, #-var_90; int
1D55B8:  MOV             R1, #0x24 ; '$'; n
1D55BC:  BL              sub_22178C
1D55C0:  LDR             R0, [SP,#0x548+var_528]
1D55C4:  CMP             R0, #0
1D55C8:  LDR             R0, [SP,#0x548+dest]
1D55CC:  BEQ             def_1CF154; jumptable 001CF154 default case
1D55D0:  VMOV.F32        S16, #1.0
1D55D4:  LDR             R1, [SP,#0x548+var_530]
1D55D8:  VMOV.F32        S18, #-1.0
1D55DC:  ADD             R10, SP, #0x548+var_522
1D55E0:  SUB             R9, R11, #-var_90
1D55E4:  VLDR            S20, =32767.0
1D55E8:  ADD             R4, R1, R1,LSL#6
1D55EC:  ADD             R1, R1, R1,LSL#3
1D55F0:  MOV             R6, #0
1D55F4:  MOV             R8, R1,LSL#2
1D55F8:  CMP             R4, #0
1D55FC:  BEQ             loc_1D564C
1D5600:  MOV             R5, R10
1D5604:  MOV             R1, R4
1D5608:  MOV             R2, R7
1D560C:  VLDR            S0, [R2]
1D5610:  MOVW            R3, #0x7FFF
1D5614:  VCMPE.F32       S0, S16
1D5618:  VMRS            APSR_nzcv, FPSCR
1D561C:  BGT             loc_1D5638
1D5620:  VCMPE.F32       S0, S18
1D5624:  MOV             R3, #0x8000
1D5628:  VMRS            APSR_nzcv, FPSCR
1D562C:  VMULGE.F32      S0, S0, S20
1D5630:  VCVTGE.S32.F32  S0, S0
1D5634:  VMOVGE          R3, S0
1D5638:  ADD             R2, R2, #4
1D563C:  STRH            R3, [R5],#2
1D5640:  SUBS            R1, R1, #1
1D5644:  BNE             loc_1D560C
1D5648:  ADD             R7, R7, R4,LSL#2
1D564C:  LDR             R1, [SP,#0x548+var_530]
1D5650:  SUB             R2, R11, #-var_68
1D5654:  STR             R1, [SP,#0x548+var_548]
1D5658:  MOV             R1, R10
1D565C:  MOV             R3, R9
1D5660:  MOV             R5, R0
1D5664:  BL              sub_1D69D0
1D5668:  MOV             R0, R5
1D566C:  LDR             R1, [SP,#0x548+var_528]
1D5670:  ADD             R6, R6, #0x41 ; 'A'
1D5674:  ADD             R0, R0, R8
1D5678:  CMP             R6, R1
1D567C:  BCC             loc_1D55F8
1D5680:  B               def_1CF154; jumptable 001CF154 default case
1D5684:  DCD unk_C4D94 - 0x1D475C
1D5688:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5127
1D568C:  MOV             R1, #0x24 ; '$'; n
1D5690:  LDR             R7, [SP,#0x548+src]
1D5694:  BL              sub_22178C
1D5698:  SUB             R0, R11, #-var_90; int
1D569C:  MOV             R1, #0x24 ; '$'; n
1D56A0:  BL              sub_22178C
1D56A4:  LDR             R0, [SP,#0x548+var_528]
1D56A8:  CMP             R0, #0
1D56AC:  LDR             R0, [SP,#0x548+dest]
1D56B0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D56B4:  LDR             R1, [SP,#0x548+var_530]
1D56B8:  VMOV.F64        D8, #1.0
1D56BC:  ADD             R10, SP, #0x548+var_522
1D56C0:  SUB             R9, R11, #-var_90
1D56C4:  MOV             R6, #0
1D56C8:  ADD             R4, R1, R1,LSL#6
1D56CC:  ADD             R1, R1, R1,LSL#3
1D56D0:  VMOV.F64        D9, #-1.0
1D56D4:  MOV             R8, R1,LSL#2
1D56D8:  VLDR            D10, =32767.0
1D56DC:  CMP             R4, #0
1D56E0:  BEQ             loc_1D5734
1D56E4:  MOV             R5, R10
1D56E8:  MOV             R1, R4
1D56EC:  MOV             R2, R7
1D56F0:  VLDR            D0, [R2]
1D56F4:  MOVW            R3, #0x7FFF
1D56F8:  VCMPE.F64       D0, D8
1D56FC:  VMRS            APSR_nzcv, FPSCR
1D5700:  BGT             loc_1D5720
1D5704:  VCMPE.F64       D0, D9
1D5708:  MOV             R3, #0x8000
1D570C:  VMRS            APSR_nzcv, FPSCR
1D5710:  BLT             loc_1D5720
1D5714:  VMUL.F64        D0, D0, D10
1D5718:  VCVT.S32.F64    S0, D0
1D571C:  VMOV            R3, S0
1D5720:  ADD             R2, R2, #8
1D5724:  STRH            R3, [R5],#2
1D5728:  SUBS            R1, R1, #1
1D572C:  BNE             loc_1D56F0
1D5730:  ADD             R7, R7, R4,LSL#3
1D5734:  LDR             R1, [SP,#0x548+var_530]
1D5738:  SUB             R2, R11, #-var_68
1D573C:  STR             R1, [SP,#0x548+var_548]
1D5740:  MOV             R1, R10
1D5744:  MOV             R3, R9
1D5748:  MOV             R5, R0
1D574C:  BL              sub_1D69D0
1D5750:  MOV             R0, R5
1D5754:  LDR             R1, [SP,#0x548+var_528]
1D5758:  ADD             R6, R6, #0x41 ; 'A'
1D575C:  ADD             R0, R0, R8
1D5760:  CMP             R6, R1
1D5764:  BCC             loc_1D56DC
1D5768:  B               def_1CF154; jumptable 001CF154 default case
1D576C:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5128
1D5770:  MOV             R1, #0x24 ; '$'; n
1D5774:  LDR             R8, [SP,#0x548+src]
1D5778:  BL              sub_22178C
1D577C:  SUB             R0, R11, #-var_90; int
1D5780:  MOV             R1, #0x24 ; '$'; n
1D5784:  BL              sub_22178C
1D5788:  LDR             R0, [SP,#0x548+var_528]
1D578C:  CMP             R0, #0
1D5790:  LDR             R0, [SP,#0x548+dest]
1D5794:  BEQ             def_1CF154; jumptable 001CF154 default case
1D5798:  ADD             R1, R7, R7,LSL#3
1D579C:  ADD             R4, R7, R7,LSL#6
1D57A0:  ADD             R10, SP, #0x548+var_522
1D57A4:  MOV             R6, #0
1D57A8:  MOV             R9, R1,LSL#2
1D57AC:  CMP             R4, #0
1D57B0:  BEQ             loc_1D57EC
1D57B4:  MOV             R5, R10
1D57B8:  MOV             R1, R4
1D57BC:  MOV             R2, R8
1D57C0:  LDRB            R3, [R2,#2]
1D57C4:  SUBS            R1, R1, #1
1D57C8:  LDRH            R7, [R2]
1D57CC:  ADD             R2, R2, #3
1D57D0:  ORR             R3, R7, R3,LSL#16
1D57D4:  MOV             R3, R3,LSR#8
1D57D8:  STRH            R3, [R5],#2
1D57DC:  BNE             loc_1D57C0
1D57E0:  ADD             R1, R4, R4,LSL#1
1D57E4:  LDR             R7, [SP,#0x548+var_530]
1D57E8:  ADD             R8, R8, R1
1D57EC:  SUB             R2, R11, #-var_68
1D57F0:  SUB             R3, R11, #-var_90
1D57F4:  MOV             R1, R10
1D57F8:  STR             R7, [SP,#0x548+var_548]
1D57FC:  MOV             R5, R0
1D5800:  BL              sub_1D69D0
1D5804:  MOV             R0, R5
1D5808:  LDR             R1, [SP,#0x548+var_528]
1D580C:  ADD             R6, R6, #0x41 ; 'A'
1D5810:  ADD             R0, R0, R9
1D5814:  CMP             R6, R1
1D5818:  BCC             loc_1D57AC
1D581C:  B               def_1CF154; jumptable 001CF154 default case
1D5820:  DCD unk_C4D94 - 0x1D4848
1D5824:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5129
1D5828:  MOV             R1, #0x24 ; '$'; n
1D582C:  LDR             R9, [SP,#0x548+src]
1D5830:  BL              sub_22178C
1D5834:  SUB             R0, R11, #-var_90; int
1D5838:  MOV             R1, #0x24 ; '$'; n
1D583C:  BL              sub_22178C
1D5840:  LDR             R0, [SP,#0x548+var_528]
1D5844:  CMP             R0, #0
1D5848:  LDR             R0, [SP,#0x548+dest]
1D584C:  BEQ             def_1CF154; jumptable 001CF154 default case
1D5850:  LDR             R1, [SP,#0x548+var_530]
1D5854:  ADD             R5, SP, #0x548+var_522
1D5858:  MOV             R6, #0
1D585C:  MOV             R7, #0x8000
1D5860:  ADD             R10, R1, R1,LSL#6
1D5864:  ADD             R1, R1, R1,LSL#3
1D5868:  MOV             R8, R1,LSL#2
1D586C:  CMP             R10, #0
1D5870:  BEQ             loc_1D58B0
1D5874:  MOV             R12, R5
1D5878:  MOV             R4, R5
1D587C:  MOV             R1, R10
1D5880:  MOV             R2, R9
1D5884:  LDRB            R3, [R2,#2]
1D5888:  SUBS            R1, R1, #1
1D588C:  LDRH            R5, [R2]
1D5890:  ADD             R2, R2, #3
1D5894:  ORR             R3, R5, R3,LSL#16
1D5898:  ADD             R3, R7, R3,LSR#8
1D589C:  STRH            R3, [R4],#2
1D58A0:  BNE             loc_1D5884
1D58A4:  ADD             R1, R10, R10,LSL#1
1D58A8:  MOV             R5, R12
1D58AC:  ADD             R9, R9, R1
1D58B0:  LDR             R1, [SP,#0x548+var_530]
1D58B4:  SUB             R2, R11, #-var_68
1D58B8:  SUB             R3, R11, #-var_90
1D58BC:  STR             R1, [SP,#0x548+var_548]
1D58C0:  MOV             R1, R5
1D58C4:  MOV             R4, R0
1D58C8:  BL              sub_1D69D0
1D58CC:  MOV             R0, R4
1D58D0:  LDR             R1, [SP,#0x548+var_528]
1D58D4:  ADD             R6, R6, #0x41 ; 'A'
1D58D8:  ADD             R0, R0, R8
1D58DC:  CMP             R6, R1
1D58E0:  BCC             loc_1D586C
1D58E4:  B               def_1CF154; jumptable 001CF154 default case
1D58E8:  DCD unk_C4D94 - 0x1D4938
1D58EC:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5130
1D58F0:  MOV             R1, #0x24 ; '$'; n
1D58F4:  LDR             R8, [SP,#0x548+src]
1D58F8:  BL              sub_22178C
1D58FC:  SUB             R0, R11, #-var_90; int
1D5900:  MOV             R1, #0x24 ; '$'; n
1D5904:  BL              sub_22178C
1D5908:  LDR             R0, [SP,#0x548+var_528]
1D590C:  CMP             R0, #0
1D5910:  LDR             R0, [SP,#0x548+dest]
1D5914:  BEQ             def_1CF154; jumptable 001CF154 default case
1D5918:  LDR             R1, [SP,#0x548+var_530]
1D591C:  ADD             R10, SP, #0x548+var_522
1D5920:  MOV             R6, #0
1D5924:  ADD             R4, R1, R1,LSL#6
1D5928:  ADD             R1, R1, R1,LSL#3
1D592C:  MOV             R9, R1,LSL#2
1D5930:  LDR             R1, =(unk_C46B0 - 0x1D593C)
1D5934:  ADD             R7, PC, R1; unk_C46B0
1D5938:  CMP             R4, #0
1D593C:  BEQ             loc_1D5968
1D5940:  MOV             R5, R10
1D5944:  MOV             R1, R4
1D5948:  MOV             R2, R8
1D594C:  LDRB            R3, [R2],#1
1D5950:  SUBS            R1, R1, #1
1D5954:  ADD             R3, R7, R3,LSL#1
1D5958:  LDRH            R3, [R3]
1D595C:  STRH            R3, [R5],#2
1D5960:  BNE             loc_1D594C
1D5964:  ADD             R8, R8, R4
1D5968:  LDR             R1, [SP,#0x548+var_530]
1D596C:  SUB             R2, R11, #-var_68
1D5970:  SUB             R3, R11, #-var_90
1D5974:  STR             R1, [SP,#0x548+var_548]
1D5978:  MOV             R1, R10
1D597C:  MOV             R5, R0
1D5980:  BL              sub_1D69D0
1D5984:  MOV             R0, R5
1D5988:  LDR             R1, [SP,#0x548+var_528]
1D598C:  ADD             R6, R6, #0x41 ; 'A'
1D5990:  ADD             R0, R0, R9
1D5994:  CMP             R6, R1
1D5998:  BCC             loc_1D5938
1D599C:  B               def_1CF154; jumptable 001CF154 default case
1D59A0:  DCD unk_C4D94 - 0x1D4A2C
1D59A4:  DCFS 32767.0
1D59A8:  SUB             R0, R11, #-var_68; jumptable 001CFB78 case 5131
1D59AC:  MOV             R1, #0x24 ; '$'; n
1D59B0:  LDR             R8, [SP,#0x548+src]
1D59B4:  BL              sub_22178C
1D59B8:  SUB             R0, R11, #-var_90; int
1D59BC:  MOV             R1, #0x24 ; '$'; n
1D59C0:  BL              sub_22178C
1D59C4:  LDR             R0, [SP,#0x548+var_528]
1D59C8:  CMP             R0, #0
1D59CC:  LDR             R0, [SP,#0x548+dest]
1D59D0:  BEQ             def_1CF154; jumptable 001CF154 default case
1D59D4:  LDR             R1, [SP,#0x548+var_530]
1D59D8:  ADD             R10, SP, #0x548+var_522
1D59DC:  MOV             R6, #0
1D59E0:  ADD             R4, R1, R1,LSL#6
1D59E4:  ADD             R1, R1, R1,LSL#3
1D59E8:  MOV             R9, R1,LSL#2
1D59EC:  LDR             R1, =(unk_C48B0 - 0x1D59F8)
1D59F0:  ADD             R7, PC, R1; unk_C48B0
1D59F4:  CMP             R4, #0
1D59F8:  BEQ             loc_1D5A24
1D59FC:  MOV             R5, R10
1D5A00:  MOV             R1, R4
1D5A04:  MOV             R2, R8
1D5A08:  LDRB            R3, [R2],#1
1D5A0C:  SUBS            R1, R1, #1
1D5A10:  ADD             R3, R7, R3,LSL#1
1D5A14:  LDRH            R3, [R3]
1D5A18:  STRH            R3, [R5],#2
1D5A1C:  BNE             loc_1D5A08
1D5A20:  ADD             R8, R8, R4
1D5A24:  LDR             R1, [SP,#0x548+var_530]
1D5A28:  SUB             R2, R11, #-var_68
1D5A2C:  SUB             R3, R11, #-var_90
1D5A30:  STR             R1, [SP,#0x548+var_548]
1D5A34:  MOV             R1, R10
1D5A38:  MOV             R5, R0
1D5A3C:  BL              sub_1D69D0
1D5A40:  MOV             R0, R5
1D5A44:  LDR             R1, [SP,#0x548+var_528]
1D5A48:  ADD             R6, R6, #0x41 ; 'A'
1D5A4C:  ADD             R0, R0, R9
1D5A50:  CMP             R6, R1
1D5A54:  BCC             loc_1D59F4
1D5A58:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D5A68); jumptable 001CF154 default case
1D5A5C:  LDR             R1, [R11,#var_40]
1D5A60:  LDR             R0, [PC,R0]; __stack_chk_guard
1D5A64:  LDR             R0, [R0]
1D5A68:  SUBS            R0, R0, R1
1D5A6C:  SUBEQ           SP, R11, #0x38 ; '8'
1D5A70:  VPOPEQ          {D8-D10}
1D5A74:  ADDEQ           SP, SP, #4
1D5A78:  POPEQ           {R4-R11,PC}
1D5A7C:  BL              __stack_chk_fail
1D5A80:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D5A90); jumptable 001CFB78 case 5132
1D5A84:  LDR             R1, [R11,#var_40]
1D5A88:  LDR             R0, [PC,R0]; __stack_chk_guard
1D5A8C:  LDR             R0, [R0]
1D5A90:  SUBS            R0, R0, R1
1D5A94:  LDR             R1, [SP,#0x548+src]; src
1D5A98:  BNE             loc_1D5A7C
1D5A9C:  LDR             R0, [SP,#0x548+var_528]
1D5AA0:  MUL             R0, R7, R0
1D5AA4:  ADD             R0, R0, R0,LSL#3
1D5AA8:  MOV             R2, R0,LSL#2; n
1D5AAC:  LDR             R0, [SP,#0x548+dest]; dest
1D5AB0:  SUB             SP, R11, #0x38 ; '8'
1D5AB4:  VPOP            {D8-D10}
1D5AB8:  ADD             SP, SP, #4
1D5ABC:  POP             {R4-R11,LR}
1D5AC0:  B               j_memcpy
