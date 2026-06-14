; =========================================================
; Game Engine Function: sub_260346
; Address            : 0x260346 - 0x2604B2
; =========================================================

260346:  PUSH            {R4,R6,R7,LR}
260348:  ADD             R7, SP, #8
26034A:  CMP             R1, #0
26034C:  BEQ.W           locret_2604B0
260350:  VLDR            S0, [R0,#0x10]
260354:  MOV             R12, R1
260356:  MOV             LR, R3
260358:  MOV             R4, R2
26035A:  VLDR            S2, [R4]
26035E:  SUBS.W          R12, R12, #1
260362:  ADD.W           R4, R4, #4
260366:  VMUL.F32        S2, S2, S0
26036A:  VSTR            S2, [LR]
26036E:  ADD.W           LR, LR, #4
260372:  BNE             loc_26035A
260374:  CMP             R1, #0
260376:  BEQ.W           locret_2604B0
26037A:  VLDR            S0, [R0,#0x14]
26037E:  ADD.W           R12, R3, #0x2000
260382:  MOV             LR, R2
260384:  MOV             R4, R1
260386:  VLDR            S2, [LR]
26038A:  ADD.W           LR, LR, #4
26038E:  SUBS            R4, #1
260390:  VMUL.F32        S2, S2, S0
260394:  VSTR            S2, [R12]
260398:  ADD.W           R12, R12, #4
26039C:  BNE             loc_260386
26039E:  CMP             R1, #0
2603A0:  BEQ.W           locret_2604B0
2603A4:  VLDR            S0, [R0,#0x18]
2603A8:  ADD.W           R12, R3, #0x4000
2603AC:  MOV             LR, R2
2603AE:  MOV             R4, R1
2603B0:  VLDR            S2, [LR]
2603B4:  ADD.W           LR, LR, #4
2603B8:  SUBS            R4, #1
2603BA:  VMUL.F32        S2, S2, S0
2603BE:  VSTR            S2, [R12]
2603C2:  ADD.W           R12, R12, #4
2603C6:  BNE             loc_2603B0
2603C8:  CMP             R1, #0
2603CA:  BEQ             locret_2604B0
2603CC:  VLDR            S0, [R0,#0x1C]
2603D0:  ADD.W           R12, R3, #0x6000
2603D4:  MOV             LR, R2
2603D6:  MOV             R4, R1
2603D8:  VLDR            S2, [LR]
2603DC:  ADD.W           LR, LR, #4
2603E0:  SUBS            R4, #1
2603E2:  VMUL.F32        S2, S2, S0
2603E6:  VSTR            S2, [R12]
2603EA:  ADD.W           R12, R12, #4
2603EE:  BNE             loc_2603D8
2603F0:  CMP             R1, #0
2603F2:  BEQ             locret_2604B0
2603F4:  VLDR            S0, [R0,#0x20]
2603F8:  ADD.W           R12, R3, #0x8000
2603FC:  MOV             LR, R2
2603FE:  MOV             R4, R1
260400:  VLDR            S2, [LR]
260404:  ADD.W           LR, LR, #4
260408:  SUBS            R4, #1
26040A:  VMUL.F32        S2, S2, S0
26040E:  VSTR            S2, [R12]
260412:  ADD.W           R12, R12, #4
260416:  BNE             loc_260400
260418:  CMP             R1, #0
26041A:  BEQ             locret_2604B0
26041C:  VLDR            S0, [R0,#0x24]
260420:  ADD.W           R12, R3, #0xA000
260424:  MOV             LR, R2
260426:  MOV             R4, R1
260428:  VLDR            S2, [LR]
26042C:  ADD.W           LR, LR, #4
260430:  SUBS            R4, #1
260432:  VMUL.F32        S2, S2, S0
260436:  VSTR            S2, [R12]
26043A:  ADD.W           R12, R12, #4
26043E:  BNE             loc_260428
260440:  CBZ             R1, locret_2604B0
260442:  VLDR            S0, [R0,#0x28]
260446:  ADD.W           R12, R3, #0xC000
26044A:  MOV             LR, R2
26044C:  MOV             R4, R1
26044E:  VLDR            S2, [LR]
260452:  ADD.W           LR, LR, #4
260456:  SUBS            R4, #1
260458:  VMUL.F32        S2, S2, S0
26045C:  VSTR            S2, [R12]
260460:  ADD.W           R12, R12, #4
260464:  BNE             loc_26044E
260466:  CBZ             R1, locret_2604B0
260468:  VLDR            S0, [R0,#0x2C]
26046C:  ADD.W           R12, R3, #0xE000
260470:  MOV             LR, R2
260472:  MOV             R4, R1
260474:  VLDR            S2, [LR]
260478:  ADD.W           LR, LR, #4
26047C:  SUBS            R4, #1
26047E:  VMUL.F32        S2, S2, S0
260482:  VSTR            S2, [R12]
260486:  ADD.W           R12, R12, #4
26048A:  BNE             loc_260474
26048C:  CMP             R1, #0
26048E:  IT EQ
260490:  POPEQ           {R4,R6,R7,PC}
260492:  VLDR            S0, [R0,#0x30]
260496:  ADD.W           R0, R3, #0x10000
26049A:  VLDR            S2, [R2]
26049E:  ADDS            R2, #4
2604A0:  SUBS            R1, #1
2604A2:  VMUL.F32        S2, S2, S0
2604A6:  VSTR            S2, [R0]
2604AA:  ADD.W           R0, R0, #4
2604AE:  BNE             loc_26049A
2604B0:  POP             {R4,R6,R7,PC}
