; =========================================================
; Game Engine Function: sub_27C4F0
; Address            : 0x27C4F0 - 0x27C75E
; =========================================================

27C4F0:  PUSH            {R4,R5,R7,LR}
27C4F2:  ADD             R7, SP, #8
27C4F4:  MOV             R4, R0
27C4F6:  LDR             R0, =(byte_6DF874 - 0x27C4FC)
27C4F8:  ADD             R0, PC; byte_6DF874
27C4FA:  LDRB            R0, [R0]
27C4FC:  CMP             R0, #0
27C4FE:  IT NE
27C500:  POPNE           {R4,R5,R7,PC}
27C502:  LDR             R5, =(dword_6D8200 - 0x27C508)
27C504:  ADD             R5, PC; dword_6D8200
27C506:  ADD.W           R0, R5, #8; mutex
27C50A:  BLX             pthread_mutex_lock
27C50E:  LDR             R0, [R5,#(dword_6D821C - 0x6D8200)]
27C510:  CMP             R0, #0
27C512:  BEQ             loc_27C5B0
27C514:  LDR             R1, =(dword_6D8200 - 0x27C51A)
27C516:  ADD             R1, PC; dword_6D8200
27C518:  LDR             R1, [R1,#(dword_6D8220 - 0x6D8200)]
27C51A:  CMP             R1, #1
27C51C:  BLT             loc_27C532
27C51E:  LDR             R2, [R4]
27C520:  MOVS            R3, #0
27C522:  LDR.W           R5, [R0,R3,LSL#2]
27C526:  CMP             R2, R5
27C528:  BEQ.W           loc_27C632
27C52C:  ADDS            R3, #1
27C52E:  CMP             R3, R1
27C530:  BLT             loc_27C522
27C532:  LDR             R0, =(dword_6D8200 - 0x27C538)
27C534:  ADD             R0, PC; dword_6D8200
27C536:  LDRD.W          R1, R2, [R0]
27C53A:  ADDS            R0, R1, #1
27C53C:  UXTB            R0, R0
27C53E:  CMP             R0, R2
27C540:  BNE             loc_27C58C
27C542:  CMP             R0, R1
27C544:  BEQ             loc_27C58C
27C546:  LDR             R2, =(dword_6D8200 - 0x27C550)
27C548:  ADD.W           R3, R0, R0,LSL#1
27C54C:  ADD             R2, PC; dword_6D8200
27C54E:  ADD.W           R2, R2, R3,LSL#3
27C552:  LDR             R2, [R2,#0x28]
27C554:  SUB.W           R12, R2, #6
27C558:  ADDS            R2, R1, #2
27C55A:  CMP.W           R12, #3
27C55E:  UXTB            R3, R2
27C560:  MOV             R2, R3
27C562:  IT HI
27C564:  MOVHI           R2, R0
27C566:  CMP             R3, R1
27C568:  BEQ             loc_27C586
27C56A:  CMP.W           R12, #3
27C56E:  BHI             loc_27C586
27C570:  LDR             R2, =(dword_6D8200 - 0x27C57A)
27C572:  ADD.W           R5, R3, R3,LSL#1
27C576:  ADD             R2, PC; dword_6D8200
27C578:  ADD.W           R2, R2, R5,LSL#3
27C57C:  LDR             R2, [R2,#0x28]
27C57E:  SUBS            R2, #6
27C580:  CMP             R2, #3
27C582:  MOV             R2, R3
27C584:  BLS             loc_27C5AE
27C586:  CMP             R2, R1
27C588:  BNE.W           loc_27C6AE
27C58C:  LDR             R2, =(dword_6D8200 - 0x27C59A)
27C58E:  ADD.W           R1, R1, R1,LSL#1
27C592:  VLD1.32         {D16-D17}, [R4]!
27C596:  ADD             R2, PC; dword_6D8200
27C598:  ADD.W           R1, R2, R1,LSL#3
27C59C:  VLDR            D18, [R4]
27C5A0:  ADDS            R1, #0x28 ; '('
27C5A2:  VST1.32         {D16-D17}, [R1]!
27C5A6:  VSTR            D18, [R1]
27C5AA:  STR             R0, [R2]
27C5AC:  B               loc_27C6CC
27C5AE:  B               loc_27C5AE
27C5B0:  LDR             R0, [R4]
27C5B2:  CMP             R0, #8
27C5B4:  BNE             loc_27C632
27C5B6:  LDR             R0, =(dword_6D8200 - 0x27C5BC)
27C5B8:  ADD             R0, PC; dword_6D8200
27C5BA:  LDRD.W          R1, R2, [R0]
27C5BE:  ADDS            R0, R1, #1
27C5C0:  UXTB            R0, R0
27C5C2:  CMP             R0, R2
27C5C4:  BNE             loc_27C60E
27C5C6:  CMP             R0, R1
27C5C8:  BEQ             loc_27C60E
27C5CA:  LDR             R2, =(dword_6D8200 - 0x27C5D4)
27C5CC:  ADD.W           R3, R0, R0,LSL#1
27C5D0:  ADD             R2, PC; dword_6D8200
27C5D2:  ADD.W           R2, R2, R3,LSL#3
27C5D6:  LDR             R2, [R2,#0x28]
27C5D8:  SUB.W           R12, R2, #6
27C5DC:  ADDS            R2, R1, #2
27C5DE:  CMP.W           R12, #3
27C5E2:  UXTB            R3, R2
27C5E4:  MOV             R2, R3
27C5E6:  IT HI
27C5E8:  MOVHI           R2, R0
27C5EA:  CMP             R3, R1
27C5EC:  BEQ             loc_27C60A
27C5EE:  CMP.W           R12, #3
27C5F2:  BHI             loc_27C60A
27C5F4:  LDR             R2, =(dword_6D8200 - 0x27C5FE)
27C5F6:  ADD.W           R5, R3, R3,LSL#1
27C5FA:  ADD             R2, PC; dword_6D8200
27C5FC:  ADD.W           R2, R2, R5,LSL#3
27C600:  LDR             R2, [R2,#0x28]
27C602:  SUBS            R2, #6
27C604:  CMP             R2, #3
27C606:  MOV             R2, R3
27C608:  BLS             loc_27C630
27C60A:  CMP             R2, R1
27C60C:  BNE             loc_27C708
27C60E:  LDR             R2, =(dword_6D8200 - 0x27C61C)
27C610:  ADD.W           R1, R1, R1,LSL#1
27C614:  VLD1.32         {D16-D17}, [R4]!
27C618:  ADD             R2, PC; dword_6D8200
27C61A:  ADD.W           R1, R2, R1,LSL#3
27C61E:  VLDR            D18, [R4]
27C622:  ADDS            R1, #0x28 ; '('
27C624:  VST1.32         {D16-D17}, [R1]!
27C628:  VSTR            D18, [R1]
27C62C:  STR             R0, [R2]
27C62E:  B               loc_27C726
27C630:  B               loc_27C630
27C632:  LDR             R0, =(dword_6D8200 - 0x27C638)
27C634:  ADD             R0, PC; dword_6D8200
27C636:  LDRD.W          R1, R2, [R0]
27C63A:  ADDS            R0, R1, #1
27C63C:  UXTB            R0, R0
27C63E:  CMP             R0, R2
27C640:  BNE             loc_27C68A
27C642:  CMP             R0, R1
27C644:  BEQ             loc_27C68A
27C646:  LDR             R2, =(dword_6D8200 - 0x27C650)
27C648:  ADD.W           R3, R0, R0,LSL#1
27C64C:  ADD             R2, PC; dword_6D8200
27C64E:  ADD.W           R2, R2, R3,LSL#3
27C652:  LDR             R2, [R2,#0x28]
27C654:  SUB.W           R12, R2, #6
27C658:  ADDS            R2, R1, #2
27C65A:  CMP.W           R12, #3
27C65E:  UXTB            R3, R2
27C660:  MOV             R2, R3
27C662:  IT HI
27C664:  MOVHI           R2, R0
27C666:  CMP             R3, R1
27C668:  BEQ             loc_27C686
27C66A:  CMP.W           R12, #3
27C66E:  BHI             loc_27C686
27C670:  LDR             R2, =(dword_6D8200 - 0x27C67A)
27C672:  ADD.W           R5, R3, R3,LSL#1
27C676:  ADD             R2, PC; dword_6D8200
27C678:  ADD.W           R2, R2, R5,LSL#3
27C67C:  LDR             R2, [R2,#0x28]
27C67E:  SUBS            R2, #6
27C680:  CMP             R2, #3
27C682:  MOV             R2, R3
27C684:  BLS             loc_27C6AC
27C686:  CMP             R2, R1
27C688:  BNE             loc_27C6D2
27C68A:  LDR             R2, =(dword_6D8200 - 0x27C698)
27C68C:  ADD.W           R1, R1, R1,LSL#1
27C690:  VLD1.32         {D16-D17}, [R4]!
27C694:  ADD             R2, PC; dword_6D8200
27C696:  ADD.W           R1, R2, R1,LSL#3
27C69A:  VLDR            D18, [R4]
27C69E:  ADDS            R1, #0x28 ; '('
27C6A0:  VST1.32         {D16-D17}, [R1]!
27C6A4:  VSTR            D18, [R1]
27C6A8:  STR             R0, [R2]
27C6AA:  B               loc_27C6F0
27C6AC:  B               loc_27C6AC
27C6AE:  LDR             R0, =(dword_6D8200 - 0x27C6BC)
27C6B0:  ADD.W           R1, R2, R2,LSL#1
27C6B4:  VLD1.32         {D16-D17}, [R4]!
27C6B8:  ADD             R0, PC; dword_6D8200
27C6BA:  ADD.W           R0, R0, R1,LSL#3
27C6BE:  VLDR            D18, [R4]
27C6C2:  ADDS            R0, #0x28 ; '('
27C6C4:  VST1.32         {D16-D17}, [R0]!
27C6C8:  VSTR            D18, [R0]
27C6CC:  LDR             R0, =(dword_6D8200 - 0x27C6D2)
27C6CE:  ADD             R0, PC; dword_6D8200
27C6D0:  B               loc_27C754
27C6D2:  LDR             R0, =(dword_6D8200 - 0x27C6E0)
27C6D4:  ADD.W           R1, R2, R2,LSL#1
27C6D8:  VLD1.32         {D16-D17}, [R4]!
27C6DC:  ADD             R0, PC; dword_6D8200
27C6DE:  ADD.W           R0, R0, R1,LSL#3
27C6E2:  VLDR            D18, [R4]
27C6E6:  ADDS            R0, #0x28 ; '('
27C6E8:  VST1.32         {D16-D17}, [R0]!
27C6EC:  VSTR            D18, [R0]
27C6F0:  LDR             R4, =(dword_6D8200 - 0x27C6F6)
27C6F2:  ADD             R4, PC; dword_6D8200
27C6F4:  ADD.W           R0, R4, #0xC; cond
27C6F8:  BLX             pthread_cond_signal
27C6FC:  ADD.W           R0, R4, #8
27C700:  POP.W           {R4,R5,R7,LR}
27C704:  B.W             j_pthread_mutex_unlock
27C708:  LDR             R0, =(dword_6D8200 - 0x27C716)
27C70A:  ADD.W           R1, R2, R2,LSL#1
27C70E:  VLD1.32         {D16-D17}, [R4]!
27C712:  ADD             R0, PC; dword_6D8200
27C714:  ADD.W           R0, R0, R1,LSL#3
27C718:  VLDR            D18, [R4]
27C71C:  ADDS            R0, #0x28 ; '('
27C71E:  VST1.32         {D16-D17}, [R0]!
27C722:  VSTR            D18, [R0]
27C726:  LDR             R4, =(dword_6D8200 - 0x27C72C)
27C728:  ADD             R4, PC; dword_6D8200
27C72A:  ADD.W           R0, R4, #0xC; cond
27C72E:  BLX             pthread_cond_signal
27C732:  LDRB            R0, [R4,#(byte_6D8218 - 0x6D8200)]
27C734:  CBZ             R0, loc_27C744
27C736:  LDR             R1, =(dword_6D8200 - 0x27C73C)
27C738:  ADD             R1, PC; dword_6D8200
27C73A:  ADD.W           R0, R1, #0x14; cond
27C73E:  ADDS            R1, #8; mutex
27C740:  BLX             pthread_cond_wait
27C744:  LDR             R1, =(aNvevent - 0x27C74E); "NVEvent"
27C746:  ADR             R2, aJavaUnblocking; "java unblocking from native handling pa"...
27C748:  MOVS            R0, #3; prio
27C74A:  ADD             R1, PC; "NVEvent"
27C74C:  BLX             __android_log_print
27C750:  LDR             R0, =(dword_6D8200 - 0x27C756)
27C752:  ADD             R0, PC; dword_6D8200
27C754:  ADDS            R0, #8
27C756:  POP.W           {R4,R5,R7,LR}
27C75A:  B.W             j_pthread_mutex_unlock
