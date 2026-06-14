; =========================================================
; Game Engine Function: sub_223500
; Address            : 0x223500 - 0x22371C
; =========================================================

223500:  PUSH            {R4-R8,R10,R11,LR}
223504:  ADD             R11, SP, #0x18
223508:  LDR             R7, [R2,#4]
22350C:  MOV             R3, #0
223510:  CMP             R3, R7,LSR#3
223514:  BEQ             loc_2236A4
223518:  LDR             R8, [R2]
22351C:  MOV             LR, R7,LSR#3
223520:  MOV             R7, #0
223524:  MOV             R3, LR
223528:  ADD             R5, R7, R3,LSR#1
22352C:  MOV             R2, R8
223530:  LDR             R6, [R2,R5,LSL#3]!
223534:  AND             R4, R6, #0x40000000
223538:  ORR             R6, R6, R4,LSL#1
22353C:  ADD             R2, R6, R2
223540:  MVN             R6, R3,LSR#1
223544:  CMP             R2, R1
223548:  ADD             R6, R3, R6
22354C:  MOVHI           R6, R3,LSR#1
223550:  ADDLS           R7, R5, #1
223554:  CMP             R6, #0
223558:  MOV             R3, R6
22355C:  BNE             loc_223528
223560:  MOV             R3, #0
223564:  CMP             R7, #0
223568:  BEQ             loc_2236A4
22356C:  ADD             R1, R8, R7,LSL#3
223570:  MOV             R12, #0xFFFFFFFF
223574:  CMP             R7, LR
223578:  BEQ             loc_223590
22357C:  MOV             R2, R7,LSL#3
223580:  LDR             R2, [R8,R2]!
223584:  AND             R7, R2, #0x40000000
223588:  ORR             R2, R2, R7,LSL#1
22358C:  ADD             R12, R2, R8
223590:  LDR             R4, [R1,#-8]!
223594:  ADDS            R2, R1, #4
223598:  BEQ             loc_2236A4
22359C:  LDR             R3, [R2]
2235A0:  CMP             R3, #1
2235A4:  BEQ             loc_22369C
2235A8:  CMP             R3, #0
2235AC:  BMI             loc_2235EC
2235B0:  AND             R7, R3, #0x40000000
2235B4:  ORR             R6, R3, R7,LSL#1
2235B8:  LDR             R7, [R6,R2]!
2235BC:  CMN             R7, #1
2235C0:  BLE             loc_2235F4
2235C4:  MOV             R5, R6
2235C8:  AND             R2, R7, #0x40000000
2235CC:  LDR             LR, [R5,#4]!
2235D0:  ORR             R2, R7, R2,LSL#1
2235D4:  ADD             R8, R2, R6
2235D8:  MOV             R2, LR,LSR#24
2235DC:  MOV             LR, #0
2235E0:  ADD             R2, R5, R2,LSL#2
2235E4:  MOV             R5, #0
2235E8:  B               loc_223670
2235EC:  MOV             R6, R2
2235F0:  MOV             R7, R3
2235F4:  UBFX            R2, R7, #0x18, #4
2235F8:  MOV             LR, R3,LSR#31
2235FC:  CMP             R2, #2
223600:  BEQ             loc_223630
223604:  CMP             R2, #1
223608:  BEQ             loc_22364C
22360C:  CMP             R2, #0
223610:  BNE             loc_2236E4
223614:  LDR             R8, =(off_234E8C - 0x223630)
223618:  CMN             R3, #1
22361C:  MOV             R7, #0
223620:  MOV             R5, #0
223624:  ADDGT           R7, R6, #4
223628:  LDR             R8, [PC,R8]; sub_2224AC
22362C:  B               loc_223674
223630:  LDR             R8, =(off_235220 - 0x223640)
223634:  MOV             R5, #2
223638:  LDR             R8, [PC,R8]; sub_222724
22363C:  UBFX            R7, R7, #0x10, #8
223640:  CMN             R3, #1
223644:  BLE             loc_223664
223648:  B               loc_22366C
22364C:  LDR             R8, =(off_234E90 - 0x22365C)
223650:  MOV             R5, #0
223654:  LDR             R8, [PC,R8]; sub_22270C
223658:  UBFX            R7, R7, #0x10, #8
22365C:  CMN             R3, #1
223660:  BGT             loc_22366C
223664:  CMP             R7, #0
223668:  BNE             loc_2236AC
22366C:  ADD             R2, R6, R7,LSL#2
223670:  ADD             R7, R2, #4
223674:  AND             R2, R4, #0x40000000
223678:  STR             R6, [R0,#0x178]
22367C:  STR             R12, [R0,#0x15C]
223680:  ORR             R2, R4, R2,LSL#1
223684:  STR             R7, [R0,#0x160]
223688:  ADD             R1, R2, R1
22368C:  ORR             R2, R5, LR
223690:  STR             R2, [R0,#0x16C]
223694:  STR             R1, [R0,#0x158]
223698:  STR             R8, [R0,#0x164]
22369C:  SUBS            R3, R3, #1
2236A0:  MOVWNE          R3, #1
2236A4:  MOV             R0, R3
2236A8:  POP             {R4-R8,R10,R11,PC}
2236AC:  LDR             R1, =(aLibunwindSS - 0x2236C0); "libunwind: %s - %s\n" ...
2236B0:  LDR             R2, =(aGetinfofromeha - 0x2236C8); "getInfoFromEHABISection" ...
2236B4:  LDR             R3, =(aIndexInlinedTa - 0x2236CC); "index inlined table detected but pr fun"... ...
2236B8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2236BC:  LDR             R0, =(__sF_ptr - 0x2236D0)
2236C0:  ADD             R2, PC, R2; "getInfoFromEHABISection"
2236C4:  ADD             R3, PC, R3; "index inlined table detected but pr fun"...
2236C8:  LDR             R0, [PC,R0]; __sF
2236CC:  ADD             R4, R0, #0xA8
2236D0:  MOV             R0, R4; stream
2236D4:  BL              fprintf
2236D8:  MOV             R0, R4; stream
2236DC:  BL              fflush
2236E0:  BL              abort
2236E4:  LDR             R1, =(aLibunwindSS - 0x2236F8); "libunwind: %s - %s\n" ...
2236E8:  LDR             R2, =(aGetinfofromeha - 0x223700); "getInfoFromEHABISection" ...
2236EC:  LDR             R3, =(aUnknownPersona - 0x223704); "unknown personality routine" ...
2236F0:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2236F4:  LDR             R0, =(__sF_ptr - 0x223708)
2236F8:  ADD             R2, PC, R2; "getInfoFromEHABISection"
2236FC:  ADD             R3, PC, R3; "unknown personality routine"
223700:  LDR             R0, [PC,R0]; __sF
223704:  ADD             R4, R0, #0xA8
223708:  MOV             R0, R4; stream
22370C:  BL              fprintf
223710:  MOV             R0, R4; stream
223714:  BL              fflush
223718:  BL              abort
