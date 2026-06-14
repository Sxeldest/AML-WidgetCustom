; =========================================================
; Game Engine Function: silk_NLSF_stabilize
; Address            : 0x1962B0 - 0x19649E
; =========================================================

1962B0:  PUSH            {R4-R7,LR}
1962B2:  ADD             R7, SP, #0xC
1962B4:  PUSH.W          {R8-R11}
1962B8:  SUB             SP, SP, #0xC
1962BA:  MOV             R9, R2
1962BC:  MOV             R10, R0
1962BE:  SUB.W           R0, R9, #1
1962C2:  MOV             R11, R1
1962C4:  MOV.W           LR, #0
1962C8:  STR             R0, [SP,#0x28+var_24]
1962CA:  ADD.W           R8, R10, R0,LSL#1
1962CE:  ADD.W           R0, R11, #2
1962D2:  STR             R0, [SP,#0x28+var_28]
1962D4:  STR.W           R8, [SP,#0x28+var_20]
1962D8:  LDRSH.W         R2, [R11]
1962DC:  CMP.W           R9, #2
1962E0:  LDRSH.W         R1, [R10]
1962E4:  SUB.W           R0, R1, R2
1962E8:  BLT             loc_196310
1962EA:  UXTH            R5, R1
1962EC:  MOVS            R1, #0
1962EE:  MOVS            R3, #1
1962F0:  LDRSH.W         R4, [R10,R3,LSL#1]
1962F4:  SXTH            R5, R5
1962F6:  LDRSH.W         R6, [R11,R3,LSL#1]
1962FA:  SUBS            R5, R4, R5
1962FC:  SUBS            R6, R5, R6
1962FE:  UXTH            R5, R4
196300:  CMP             R6, R0
196302:  ITT LT
196304:  MOVLT           R1, R3
196306:  MOVLT           R0, R6
196308:  ADDS            R3, #1
19630A:  CMP             R9, R3
19630C:  BNE             loc_1962F0
19630E:  B               loc_196312
196310:  MOVS            R1, #0
196312:  LDRSH.W         R6, [R8]
196316:  LDRSH.W         R3, [R11,R9,LSL#1]
19631A:  RSB.W           R6, R6, #0x8000
19631E:  SUBS            R6, R6, R3
196320:  CMP             R6, R0
196322:  ITT LT
196324:  MOVLT           R1, R9
196326:  MOVLT           R0, R6
196328:  CMP.W           R0, #0xFFFFFFFF
19632C:  BGT.W           loc_196496
196330:  CBZ             R1, loc_19633E
196332:  CMP             R1, R9
196334:  BNE             loc_196346
196336:  RSB.W           R0, R3, #0x8000
19633A:  MOV             R2, R8
19633C:  B               loc_1963E2
19633E:  UXTH            R0, R2
196340:  STRH.W          R0, [R10]
196344:  B               loc_1963E4
196346:  CMP             R1, #1
196348:  BLT             loc_19635C
19634A:  BEQ             loc_19635E
19634C:  LDR             R5, [SP,#0x28+var_28]
19634E:  SUBS            R0, R1, #1
196350:  LDRSH.W         R6, [R5],#2
196354:  SUBS            R0, #1
196356:  ADD             R2, R6
196358:  BNE             loc_196350
19635A:  B               loc_19635E
19635C:  MOVS            R2, #0
19635E:  LDRSH.W         R12, [R11,R1,LSL#1]
196362:  CMP             R1, R9
196364:  ADD.W           R4, R2, R12,ASR#1
196368:  MOV.W           R2, R12,ASR#1
19636C:  BGE             loc_19638A
19636E:  RSB.W           R8, R3, #0x8000
196372:  LDR             R0, [SP,#0x28+var_24]
196374:  MOV             R3, R2
196376:  CMP             R0, R1
196378:  BLE             loc_196390
19637A:  LDRSH.W         R2, [R11,R0,LSL#1]
19637E:  SUBS            R0, #1
196380:  SUB.W           R8, R8, R2
196384:  CMP             R0, R1
196386:  BGT             loc_19637A
196388:  B               loc_196390
19638A:  MOV             R3, R2
19638C:  MOV.W           R8, #0x8000
196390:  SUBS            R6, R1, #1
196392:  LDRSH.W         R0, [R10,R1,LSL#1]
196396:  LDRSH.W         R2, [R10,R6,LSL#1]
19639A:  ADD             R0, R2
19639C:  AND.W           R2, R0, #1
1963A0:  ADD.W           R5, R2, R0,ASR#1
1963A4:  SUB.W           R0, R8, R3
1963A8:  ADD.W           R2, R10, R1,LSL#1
1963AC:  CMP             R4, R0
1963AE:  BLE             loc_1963C2
1963B0:  LDR.W           R8, [SP,#0x28+var_20]
1963B4:  CMP             R5, R4
1963B6:  MOV             R3, R4
1963B8:  BGT             loc_1963D4
1963BA:  CMP             R5, R0
1963BC:  IT LT
1963BE:  MOVLT           R5, R0
1963C0:  B               loc_1963D2
1963C2:  LDR.W           R8, [SP,#0x28+var_20]
1963C6:  CMP             R5, R0
1963C8:  MOV             R3, R0
1963CA:  BGT             loc_1963D4
1963CC:  CMP             R5, R4
1963CE:  IT LT
1963D0:  MOVLT           R5, R4
1963D2:  MOV             R3, R5
1963D4:  SUB.W           R0, R3, R12,LSR#1
1963D8:  STRH.W          R0, [R10,R6,LSL#1]
1963DC:  LDRH.W          R1, [R11,R1,LSL#1]
1963E0:  ADD             R0, R1
1963E2:  STRH            R0, [R2]
1963E4:  ADD.W           R0, LR, #1
1963E8:  CMP.W           LR, #0x13
1963EC:  MOV             LR, R0
1963EE:  BLT.W           loc_1962D8
1963F2:  CMP             R0, #0x14
1963F4:  BNE             loc_196496
1963F6:  MOV             R0, R10
1963F8:  MOV             R1, R9
1963FA:  BLX             j_silk_insertion_sort_increasing_all_values_int16
1963FE:  LDRSH.W         R0, [R11]
196402:  LDRSH.W         R1, [R10]
196406:  CMP             R1, R0
196408:  IT GT
19640A:  MOVGT           R0, R1
19640C:  CMP.W           R9, #2
196410:  STRH.W          R0, [R10]
196414:  LDRD.W          R2, R4, [SP,#0x28+var_28]
196418:  BLT             loc_196450
19641A:  MOVW            R12, #0x8000
19641E:  ADD.W           R1, R10, #2
196422:  MOVT            R12, #0xFFFF
196426:  MOVW            R3, #0x7FFF
19642A:  LDRSH.W         R6, [R2],#2
19642E:  LDRSH.W         R5, [R1]
196432:  ADD             R0, R6
196434:  CMP             R0, R12
196436:  IT LE
196438:  MOVLE           R0, R12
19643A:  CMP             R0, R3
19643C:  IT GE
19643E:  MOVGE           R0, R3
196440:  SXTH            R0, R0
196442:  CMP             R0, R5
196444:  IT LT
196446:  MOVLT           R0, R5
196448:  SUBS            R4, #1
19644A:  STRH.W          R0, [R1],#2
19644E:  BNE             loc_19642A
196450:  LDRSH.W         R0, [R11,R9,LSL#1]
196454:  LDRSH.W         R1, [R8]
196458:  RSB.W           R0, R0, #0x8000
19645C:  CMP             R0, R1
19645E:  IT GT
196460:  MOVGT           R0, R1
196462:  CMP.W           R9, #2
196466:  STRH.W          R0, [R8]
19646A:  BLT             loc_196496
19646C:  SUB.W           R1, R11, #2
196470:  SUB.W           R2, R10, #4
196474:  LDRSH.W         R3, [R1,R9,LSL#1]
196478:  SXTH            R0, R0
19647A:  LDRSH.W         R6, [R2,R9,LSL#1]
19647E:  SUBS            R0, R0, R3
196480:  SUB.W           R3, R9, #2
196484:  CMP             R0, R6
196486:  IT GT
196488:  MOVGT           R0, R6
19648A:  CMP             R3, #0
19648C:  STRH.W          R0, [R2,R9,LSL#1]
196490:  SUB.W           R9, R9, #1
196494:  BGT             loc_196474
196496:  ADD             SP, SP, #0xC
196498:  POP.W           {R8-R11}
19649C:  POP             {R4-R7,PC}
