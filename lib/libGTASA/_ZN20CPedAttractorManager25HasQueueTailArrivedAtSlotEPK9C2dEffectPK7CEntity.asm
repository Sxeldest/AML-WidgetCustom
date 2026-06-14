; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager25HasQueueTailArrivedAtSlotEPK9C2dEffectPK7CEntity
; Address            : 0x4AB2F4 - 0x4AB3AC
; =========================================================

4AB2F4:  PUSH            {R4,R6,R7,LR}
4AB2F6:  ADD             R7, SP, #8
4AB2F8:  CBZ             R1, loc_4AB31A
4AB2FA:  LDRB            R3, [R1,#0xC]
4AB2FC:  CMP             R3, #3
4AB2FE:  BNE             loc_4AB31A
4AB300:  LDRB.W          R3, [R1,#0x34]
4AB304:  CMP             R3, #9; switch 10 cases
4AB306:  BHI             def_4AB308; jumptable 004AB308 default case
4AB308:  TBB.W           [PC,R3]; switch jump
4AB30C:  DCB 5; jump table for switch statement
4AB30D:  DCB 0x18
4AB30E:  DCB 9
4AB30F:  DCB 0xB
4AB310:  DCB 0xD
4AB311:  DCB 0xF
4AB312:  DCB 0x11
4AB313:  DCB 0x13
4AB314:  DCB 0x15
4AB315:  DCB 0x17
4AB316:  ADDS            R0, #0xC; jumptable 004AB308 case 0
4AB318:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB31A:  MOVS            R0, #0
4AB31C:  POP             {R4,R6,R7,PC}
4AB31E:  ADDS            R0, #0x18; jumptable 004AB308 case 2
4AB320:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB322:  ADDS            R0, #0x24 ; '$'; jumptable 004AB308 case 3
4AB324:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB326:  ADDS            R0, #0x30 ; '0'; jumptable 004AB308 case 4
4AB328:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB32A:  ADDS            R0, #0x3C ; '<'; jumptable 004AB308 case 5
4AB32C:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB32E:  ADDS            R0, #0x48 ; 'H'; jumptable 004AB308 case 6
4AB330:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB332:  ADDS            R0, #0x54 ; 'T'; jumptable 004AB308 case 7
4AB334:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB336:  ADDS            R0, #0x60 ; '`'; jumptable 004AB308 case 8
4AB338:  B               loc_4AB33C; jumptable 004AB308 case 1
4AB33A:  ADDS            R0, #0x6C ; 'l'; jumptable 004AB308 case 9
4AB33C:  LDR.W           R12, [R0,#4]; jumptable 004AB308 case 1
4AB340:  CMP.W           R12, #1
4AB344:  BLT             def_4AB308; jumptable 004AB308 default case
4AB346:  LDR.W           LR, [R0,#8]
4AB34A:  MOVS            R4, #0
4AB34C:  LDR.W           R3, [LR,R4,LSL#2]
4AB350:  LDR             R0, [R3,#4]
4AB352:  CMP             R0, R1
4AB354:  ITT EQ
4AB356:  LDREQ           R0, [R3,#8]
4AB358:  CMPEQ           R0, R2
4AB35A:  BEQ             loc_4AB366
4AB35C:  ADDS            R4, #1
4AB35E:  CMP             R4, R12
4AB360:  BLT             loc_4AB34C
4AB362:  MOVS            R0, #1
4AB364:  POP             {R4,R6,R7,PC}
4AB366:  LDR             R0, [R3,#0x1C]
4AB368:  CBZ             R0, def_4AB308; jumptable 004AB308 default case
4AB36A:  SUBS            R4, R0, #1
4AB36C:  LDR             R0, [R3,#0x20]
4AB36E:  LDR.W           R1, [R0,R4,LSL#2]
4AB372:  CBZ             R1, def_4AB308; jumptable 004AB308 default case
4AB374:  LDR.W           R2, [R1,#0x440]
4AB378:  LDR             R3, [R0]
4AB37A:  ADDS            R0, R2, #4; this
4AB37C:  CMP             R1, R3
4AB37E:  BEQ             loc_4AB39E
4AB380:  MOVS            R1, #0xEA; int
4AB382:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4AB386:  MOV             R1, R0
4AB388:  MOVS            R0, #0
4AB38A:  CMP             R1, #0
4AB38C:  IT EQ
4AB38E:  POPEQ           {R4,R6,R7,PC}
4AB390:  LDR             R1, [R1,#0x10]
4AB392:  CMP             R1, R4
4AB394:  IT EQ
4AB396:  MOVEQ           R0, #1
4AB398:  POP             {R4,R6,R7,PC}
4AB39A:  MOVS            R0, #1; jumptable 004AB308 default case
4AB39C:  POP             {R4,R6,R7,PC}
4AB39E:  MOVS            R1, #0xEB; int
4AB3A0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4AB3A4:  CMP             R0, #0
4AB3A6:  IT NE
4AB3A8:  MOVNE           R0, #1
4AB3AA:  POP             {R4,R6,R7,PC}
