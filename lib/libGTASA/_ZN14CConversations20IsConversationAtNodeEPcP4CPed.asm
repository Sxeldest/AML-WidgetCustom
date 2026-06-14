; =========================================================
; Game Engine Function: _ZN14CConversations20IsConversationAtNodeEPcP4CPed
; Address            : 0x301374 - 0x3014BC
; =========================================================

301374:  PUSH            {R4-R7,LR}
301376:  ADD             R7, SP, #0xC
301378:  PUSH.W          {R11}
30137C:  MOV             R4, R0
30137E:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301384)
301380:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301382:  LDR             R0, [R0]; CConversations::m_aConversations ...
301384:  LDR             R0, [R0,#(dword_7A0F88 - 0x7A0F80)]
301386:  CMP             R0, R1
301388:  BEQ             loc_30143C
30138A:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301390)
30138C:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
30138E:  LDR             R0, [R0]; CConversations::m_aConversations ...
301390:  LDR             R0, [R0,#(dword_7A0FA4 - 0x7A0F80)]
301392:  CMP             R0, R1
301394:  BEQ             loc_301440
301396:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30139C)
301398:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
30139A:  LDR             R0, [R0]; CConversations::m_aConversations ...
30139C:  LDR             R0, [R0,#(dword_7A0FC0 - 0x7A0F80)]
30139E:  CMP             R0, R1
3013A0:  BEQ             loc_301444
3013A2:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013A8)
3013A4:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013A6:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013A8:  LDR             R0, [R0,#(dword_7A0FDC - 0x7A0F80)]
3013AA:  CMP             R0, R1
3013AC:  BEQ             loc_301448
3013AE:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013B4)
3013B0:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013B2:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013B4:  LDR             R0, [R0,#(dword_7A0FF8 - 0x7A0F80)]
3013B6:  CMP             R0, R1
3013B8:  BEQ             loc_30144C
3013BA:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013C0)
3013BC:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013BE:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013C0:  LDR.W           R0, [R0,#(dword_7A1014 - 0x7A0F80)]
3013C4:  CMP             R0, R1
3013C6:  BEQ             loc_301450
3013C8:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013CE)
3013CA:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013CC:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013CE:  LDR.W           R0, [R0,#(dword_7A1030 - 0x7A0F80)]
3013D2:  CMP             R0, R1
3013D4:  BEQ             loc_301454
3013D6:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013DC)
3013D8:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013DA:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013DC:  LDR.W           R0, [R0,#(dword_7A104C - 0x7A0F80)]
3013E0:  CMP             R0, R1
3013E2:  BEQ             loc_301458
3013E4:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013EA)
3013E6:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013E8:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013EA:  LDR.W           R0, [R0,#(dword_7A1068 - 0x7A0F80)]
3013EE:  CMP             R0, R1
3013F0:  BEQ             loc_30145C
3013F2:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3013F8)
3013F4:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3013F6:  LDR             R0, [R0]; CConversations::m_aConversations ...
3013F8:  LDR.W           R0, [R0,#(dword_7A1084 - 0x7A0F80)]
3013FC:  CMP             R0, R1
3013FE:  BEQ             loc_301460
301400:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301406)
301402:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301404:  LDR             R0, [R0]; CConversations::m_aConversations ...
301406:  LDR.W           R0, [R0,#(dword_7A10A0 - 0x7A0F80)]
30140A:  CMP             R0, R1
30140C:  BEQ             loc_301464
30140E:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301414)
301410:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301412:  LDR             R0, [R0]; CConversations::m_aConversations ...
301414:  LDR.W           R0, [R0,#(dword_7A10BC - 0x7A0F80)]
301418:  CMP             R0, R1
30141A:  BEQ             loc_301468
30141C:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301422)
30141E:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301420:  LDR             R0, [R0]; CConversations::m_aConversations ...
301422:  LDR.W           R0, [R0,#(dword_7A10D8 - 0x7A0F80)]
301426:  CMP             R0, R1
301428:  BEQ             loc_30146C
30142A:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301430)
30142C:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
30142E:  LDR             R0, [R0]; CConversations::m_aConversations ...
301430:  LDR.W           R0, [R0,#(dword_7A10F4 - 0x7A0F80)]
301434:  CMP             R0, R1
301436:  BEQ             loc_301470
301438:  MOVS            R6, #0
30143A:  B               loc_301480
30143C:  MOVS            R0, #0
30143E:  B               loc_301472
301440:  MOVS            R0, #1
301442:  B               loc_301472
301444:  MOVS            R0, #2
301446:  B               loc_301472
301448:  MOVS            R0, #3
30144A:  B               loc_301472
30144C:  MOVS            R0, #4
30144E:  B               loc_301472
301450:  MOVS            R0, #5
301452:  B               loc_301472
301454:  MOVS            R0, #6
301456:  B               loc_301472
301458:  MOVS            R0, #7
30145A:  B               loc_301472
30145C:  MOVS            R0, #8
30145E:  B               loc_301472
301460:  MOVS            R0, #9
301462:  B               loc_301472
301464:  MOVS            R0, #0xA
301466:  B               loc_301472
301468:  MOVS            R0, #0xB
30146A:  B               loc_301472
30146C:  MOVS            R0, #0xC
30146E:  B               loc_301472
301470:  MOVS            R0, #0xD
301472:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30147C)
301474:  RSB.W           R0, R0, R0,LSL#3
301478:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
30147A:  LDR             R1, [R1]; CConversations::m_aConversations ...
30147C:  ADD.W           R6, R1, R0,LSL#2
301480:  LDR             R0, [R6,#4]; CConversations::m_bSettingUpConversation
301482:  CMP             R0, #0
301484:  BLT             loc_3014B2
301486:  LDR             R0, [R6,#0x14]; CConversations::m_bSettingUpConversation
301488:  MOVS            R5, #0
30148A:  CMP             R0, #1
30148C:  BEQ             loc_3014B4
30148E:  MOV             R0, R4; char *
301490:  BLX             j__Z13MakeUpperCasePc; MakeUpperCase(char *)
301494:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x30149C)
301496:  LDR             R1, [R6,#4]; CConversations::m_bSettingUpConversation
301498:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
30149A:  LDR             R0, [R0]; CConversations::m_aNodes ...
30149C:  ADD.W           R1, R1, R1,LSL#1
3014A0:  ADD.W           R1, R0, R1,LSL#3; char *
3014A4:  MOV             R0, R4; char *
3014A6:  BLX             strcmp
3014AA:  CMP             R0, #0
3014AC:  IT EQ
3014AE:  MOVEQ           R5, #1
3014B0:  B               loc_3014B4
3014B2:  MOVS            R5, #0
3014B4:  MOV             R0, R5
3014B6:  POP.W           {R11}
3014BA:  POP             {R4-R7,PC}
