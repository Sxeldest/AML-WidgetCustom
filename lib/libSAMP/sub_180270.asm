; =========================================================
; Game Engine Function: sub_180270
; Address            : 0x180270 - 0x1804D8
; =========================================================

180270:  PUSH            {R4-R7,LR}
180272:  ADD             R7, SP, #0xC
180274:  PUSH.W          {R8-R11}
180278:  SUB             SP, SP, #4
18027A:  LDRH.W          R9, [R0,#8]
18027E:  MOV             R4, R0
180280:  CBZ             R1, loc_1802E8
180282:  CMP.W           R9, #0
180286:  BEQ             loc_1802E4
180288:  ADD.W           R0, R9, R9,LSL#5
18028C:  MOV             R10, R2
18028E:  MOV             R8, R1
180290:  MOVS            R6, #0
180292:  LSLS            R5, R0, #6
180294:  LDR.W           R0, [R4,#0x340]
180298:  MOVS            R3, #0
18029A:  ADD             R0, R6
18029C:  LDRD.W          R1, R2, [R0,#4]
1802A0:  MOV             R0, R4
1802A2:  STR.W           R10, [SP,#0x20+var_20]
1802A6:  BL              sub_1804E8
1802AA:  ADD.W           R6, R6, #0x840
1802AE:  CMP             R5, R6
1802B0:  BNE             loc_180294
1802B2:  BL              sub_17E2E4
1802B6:  CMP.W           R9, #0
1802BA:  BEQ             loc_1802E8
1802BC:  MOV             R6, R0
1802BE:  LDR.W           R0, [R4,#0x340]
1802C2:  MOV             R1, R9
1802C4:  LDRB            R2, [R0]
1802C6:  CBNZ            R2, loc_1802D2
1802C8:  ADD.W           R0, R0, #0x840
1802CC:  SUBS            R1, #1
1802CE:  BNE             loc_1802C4
1802D0:  B               loc_1802E8
1802D2:  MOVS            R0, #0xF
1802D4:  BL              sub_186FEC
1802D8:  BL              sub_17E2E4
1802DC:  SUBS            R0, R0, R6
1802DE:  CMP             R0, R8
1802E0:  BCC             loc_1802BE
1802E2:  B               loc_1802E8
1802E4:  BL              sub_17E2E4
1802E8:  LDR.W           R0, [R4,#0x384]
1802EC:  CBZ             R0, loc_18030A
1802EE:  MOVS            R5, #0
1802F0:  LDR.W           R0, [R4,#0x380]
1802F4:  LDR.W           R0, [R0,R5,LSL#2]
1802F8:  LDR             R1, [R0]
1802FA:  LDR             R2, [R1,#0x14]
1802FC:  MOV             R1, R4
1802FE:  BLX             R2
180300:  LDR.W           R0, [R4,#0x384]
180304:  ADDS            R5, #1
180306:  CMP             R5, R0
180308:  BCC             loc_1802F0
18030A:  LDRB            R0, [R4,#4]
18030C:  CBNZ            R0, loc_18031A
18030E:  MOVS            R0, #1
180310:  STRB            R0, [R4,#4]
180312:  B               loc_18031A
180314:  MOVS            R0, #0xF
180316:  BL              sub_186FEC
18031A:  LDRB            R0, [R4,#5]
18031C:  CMP             R0, #0
18031E:  BNE             loc_180314
180320:  LDR             R1, =(aAxl - 0x18032C); "AXL" ...
180322:  MOVS            R0, #4; prio
180324:  LDR             R2, =(a1RakpeedDiscon - 0x18032E); "1. RakPeed::Disconnect - %i" ...
180326:  MOV             R3, R9
180328:  ADD             R1, PC; "AXL"
18032A:  ADD             R2, PC; "1. RakPeed::Disconnect - %i"
18032C:  BLX             __android_log_print
180330:  CMP.W           R9, #0
180334:  BEQ             loc_180370
180336:  LDR             R0, =(aAxl - 0x180344); "AXL" ...
180338:  MOV.W           R8, #0
18033C:  MOVS            R5, #0
18033E:  MOVS            R6, #0
180340:  ADD             R0, PC; "AXL"
180342:  MOV             R10, R0
180344:  LDR             R0, =(a2RakpeedDiscon - 0x18034A); "2. RakPeed::Disconnect - %i" ...
180346:  ADD             R0, PC; "2. RakPeed::Disconnect - %i"
180348:  MOV             R11, R0
18034A:  MOVS            R0, #4; prio
18034C:  MOV             R1, R10; tag
18034E:  MOV             R2, R11; fmt
180350:  MOV             R3, R6
180352:  BLX             __android_log_print
180356:  LDR.W           R0, [R4,#0x340]
18035A:  MOVS            R1, #0
18035C:  ADD             R0, R5
18035E:  STRB.W          R8, [R0],#0x18
180362:  BL              sub_1876AE
180366:  ADDS            R6, #1
180368:  ADD.W           R5, R5, #0x840
18036C:  CMP             R9, R6
18036E:  BNE             loc_18034A
180370:  ADD.W           R0, R4, #0x344
180374:  MOVS            R1, #0
180376:  MOVS            R6, #0
180378:  BL              sub_1848EA
18037C:  LDR.W           R0, [R4,#0x9A8]
180380:  ADDW            R5, R4, #0x9A8
180384:  LDR.W           R1, [R4,#0x9B4]
180388:  STRH            R6, [R4,#8]
18038A:  CMP             R0, R1
18038C:  ITT NE
18038E:  LDRBNE          R1, [R0,#4]
180390:  CMPNE           R1, #0
180392:  BNE             loc_18048C
180394:  MOV             R0, R5
180396:  BL              sub_180590
18039A:  LDR.W           R1, [R4,#0x9C4]
18039E:  LDR.W           R2, [R4,#0x9C8]
1803A2:  LDR.W           R0, [R4,#0x9CC]
1803A6:  CMP             R2, R1
1803A8:  SUB.W           R2, R2, R1
1803AC:  IT CC
1803AE:  NEGCC           R6, R0
1803B0:  CMP             R2, R6
1803B2:  BEQ             loc_1803E8
1803B4:  MOVS            R5, #0
1803B6:  ADDS            R3, R1, R5
1803B8:  LDR.W           R6, [R4,#0x9C0]
1803BC:  LDR             R2, [R4]
1803BE:  CMP             R3, R0
1803C0:  IT CS
1803C2:  SUBCS           R1, R1, R0
1803C4:  ADDS            R0, R5, R1
1803C6:  LDR.W           R1, [R6,R0,LSL#2]
1803CA:  MOV             R0, R4
1803CC:  LDR             R2, [R2,#0x40]
1803CE:  BLX             R2
1803D0:  LDR.W           R1, [R4,#0x9C4]
1803D4:  ADDS            R5, #1
1803D6:  LDR.W           R2, [R4,#0x9C8]
1803DA:  LDR.W           R0, [R4,#0x9CC]
1803DE:  SUBS            R2, R2, R1
1803E0:  IT CC
1803E2:  ADDCC           R2, R0
1803E4:  CMP             R5, R2
1803E6:  BCC             loc_1803B6
1803E8:  CBZ             R0, loc_180408
1803EA:  CMP             R0, #0x21 ; '!'
1803EC:  BCC             loc_1803FE
1803EE:  LDR.W           R0, [R4,#0x9C0]; void *
1803F2:  CBZ             R0, loc_1803F8
1803F4:  BLX             j__ZdaPv; operator delete[](void *)
1803F8:  MOVS            R0, #0
1803FA:  STR.W           R0, [R4,#0x9CC]
1803FE:  MOVS            R0, #0
180400:  STR.W           R0, [R4,#0x9C4]
180404:  STR.W           R0, [R4,#0x9C8]
180408:  LDR.W           R0, [R4,#0x7EC]; fd
18040C:  MOVS            R5, #0
18040E:  STRB.W          R5, [R4,#0x7FD]
180412:  ADDS            R1, R0, #1
180414:  BEQ             loc_180422
180416:  BLX             close
18041A:  MOV.W           R0, #0xFFFFFFFF
18041E:  STR.W           R0, [R4,#0x7EC]
180422:  MOV             R0, R4
180424:  BL              sub_17FE12
180428:  MOV             R0, R4
18042A:  STRD.W          R5, R5, [R4,#0x358]
18042E:  BL              sub_1805DC
180432:  LDR.W           R0, [R4,#0x340]
180436:  STR.W           R5, [R4,#0x340]
18043A:  CBZ             R0, loc_180484
18043C:  LDR.W           R1, [R0,#-4]
180440:  SUB.W           R4, R0, #8
180444:  CBZ             R1, loc_180474
180446:  ADD.W           R1, R1, R1,LSL#5
18044A:  ADD.W           R5, R0, R1,LSL#6
18044E:  NEGS            R0, R1
180450:  LSLS            R6, R0, #6
180452:  SUB.W           R0, R5, #0x10
180456:  BL              sub_17E5E4
18045A:  SUB.W           R0, R5, #0x13C
18045E:  BL              sub_17D542
180462:  SUBW            R0, R5, #0x828
180466:  BL              sub_187574
18046A:  ADDS.W          R6, R6, #0x840
18046E:  SUB.W           R5, R5, #0x840
180472:  BNE             loc_180452
180474:  MOV             R0, R4; void *
180476:  ADD             SP, SP, #4
180478:  POP.W           {R8-R11}
18047C:  POP.W           {R4-R7,LR}
180480:  B.W             _ZdaPvRKSt9nothrow_t_0; operator delete[](void *,std::nothrow_t const&)
180484:  ADD             SP, SP, #4
180486:  POP.W           {R8-R11}
18048A:  POP             {R4-R7,PC}
18048C:  LDR             R1, [R0,#8]
18048E:  CMP             R0, #0
180490:  STR.W           R1, [R4,#0x9A8]
180494:  BEQ.W           loc_180394
180498:  MOV.W           R8, #0
18049C:  LDR             R2, [R4]
18049E:  LDR             R1, [R0]
1804A0:  MOV             R0, R4
1804A2:  LDR             R2, [R2,#0x40]
1804A4:  BLX             R2
1804A6:  ADD.W           R3, R4, #0x9B0
1804AA:  LDR.W           R0, [R4,#0x9A8]
1804AE:  LDM             R3, {R1-R3}
1804B0:  CMP             R0, R2
1804B2:  ADD.W           R3, R3, #1
1804B6:  STRB.W          R8, [R1,#4]
1804BA:  LDR             R1, [R1,#8]
1804BC:  STR.W           R3, [R4,#0x9B8]
1804C0:  STR.W           R1, [R4,#0x9B0]
1804C4:  ITT NE
1804C6:  LDRBNE          R1, [R0,#4]
1804C8:  CMPNE           R1, #0
1804CA:  BEQ.W           loc_180394
1804CE:  LDR             R1, [R0,#8]
1804D0:  CMP             R0, #0
1804D2:  STR             R1, [R5]
1804D4:  BNE             loc_18049C
1804D6:  B               loc_180394
