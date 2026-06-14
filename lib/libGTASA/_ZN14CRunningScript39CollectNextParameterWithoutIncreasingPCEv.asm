; =========================================================
; Game Engine Function: _ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv
; Address            : 0x32955C - 0x32967A
; =========================================================

32955C:  PUSH            {R4,R6,R7,LR}
32955E:  ADD             R7, SP, #8
329560:  LDR             R4, [R0,#0x14]
329562:  MOV             R1, R4
329564:  LDRSB.W         R3, [R1],#1
329568:  STR             R1, [R0,#0x14]
32956A:  MOV.W           R1, #0xFFFFFFFF
32956E:  SUBS            R3, #1; switch 8 cases
329570:  CMP             R3, #7
329572:  BHI.W           def_329576; jumptable 00329576 default case
329576:  TBB.W           [PC,R3]; switch jump
32957A:  DCB 4; jump table for switch statement
32957B:  DCB 9
32957C:  DCB 0x12
32957D:  DCB 0x26
32957E:  DCB 0x2B
32957F:  DCB 4
329580:  DCB 0x46
329581:  DCB 0x30
329582:  LDR.W           R1, [R4,#1]; jumptable 00329576 cases 1,6
329586:  ADDS            R2, R4, #5
329588:  STR             R2, [R0,#0x14]
32958A:  B               def_329576; jumptable 00329576 default case
32958C:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329598); jumptable 00329576 case 2
32958E:  ADDS            R3, R4, #3
329590:  LDRH.W          R2, [R4,#1]
329594:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329596:  STR             R3, [R0,#0x14]
329598:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
32959A:  LDR             R1, [R1,R2]
32959C:  B               def_329576; jumptable 00329576 default case
32959E:  LDR             R1, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3295AA); jumptable 00329576 case 3
3295A0:  ADDS            R3, R4, #3
3295A2:  LDRH.W          R2, [R4,#1]
3295A6:  ADD             R1, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3295A8:  LDRB.W          R12, [R0,#0xFC]
3295AC:  STR             R3, [R0,#0x14]
3295AE:  LDR             R1, [R1]; CTheScripts::LocalVariablesForCurrentMission ...
3295B0:  CMP.W           R12, #0
3295B4:  ADD.W           R1, R1, R2,LSL#2
3295B8:  ADD.W           R2, R0, R2,LSL#2
3295BC:  IT EQ
3295BE:  ADDEQ.W         R1, R2, #0x3C ; '<'
3295C2:  LDR             R1, [R1]
3295C4:  B               def_329576; jumptable 00329576 default case
3295C6:  LDRSB.W         R1, [R4,#1]; jumptable 00329576 case 4
3295CA:  ADDS            R2, R4, #2
3295CC:  STR             R2, [R0,#0x14]
3295CE:  B               def_329576; jumptable 00329576 default case
3295D0:  LDRSH.W         R1, [R4,#1]; jumptable 00329576 case 5
3295D4:  ADDS            R2, R4, #3
3295D6:  STR             R2, [R0,#0x14]
3295D8:  B               def_329576; jumptable 00329576 default case
3295DA:  LDRSH.W         R2, [R4,#5]; jumptable 00329576 case 8
3295DE:  LDRH.W          LR, [R4,#3]
3295E2:  LDRH.W          R12, [R4,#1]
3295E6:  CMP             R2, R1
3295E8:  BLE             loc_329632
3295EA:  LDR             R1, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3295F0)
3295EC:  ADD             R1, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3295EE:  LDR             R2, [R1]; CTheScripts::LocalVariablesForCurrentMission ...
3295F0:  LDRB.W          R1, [R0,#0xFC]
3295F4:  ADD.W           R3, R2, LR,LSL#2
3295F8:  ADD.W           R2, R0, LR,LSL#2
3295FC:  CMP             R1, #0
3295FE:  IT EQ
329600:  ADDEQ.W         R3, R2, #0x3C ; '<'
329604:  B               loc_329640
329606:  LDRSH.W         R2, [R4,#5]; jumptable 00329576 case 7
32960A:  LDRH.W          R3, [R4,#3]
32960E:  LDRH.W          R12, [R4,#1]
329612:  CMP             R2, R1
329614:  BLE             loc_32965E
329616:  LDR             R1, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329620)
329618:  LDRB.W          R2, [R0,#0xFC]
32961C:  ADD             R1, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32961E:  CMP             R2, #0
329620:  LDR             R1, [R1]; CTheScripts::LocalVariablesForCurrentMission ...
329622:  ADD.W           R1, R1, R3,LSL#2
329626:  ADD.W           R3, R0, R3,LSL#2
32962A:  IT EQ
32962C:  ADDEQ.W         R1, R3, #0x3C ; '<'
329630:  B               loc_329666
329632:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329638)
329634:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329636:  LDR             R2, [R1]; CTheScripts::ScriptSpace ...
329638:  LDRB.W          R1, [R0,#0xFC]
32963C:  ADD.W           R3, R2, LR
329640:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32964A)
329642:  CMP             R1, #0
329644:  LDRH            R3, [R3]
329646:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329648:  ADD             R3, R12
32964A:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
32964C:  ADD.W           R2, R2, R3,LSL#2
329650:  ADD.W           R3, R0, R3,LSL#2
329654:  IT EQ
329656:  ADDEQ.W         R2, R3, #0x3C ; '<'
32965A:  LDR             R1, [R2]
32965C:  B               def_329576; jumptable 00329576 default case
32965E:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329664)
329660:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329662:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
329664:  ADD             R1, R3
329666:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32966E)
329668:  LDR             R1, [R1]
32966A:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32966C:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
32966E:  ADD.W           R1, R12, R1,LSL#2
329672:  LDR             R1, [R2,R1]
329674:  STR             R4, [R0,#0x14]; jumptable 00329576 default case
329676:  MOV             R0, R1
329678:  POP             {R4,R6,R7,PC}
