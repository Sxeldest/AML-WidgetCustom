; =========================================================
; Game Engine Function: _ZN26CTaskSimpleFightingControl13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DB550 - 0x4DB692
; =========================================================

4DB550:  PUSH            {R4-R7,LR}
4DB552:  ADD             R7, SP, #0xC
4DB554:  PUSH.W          {R8}
4DB558:  SUB             SP, SP, #0x10
4DB55A:  MOV             R5, R2
4DB55C:  MOV             R4, R3
4DB55E:  MOV             R8, R1
4DB560:  MOV             R6, R0
4DB562:  CMP             R5, #0
4DB564:  BEQ.W           loc_4DB688
4DB568:  CMP             R5, #2
4DB56A:  BNE             loc_4DB570
4DB56C:  MOVS            R0, #1
4DB56E:  B               loc_4DB68A
4DB570:  CMP             R5, #1
4DB572:  BNE             loc_4DB660
4DB574:  CMP             R4, #0
4DB576:  BEQ             loc_4DB660
4DB578:  LDR             R0, [R4]
4DB57A:  LDR             R1, [R0,#0xC]
4DB57C:  MOV             R0, R4
4DB57E:  BLX             R1
4DB580:  CMP             R0, #0x16
4DB582:  BLT.W           loc_4DB688
4DB586:  LDR             R0, [R4]
4DB588:  LDR             R1, [R0,#8]
4DB58A:  MOV             R0, R4
4DB58C:  BLX             R1
4DB58E:  CMP             R0, #2
4DB590:  BEQ             loc_4DB688
4DB592:  LDR             R0, [R4]
4DB594:  LDR             R1, [R0,#8]
4DB596:  MOV             R0, R4
4DB598:  BLX             R1
4DB59A:  CMP             R0, #3
4DB59C:  BEQ             loc_4DB688
4DB59E:  LDR             R0, [R4]
4DB5A0:  LDR             R1, [R0,#8]
4DB5A2:  MOV             R0, R4
4DB5A4:  BLX             R1
4DB5A6:  CMP             R0, #4
4DB5A8:  BEQ             loc_4DB688
4DB5AA:  LDR             R0, [R4]
4DB5AC:  LDR             R1, [R0,#8]
4DB5AE:  MOV             R0, R4
4DB5B0:  BLX             R1
4DB5B2:  CMP             R0, #1
4DB5B4:  BEQ             loc_4DB5CE
4DB5B6:  LDR             R0, [R4]
4DB5B8:  LDR             R1, [R0,#8]
4DB5BA:  MOV             R0, R4
4DB5BC:  BLX             R1
4DB5BE:  CMP             R0, #5
4DB5C0:  BEQ             loc_4DB5CE
4DB5C2:  LDR             R0, [R4]
4DB5C4:  LDR             R1, [R0,#8]
4DB5C6:  MOV             R0, R4
4DB5C8:  BLX             R1
4DB5CA:  CMP             R0, #6
4DB5CC:  BNE             loc_4DB660
4DB5CE:  LDR             R0, [R6,#0xC]
4DB5D0:  CMP             R0, #0
4DB5D2:  BEQ             loc_4DB56C
4DB5D4:  LDR.W           R1, [R8,#0x14]
4DB5D8:  LDR             R2, [R0,#0x14]
4DB5DA:  ADD.W           R3, R1, #0x30 ; '0'
4DB5DE:  CMP             R1, #0
4DB5E0:  IT EQ
4DB5E2:  ADDEQ.W         R3, R8, #4
4DB5E6:  ADD.W           R1, R2, #0x30 ; '0'
4DB5EA:  CMP             R2, #0
4DB5EC:  VLDR            S0, [R3]
4DB5F0:  VLDR            S2, [R3,#4]
4DB5F4:  VLDR            S4, [R3,#8]
4DB5F8:  IT EQ
4DB5FA:  ADDEQ           R1, R0, #4
4DB5FC:  VLDR            S6, [R1]
4DB600:  ADD             R0, SP, #0x20+var_1C; this
4DB602:  VSUB.F32        S0, S6, S0
4DB606:  VSTR            S0, [SP,#0x20+var_1C]
4DB60A:  VLDR            S0, [R1,#4]
4DB60E:  VSUB.F32        S0, S0, S2
4DB612:  VSTR            S0, [SP,#0x20+var_18]
4DB616:  VLDR            S0, [R1,#8]
4DB61A:  VSUB.F32        S0, S0, S4
4DB61E:  VSTR            S0, [SP,#0x20+var_14]
4DB622:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4DB626:  VLDR            S0, [R4,#0x18]
4DB62A:  VLDR            S6, [SP,#0x20+var_1C]
4DB62E:  VLDR            S2, [R4,#0x1C]
4DB632:  VLDR            S8, [SP,#0x20+var_18]
4DB636:  VMUL.F32        S0, S0, S6
4DB63A:  VLDR            S4, [R4,#0x20]
4DB63E:  VMUL.F32        S2, S2, S8
4DB642:  VLDR            S10, [SP,#0x20+var_14]
4DB646:  VMUL.F32        S4, S4, S10
4DB64A:  VADD.F32        S0, S0, S2
4DB64E:  VLDR            S2, =-0.707
4DB652:  VADD.F32        S0, S0, S4
4DB656:  VCMPE.F32       S0, S2
4DB65A:  VMRS            APSR_nzcv, FPSCR
4DB65E:  BGT             loc_4DB688
4DB660:  LDR.W           R0, [R8,#0x440]; this
4DB664:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
4DB668:  CMP             R0, #0
4DB66A:  BEQ.W           loc_4DB56C
4DB66E:  LDR.W           R0, [R8,#0x440]
4DB672:  MOVS            R1, #0; int
4DB674:  ADDS            R0, #4; this
4DB676:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DB67A:  LDR             R1, [R0]
4DB67C:  MOV             R2, R5
4DB67E:  MOV             R3, R4
4DB680:  LDR             R6, [R1,#0x1C]
4DB682:  MOV             R1, R8
4DB684:  BLX             R6
4DB686:  B               loc_4DB68A
4DB688:  MOVS            R0, #0
4DB68A:  ADD             SP, SP, #0x10
4DB68C:  POP.W           {R8}
4DB690:  POP             {R4-R7,PC}
