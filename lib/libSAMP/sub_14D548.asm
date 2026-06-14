; =========================================================
; Game Engine Function: sub_14D548
; Address            : 0x14D548 - 0x14D594
; =========================================================

14D548:  PUSH            {R7,LR}
14D54A:  MOV             R7, SP
14D54C:  SUB             SP, SP, #0x118
14D54E:  LDRD.W          R1, R0, [R0]; src
14D552:  MOVS            R3, #0
14D554:  ASRS            R2, R0, #0x1F
14D556:  ADD.W           R0, R0, R2,LSR#29
14D55A:  MOVS            R2, #1
14D55C:  ADD.W           R2, R2, R0,ASR#3; size
14D560:  ADD             R0, SP, #0x120+var_11C; int
14D562:  BL              sub_17D4F2
14D566:  LDR             R0, =(off_234970 - 0x14D570)
14D568:  LDRD.W          R1, R2, [SP,#0x120+var_114]
14D56C:  ADD             R0, PC; off_234970
14D56E:  ASRS            R3, R1, #3
14D570:  LDR             R0, [R0]; dword_23DEF0
14D572:  LDRB            R2, [R2,R3]
14D574:  ADDS            R3, R1, #1
14D576:  AND.W           R1, R1, #7
14D57A:  LDR             R0, [R0]
14D57C:  STR             R3, [SP,#0x120+var_114]
14D57E:  LSL.W           R1, R2, R1
14D582:  UXTB            R1, R1
14D584:  LSRS            R1, R1, #7
14D586:  BL              nullsub_30
14D58A:  ADD             R0, SP, #0x120+var_11C
14D58C:  BL              sub_17D542
14D590:  ADD             SP, SP, #0x118
14D592:  POP             {R7,PC}
