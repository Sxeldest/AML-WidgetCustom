; =========================================================
; Game Engine Function: _ZN14CRunningScript15StoreParametersEs
; Address            : 0x32969C - 0x3297F0
; =========================================================

32969C:  PUSH            {R4-R7,LR}
32969E:  ADD             R7, SP, #0xC
3296A0:  PUSH.W          {R8-R11}
3296A4:  SUB             SP, SP, #0x14
3296A6:  CMP             R1, #1
3296A8:  BLT.W           loc_3297E8
3296AC:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3296BA)
3296AE:  UXTH            R1, R1
3296B0:  LDR             R2, =(ScriptParams_ptr - 0x3296BC)
3296B2:  MOV.W           R9, #0xFFFFFFFF
3296B6:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3296B8:  ADD             R2, PC; ScriptParams_ptr
3296BA:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
3296BC:  STR             R3, [SP,#0x30+var_20]
3296BE:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3296C6)
3296C0:  LDR             R2, [R2]; ScriptParams
3296C2:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3296C4:  LDR.W           R10, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
3296C8:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3296CE)
3296CA:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3296CC:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
3296CE:  STR             R3, [SP,#0x30+var_24]
3296D0:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3296D6)
3296D2:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3296D4:  LDR.W           R12, [R3]; CTheScripts::ScriptSpace ...
3296D8:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3296DE)
3296DA:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3296DC:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
3296DE:  STR             R3, [SP,#0x30+var_28]
3296E0:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3296E6)
3296E2:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3296E4:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
3296E6:  STR             R3, [SP,#0x30+var_2C]
3296E8:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3296EE)
3296EA:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3296EC:  LDR.W           LR, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
3296F0:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x3296F6)
3296F2:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3296F4:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
3296F6:  STR             R3, [SP,#0x30+var_30]
3296F8:  LDR             R3, [R0,#0x14]
3296FA:  MOV             R4, R3
3296FC:  LDRSB.W         R5, [R4],#1
329700:  STR             R4, [R0,#0x14]
329702:  SUBS            R4, R5, #2; switch 7 cases
329704:  CMP             R4, #6
329706:  BHI             def_329708; jumptable 00329708 default case, cases 4-6
329708:  TBB.W           [PC,R4]; switch jump
32970C:  DCB 4; jump table for switch statement
32970D:  DCB 0xC
32970E:  DCB 0x69
32970F:  DCB 0x69
329710:  DCB 0x69
329711:  DCB 0x1D
329712:  DCB 0x33
329713:  ALIGN 2
329714:  LDRH.W          R4, [R3,#1]; jumptable 00329708 case 2
329718:  ADDS            R3, #3
32971A:  STR             R3, [R0,#0x14]
32971C:  LDR             R5, [SP,#0x30+var_20]
32971E:  LDR             R3, [R2]
329720:  STR             R3, [R5,R4]
329722:  B               def_329708; jumptable 00329708 default case, cases 4-6
329724:  LDRH.W          R5, [R3,#1]; jumptable 00329708 case 3
329728:  ADDS            R3, #3
32972A:  LDRB.W          R4, [R0,#0xFC]
32972E:  STR             R3, [R0,#0x14]
329730:  ADD.W           R6, R10, R5,LSL#2
329734:  ADD.W           R5, R0, R5,LSL#2
329738:  CMP             R4, #0
32973A:  LDR             R3, [R2]
32973C:  IT EQ
32973E:  ADDEQ.W         R6, R5, #0x3C ; '<'
329742:  STR             R3, [R6]
329744:  B               def_329708; jumptable 00329708 default case, cases 4-6
329746:  LDRSH.W         R5, [R3,#5]; jumptable 00329708 case 7
32974A:  LDRH.W          R6, [R3,#3]
32974E:  LDRH.W          R4, [R3,#1]
329752:  ADDS            R3, #7
329754:  CMP             R5, R9
329756:  BLE             loc_3297A0
329758:  LDR             R5, [SP,#0x30+var_24]
32975A:  LDRB.W          R8, [R0,#0xFC]
32975E:  ADD.W           R5, R5, R6,LSL#2
329762:  ADD.W           R6, R0, R6,LSL#2
329766:  CMP.W           R8, #0
32976A:  IT EQ
32976C:  ADDEQ.W         R5, R6, #0x3C ; '<'
329770:  B               loc_3297A4
329772:  LDRSH.W         R5, [R3,#5]; jumptable 00329708 case 8
329776:  ADD.W           R8, R3, #7
32977A:  LDRH.W          R11, [R3,#3]
32977E:  LDRH.W          R4, [R3,#1]
329782:  CMP             R5, R9
329784:  BLE             loc_3297B4
329786:  LDR             R3, [SP,#0x30+var_2C]
329788:  ADD.W           R5, R0, R11,LSL#2
32978C:  LDRB.W          R9, [R0,#0xFC]
329790:  ADD.W           R3, R3, R11,LSL#2
329794:  CMP.W           R9, #0
329798:  IT EQ
32979A:  ADDEQ.W         R3, R5, #0x3C ; '<'
32979E:  B               loc_3297BC
3297A0:  LDR             R5, [SP,#0x30+var_28]
3297A2:  ADD             R5, R6
3297A4:  LDR             R5, [R5]
3297A6:  STR             R3, [R0,#0x14]
3297A8:  LDR             R3, [R2]
3297AA:  ADD.W           R4, R4, R5,LSL#2
3297AE:  STR.W           R3, [R12,R4]
3297B2:  B               def_329708; jumptable 00329708 default case, cases 4-6
3297B4:  LDR             R3, [SP,#0x30+var_30]
3297B6:  LDRB.W          R9, [R0,#0xFC]
3297BA:  ADD             R3, R11
3297BC:  LDRH            R3, [R3]
3297BE:  CMP.W           R9, #0
3297C2:  STR.W           R8, [R0,#0x14]
3297C6:  MOV.W           R9, #0xFFFFFFFF
3297CA:  ADD             R3, R4
3297CC:  LDR             R4, [R2]
3297CE:  ADD.W           R5, LR, R3,LSL#2
3297D2:  ADD.W           R3, R0, R3,LSL#2
3297D6:  IT EQ
3297D8:  ADDEQ.W         R5, R3, #0x3C ; '<'
3297DC:  STR             R4, [R5]
3297DE:  SUBS            R1, #1; jumptable 00329708 default case, cases 4-6
3297E0:  ADD.W           R2, R2, #4
3297E4:  BNE.W           loc_3296F8
3297E8:  ADD             SP, SP, #0x14
3297EA:  POP.W           {R8-R11}
3297EE:  POP             {R4-R7,PC}
