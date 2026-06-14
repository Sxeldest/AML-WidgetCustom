; =========================================================
; Game Engine Function: _ZN10Interior_c15FindBoundingBoxEiiPiS0_S0_S0_S0_
; Address            : 0x446528 - 0x4466CA
; =========================================================

446528:  PUSH            {R4-R7,LR}
44652A:  ADD             R7, SP, #0xC
44652C:  PUSH.W          {R8-R11}
446530:  SUB             SP, SP, #0x1C; int *
446532:  MOV             R5, R1
446534:  MOV             R6, R0
446536:  RSB.W           R0, R5, R5,LSL#4
44653A:  MOV             R4, R2
44653C:  LDRD.W          R12, LR, [R7,#arg_8]
446540:  LSLS            R1, R0, #1
446542:  ADD.W           R10, R6, R0,LSL#1
446546:  ADD.W           R0, R4, R0,LSL#1
44654A:  LDR.W           R8, [R7,#arg_4]
44654E:  ADD.W           R9, LR, R1,LSL#2
446552:  ADD.W           R0, LR, R0,LSL#2
446556:  ADD.W           R11, R0, #0x78 ; 'x'
44655A:  ADDS            R0, R5, #1
44655C:  STR             R0, [SP,#0x38+var_20]
44655E:  SUBS            R0, R5, #1
446560:  STR             R0, [SP,#0x38+var_24]
446562:  B               loc_44657C
446564:  MOVS            R1, #1
446566:  STR.W           R1, [R11,#-0x7C]
44656A:  SUB.W           R11, R11, #4
44656E:  LDR.W           R1, [R8]
446572:  CMP             R1, R4
446574:  MOV             R4, R0
446576:  IT GE
446578:  STRGE.W         R0, [R8]
44657C:  CMP             R5, #1
44657E:  ITTT GE
446580:  LDRGE           R0, [R6,#0x14]
446582:  LDRBGE          R1, [R0,#2]
446584:  CMPGE           R1, R5
446586:  BLT             loc_4465A2
446588:  LDRB            R0, [R0,#3]
44658A:  CMP             R4, R0
44658C:  BCS             loc_4465A2
44658E:  ADD.W           R0, R10, R4
446592:  LDRB.W          R0, [R0,#0x4A]
446596:  CMP             R0, #5
446598:  ITT EQ
44659A:  LDREQ.W         R0, [R11,#-0xF0]
44659E:  CMPEQ           R0, #0
4465A0:  BEQ             loc_446602
4465A2:  CMP             R4, #0x1C
4465A4:  BGT             loc_446636
4465A6:  LDR             R0, [R6,#0x14]
4465A8:  LDRB            R1, [R0,#2]
4465AA:  CMP             R1, R5
4465AC:  BLE             loc_446636
4465AE:  CMP             R5, #0
4465B0:  BLT             loc_446636
4465B2:  LDRB            R0, [R0,#3]
4465B4:  ADDS            R2, R4, #1; int
4465B6:  CMP             R2, R0
4465B8:  BCS             loc_446636
4465BA:  ADD.W           R0, R10, R4
4465BE:  LDRB.W          R0, [R0,#0x69]
4465C2:  CMP             R0, #5
4465C4:  BNE             loc_446636
4465C6:  ADD.W           R0, R9, R4,LSL#2
4465CA:  LDR             R1, [R0,#4]
4465CC:  CBNZ            R1, loc_446636
4465CE:  MOVS            R1, #1
4465D0:  STR.W           R9, [SP,#0x38+var_28]
4465D4:  STR             R1, [R0,#4]
4465D6:  MOV             R1, R5; int
4465D8:  LDR.W           R0, [R12]
4465DC:  MOV             R9, R3
4465DE:  CMP             R0, R4
4465E0:  LDR             R0, [R7,#arg_0]
4465E2:  IT LE
4465E4:  STRLE.W         R2, [R12]
4465E8:  STMEA.W         SP, {R0,R8,R12,LR}
4465EC:  MOV             R0, R6; this
4465EE:  BLX             j__ZN10Interior_c15FindBoundingBoxEiiPiS0_S0_S0_S0_; Interior_c::FindBoundingBox(int,int,int *,int *,int *,int *,int *)
4465F2:  LDRD.W          R12, LR, [R7,#arg_8]
4465F6:  MOV             R3, R9
4465F8:  LDR.W           R9, [SP,#0x38+var_28]
4465FC:  CMP             R5, #0x1C
4465FE:  BLE             loc_44663A
446600:  B               loc_446694
446602:  MOVS            R0, #1
446604:  STR.W           R9, [SP,#0x38+var_28]
446608:  STR.W           R0, [R11,#-0xF0]
44660C:  MOV             R2, R4; int
44660E:  LDR             R0, [R3]
446610:  MOV             R9, R3
446612:  CMP             R0, R5
446614:  ITT GE
446616:  LDRGE           R0, [SP,#0x38+var_24]
446618:  STRGE           R0, [R3]
44661A:  LDR             R0, [R7,#arg_0]
44661C:  STMEA.W         SP, {R0,R8,R12,LR}
446620:  MOV             R0, R6; this
446622:  LDR             R1, [SP,#0x38+var_24]; int
446624:  BLX             j__ZN10Interior_c15FindBoundingBoxEiiPiS0_S0_S0_S0_; Interior_c::FindBoundingBox(int,int,int *,int *,int *,int *,int *)
446628:  LDRD.W          R12, LR, [R7,#arg_8]
44662C:  MOV             R3, R9; int *
44662E:  LDR.W           R9, [SP,#0x38+var_28]
446632:  CMP             R4, #0x1C
446634:  BLE             loc_4465A6
446636:  CMP             R5, #0x1C
446638:  BGT             loc_446694
44663A:  LDR             R0, [R6,#0x14]
44663C:  LDR             R2, [SP,#0x38+var_20]
44663E:  LDRB            R1, [R0,#2]
446640:  CMP             R2, R1
446642:  BGE             loc_446694
446644:  CMP.W           R5, #0xFFFFFFFF
446648:  BLT             loc_446694
44664A:  LDRB            R0, [R0,#3]
44664C:  CMP             R4, R0
44664E:  BCS             loc_446694
446650:  ADD.W           R0, R10, R4
446654:  LDRB.W          R0, [R0,#0x86]
446658:  CMP             R0, #5
44665A:  ITT EQ
44665C:  LDREQ.W         R0, [R11]
446660:  CMPEQ           R0, #0
446662:  BNE             loc_446694
446664:  LDR             R1, [R7,#arg_0]
446666:  MOVS            R0, #1
446668:  STR.W           R9, [SP,#0x38+var_28]
44666C:  MOV             R2, R4; int
44666E:  STR.W           R0, [R11]
446672:  MOV             R9, R3
446674:  LDR             R0, [R1]
446676:  CMP             R0, R5
446678:  ITT LE
44667A:  LDRLE           R0, [SP,#0x38+var_20]
44667C:  STRLE           R0, [R1]
44667E:  STMEA.W         SP, {R1,R8,R12,LR}
446682:  MOV             R0, R6; this
446684:  LDR             R1, [SP,#0x38+var_20]; int
446686:  BLX             j__ZN10Interior_c15FindBoundingBoxEiiPiS0_S0_S0_S0_; Interior_c::FindBoundingBox(int,int,int *,int *,int *,int *,int *)
44668A:  LDRD.W          R12, LR, [R7,#arg_8]
44668E:  MOV             R3, R9; int *
446690:  LDR.W           R9, [SP,#0x38+var_28]
446694:  CMP             R4, #1
446696:  ITTT GE
446698:  LDRGE           R1, [R6,#0x14]
44669A:  LDRBGE          R0, [R1,#2]
44669C:  CMPGE           R0, R5
44669E:  BLE             loc_4466C2
4466A0:  CMP             R5, #0
4466A2:  BLT             loc_4466C2
4466A4:  LDRB            R1, [R1,#3]
4466A6:  SUBS            R0, R4, #1
4466A8:  CMP             R0, R1
4466AA:  BCS             loc_4466C2
4466AC:  ADD.W           R1, R10, R4
4466B0:  LDRB.W          R1, [R1,#0x67]
4466B4:  CMP             R1, #5
4466B6:  ITT EQ
4466B8:  LDREQ.W         R1, [R11,#-0x7C]
4466BC:  CMPEQ           R1, #0
4466BE:  BEQ.W           loc_446564
4466C2:  ADD             SP, SP, #0x1C
4466C4:  POP.W           {R8-R11}
4466C8:  POP             {R4-R7,PC}
