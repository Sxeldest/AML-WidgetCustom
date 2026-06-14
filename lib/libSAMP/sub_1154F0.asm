; =========================================================
; Game Engine Function: sub_1154F0
; Address            : 0x1154F0 - 0x11559A
; =========================================================

1154F0:  PUSH            {R4-R7,LR}
1154F2:  ADD             R7, SP, #0xC
1154F4:  PUSH.W          {R8}
1154F8:  LDR             R1, =(off_23494C - 0x115508)
1154FA:  MOVW            R8, #0x6646
1154FE:  LDR             R6, [R0,#4]
115500:  MOVT            R8, #0x3F ; '?'
115504:  ADD             R1, PC; off_23494C
115506:  MOVS            R2, #0
115508:  LDR             R5, [R1]; dword_23DF24
11550A:  LDR             R1, [R5]
11550C:  ADD.W           R0, R1, R8
115510:  ADD.W           R1, R6, #0x10
115514:  BL              sub_1642C2
115518:  LDR             R0, [R5]
11551A:  ADD.W           R1, R6, #0x20 ; ' '
11551E:  MOVS            R2, #0
115520:  ADD             R0, R8
115522:  ADDS            R0, #0xE
115524:  BL              sub_1642C2
115528:  LDR             R0, [R5]
11552A:  ADD.W           R4, R6, #0x38 ; '8'
11552E:  MOVS            R2, #0xE
115530:  ADD             R0, R8
115532:  MOV             R1, R4
115534:  ADDS            R0, #0x1C
115536:  BL              sub_1642C2
11553A:  LDR             R0, [R5]
11553C:  MOV             R1, R4
11553E:  MOVS            R2, #0xE
115540:  ADD             R0, R8
115542:  ADDS            R0, #0x88
115544:  BL              sub_1642C2
115548:  LDR             R0, [R5]
11554A:  MOV             R1, R4
11554C:  MOVS            R2, #0xE
11554E:  ADD             R0, R8
115550:  ADDS            R0, #0xD0
115552:  BL              sub_1642C2
115556:  LDR             R0, [R5]
115558:  ADD.W           R4, R6, #0x30 ; '0'
11555C:  MOVS            R2, #0
11555E:  ADD             R0, R8
115560:  MOV             R1, R4
115562:  ADDS            R0, #0x36 ; '6'
115564:  BL              sub_1642C2
115568:  LDR             R0, [R5]
11556A:  MOV             R1, R4
11556C:  MOVS            R2, #0
11556E:  ADD             R0, R8
115570:  ADDS            R0, #0x4A ; 'J'
115572:  BL              sub_1642C2
115576:  LDR             R0, [R5]
115578:  MOV             R1, R4
11557A:  MOVS            R2, #0
11557C:  ADD             R0, R8
11557E:  ADDS            R0, #0xA2
115580:  BL              sub_1642C2
115584:  LDR             R0, [R5]
115586:  MOV             R1, R4
115588:  MOVS            R2, #0
11558A:  ADD             R0, R8
11558C:  ADDS            R0, #0xBA
11558E:  POP.W           {R8}
115592:  POP.W           {R4-R7,LR}
115596:  B.W             sub_1642C2
