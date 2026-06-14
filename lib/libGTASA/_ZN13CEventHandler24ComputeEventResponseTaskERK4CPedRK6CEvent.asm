; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputeEventResponseTaskERK4CPedRK6CEvent
; Address            : 0x37C50C - 0x37C5F6
; =========================================================

37C50C:  PUSH            {R4,R5,R7,LR}
37C50E:  ADD             R7, SP, #8
37C510:  SUB             SP, SP, #0x38
37C512:  VMOV.I32        Q8, #0
37C516:  MOV             R2, SP
37C518:  ADD.W           R3, R2, #0xE
37C51C:  MOVS            R4, #0
37C51E:  VST1.16         {D16-D17}, [R3]
37C522:  ADD.W           R3, R2, #0x20 ; ' '
37C526:  VST1.64         {D16-D17}, [R3]
37C52A:  ORR.W           R3, R2, #4
37C52E:  VST1.32         {D16-D17}, [R3]
37C532:  STR             R0, [SP,#0x40+var_40]
37C534:  MOV             R0, R2; this
37C536:  MOVS            R2, #0; CTask *
37C538:  STR             R4, [SP,#0x40+var_10]
37C53A:  BLX             j__ZN13CEventHandler24ComputeEventResponseTaskEP6CEventP5CTask; CEventHandler::ComputeEventResponseTask(CEvent *,CTask *)
37C53E:  LDR             R0, [SP,#0x40+var_1C]
37C540:  CMP             R0, #0
37C542:  ITT NE
37C544:  STRNE           R4, [SP,#0x40+var_1C]
37C546:  MOVNE           R4, R0
37C548:  LDR             R0, [SP,#0x40+var_20]
37C54A:  CBZ             R0, loc_37C564
37C54C:  LDR             R1, [R0]
37C54E:  LDR             R1, [R1,#4]
37C550:  BLX             R1
37C552:  LDR             R0, [SP,#0x40+var_1C]
37C554:  MOVS            R1, #0
37C556:  STR             R1, [SP,#0x40+var_20]
37C558:  CMP             R0, #0
37C55A:  ITTT NE
37C55C:  LDRNE           R1, [R0]
37C55E:  LDRNE           R1, [R1,#4]
37C560:  BLXNE           R1
37C562:  B               loc_37C568
37C564:  MOVS            R0, #0
37C566:  STR             R0, [SP,#0x40+var_20]
37C568:  LDR             R0, [SP,#0x40+var_18]
37C56A:  MOVS            R5, #0
37C56C:  STR             R5, [SP,#0x40+var_1C]
37C56E:  CMP             R0, #0
37C570:  ITTT NE
37C572:  LDRNE           R1, [R0]
37C574:  LDRNE           R1, [R1,#4]
37C576:  BLXNE           R1
37C578:  LDR             R0, [SP,#0x40+var_14]
37C57A:  STR             R5, [SP,#0x40+var_18]
37C57C:  CMP             R0, #0
37C57E:  ITTT NE
37C580:  LDRNE           R1, [R0]
37C582:  LDRNE           R1, [R1,#4]
37C584:  BLXNE           R1
37C586:  LDR             R0, [SP,#0x40+var_10]
37C588:  MOVS            R5, #0
37C58A:  STR             R5, [SP,#0x40+var_14]
37C58C:  CMP             R0, #0
37C58E:  ITTT NE
37C590:  LDRNE           R1, [R0]
37C592:  LDRNE           R1, [R1,#4]
37C594:  BLXNE           R1
37C596:  LDR             R0, [SP,#0x40+var_34]
37C598:  STR             R5, [SP,#0x40+var_10]
37C59A:  CMP             R0, #0
37C59C:  ITTT NE
37C59E:  LDRNE           R1, [R0]
37C5A0:  LDRNE           R1, [R1,#4]
37C5A2:  BLXNE           R1
37C5A4:  LDR             R0, [SP,#0x40+var_38]
37C5A6:  MOVS            R5, #0
37C5A8:  STR             R5, [SP,#0x40+var_34]
37C5AA:  CMP             R0, #0
37C5AC:  ITTT NE
37C5AE:  LDRNE           R1, [R0]
37C5B0:  LDRNE           R1, [R1,#4]
37C5B2:  BLXNE           R1
37C5B4:  LDR             R0, [SP,#0x40+var_30]
37C5B6:  STR             R5, [SP,#0x40+var_38]
37C5B8:  CBZ             R0, loc_37C5C4
37C5BA:  LDR             R1, [R0]
37C5BC:  LDR             R1, [R1,#4]
37C5BE:  BLX             R1
37C5C0:  MOVS            R0, #0
37C5C2:  STR             R0, [SP,#0x40+var_30]
37C5C4:  LDR             R0, [SP,#0x40+var_34]
37C5C6:  CMP             R0, #0
37C5C8:  ITTT NE
37C5CA:  LDRNE           R1, [R0]
37C5CC:  LDRNE           R1, [R1,#4]
37C5CE:  BLXNE           R1
37C5D0:  LDR             R0, [SP,#0x40+var_38]
37C5D2:  MOVS            R5, #0
37C5D4:  STR             R5, [SP,#0x40+var_34]
37C5D6:  CMP             R0, #0
37C5D8:  ITTT NE
37C5DA:  LDRNE           R1, [R0]
37C5DC:  LDRNE           R1, [R1,#4]
37C5DE:  BLXNE           R1
37C5E0:  LDR             R0, [SP,#0x40+var_30]
37C5E2:  STR             R5, [SP,#0x40+var_38]
37C5E4:  CBZ             R0, loc_37C5F0
37C5E6:  LDR             R1, [R0]
37C5E8:  LDR             R1, [R1,#4]
37C5EA:  BLX             R1
37C5EC:  MOVS            R0, #0
37C5EE:  STR             R0, [SP,#0x40+var_30]
37C5F0:  MOV             R0, R4
37C5F2:  ADD             SP, SP, #0x38 ; '8'
37C5F4:  POP             {R4,R5,R7,PC}
