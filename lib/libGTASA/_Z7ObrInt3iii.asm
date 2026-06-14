; =========================================================
; Game Engine Function: _Z7ObrInt3iii
; Address            : 0x3F7268 - 0x3F7468
; =========================================================

3F7268:  PUSH            {R4-R7,LR}
3F726A:  ADD             R7, SP, #0xC
3F726C:  PUSH.W          {R8-R10}
3F7270:  MOV             R9, R2
3F7272:  MOV             R10, R1
3F7274:  CMP.W           R0, #0xFFFFFFFF
3F7278:  BLE             loc_3F7280
3F727A:  MOV.W           R12, #0
3F727E:  B               loc_3F7290
3F7280:  LDR             R1, =(obrstr_ptr - 0x3F728E)
3F7282:  NEGS            R0, R0
3F7284:  MOV.W           R12, #1
3F7288:  MOVS            R2, #0x2D ; '-'
3F728A:  ADD             R1, PC; obrstr_ptr
3F728C:  LDR             R1, [R1]; obrstr
3F728E:  STRB            R2, [R1]
3F7290:  LSLS            R1, R0, #0x10
3F7292:  MOVS            R2, #1
3F7294:  CMP.W           R1, #0x90000
3F7298:  BLE             loc_3F72BC
3F729A:  MOVW            LR, #0xCCCD
3F729E:  MOV             R3, R0
3F72A0:  MOVT            LR, #0xCCCC
3F72A4:  UXTH            R6, R3
3F72A6:  CMP             R6, #0x63 ; 'c'
3F72A8:  UMULL.W         R3, R1, R6, LR
3F72AC:  MOV.W           R3, R1,LSR#3
3F72B0:  ADD.W           R1, R2, #1
3F72B4:  SXTH            R2, R1
3F72B6:  BHI             loc_3F72A4
3F72B8:  CMP             R2, #0
3F72BA:  BLE             loc_3F72F6
3F72BC:  LDR             R1, =(obrstr_ptr - 0x3F72CC)
3F72BE:  ADD.W           R3, R12, R2
3F72C2:  MOVW            LR, #0x6667
3F72C6:  UXTH            R6, R2
3F72C8:  ADD             R1, PC; obrstr_ptr
3F72CA:  MOVT            LR, #0x6666
3F72CE:  LDR             R1, [R1]; obrstr
3F72D0:  ADD             R1, R3
3F72D2:  SUBS            R3, R1, #1
3F72D4:  SMMUL.W         R1, R0, LR
3F72D8:  SUBS            R6, #1
3F72DA:  MOV.W           R4, R1,ASR#2
3F72DE:  ADD.W           R1, R4, R1,LSR#31
3F72E2:  ADD.W           R4, R1, R1,LSL#2
3F72E6:  SUB.W           R0, R0, R4,LSL#1
3F72EA:  ADD.W           R0, R0, #0x30 ; '0'
3F72EE:  STRB.W          R0, [R3],#-1
3F72F2:  MOV             R0, R1
3F72F4:  BNE             loc_3F72D4
3F72F6:  LDR             R0, =(obrstr_ptr - 0x3F7300)
3F72F8:  MOV.W           R8, #0
3F72FC:  ADD             R0, PC; obrstr_ptr
3F72FE:  LDR             R6, [R0]; obrstr
3F7300:  ADD.W           R0, R12, R2
3F7304:  STRB.W          R8, [R6,R0]
3F7308:  MOV             R0, R6; char *
3F730A:  BLX             strlen
3F730E:  MOVW            R1, #0x2020
3F7312:  CMP.W           R10, #0xFFFFFFFF
3F7316:  STRH            R1, [R6,R0]
3F7318:  ADD             R0, R6
3F731A:  STRB.W          R8, [R0,#2]
3F731E:  BGT             loc_3F7332
3F7320:  LDR             R0, =(obrstr2_ptr - 0x3F7330)
3F7322:  RSB.W           R10, R10, #0
3F7326:  MOV.W           R8, #1
3F732A:  MOVS            R1, #0x2D ; '-'
3F732C:  ADD             R0, PC; obrstr2_ptr
3F732E:  LDR             R0, [R0]; obrstr2
3F7330:  STRB            R1, [R0]
3F7332:  MOV.W           R0, R10,LSL#16
3F7336:  CMP.W           R0, #0x90000
3F733A:  BLE             loc_3F7360
3F733C:  MOVW            R1, #0xCCCD
3F7340:  MOVS            R0, #1
3F7342:  MOVT            R1, #0xCCCC
3F7346:  MOV             R2, R10
3F7348:  UXTH            R3, R2
3F734A:  ADDS            R0, #1
3F734C:  UMULL.W         R2, R6, R3, R1
3F7350:  CMP             R3, #0x63 ; 'c'
3F7352:  SXTH            R0, R0
3F7354:  MOV.W           R2, R6,LSR#3
3F7358:  BHI             loc_3F7348
3F735A:  CMP             R0, #0
3F735C:  BGT             loc_3F7362
3F735E:  B               loc_3F739C
3F7360:  MOVS            R0, #1
3F7362:  LDR             R1, =(obrstr2_ptr - 0x3F7370)
3F7364:  ADD.W           R2, R8, R0
3F7368:  MOVW            R3, #0x6667
3F736C:  ADD             R1, PC; obrstr2_ptr
3F736E:  MOVT            R3, #0x6666
3F7372:  LDR             R1, [R1]; obrstr2
3F7374:  ADD             R1, R2
3F7376:  UXTH            R2, R0
3F7378:  SUBS            R1, #1
3F737A:  SMMUL.W         R6, R10, R3
3F737E:  SUBS            R2, #1
3F7380:  MOV.W           R4, R6,ASR#2
3F7384:  ADD.W           R5, R4, R6,LSR#31
3F7388:  ADD.W           R6, R5, R5,LSL#2
3F738C:  SUB.W           R6, R10, R6,LSL#1
3F7390:  MOV             R10, R5
3F7392:  ADD.W           R6, R6, #0x30 ; '0'
3F7396:  STRB.W          R6, [R1],#-1
3F739A:  BNE             loc_3F737A
3F739C:  LDR             R1, =(obrstr2_ptr - 0x3F73A8)
3F739E:  ADD             R0, R8
3F73A0:  LDR             R2, =(obrstr_ptr - 0x3F73AA)
3F73A2:  MOVS            R6, #0
3F73A4:  ADD             R1, PC; obrstr2_ptr
3F73A6:  ADD             R2, PC; obrstr_ptr
3F73A8:  LDR             R1, [R1]; obrstr2 ; src
3F73AA:  LDR             R5, [R2]; obrstr
3F73AC:  STRB            R6, [R1,R0]
3F73AE:  MOV             R0, R5; dest
3F73B0:  BLX             strcat
3F73B4:  MOV             R0, R5; char *
3F73B6:  BLX             strlen
3F73BA:  MOVW            R1, #0x2020
3F73BE:  CMP.W           R9, #0xFFFFFFFF
3F73C2:  STRH            R1, [R5,R0]
3F73C4:  ADD             R0, R5
3F73C6:  STRB            R6, [R0,#2]
3F73C8:  BGT             loc_3F73DA
3F73CA:  LDR             R0, =(obrstr2_ptr - 0x3F73D8)
3F73CC:  RSB.W           R9, R9, #0
3F73D0:  MOVS            R6, #1
3F73D2:  MOVS            R1, #0x2D ; '-'
3F73D4:  ADD             R0, PC; obrstr2_ptr
3F73D6:  LDR             R0, [R0]; obrstr2
3F73D8:  STRB            R1, [R0]
3F73DA:  MOV.W           R0, R9,LSL#16
3F73DE:  CMP.W           R0, #0x90000
3F73E2:  BLE             loc_3F7408
3F73E4:  MOVW            R1, #0xCCCD
3F73E8:  MOVS            R0, #1
3F73EA:  MOVT            R1, #0xCCCC
3F73EE:  MOV             R2, R9
3F73F0:  UXTH            R3, R2
3F73F2:  ADDS            R0, #1
3F73F4:  UMULL.W         R2, R5, R3, R1
3F73F8:  CMP             R3, #0x63 ; 'c'
3F73FA:  SXTH            R0, R0
3F73FC:  MOV.W           R2, R5,LSR#3
3F7400:  BHI             loc_3F73F0
3F7402:  CMP             R0, #0
3F7404:  BGT             loc_3F740A
3F7406:  B               loc_3F7442
3F7408:  MOVS            R0, #1
3F740A:  LDR             R1, =(obrstr2_ptr - 0x3F7416)
3F740C:  ADDS            R2, R6, R0
3F740E:  MOVW            R3, #0x6667
3F7412:  ADD             R1, PC; obrstr2_ptr
3F7414:  MOVT            R3, #0x6666
3F7418:  LDR             R1, [R1]; obrstr2
3F741A:  ADD             R1, R2
3F741C:  UXTH            R2, R0
3F741E:  SUBS            R1, #1
3F7420:  SMMUL.W         R5, R9, R3
3F7424:  SUBS            R2, #1
3F7426:  MOV.W           R4, R5,ASR#2
3F742A:  ADD.W           R5, R4, R5,LSR#31
3F742E:  ADD.W           R4, R5, R5,LSL#2
3F7432:  SUB.W           R4, R9, R4,LSL#1
3F7436:  MOV             R9, R5
3F7438:  ADD.W           R4, R4, #0x30 ; '0'
3F743C:  STRB.W          R4, [R1],#-1
3F7440:  BNE             loc_3F7420
3F7442:  LDR             R1, =(obrstr2_ptr - 0x3F744C)
3F7444:  ADD             R0, R6
3F7446:  LDR             R2, =(obrstr_ptr - 0x3F744E)
3F7448:  ADD             R1, PC; obrstr2_ptr
3F744A:  ADD             R2, PC; obrstr_ptr
3F744C:  LDR             R1, [R1]; obrstr2 ; src
3F744E:  LDR             R4, [R2]; obrstr
3F7450:  MOVS            R2, #0
3F7452:  STRB            R2, [R1,R0]
3F7454:  MOV             R0, R4; dest
3F7456:  BLX             strcat
3F745A:  MOV             R0, R4; this
3F745C:  POP.W           {R8-R10}
3F7460:  POP.W           {R4-R7,LR}
3F7464:  B.W             sub_1993B0
