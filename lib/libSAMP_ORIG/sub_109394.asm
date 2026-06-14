; =========================================================
; Game Engine Function: sub_109394
; Address            : 0x109394 - 0x109664
; =========================================================

109394:  PUSH            {R4-R11,LR}
109398:  SUB             SP, SP, #4
10939C:  LDR             R5, [SP,#0x28+arg_0]
1093A0:  MOV             R8, R3
1093A4:  MOV             R10, R2
1093A8:  MOV             R6, R0
1093AC:  MOV             R4, R0
1093B0:  CMP             R1, #0
1093B4:  BEQ             loc_1093EC
1093B8:  MOV             R9, R1
1093BC:  CMP             R10, #0
1093C0:  BEQ             loc_109418
1093C4:  CMP             R8, #0
1093C8:  BEQ             loc_10946C
1093CC:  CLZ             R0, R9
1093D0:  CLZ             R1, R8
1093D4:  SUB             R2, R1, R0
1093D8:  CMP             R2, #0x20 ; ' '
1093DC:  BCC             loc_1094E4
1093E0:  CMP             R5, #0
1093E4:  STMNE           R5, {R4,R9}
1093E8:  B               loc_109454
1093EC:  CMP             R8, #0
1093F0:  BEQ             loc_1094C4
1093F4:  CMP             R5, #0
1093F8:  BEQ             loc_109454
1093FC:  MOV             R9, #0
109400:  STM             R5, {R4,R9}
109404:  MOV             R4, #0
109408:  MOV             R0, R4
10940C:  MOV             R1, R9
109410:  ADD             SP, SP, #4
109414:  POP             {R4-R11,PC}
109418:  CMP             R8, #0
10941C:  BEQ             loc_1094FC
109420:  CMP             R6, #0
109424:  BEQ             loc_10953C
109428:  SUB             R0, R8, #1
10942C:  TST             R8, R0
109430:  BNE             loc_109570
109434:  CMP             R5, #0
109438:  ANDNE           R1, R0, R9
10943C:  RBIT            R0, R8
109440:  CLZ             R0, R0
109444:  STRNE           R4, [R5]
109448:  STRNE           R1, [R5,#4]
10944C:  MOV             R4, R9,LSR R0
109450:  B               loc_109458
109454:  MOV             R4, #0
109458:  MOV             R9, #0
10945C:  MOV             R0, R4
109460:  MOV             R1, R9
109464:  ADD             SP, SP, #4
109468:  POP             {R4-R11,PC}
10946C:  SUB             R0, R10, #1
109470:  TST             R10, R0
109474:  BNE             loc_10950C
109478:  CMP             R5, #0
10947C:  MOVNE           R1, #0
109480:  ANDNE           R0, R0, R6
109484:  STRDNE          R0, R1, [R5]
109488:  CMP             R10, #1
10948C:  BEQ             loc_109408
109490:  RBIT            R0, R10
109494:  MOV             R1, #0x1F
109498:  CLZ             R0, R0
10949C:  MOV             R2, R9,LSL#1
1094A0:  BIC             R1, R1, R0
1094A4:  MOV             R9, R9,LSR R0
1094A8:  MOV             R1, R2,LSL R1
1094AC:  AND             R2, R0, #0x1F
1094B0:  ORR             R4, R1, R6,LSR R2
1094B4:  MOV             R0, R4
1094B8:  MOV             R1, R9
1094BC:  ADD             SP, SP, #4
1094C0:  POP             {R4-R11,PC}
1094C4:  MOV             R0, R6
1094C8:  MOV             R1, R10
1094CC:  BL              sub_108874
1094D0:  CMP             R5, #0
1094D4:  MOV             R4, R0
1094D8:  MLSNE           R0, R4, R10, R6
1094DC:  MOVNE           R1, #0
1094E0:  B               loc_109558
1094E4:  ADD             LR, R2, #1
1094E8:  MOV             R1, #0
1094EC:  CMP             LR, #0x20 ; ' '
1094F0:  BEQ             loc_109528
1094F4:  RSB             R3, R2, #0x1F
1094F8:  B               loc_1095B0
1094FC:  MOV             R0, R4
109500:  MOV             R1, R9
109504:  ADD             SP, SP, #4
109508:  POP             {R4-R11,PC}
10950C:  CLZ             R0, R9
109510:  CLZ             R1, R10
109514:  SUB             R0, R1, R0
109518:  MOV             R1, #0
10951C:  ADD             LR, R0, #0x21 ; '!'
109520:  CMP             LR, #0x20 ; ' '
109524:  BNE             loc_1095A4
109528:  MOV             LR, #0x20 ; ' '
10952C:  MOV             R2, R9
109530:  MOV             R11, #0
109534:  MOV             R3, R6
109538:  B               loc_1095E0
10953C:  MOV             R0, R9
109540:  MOV             R1, R8
109544:  BL              sub_108874
109548:  MOV             R4, R0
10954C:  CMP             R5, #0
109550:  MLSNE           R1, R4, R8, R9
109554:  MOVNE           R0, #0
109558:  MOV             R9, #0
10955C:  STRDNE          R0, R1, [R5]
109560:  MOV             R0, R4
109564:  MOV             R1, R9
109568:  ADD             SP, SP, #4
10956C:  POP             {R4-R11,PC}
109570:  CLZ             R0, R9
109574:  CLZ             R1, R8
109578:  SUB             R0, R1, R0
10957C:  CMP             R0, #0x1F
109580:  BCS             loc_1093E0
109584:  RSB             R1, R0, #0x1F
109588:  ADD             LR, R0, #1
10958C:  MOV             R2, R9,LSL R1
109590:  MOV             R3, R6,LSL R1
109594:  ORR             R2, R2, R6,LSR LR
109598:  MOV             R11, R9,LSR LR
10959C:  MOV             R1, #0
1095A0:  B               loc_1095E0
1095A4:  CMP             LR, #0x1F
1095A8:  BHI             loc_1095C4
1095AC:  RSB             R3, LR, #0x20 ; ' '
1095B0:  MOV             R2, R9,LSL R3
1095B4:  MOV             R11, R9,LSR LR
1095B8:  ORR             R2, R2, R6,LSR LR
1095BC:  MOV             R3, R6,LSL R3
1095C0:  B               loc_1095E0
1095C4:  RSB             R1, LR, #0x40 ; '@'
1095C8:  SUB             R7, LR, #0x20 ; ' '
1095CC:  MOV             R11, #0
1095D0:  MOV             R2, R9,LSL R1
1095D4:  ORR             R3, R2, R6,LSR R7
1095D8:  MOV             R2, R9,LSR R7
1095DC:  MOV             R1, R6,LSL R1
1095E0:  MOV             R6, #0
1095E4:  MOV             R12, #1
1095E8:  MOV             R7, R11,LSL#1
1095EC:  ORR             R7, R7, R2,LSR#31
1095F0:  MOV             R2, R2,LSL#1
1095F4:  ORR             R2, R2, R3,LSR#31
1095F8:  MVN             R4, R7
1095FC:  MVN             R5, R2
109600:  ADDS            R5, R5, R10
109604:  ADC             R5, R4, R8
109608:  AND             R0, R10, R5,ASR#31
10960C:  AND             R4, R8, R5,ASR#31
109610:  SUBS            R2, R2, R0
109614:  MOV             R0, R3,LSL#1
109618:  SBC             R11, R7, R4
10961C:  AND             R7, R12, R5,ASR#31
109620:  ORR             R3, R0, R1,LSR#31
109624:  ORR             R1, R6, R1,LSL#1
109628:  SUBS            LR, LR, #1
10962C:  MOV             R6, R7
109630:  BNE             loc_1095E8
109634:  MOV             R0, R1,LSR#31
109638:  ORR             R9, R0, R3,LSL#1
10963C:  MOV             R0, R1,LSL#1
109640:  LDR             R1, [SP,#0x28+arg_0]
109644:  BIC             R0, R0, #1
109648:  ORR             R4, R0, R7
10964C:  CMP             R1, #0
109650:  STMNE           R1, {R2,R11}
109654:  MOV             R0, R4
109658:  MOV             R1, R9
10965C:  ADD             SP, SP, #4
109660:  POP             {R4-R11,PC}
