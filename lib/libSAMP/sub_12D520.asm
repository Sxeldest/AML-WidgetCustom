; =========================================================
; Game Engine Function: sub_12D520
; Address            : 0x12D520 - 0x12D5B2
; =========================================================

12D520:  SUB             SP, SP, #8
12D522:  PUSH            {R4-R7,LR}
12D524:  ADD             R7, SP, #0xC
12D526:  PUSH.W          {R11}
12D52A:  SUB.W           SP, SP, #0x238
12D52E:  MOV             R4, R0
12D530:  MOV             R0, R1; s
12D532:  MOV             R5, R1
12D534:  STRD.W          R2, R3, [R7,#var_s8]
12D538:  BLX             strlen
12D53C:  ADD             R6, SP, #0x248+var_21C
12D53E:  MOV             R2, R0
12D540:  MOV             R1, R5
12D542:  MOV             R0, R6
12D544:  BL              sub_164D04
12D548:  LDRB.W          R0, [SP,#0x248+var_21C]
12D54C:  ADD.W           R1, R7, #8
12D550:  LDR             R3, [SP,#0x248+var_214]
12D552:  STR             R1, [SP,#0x248+var_220]
12D554:  LSLS            R0, R0, #0x1F
12D556:  STR             R1, [SP,#0x248+var_248]
12D558:  ADD             R0, SP, #0x248+s
12D55A:  MOV.W           R1, #0
12D55E:  MOV.W           R2, #0x200
12D562:  IT EQ
12D564:  ADDEQ           R3, R6, #1
12D566:  BLX             __vsprintf_chk
12D56A:  ADD             R0, SP, #0x248+var_22C; int
12D56C:  ADD             R1, SP, #0x248+s; s
12D56E:  BL              sub_DC6DC
12D572:  ADR             R0, dword_12D5D8
12D574:  ADD             R2, SP, #0x248+var_240
12D576:  VLD1.64         {D16-D17}, [R0]
12D57A:  VST1.64         {D16-D17}, [R2]
12D57E:  ADD             R1, SP, #0x248+var_22C
12D580:  MOV             R0, R4
12D582:  BL              sub_12D3E0
12D586:  LDRB.W          R0, [SP,#0x248+var_22C]
12D58A:  LSLS            R0, R0, #0x1F
12D58C:  ITT NE
12D58E:  LDRNE           R0, [SP,#0x248+var_224]; void *
12D590:  BLXNE           j__ZdlPv; operator delete(void *)
12D594:  LDRB.W          R0, [SP,#0x248+var_21C]
12D598:  LSLS            R0, R0, #0x1F
12D59A:  ITT NE
12D59C:  LDRNE           R0, [SP,#0x248+var_214]; void *
12D59E:  BLXNE           j__ZdlPv; operator delete(void *)
12D5A2:  ADD.W           SP, SP, #0x238
12D5A6:  POP.W           {R11}
12D5AA:  POP.W           {R4-R7,LR}
12D5AE:  ADD             SP, SP, #8
12D5B0:  BX              LR
