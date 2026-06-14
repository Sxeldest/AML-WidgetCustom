; =========================================================
; Game Engine Function: sub_1554E2
; Address            : 0x1554E2 - 0x1555DE
; =========================================================

1554E2:  PUSH            {R4-R7,LR}
1554E4:  ADD             R7, SP, #0xC
1554E6:  PUSH.W          {R8-R10}
1554EA:  SUB             SP, SP, #0x20
1554EC:  MOV             R4, R1
1554EE:  SUB.W           R1, R7, #-var_1A; int
1554F2:  MOV             R8, R0
1554F4:  MOV             R0, R4; int
1554F6:  MOVS            R2, #0x10
1554F8:  MOVS            R3, #1
1554FA:  BL              sub_17D786
1554FE:  CMP             R0, #0
155500:  BEQ             loc_1555D4
155502:  ADD             R1, SP, #0x38+var_1C; int
155504:  MOV             R0, R4; int
155506:  MOVS            R2, #0x10
155508:  MOVS            R3, #1
15550A:  BL              sub_17D786
15550E:  MOV             R1, R0
155510:  MOVS            R0, #0
155512:  CMP             R1, #0
155514:  BEQ             loc_1555D6
155516:  SUB.W           R1, R7, #-var_1E; int
15551A:  STRH.W          R0, [R7,#var_1E]
15551E:  MOV             R0, R4; int
155520:  MOVS            R2, #0x10
155522:  MOVS            R3, #1
155524:  BL              sub_17D786
155528:  CMP             R0, #0
15552A:  BEQ             loc_1555D4
15552C:  LDRH.W          R0, [R7,#var_1E]
155530:  MOV.W           R10, #0
155534:  STR.W           R10, [SP,#0x38+var_24]
155538:  STRD.W          R10, R10, [SP,#0x38+var_2C]
15553C:  CBZ             R0, loc_155584
15553E:  SUB.W           R6, R7, #-var_2E
155542:  ADD.W           R9, SP, #0x38+var_2C
155546:  MOVS            R5, #0
155548:  STRH.W          R10, [R7,#var_2E]
15554C:  MOV             R0, R4; int
15554E:  MOV             R1, R6; int
155550:  MOVS            R2, #0x10
155552:  MOVS            R3, #1
155554:  BL              sub_17D786
155558:  LDRD.W          R0, R1, [SP,#0x38+var_28]
15555C:  CMP             R0, R1
15555E:  BEQ             loc_15556C
155560:  LDRH.W          R1, [R7,#var_2E]
155564:  STRH.W          R1, [R0],#2
155568:  STR             R0, [SP,#0x38+var_28]
15556A:  B               loc_155574
15556C:  MOV             R0, R9
15556E:  MOV             R1, R6
155570:  BL              sub_14F668
155574:  LDRH.W          R0, [R7,#var_1E]
155578:  ADDS            R5, #1
15557A:  CMP             R5, R0
15557C:  BCC             loc_155548
15557E:  MOV             R0, R4
155580:  BL              sub_17D902
155584:  LDR             R0, [R4]
155586:  LDR             R3, [R4,#8]
155588:  SUBS            R0, R0, R3
15558A:  ADDS            R6, R0, #7
15558C:  MOVW            R0, #0x1007
155590:  CMP             R6, R0
155592:  BHI             loc_1555CA
155594:  LDRH.W          R1, [R7,#var_1A]
155598:  CMP             R6, #0x18
15559A:  LDR.W           R0, [R8,#0x58]
15559E:  LDR             R5, [R4,#0xC]
1555A0:  MOV.W           R4, R6,LSR#3
1555A4:  LDRH.W          R2, [SP,#0x38+var_1C]
1555A8:  IT CC
1555AA:  MOVCC           R4, #0
1555AC:  ADDS            R3, #7
1555AE:  ADD.W           R3, R5, R3,ASR#3
1555B2:  STRD.W          R3, R4, [SP,#0x38+var_38]
1555B6:  ADD             R3, SP, #0x38+var_2C
1555B8:  BL              sub_152CF8
1555BC:  LDR             R0, [SP,#0x38+var_2C]; void *
1555BE:  CBZ             R0, loc_1555C6
1555C0:  STR             R0, [SP,#0x38+var_28]
1555C2:  BLX             j__ZdlPv; operator delete(void *)
1555C6:  MOVS            R0, #1
1555C8:  B               loc_1555D6
1555CA:  LDR             R0, [SP,#0x38+var_2C]; void *
1555CC:  CBZ             R0, loc_1555D4
1555CE:  STR             R0, [SP,#0x38+var_28]
1555D0:  BLX             j__ZdlPv; operator delete(void *)
1555D4:  MOVS            R0, #0
1555D6:  ADD             SP, SP, #0x20 ; ' '
1555D8:  POP.W           {R8-R10}
1555DC:  POP             {R4-R7,PC}
