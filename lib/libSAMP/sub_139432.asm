; =========================================================
; Game Engine Function: sub_139432
; Address            : 0x139432 - 0x139568
; =========================================================

139432:  PUSH            {R4-R7,LR}
139434:  ADD             R7, SP, #0xC
139436:  PUSH.W          {R8-R11}
13943A:  SUB             SP, SP, #0xC
13943C:  LDR             R6, [R1,#4]
13943E:  MOV             R5, R2
139440:  MOV             R2, R0
139442:  MOV.W           R0, #0x55555555
139446:  MOV             R9, R1
139448:  MOV.W           R1, #0x33333333
13944C:  AND.W           R0, R0, R6,LSR#1
139450:  LDR.W           R10, [R5,#4]
139454:  SUBS            R0, R6, R0
139456:  AND.W           R1, R1, R0,LSR#2
13945A:  BIC.W           R0, R0, #0xCCCCCCCC
13945E:  ADD             R0, R1
139460:  MOV.W           R1, #0x1010101
139464:  ADD.W           R0, R0, R0,LSR#4
139468:  BIC.W           R0, R0, #0xF0F0F0F0
13946C:  MULS            R0, R1
13946E:  MOV.W           R8, R0,LSR#24
139472:  CMP.W           R8, #1
139476:  BHI             loc_139480
139478:  SUBS            R0, R6, #1
13947A:  AND.W           R10, R10, R0
13947E:  B               loc_139492
139480:  CMP             R10, R6
139482:  BCC             loc_139492
139484:  MOV             R0, R10
139486:  MOV             R1, R6
139488:  MOV             R4, R2
13948A:  BLX             sub_221798
13948E:  MOV             R2, R4
139490:  MOV             R10, R1
139492:  LDR.W           R11, [R9]
139496:  LDR.W           R0, [R11,R10,LSL#2]
13949A:  MOV             R4, R0
13949C:  LDR             R0, [R0]
13949E:  CMP             R0, R5
1394A0:  BNE             loc_13949A
1394A2:  ADD.W           R12, R9, #8
1394A6:  CMP             R4, R12
1394A8:  BEQ             loc_1394D0
1394AA:  LDR             R0, [R4,#4]
1394AC:  CMP.W           R8, #1
1394B0:  BHI             loc_1394B8
1394B2:  SUBS            R1, R6, #1
1394B4:  ANDS            R0, R1
1394B6:  B               loc_1394CC
1394B8:  CMP             R0, R6
1394BA:  BCC             loc_1394CC
1394BC:  MOV             R1, R6
1394BE:  STRD.W          R12, R2, [SP,#0x28+var_24]
1394C2:  BLX             sub_221798
1394C6:  LDRD.W          R12, R2, [SP,#0x28+var_24]
1394CA:  MOV             R0, R1
1394CC:  CMP             R0, R10
1394CE:  BEQ             loc_139500
1394D0:  LDR             R0, [R5]
1394D2:  CBZ             R0, loc_1394FA
1394D4:  LDR             R0, [R0,#4]
1394D6:  CMP.W           R8, #1
1394DA:  BHI             loc_1394E2
1394DC:  SUBS            R1, R6, #1
1394DE:  ANDS            R0, R1
1394E0:  B               loc_1394F6
1394E2:  CMP             R0, R6
1394E4:  BCC             loc_1394F6
1394E6:  MOV             R1, R6
1394E8:  STRD.W          R12, R2, [SP,#0x28+var_24]
1394EC:  BLX             sub_221798
1394F0:  LDRD.W          R12, R2, [SP,#0x28+var_24]
1394F4:  MOV             R0, R1
1394F6:  CMP             R0, R10
1394F8:  BEQ             loc_139500
1394FA:  MOVS            R0, #0
1394FC:  STR.W           R0, [R11,R10,LSL#2]
139500:  LDR.W           R11, [R5]
139504:  MOVS            R3, #0
139506:  CMP.W           R11, #0
13950A:  BEQ             loc_13951C
13950C:  LDR.W           R0, [R11,#4]
139510:  CMP.W           R8, #1
139514:  BHI             loc_139522
139516:  SUBS            R1, R6, #1
139518:  ANDS            R0, R1
13951A:  B               loc_139538
13951C:  MOV.W           R11, #0
139520:  B               loc_139548
139522:  CMP             R0, R6
139524:  BCC             loc_139538
139526:  MOV             R1, R6
139528:  MOV             R8, R2
13952A:  MOV             R6, R12
13952C:  BLX             sub_221798
139530:  MOVS            R3, #0
139532:  MOV             R12, R6
139534:  MOV             R2, R8
139536:  MOV             R0, R1
139538:  CMP             R0, R10
13953A:  ITTT NE
13953C:  LDRNE.W         R1, [R9]
139540:  STRNE.W         R4, [R1,R0,LSL#2]
139544:  LDRNE.W         R11, [R5]
139548:  MOVS            R0, #1
13954A:  STR.W           R11, [R4]
13954E:  STRB            R0, [R2,#8]
139550:  LDR.W           R0, [R9,#0xC]
139554:  STRD.W          R5, R12, [R2]
139558:  SUBS            R0, #1
13955A:  STR             R3, [R5]
13955C:  STR.W           R0, [R9,#0xC]
139560:  ADD             SP, SP, #0xC
139562:  POP.W           {R8-R11}
139566:  POP             {R4-R7,PC}
