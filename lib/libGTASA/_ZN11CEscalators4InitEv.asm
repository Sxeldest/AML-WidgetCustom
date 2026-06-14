; =========================================================
; Game Engine Function: _ZN11CEscalators4InitEv
; Address            : 0x5A62F8 - 0x5A6494
; =========================================================

5A62F8:  PUSH            {R4-R7,LR}
5A62FA:  ADD             R7, SP, #0xC
5A62FC:  PUSH.W          {R8-R11}
5A6300:  SUB             SP, SP, #0x14
5A6302:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A6314)
5A6304:  MOV.W           R12, #0
5A6308:  MOV.W           R1, #0x150
5A630C:  MOV.W           R9, #0
5A6310:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A6312:  LDR             R0, [R0]; CEscalators::aArray ...
5A6314:  ADD.W           R4, R0, #0xA8
5A6318:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A631E)
5A631A:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A631C:  LDR             R0, [R0]; CEscalators::aArray ...
5A631E:  STR             R0, [SP,#0x30+var_28]
5A6320:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A6326)
5A6322:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A6324:  LDR             R0, [R0]; CEscalators::aArray ...
5A6326:  STR             R0, [SP,#0x30+var_2C]
5A6328:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A632E)
5A632A:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A632C:  LDR             R0, [R0]; CEscalators::aArray ...
5A632E:  STR             R0, [SP,#0x30+var_30]
5A6330:  LDR             R0, =(deletingEscalator_ptr - 0x5A6336)
5A6332:  ADD             R0, PC; deletingEscalator_ptr
5A6334:  LDR             R0, [R0]; deletingEscalator
5A6336:  STR             R0, [SP,#0x30+var_20]
5A6338:  LDR             R0, =(deletingEscalator_ptr - 0x5A633E)
5A633A:  ADD             R0, PC; deletingEscalator_ptr
5A633C:  LDR.W           R8, [R0]; deletingEscalator
5A6340:  LDR             R0, [SP,#0x30+var_28]
5A6342:  MLA.W           R2, R9, R1, R0
5A6346:  LDRB.W          R0, [R2,#0x79]!
5A634A:  CBZ             R0, loc_5A63B8
5A634C:  LDR             R0, [SP,#0x30+var_30]
5A634E:  MLA.W           R10, R9, R1, R0
5A6352:  STR             R2, [SP,#0x30+var_24]
5A6354:  LDR.W           R1, [R10,#0x7C]!; CEntity *
5A6358:  MOV             R11, R10
5A635A:  MOV             R6, R10
5A635C:  LDR.W           R2, [R11,#4]!
5A6360:  LDR.W           R3, [R6,#8]!
5A6364:  ADDS            R0, R2, R1
5A6366:  ADD             R0, R3
5A6368:  CMP             R0, #1
5A636A:  BLT             loc_5A63AE
5A636C:  MOVS            R5, #0
5A636E:  LDR.W           R0, [R4,R5,LSL#2]; this
5A6372:  CBZ             R0, loc_5A63A4
5A6374:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5A6378:  LDR             R0, [SP,#0x30+var_20]
5A637A:  MOVS            R1, #1
5A637C:  STRB            R1, [R0]
5A637E:  LDR.W           R0, [R4,R5,LSL#2]
5A6382:  CMP             R0, #0
5A6384:  ITTT NE
5A6386:  LDRNE           R1, [R0]
5A6388:  LDRNE           R1, [R1,#4]
5A638A:  BLXNE           R1
5A638C:  MOVS            R0, #0
5A638E:  MOV.W           R12, #0
5A6392:  STR.W           R0, [R4,R5,LSL#2]
5A6396:  LDR             R3, [R6]
5A6398:  LDR.W           R2, [R11]
5A639C:  LDR.W           R1, [R10]
5A63A0:  STRB.W          R0, [R8]
5A63A4:  ADDS            R0, R2, R3
5A63A6:  ADDS            R5, #1
5A63A8:  ADD             R0, R1
5A63AA:  CMP             R5, R0
5A63AC:  BLT             loc_5A636E
5A63AE:  LDR             R0, [SP,#0x30+var_24]
5A63B0:  MOV.W           R1, #0x150
5A63B4:  STRB.W          R12, [R0]
5A63B8:  LDR             R0, [SP,#0x30+var_2C]
5A63BA:  ADD.W           R4, R4, #0x150
5A63BE:  MLA.W           R0, R9, R1, R0
5A63C2:  ADD.W           R9, R9, #1
5A63C6:  CMP.W           R9, #0x20 ; ' '
5A63CA:  STRB.W          R12, [R0,#0x78]
5A63CE:  BNE             loc_5A6340
5A63D0:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A63E2)
5A63D2:  MOV.W           R12, #0
5A63D6:  MOV.W           R1, #0x150
5A63DA:  MOV.W           R8, #0
5A63DE:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A63E0:  LDR             R0, [R0]; CEscalators::aArray ...
5A63E2:  ADD.W           R4, R0, #0xA8
5A63E6:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A63EC)
5A63E8:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A63EA:  LDR             R0, [R0]; CEscalators::aArray ...
5A63EC:  STR             R0, [SP,#0x30+var_28]
5A63EE:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A63F4)
5A63F0:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A63F2:  LDR             R0, [R0]; CEscalators::aArray ...
5A63F4:  STR             R0, [SP,#0x30+var_2C]
5A63F6:  LDR             R0, =(deletingEscalator_ptr - 0x5A63FC)
5A63F8:  ADD             R0, PC; deletingEscalator_ptr
5A63FA:  LDR             R0, [R0]; deletingEscalator
5A63FC:  STR             R0, [SP,#0x30+var_20]
5A63FE:  LDR             R0, =(deletingEscalator_ptr - 0x5A6404)
5A6400:  ADD             R0, PC; deletingEscalator_ptr
5A6402:  LDR.W           R9, [R0]; deletingEscalator
5A6406:  LDR             R0, [SP,#0x30+var_28]
5A6408:  MLA.W           R2, R8, R1, R0
5A640C:  LDRB.W          R0, [R2,#0x79]!
5A6410:  CBZ             R0, loc_5A647E
5A6412:  LDR             R0, [SP,#0x30+var_2C]
5A6414:  MLA.W           R11, R8, R1, R0
5A6418:  STR             R2, [SP,#0x30+var_24]
5A641A:  LDR.W           R1, [R11,#0x7C]!; CEntity *
5A641E:  MOV             R10, R11
5A6420:  MOV             R5, R11
5A6422:  LDR.W           R2, [R10,#4]!
5A6426:  LDR.W           R3, [R5,#8]!
5A642A:  ADDS            R0, R2, R1
5A642C:  ADD             R0, R3
5A642E:  CMP             R0, #1
5A6430:  BLT             loc_5A6474
5A6432:  MOVS            R6, #0
5A6434:  LDR.W           R0, [R4,R6,LSL#2]; this
5A6438:  CBZ             R0, loc_5A646A
5A643A:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5A643E:  LDR             R0, [SP,#0x30+var_20]
5A6440:  MOVS            R1, #1
5A6442:  STRB            R1, [R0]
5A6444:  LDR.W           R0, [R4,R6,LSL#2]
5A6448:  CMP             R0, #0
5A644A:  ITTT NE
5A644C:  LDRNE           R1, [R0]
5A644E:  LDRNE           R1, [R1,#4]
5A6450:  BLXNE           R1
5A6452:  MOVS            R0, #0
5A6454:  MOV.W           R12, #0
5A6458:  STR.W           R0, [R4,R6,LSL#2]
5A645C:  LDR             R3, [R5]
5A645E:  LDR.W           R2, [R10]
5A6462:  LDR.W           R1, [R11]
5A6466:  STRB.W          R0, [R9]
5A646A:  ADDS            R0, R2, R3
5A646C:  ADDS            R6, #1
5A646E:  ADD             R0, R1
5A6470:  CMP             R6, R0
5A6472:  BLT             loc_5A6434
5A6474:  LDR             R0, [SP,#0x30+var_24]
5A6476:  MOV.W           R1, #0x150
5A647A:  STRB.W          R12, [R0]
5A647E:  ADD.W           R8, R8, #1
5A6482:  ADD.W           R4, R4, #0x150
5A6486:  CMP.W           R8, #0x20 ; ' '
5A648A:  BNE             loc_5A6406
5A648C:  ADD             SP, SP, #0x14
5A648E:  POP.W           {R8-R11}
5A6492:  POP             {R4-R7,PC}
