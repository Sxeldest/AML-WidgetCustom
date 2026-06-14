; =========================================================
; Game Engine Function: _ZN14CRunningScript17CollectParametersEs
; Address            : 0x3293E4 - 0x329538
; =========================================================

3293E4:  PUSH            {R4-R7,LR}
3293E6:  ADD             R7, SP, #0xC
3293E8:  PUSH.W          {R8-R11}
3293EC:  SUB             SP, SP, #0x10
3293EE:  CMP             R1, #0
3293F0:  BEQ.W           loc_329530
3293F4:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329400)
3293F6:  MOV.W           R12, #0xFFFFFFFF
3293FA:  LDR             R2, =(ScriptParams_ptr - 0x329402)
3293FC:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
3293FE:  ADD             R2, PC; ScriptParams_ptr
329400:  LDR.W           LR, [R3]; CTheScripts::ScriptSpace ...
329404:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32940C)
329406:  LDR             R2, [R2]; ScriptParams
329408:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32940A:  LDR.W           R9, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
32940E:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329414)
329410:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329412:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
329414:  STR             R3, [SP,#0x2C+var_20]
329416:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32941C)
329418:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32941A:  LDR.W           R10, [R3]; CTheScripts::ScriptSpace ...
32941E:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329424)
329420:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329422:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
329424:  STR             R3, [SP,#0x2C+var_24]
329426:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32942C)
329428:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32942A:  LDR             R3, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
32942C:  STR             R3, [SP,#0x2C+var_28]
32942E:  LDR             R3, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329434)
329430:  ADD             R3, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329432:  LDR.W           R11, [R3]; CTheScripts::LocalVariablesForCurrentMission ...
329436:  LDR             R3, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32943C)
329438:  ADD             R3, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32943A:  LDR             R3, [R3]; CTheScripts::ScriptSpace ...
32943C:  STR             R3, [SP,#0x2C+var_2C]
32943E:  LDR             R4, [R0,#0x14]
329440:  SUBS            R1, #1
329442:  MOV             R3, R4
329444:  LDRSB.W         R5, [R3],#1
329448:  STR             R3, [R0,#0x14]
32944A:  SUBS            R3, R5, #1; switch 8 cases
32944C:  CMP             R3, #7
32944E:  BHI             def_329450; jumptable 00329450 default case
329450:  TBB.W           [PC,R3]; switch jump
329454:  DCB 4; jump table for switch statement
329455:  DCB 9
329456:  DCB 0x10
329457:  DCB 0x19
329458:  DCB 0x1E
329459:  DCB 4
32945A:  DCB 0x23
32945B:  DCB 0x39
32945C:  LDR.W           R8, [R4,#1]; jumptable 00329450 cases 1,6
329460:  ADDS            R3, R4, #5
329462:  STR             R3, [R0,#0x14]
329464:  B               loc_329524
329466:  LDRH.W          R3, [R4,#1]; jumptable 00329450 case 2
32946A:  ADDS            R4, #3
32946C:  STR             R4, [R0,#0x14]
32946E:  LDR.W           R8, [LR,R3]
329472:  B               loc_329524
329474:  LDRH.W          R3, [R4,#1]; jumptable 00329450 case 3
329478:  ADDS            R4, #3
32947A:  LDRB.W          R5, [R0,#0xFC]
32947E:  STR             R4, [R0,#0x14]
329480:  ADD.W           R4, R9, R3,LSL#2
329484:  B               loc_329514
329486:  LDRSB.W         R8, [R4,#1]; jumptable 00329450 case 4
32948A:  ADDS            R3, R4, #2
32948C:  STR             R3, [R0,#0x14]
32948E:  B               loc_329524
329490:  LDRSH.W         R8, [R4,#1]; jumptable 00329450 case 5
329494:  ADDS            R3, R4, #3
329496:  STR             R3, [R0,#0x14]
329498:  B               loc_329524
32949A:  LDRSH.W         R5, [R4,#5]; jumptable 00329450 case 7
32949E:  LDRH.W          R6, [R4,#3]
3294A2:  LDRH.W          R3, [R4,#1]
3294A6:  ADDS            R4, #7
3294A8:  CMP             R5, R12
3294AA:  BLE             loc_3294F0
3294AC:  LDR             R5, [SP,#0x2C+var_20]
3294AE:  LDRB.W          R8, [R0,#0xFC]
3294B2:  ADD.W           R5, R5, R6,LSL#2
3294B6:  ADD.W           R6, R0, R6,LSL#2
3294BA:  CMP.W           R8, #0
3294BE:  IT EQ
3294C0:  ADDEQ.W         R5, R6, #0x3C ; '<'
3294C4:  B               loc_3294F4
3294C6:  LDRSH.W         R5, [R4,#5]; jumptable 00329450 case 8
3294CA:  LDRH.W          R3, [R4,#3]
3294CE:  LDRH.W          R8, [R4,#1]
3294D2:  ADDS            R4, #7
3294D4:  CMP             R5, R12
3294D6:  BLE             loc_329502
3294D8:  LDR             R6, [SP,#0x2C+var_28]
3294DA:  LDRB.W          R5, [R0,#0xFC]
3294DE:  ADD.W           R6, R6, R3,LSL#2
3294E2:  ADD.W           R3, R0, R3,LSL#2
3294E6:  CMP             R5, #0
3294E8:  IT EQ
3294EA:  ADDEQ.W         R6, R3, #0x3C ; '<'
3294EE:  B               loc_32950A
3294F0:  LDR             R5, [SP,#0x2C+var_24]
3294F2:  ADD             R5, R6
3294F4:  LDR             R5, [R5]
3294F6:  STR             R4, [R0,#0x14]
3294F8:  ADD.W           R3, R3, R5,LSL#2
3294FC:  LDR.W           R8, [R10,R3]
329500:  B               loc_329524
329502:  LDR             R6, [SP,#0x2C+var_2C]
329504:  LDRB.W          R5, [R0,#0xFC]
329508:  ADD             R6, R3
32950A:  LDRH            R3, [R6]
32950C:  STR             R4, [R0,#0x14]
32950E:  ADD             R3, R8
329510:  ADD.W           R4, R11, R3,LSL#2
329514:  ADD.W           R3, R0, R3,LSL#2
329518:  CMP             R5, #0
32951A:  IT EQ
32951C:  ADDEQ.W         R4, R3, #0x3C ; '<'
329520:  LDR.W           R8, [R4]
329524:  STR.W           R8, [R2]
329528:  ADDS            R2, #4; jumptable 00329450 default case
32952A:  LSLS            R3, R1, #0x10
32952C:  BNE.W           loc_32943E
329530:  ADD             SP, SP, #0x10
329532:  POP.W           {R8-R11}
329536:  POP             {R4-R7,PC}
