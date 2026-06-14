; =========================================================
; Game Engine Function: sub_15764A
; Address            : 0x15764A - 0x157736
; =========================================================

15764A:  PUSH            {R4-R7,LR}
15764C:  ADD             R7, SP, #0xC
15764E:  PUSH.W          {R8-R11}
157652:  SUB             SP, SP, #0xC
157654:  MOV             LR, R3
157656:  MOVW            R1, #0xFBCD
15765A:  BFC.W           LR, #0x14, #0xC
15765E:  MOVT            R1, #0xFFFF
157662:  ADD.W           R12, R1, R3,LSR#20
157666:  STR             R3, [SP,#0x28+var_20]
157668:  MOV             R9, LR
15766A:  CMP.W           R3, #0x100000
15766E:  ITTE CC
157670:  MOVWCC          R12, #0xFBCE
157674:  MOVTCC          R12, #0xFFFF
157678:  ADDCS.W         R9, R9, #0x100000
15767C:  MOV.W           R1, R9,LSL#1
157680:  ORR.W           R6, R1, R2,LSR#31
157684:  SUB.W           R5, R12, #1
157688:  MOV.W           R8, R2,LSL#1
15768C:  ADD.W           R1, R8, #1
157690:  MOV             R10, R2
157692:  MOVS            R3, #0
157694:  MOV             R11, R12
157696:  MOV             R4, R9
157698:  STRD.W          R6, R5, [SP,#0x28+var_28]
15769C:  LSLS            R6, R6, #1
15769E:  SUBS            R5, #1
1576A0:  ORR.W           R6, R6, R1,LSR#31
1576A4:  LSLS            R1, R1, #1
1576A6:  CMP.W           R6, #0xFFFFFFFF
1576AA:  BGT             loc_15769C
1576AC:  LSLS            R4, R4, #1
1576AE:  SUB.W           R11, R11, #1
1576B2:  ORR.W           R4, R4, R2,LSR#31
1576B6:  LSLS            R2, R2, #1
1576B8:  CMP.W           R4, #0xFFFFFFFF
1576BC:  BGT             loc_1576AC
1576BE:  STR             R3, [R0,#0xC]
1576C0:  LDR             R3, [SP,#0x28+var_20]
1576C2:  STM.W           R0, {R2,R4,R11}
1576C6:  ORR.W           R2, R10, LR
1576CA:  CLZ.W           R2, R2
1576CE:  LSRS            R3, R3, #0x15
1576D0:  STR             R1, [R0,#0x20]
1576D2:  STR             R5, [R0,#0x18]
1576D4:  MOV.W           R2, R2,LSR#5
1576D8:  STR             R5, [R0,#0x28]
1576DA:  IT NE
1576DC:  MOVNE           R3, #1
1576DE:  ANDS            R2, R3
1576E0:  MOV.W           R1, R9,LSL#2
1576E4:  LDR             R3, [SP,#0x28+var_28]
1576E6:  ITT NE
1576E8:  ORRNE.W         R3, R1, R10,LSR#30
1576EC:  MOVNE.W         R8, R10,LSL#2
1576F0:  SUBS.W          R1, R8, #1
1576F4:  SBC.W           R3, R3, #0
1576F8:  CMP             R2, #0
1576FA:  LDR             R2, [SP,#0x28+var_24]
1576FC:  IT NE
1576FE:  SUBNE.W         R2, R12, #2
157702:  SUBS            R2, R2, R5
157704:  SUBS.W          R4, R2, #0x20 ; ' '
157708:  LSL.W           R5, R1, R2
15770C:  LSL.W           R3, R3, R2
157710:  RSB.W           R2, R2, #0x20 ; ' '
157714:  IT PL
157716:  MOVPL           R5, #0
157718:  STR             R6, [R0,#0x24]
15771A:  CMP             R4, #0
15771C:  LSR.W           R2, R1, R2
157720:  STR             R5, [R0,#0x10]
157722:  ORR.W           R2, R2, R3
157726:  IT PL
157728:  LSLPL.W         R2, R1, R4
15772C:  STR             R2, [R0,#0x14]
15772E:  ADD             SP, SP, #0xC
157730:  POP.W           {R8-R11}
157734:  POP             {R4-R7,PC}
