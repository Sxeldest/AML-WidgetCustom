; =========================================================
; Game Engine Function: ec_enc_done
; Address            : 0xB7308 - 0xB7542
; =========================================================

B7308:  PUSH            {R4-R7,LR}
B730A:  ADD             R7, SP, #0xC
B730C:  PUSH.W          {R8-R11}
B7310:  SUB             SP, SP, #0xC
B7312:  MOV             R4, R0
B7314:  MOV             R0, #0x7FFFFFFF
B7318:  LDRD.W          R3, R1, [R4,#0x1C]
B731C:  CLZ.W           R8, R3
B7320:  ADD             R3, R1
B7322:  LSR.W           R0, R0, R8
B7326:  ADDS            R2, R0, R1
B7328:  ORR.W           R6, R2, R0
B732C:  CMP             R6, R3
B732E:  BCS             loc_B733E
B7330:  CMP.W           R8, #0
B7334:  BEQ.W           loc_B752E
B7338:  BIC.W           R1, R2, R0
B733C:  B               loc_B734A
B733E:  ADD.W           R1, R1, R0,LSR#1
B7342:  ADD.W           R8, R8, #1
B7346:  BIC.W           R1, R1, R0,LSR#1
B734A:  MVN.W           R0, R8
B734E:  CMN.W           R0, #9
B7352:  IT LE
B7354:  MOVLE           R0, #0xFFFFFFF7
B7358:  MOVW            R9, #0xFF00
B735C:  ADD             R0, R8
B735E:  ADD.W           R10, R4, #0x28 ; '('
B7362:  ADDS            R0, #8
B7364:  MOV.W           LR, #0xFF
B7368:  MOVT            R9, #0x7FFF
B736C:  BIC.W           R0, R0, #7
B7370:  STR             R0, [SP,#0x28+var_24]
B7372:  STR.W           R8, [SP,#0x28+var_20]
B7376:  CMP.W           LR, R1,LSR#23
B737A:  BNE             loc_B7384
B737C:  LDR             R0, [R4,#0x24]
B737E:  ADDS            R0, #1
B7380:  STR             R0, [R4,#0x24]
B7382:  B               loc_B73F4
B7384:  LDR.W           R2, [R10]
B7388:  MOV.W           R11, R1,LSR#31
B738C:  CMP             R2, #0
B738E:  BLT             loc_B73B4
B7390:  LDRD.W          R6, R3, [R4,#4]
B7394:  LDR             R0, [R4,#0x18]
B7396:  ADD             R3, R0
B7398:  CMP             R3, R6
B739A:  BCS             loc_B73AA
B739C:  LDR             R3, [R4]
B739E:  ADDS            R6, R0, #1
B73A0:  STR             R6, [R4,#0x18]
B73A2:  ADD             R2, R11
B73A4:  STRB            R2, [R3,R0]
B73A6:  MOVS            R0, #0
B73A8:  B               loc_B73AE
B73AA:  MOV.W           R0, #0xFFFFFFFF
B73AE:  LDR             R2, [R4,#0x2C]
B73B0:  ORRS            R0, R2
B73B2:  STR             R0, [R4,#0x2C]
B73B4:  LDR             R6, [R4,#0x24]
B73B6:  MOV.W           R12, R1,LSR#23
B73BA:  CBZ             R6, loc_B73EC
B73BC:  ADD.W           R3, R11, #0xFF
B73C0:  LDRD.W          R2, R5, [R4,#4]
B73C4:  LDR             R0, [R4,#0x18]
B73C6:  ADD             R5, R0
B73C8:  CMP             R5, R2
B73CA:  BCS             loc_B73DA
B73CC:  LDR             R2, [R4]
B73CE:  ADDS            R5, R0, #1
B73D0:  STR             R5, [R4,#0x18]
B73D2:  STRB            R3, [R2,R0]
B73D4:  MOVS            R0, #0
B73D6:  LDR             R6, [R4,#0x24]
B73D8:  B               loc_B73DE
B73DA:  MOV.W           R0, #0xFFFFFFFF
B73DE:  LDR             R2, [R4,#0x2C]
B73E0:  SUBS            R6, #1
B73E2:  STR             R6, [R4,#0x24]
B73E4:  ORR.W           R0, R0, R2
B73E8:  STR             R0, [R4,#0x2C]
B73EA:  BNE             loc_B73C0
B73EC:  UXTB.W          R0, R12
B73F0:  STR.W           R0, [R10]
B73F4:  AND.W           R1, R9, R1,LSL#8
B73F8:  SUBS.W          R8, R8, #8
B73FC:  BGT             loc_B7376
B73FE:  LDR             R0, [SP,#0x28+var_20]
B7400:  LDR             R1, [SP,#0x28+var_24]
B7402:  SUBS            R0, #8
B7404:  SUB.W           R8, R0, R1
B7408:  LDR.W           R1, [R10]
B740C:  CMP.W           R1, #0xFFFFFFFF
B7410:  BLE             loc_B742A
B7412:  LDRD.W          R2, R3, [R4,#4]
B7416:  LDR             R0, [R4,#0x18]
B7418:  ADD             R3, R0
B741A:  CMP             R3, R2
B741C:  BCS             loc_B7430
B741E:  LDR             R2, [R4]
B7420:  ADDS            R3, R0, #1
B7422:  STR             R3, [R4,#0x18]
B7424:  STRB            R1, [R2,R0]
B7426:  MOVS            R0, #0
B7428:  B               loc_B7434
B742A:  LDR             R1, [R4,#0x24]
B742C:  CBNZ            R1, loc_B7442
B742E:  B               loc_B7476
B7430:  MOV.W           R0, #0xFFFFFFFF
B7434:  LDR             R1, [R4,#0x24]
B7436:  LDR             R2, [R4,#0x2C]
B7438:  CMP             R1, #0
B743A:  ORR.W           R0, R0, R2
B743E:  STR             R0, [R4,#0x2C]
B7440:  BEQ             loc_B7470
B7442:  MOVS            R2, #0xFF
B7444:  LDRD.W          R3, R6, [R4,#4]
B7448:  LDR             R0, [R4,#0x18]
B744A:  ADD             R6, R0
B744C:  CMP             R6, R3
B744E:  BCS             loc_B745E
B7450:  LDR             R1, [R4]
B7452:  ADDS            R3, R0, #1
B7454:  STR             R3, [R4,#0x18]
B7456:  STRB            R2, [R1,R0]
B7458:  MOVS            R0, #0
B745A:  LDR             R1, [R4,#0x24]
B745C:  B               loc_B7462
B745E:  MOV.W           R0, #0xFFFFFFFF
B7462:  LDR             R3, [R4,#0x2C]
B7464:  SUBS            R1, #1
B7466:  STR             R1, [R4,#0x24]
B7468:  ORR.W           R0, R0, R3
B746C:  STR             R0, [R4,#0x2C]
B746E:  BNE             loc_B7444
B7470:  MOVS            R0, #0
B7472:  STR.W           R0, [R10]
B7476:  LDRD.W          R6, R9, [R4,#0xC]
B747A:  CMP.W           R9, #7
B747E:  BLE             loc_B74D8
B7480:  MVN.W           R0, R9
B7484:  CMN.W           R0, #0x10
B7488:  IT LE
B748A:  MOVLE           R0, #0xFFFFFFF0
B748E:  ADD.W           R1, R9, #8
B7492:  ADD             R0, R9
B7494:  ADD.W           R5, R4, #0x2C ; ','
B7498:  ADDS            R0, #8
B749A:  BIC.W           R12, R0, #7
B749E:  LDRD.W          R2, R3, [R4,#4]
B74A2:  LDR             R0, [R4,#0x18]
B74A4:  ADD             R0, R3
B74A6:  CMP             R0, R2
B74A8:  BCS             loc_B74B8
B74AA:  ADDS            R0, R3, #1
B74AC:  STR             R0, [R4,#8]
B74AE:  LDR             R3, [R4]
B74B0:  SUBS            R0, R2, R0
B74B2:  MOVS            R2, #0
B74B4:  STRB            R6, [R3,R0]
B74B6:  B               loc_B74BC
B74B8:  MOV.W           R2, #0xFFFFFFFF
B74BC:  LDR             R0, [R5]
B74BE:  SUBS            R1, #8
B74C0:  LSRS            R6, R6, #8
B74C2:  CMP             R1, #0xF
B74C4:  ORR.W           R2, R2, R0
B74C8:  STR             R2, [R5]
B74CA:  BGT             loc_B749E
B74CC:  SUB.W           R0, R9, #8
B74D0:  SUB.W           R9, R0, R12
B74D4:  CBNZ            R2, loc_B753A
B74D6:  B               loc_B74E0
B74D8:  MOV             R5, R4
B74DA:  LDR.W           R2, [R5,#0x2C]!
B74DE:  CBNZ            R2, loc_B753A
B74E0:  LDM.W           R4, {R0-R2}
B74E4:  LDR             R3, [R4,#0x18]
B74E6:  SUBS            R1, R1, R3
B74E8:  ADD             R0, R3; int
B74EA:  SUBS            R1, R1, R2; n
B74EC:  BLX             sub_10967C
B74F0:  CMP.W           R9, #1
B74F4:  BLT             loc_B753A
B74F6:  LDRD.W          R1, R0, [R4,#4]
B74FA:  CMP             R0, R1
B74FC:  BCS             loc_B7534
B74FE:  RSB.W           R2, R8, #0
B7502:  CMP             R9, R2
B7504:  BLE             loc_B7520
B7506:  LDR             R3, [R4,#0x18]
B7508:  ADD             R3, R0
B750A:  CMP             R3, R1
B750C:  ITTTT CS
B750E:  MOVCS.W         R3, #0xFFFFFFFF
B7512:  STRCS           R3, [R5]
B7514:  MOVCS           R3, #1
B7516:  LSLCS.W         R2, R3, R2
B751A:  ITT CS
B751C:  SUBCS           R2, #1
B751E:  ANDCS           R6, R2
B7520:  SUBS            R1, #1
B7522:  LDR             R2, [R4]
B7524:  SUBS            R0, R1, R0
B7526:  LDRB            R1, [R2,R0]
B7528:  ORRS            R1, R6
B752A:  STRB            R1, [R2,R0]
B752C:  B               loc_B753A
B752E:  ADD.W           R10, R4, #0x28 ; '('
B7532:  B               loc_B7408
B7534:  MOV.W           R0, #0xFFFFFFFF
B7538:  STR             R0, [R5]
B753A:  ADD             SP, SP, #0xC
B753C:  POP.W           {R8-R11}
B7540:  POP             {R4-R7,PC}
