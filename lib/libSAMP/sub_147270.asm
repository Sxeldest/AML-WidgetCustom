; =========================================================
; Game Engine Function: sub_147270
; Address            : 0x147270 - 0x1474CE
; =========================================================

147270:  PUSH            {R4,R5,R7,LR}
147272:  ADD             R7, SP, #8
147274:  SUB             SP, SP, #0x128
147276:  LDR             R1, =(off_23496C - 0x14727C)
147278:  ADD             R1, PC; off_23496C
14727A:  LDR             R1, [R1]; dword_23DEF4
14727C:  LDR             R1, [R1]
14727E:  LDR.W           R1, [R1,#0x3B0]
147282:  LDR             R4, [R1,#4]
147284:  CMP             R4, #0
147286:  BEQ.W           loc_1474CA
14728A:  LDRD.W          R1, R0, [R0]; src
14728E:  MOVS            R3, #0
147290:  ASRS            R2, R0, #0x1F
147292:  ADD.W           R0, R0, R2,LSR#29
147296:  MOVS            R2, #1
147298:  ADD.W           R2, R2, R0,ASR#3; size
14729C:  MOV             R0, SP; int
14729E:  BL              sub_17D4F2
1472A2:  SUB.W           R1, R7, #-var_A; int
1472A6:  MOVS            R2, #0x10
1472A8:  MOVS            R3, #1
1472AA:  BL              sub_17D786
1472AE:  ADD             R1, SP, #0x130+dest; dest
1472B0:  MOV             R0, SP; int
1472B2:  MOVS            R2, #0x10
1472B4:  BL              sub_17D744
1472B8:  LDRH.W          R5, [R7,#var_A]
1472BC:  LSRS            R0, R5, #4
1472BE:  CMP             R0, #0x7C ; '|'
1472C0:  BHI.W           loc_1474C4
1472C4:  MOV             R0, R4
1472C6:  MOV             R1, R5
1472C8:  BL              sub_F2396
1472CC:  CMP             R0, #0
1472CE:  BEQ.W           loc_1474C4
1472D2:  LDR.W           R4, [R4,R5,LSL#2]
1472D6:  CMP             R4, #0
1472D8:  BEQ.W           loc_1474C4
1472DC:  LDRB.W          R0, [SP,#0x130+dest]
1472E0:  CMP             R0, #1
1472E2:  BEQ             loc_1472EA
1472E4:  CBNZ            R0, loc_1472EE
1472E6:  MOVS            R0, #0
1472E8:  B               loc_1472EC
1472EA:  MOVS            R0, #1
1472EC:  STR             R0, [R4,#0x18]
1472EE:  LDRB.W          R0, [SP,#0x130+var_1B]
1472F2:  CMP             R0, #1
1472F4:  BEQ             loc_1472FC
1472F6:  CBNZ            R0, loc_147300
1472F8:  MOVS            R0, #0
1472FA:  B               loc_1472FE
1472FC:  MOVS            R0, #1
1472FE:  STR             R0, [R4,#0x1C]
147300:  LDRB.W          R0, [SP,#0x130+var_19]
147304:  CBZ             R0, loc_147314
147306:  CMP             R0, #1
147308:  BNE             loc_14731C
14730A:  MOV             R0, R4
14730C:  MOVS            R1, #1
14730E:  BL              sub_109FFC
147312:  B               loc_14731C
147314:  MOV             R0, R4
147316:  MOVS            R1, #0
147318:  BL              sub_109FFC
14731C:  LDRB.W          R0, [SP,#0x130+var_16]
147320:  CMP             R0, #1
147322:  BEQ             loc_147328
147324:  CBNZ            R0, loc_14732C
147326:  MOVS            R0, #0
147328:  STRB.W          R0, [R4,#0x23]
14732C:  LDRB.W          R0, [SP,#0x130+var_17]
147330:  CBZ             R0, loc_147346
147332:  CMP             R0, #1
147334:  BNE             loc_147352
147336:  MOV             R0, R4
147338:  MOVS            R1, #1
14733A:  MOVS            R2, #0x11
14733C:  MOV.W           R3, #0x3F800000
147340:  BL              sub_10A010
147344:  B               loc_147352
147346:  MOV             R0, R4
147348:  MOVS            R1, #1
14734A:  MOVS            R2, #0x11
14734C:  MOVS            R3, #0
14734E:  BL              sub_10A010
147352:  LDRB.W          R0, [SP,#0x130+var_18]
147356:  CBZ             R0, loc_14736C
147358:  CMP             R0, #1
14735A:  BNE             loc_147378
14735C:  MOV             R0, R4
14735E:  MOVS            R1, #0
147360:  MOVS            R2, #0x10
147362:  MOV.W           R3, #0x3F800000
147366:  BL              sub_10A010
14736A:  B               loc_147378
14736C:  MOV             R0, R4
14736E:  MOVS            R1, #0
147370:  MOVS            R2, #0x10
147372:  MOVS            R3, #0
147374:  BL              sub_10A010
147378:  LDRB.W          R0, [SP,#0x130+var_1A]
14737C:  CBZ             R0, loc_147390
14737E:  CMP             R0, #1
147380:  BNE             loc_1473A0
147382:  MOV             R0, R4
147384:  MOVS            R1, #1
147386:  BL              sub_10A064
14738A:  MOVW            R5, #0x4E20
14738E:  B               loc_14739A
147390:  MOVS            R5, #0
147392:  MOV             R0, R4
147394:  MOVS            R1, #0
147396:  BL              sub_10A064
14739A:  LDR             R0, [R4,#0xC]
14739C:  STRH.W          R5, [R0,#0x460]
1473A0:  LDRB.W          R0, [SP,#0x130+var_15]
1473A4:  CBZ             R0, loc_1473B4
1473A6:  CMP             R0, #1
1473A8:  BNE             loc_1473BC
1473AA:  MOV             R0, R4
1473AC:  MOVS            R1, #1
1473AE:  BL              sub_10A064
1473B2:  B               loc_1473BC
1473B4:  MOV             R0, R4
1473B6:  MOVS            R1, #0
1473B8:  BL              sub_10A064
1473BC:  LDRB.W          R0, [SP,#0x130+var_14]
1473C0:  CBZ             R0, loc_1473D6
1473C2:  CMP             R0, #1
1473C4:  BNE             loc_1473E2
1473C6:  MOV             R0, R4
1473C8:  MOVS            R1, #2
1473CA:  MOVS            R2, #0xA
1473CC:  MOV.W           R3, #0x3F800000
1473D0:  BL              sub_10A010
1473D4:  B               loc_1473E2
1473D6:  MOV             R0, R4
1473D8:  MOVS            R1, #2
1473DA:  MOVS            R2, #0xA
1473DC:  MOVS            R3, #0
1473DE:  BL              sub_10A010
1473E2:  LDRB.W          R0, [SP,#0x130+var_13]
1473E6:  CBZ             R0, loc_1473FC
1473E8:  CMP             R0, #1
1473EA:  BNE             loc_147408
1473EC:  MOV             R0, R4
1473EE:  MOVS            R1, #3
1473F0:  MOVS            R2, #8
1473F2:  MOV.W           R3, #0x3F800000
1473F6:  BL              sub_10A010
1473FA:  B               loc_147408
1473FC:  MOV             R0, R4
1473FE:  MOVS            R1, #3
147400:  MOVS            R2, #8
147402:  MOVS            R3, #0
147404:  BL              sub_10A010
147408:  LDRB.W          R0, [SP,#0x130+var_12]
14740C:  CBZ             R0, loc_147422
14740E:  CMP             R0, #1
147410:  BNE             loc_14742E
147412:  MOV             R0, R4
147414:  MOVS            R1, #4
147416:  MOVS            R2, #0xB
147418:  MOV.W           R3, #0x3F800000
14741C:  BL              sub_10A010
147420:  B               loc_14742E
147422:  MOV             R0, R4
147424:  MOVS            R1, #4
147426:  MOVS            R2, #0xB
147428:  MOVS            R3, #0
14742A:  BL              sub_10A010
14742E:  LDRB.W          R0, [SP,#0x130+var_11]
147432:  CBZ             R0, loc_147448
147434:  CMP             R0, #1
147436:  BNE             loc_147454
147438:  MOV             R0, R4
14743A:  MOVS            R1, #5
14743C:  MOVS            R2, #9
14743E:  MOV.W           R3, #0x3F800000
147442:  BL              sub_10A010
147446:  B               loc_147454
147448:  MOV             R0, R4
14744A:  MOVS            R1, #5
14744C:  MOVS            R2, #9
14744E:  MOVS            R3, #0
147450:  BL              sub_10A010
147454:  LDRB.W          R0, [SP,#0x130+var_10]
147458:  CBZ             R0, loc_147468
14745A:  CMP             R0, #1
14745C:  BNE             loc_147470
14745E:  MOV             R0, R4
147460:  MOVS            R1, #0xA
147462:  BL              sub_10A098
147466:  B               loc_147470
147468:  MOV             R0, R4
14746A:  MOVS            R1, #0xA
14746C:  BL              sub_10A078
147470:  LDRB.W          R0, [SP,#0x130+var_F]
147474:  CBZ             R0, loc_147484
147476:  CMP             R0, #1
147478:  BNE             loc_14748C
14747A:  MOV             R0, R4
14747C:  MOVS            R1, #8
14747E:  BL              sub_10A098
147482:  B               loc_14748C
147484:  MOV             R0, R4
147486:  MOVS            R1, #8
147488:  BL              sub_10A078
14748C:  LDRB.W          R0, [SP,#0x130+var_E]
147490:  CBZ             R0, loc_1474A0
147492:  CMP             R0, #1
147494:  BNE             loc_1474A8
147496:  MOV             R0, R4
147498:  MOVS            R1, #0xB
14749A:  BL              sub_10A098
14749E:  B               loc_1474A8
1474A0:  MOV             R0, R4
1474A2:  MOVS            R1, #0xB
1474A4:  BL              sub_10A078
1474A8:  LDRB.W          R0, [SP,#0x130+var_D]
1474AC:  CBZ             R0, loc_1474BC
1474AE:  CMP             R0, #1
1474B0:  BNE             loc_1474C4
1474B2:  MOV             R0, R4
1474B4:  MOVS            R1, #9
1474B6:  BL              sub_10A098
1474BA:  B               loc_1474C4
1474BC:  MOV             R0, R4
1474BE:  MOVS            R1, #9
1474C0:  BL              sub_10A078
1474C4:  MOV             R0, SP
1474C6:  BL              sub_17D542
1474CA:  ADD             SP, SP, #0x128
1474CC:  POP             {R4,R5,R7,PC}
