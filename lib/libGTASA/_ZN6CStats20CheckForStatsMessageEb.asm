; =========================================================
; Game Engine Function: _ZN6CStats20CheckForStatsMessageEb
; Address            : 0x415334 - 0x4154F4
; =========================================================

415334:  PUSH            {R4-R7,LR}
415336:  ADD             R7, SP, #0xC
415338:  PUSH.W          {R8-R11}
41533C:  SUB             SP, SP, #0x34
41533E:  LDR             R1, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x415344)
415340:  ADD             R1, PC; _ZN6CStats16bShowUpdateStatsE_ptr
415342:  LDR             R1, [R1]; CStats::bShowUpdateStats ...
415344:  LDRB            R1, [R1]; CStats::bShowUpdateStats
415346:  CMP             R1, #0
415348:  BEQ.W           loc_4154EC
41534C:  LDR             R1, =(_ZN6CStats20TotalNumStatMessagesE_ptr - 0x415352)
41534E:  ADD             R1, PC; _ZN6CStats20TotalNumStatMessagesE_ptr
415350:  LDR             R1, [R1]; CStats::TotalNumStatMessages ...
415352:  LDR             R4, [R1]; CStats::TotalNumStatMessages
415354:  CMP             R4, #0
415356:  BEQ.W           loc_4154EC
41535A:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x41536A)
41535C:  MOV.W           R12, #0
415360:  LDR             R2, =(TheText_ptr - 0x41536C)
415362:  MOV.W           R8, #0
415366:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
415368:  ADD             R2, PC; TheText_ptr
41536A:  LDR.W           R9, [R1]; CStats::StatMessage ...
41536E:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x415374)
415370:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
415372:  LDR.W           R11, [R1]; CStats::StatMessage ...
415376:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41537C)
415378:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
41537A:  LDR.W           LR, [R1]; CStats::StatTypesFloat ...
41537E:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x415384)
415380:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
415382:  LDR             R1, [R1]; CStats::StatMessage ...
415384:  STR             R1, [SP,#0x50+var_20]
415386:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x41538C)
415388:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
41538A:  LDR             R1, [R1]; CStats::StatMessage ...
41538C:  STR             R1, [SP,#0x50+var_34]
41538E:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x415394)
415390:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
415392:  LDR             R1, [R1]; CStats::StatMessage ...
415394:  STR             R1, [SP,#0x50+var_40]
415396:  LDR             R1, [R2]; TheText
415398:  STR             R1, [SP,#0x50+var_44]
41539A:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x4153A2)
41539C:  LDR             R2, =(TheText_ptr - 0x4153A4)
41539E:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
4153A0:  ADD             R2, PC; TheText_ptr
4153A2:  LDR             R1, [R1]; CStats::StatMessage ...
4153A4:  STR             R1, [SP,#0x50+var_28]
4153A6:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x4153AC)
4153A8:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
4153AA:  LDR             R1, [R1]; CStats::StatMessage ...
4153AC:  STR             R1, [SP,#0x50+var_38]
4153AE:  LDR             R1, [R2]; TheText
4153B0:  STR             R1, [SP,#0x50+var_3C]
4153B2:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x4153B8)
4153B4:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
4153B6:  LDR             R1, [R1]; CStats::StatTypesInt ...
4153B8:  STR             R1, [SP,#0x50+var_24]
4153BA:  LDR             R1, =(_ZN6CStats20TotalNumStatMessagesE_ptr - 0x4153C4)
4153BC:  STRD.W          LR, R0, [SP,#0x50+var_30]
4153C0:  ADD             R1, PC; _ZN6CStats20TotalNumStatMessagesE_ptr
4153C2:  LDR.W           R10, [R1]; CStats::TotalNumStatMessages ...
4153C6:  B               loc_4154CC
4153C8:  MOV.W           R1, R8,LSL#4
4153CC:  ADD.W           R2, R11, R8,LSL#4
4153D0:  LDRH.W          R1, [R11,R1]
4153D4:  LDRB            R2, [R2,#3]
4153D6:  CMP             R1, #0x51 ; 'Q'
4153D8:  BHI             loc_4153E4
4153DA:  ADD.W           R5, LR, R1,LSL#2
4153DE:  VLDR            S2, [R5]
4153E2:  B               loc_4153F2
4153E4:  LDR             R5, [SP,#0x50+var_24]
4153E6:  ADD.W           R5, R5, R1,LSL#2
4153EA:  VLDR            S0, [R5,#-0x1E0]
4153EE:  VCVT.F32.S32    S2, S0
4153F2:  LDR             R5, [SP,#0x50+var_20]
4153F4:  CMP             R2, #0
4153F6:  ADD.W           R5, R5, R8,LSL#4
4153FA:  VLDR            S0, [R5,#4]
4153FE:  VCMPE.F32       S2, S0
415402:  BEQ             loc_415458
415404:  VMRS            APSR_nzcv, FPSCR
415408:  BLT             loc_4154DA
41540A:  MOVS            R5, #1
41540C:  STRB            R5, [R3]
41540E:  MOVS            R5, #0
415410:  LDR             R3, [SP,#0x50+var_28]
415412:  ADDS            R3, #2
415414:  CMP             R8, R5
415416:  BEQ             loc_41543A
415418:  LDRH.W          R6, [R3,#-2]
41541C:  CMP             R1, R6
41541E:  BNE             loc_41543A
415420:  ADDS            R6, R3, #2
415422:  VLDR            S2, [R6]
415426:  VCMP.F32        S0, S2
41542A:  VMRS            APSR_nzcv, FPSCR
41542E:  BNE             loc_41543A
415430:  LDRB            R6, [R3,#1]
415432:  CMP             R2, R6
415434:  IT NE
415436:  STRBNE.W        R12, [R3]
41543A:  ADDS            R5, #1
41543C:  CMP             R5, #0x7F
41543E:  ITT LS
415440:  ADDLS           R3, #0x10
415442:  CMPLS           R5, R4
415444:  BCC             loc_415414
415446:  CMP             R0, #0
415448:  BNE             loc_4154DA
41544A:  LDR             R0, [SP,#0x50+var_38]
41544C:  ADD.W           R0, R0, R8,LSL#4
415450:  ADD.W           R5, R0, #8
415454:  LDR             R0, [SP,#0x50+var_3C]
415456:  B               loc_4154A8
415458:  VMRS            APSR_nzcv, FPSCR
41545C:  BGT             loc_4154DA
41545E:  MOVS            R2, #1
415460:  STRB            R2, [R3]
415462:  MOVS            R3, #0
415464:  LDR             R2, [SP,#0x50+var_34]
415466:  ADDS            R2, #2
415468:  CMP             R8, R3
41546A:  BEQ             loc_41548E
41546C:  LDRH.W          R6, [R2,#-2]
415470:  CMP             R1, R6
415472:  BNE             loc_41548E
415474:  ADDS            R6, R2, #2
415476:  VLDR            S2, [R6]
41547A:  VCMP.F32        S0, S2
41547E:  VMRS            APSR_nzcv, FPSCR
415482:  BNE             loc_41548E
415484:  LDRB            R6, [R2,#1]
415486:  CMP             R6, #0
415488:  IT NE
41548A:  STRBNE.W        R12, [R2]
41548E:  ADDS            R3, #1
415490:  CMP             R3, #0x7F
415492:  ITT LS
415494:  ADDLS           R2, #0x10
415496:  CMPLS           R3, R4
415498:  BCC             loc_415468
41549A:  CBNZ            R0, loc_4154DA
41549C:  LDR             R0, [SP,#0x50+var_40]
41549E:  ADD.W           R0, R0, R8,LSL#4
4154A2:  ADD.W           R5, R0, #8
4154A6:  LDR             R0, [SP,#0x50+var_44]; this
4154A8:  MOV             R1, R5; CKeyGen *
4154AA:  MOVS            R4, #0
4154AC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4154B0:  MOV             R1, R0; char *
4154B2:  MOV             R0, R5; this
4154B4:  MOVS            R2, #0; unsigned __int16 *
4154B6:  MOVS            R3, #0; bool
4154B8:  STRD.W          R4, R4, [SP,#0x50+var_50]; bool
4154BC:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
4154C0:  LDR.W           LR, [SP,#0x50+var_30]
4154C4:  MOV.W           R12, #0
4154C8:  LDR             R0, [SP,#0x50+var_2C]
4154CA:  B               loc_4154DA
4154CC:  ADD.W           R3, R9, R8,LSL#4
4154D0:  LDRB.W          R1, [R3,#2]!
4154D4:  CMP             R1, #0
4154D6:  BEQ.W           loc_4153C8
4154DA:  ADD.W           R8, R8, #1
4154DE:  CMP.W           R8, #0x7F
4154E2:  ITT LS
4154E4:  LDRLS.W         R4, [R10]; CStats::TotalNumStatMessages
4154E8:  CMPLS           R8, R4
4154EA:  BCC             loc_4154CC
4154EC:  ADD             SP, SP, #0x34 ; '4'
4154EE:  POP.W           {R8-R11}
4154F2:  POP             {R4-R7,PC}
