; =========================================================
; Game Engine Function: _ZN14CRunningScript7ProcessEv
; Address            : 0x32B2B8 - 0x32B3BC
; =========================================================

32B2B8:  PUSH            {R4-R7,LR}
32B2BA:  ADD             R7, SP, #0xC
32B2BC:  PUSH.W          {R8-R11}
32B2C0:  SUB             SP, SP, #4
32B2C2:  MOV             R4, R0
32B2C4:  LDR.W           R0, [R4,#0xF8]; this
32B2C8:  CBZ             R0, loc_32B302
32B2CA:  BLX             j__ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv; CCutsceneMgr::IsCutsceneSkipButtonBeingPressed(void)
32B2CE:  CMP             R0, #1
32B2D0:  BNE             loc_32B302
32B2D2:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x32B2DA)
32B2D4:  MOVS            R1, #0
32B2D6:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
32B2D8:  LDR             R0, [R0]; CHud::m_BigMessage ...
32B2DA:  STRH.W          R1, [R0,#(word_99106C - 0x990F6C)]
32B2DE:  LDR.W           R0, [R4,#0xF8]
32B2E2:  CMP.W           R0, #0xFFFFFFFF
32B2E6:  BLE             loc_32B2F2
32B2E8:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32B2EE)
32B2EA:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32B2EC:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
32B2EE:  ADD             R0, R1
32B2F0:  B               loc_32B2F6
32B2F2:  LDR             R1, [R4,#0x10]
32B2F4:  SUBS            R0, R1, R0
32B2F6:  MOVS            R1, #0
32B2F8:  STR.W           R1, [R4,#0xF8]
32B2FC:  STR             R0, [R4,#0x14]
32B2FE:  STR.W           R1, [R4,#0xEC]
32B302:  LDRB.W          R0, [R4,#0xE6]
32B306:  CMP             R0, #0
32B308:  ITT NE
32B30A:  MOVNE           R0, R4; this
32B30C:  BLXNE           j__ZN14CRunningScript18DoDeatharrestCheckEv; CRunningScript::DoDeatharrestCheck(void)
32B310:  LDRB.W          R0, [R4,#0xFC]
32B314:  CBZ             R0, loc_32B33A
32B316:  LDR             R0, =(_ZN11CTheScripts18FailCurrentMissionE_ptr - 0x32B31C)
32B318:  ADD             R0, PC; _ZN11CTheScripts18FailCurrentMissionE_ptr
32B31A:  LDR             R0, [R0]; CTheScripts::FailCurrentMission ...
32B31C:  LDRB            R0, [R0]; CTheScripts::FailCurrentMission
32B31E:  CMP             R0, #1
32B320:  BNE             loc_32B33A
32B322:  LDRH            R0, [R4,#0x38]
32B324:  CMP             R0, #2
32B326:  BCC             loc_32B32E
32B328:  MOVS            R0, #1
32B32A:  STRH            R0, [R4,#0x38]
32B32C:  B               loc_32B332
32B32E:  CMP             R0, #1
32B330:  BNE             loc_32B33A
32B332:  LDR             R0, [R4,#0x18]; this
32B334:  MOVS            R1, #0
32B336:  STRH            R1, [R4,#0x38]
32B338:  STR             R0, [R4,#0x14]
32B33A:  BLX             j__ZN11CTheScripts31ReinitialiseSwitchStatementDataEv; CTheScripts::ReinitialiseSwitchStatementData(void)
32B33E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32B348)
32B340:  LDR.W           R1, [R4,#0xEC]
32B344:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32B346:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
32B348:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
32B34A:  CMP             R0, R1
32B34C:  BCC             loc_32B3B2
32B34E:  LDR             R0, =(_ZN11CTheScripts16CommandsExecutedE_ptr - 0x32B360)
32B350:  MOVW            R9, #0x851F
32B354:  LDR.W           R10, =(off_665594 - 0x32B366)
32B358:  MOVW            R11, #0xFFF8
32B35C:  ADD             R0, PC; _ZN11CTheScripts16CommandsExecutedE_ptr
32B35E:  MOVW            R8, #0xA8B
32B362:  ADD             R10, PC; off_665594
32B364:  MOVT            R9, #0x51EB
32B368:  LDR             R5, [R0]; CTheScripts::CommandsExecuted ...
32B36A:  MOVT            R11, #0x3FFF
32B36E:  LDR             R0, =(_ZN14CRunningScript25ProcessCommands2600To2699Ei_ptr - 0x32B374)
32B370:  ADD             R0, PC; _ZN14CRunningScript25ProcessCommands2600To2699Ei_ptr
32B372:  LDR             R6, [R0]; CRunningScript::ProcessCommands2600To2699(int)
32B374:  LDRH            R0, [R5]; CTheScripts::CommandsExecuted
32B376:  MOV             R2, R6
32B378:  ADDS            R0, #1
32B37A:  STRH            R0, [R5]; CTheScripts::CommandsExecuted
32B37C:  LDR             R0, [R4,#0x14]
32B37E:  LDRSH.W         R1, [R0],#2
32B382:  STR             R0, [R4,#0x14]
32B384:  UBFX.W          R0, R1, #0xF, #1
32B388:  BFC.W           R1, #0xF, #0x11
32B38C:  STRB.W          R0, [R4,#0xF2]
32B390:  CMP             R1, R8
32B392:  MOV             R0, R4
32B394:  BHI             loc_32B3AC
32B396:  UMULL.W         R0, R2, R1, R9
32B39A:  AND.W           R0, R11, R2,LSR#2
32B39E:  ADD.W           R2, R10, R0
32B3A2:  LDR             R3, [R2,#4]
32B3A4:  LDR.W           R2, [R10,R0]
32B3A8:  ADD.W           R0, R4, R3,ASR#1
32B3AC:  BLX             R2
32B3AE:  CMP             R0, #0
32B3B0:  BEQ             loc_32B374
32B3B2:  MOVS            R0, #0
32B3B4:  ADD             SP, SP, #4
32B3B6:  POP.W           {R8-R11}
32B3BA:  POP             {R4-R7,PC}
