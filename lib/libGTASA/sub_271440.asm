; =========================================================
; Game Engine Function: sub_271440
; Address            : 0x271440 - 0x27154A
; =========================================================

271440:  PUSH            {R4-R7,LR}
271442:  ADD             R7, SP, #0xC
271444:  PUSH.W          {R8-R11}
271448:  SUB             SP, SP, #4
27144A:  LDR             R1, =(aNvevent - 0x271454); "NVEvent"
27144C:  ADR             R2, aScanforevents; "scanForEvents"
27144E:  MOVS            R0, #3; prio
271450:  ADD             R1, PC; "NVEvent"
271452:  BLX             __android_log_print
271456:  LDR             R0, =(dword_6D8200 - 0x27145C)
271458:  ADD             R0, PC; dword_6D8200
27145A:  LDR             R0, [R0,#(dword_6D8220 - 0x6D8200)]
27145C:  CMP             R0, #1
27145E:  BLT             loc_2714A6
271460:  LDR.W           R8, =(dword_6D8200 - 0x271474)
271464:  ADR             R5, aEventS; "    event %s"
271466:  LDR.W           R9, =(aUnknownEventTy - 0x27147A); "unknown event type!"
27146A:  MOVS            R6, #0
27146C:  LDR.W           R10, =(off_661F10 - 0x27147E); "NV_EVENT_KEY" ...
271470:  ADD             R8, PC; dword_6D8200
271472:  LDR.W           R11, =(aNvevent - 0x271480); "NVEvent"
271476:  ADD             R9, PC; "unknown event type!"
271478:  LDR             R4, =(dword_6D8200 - 0x271482)
27147A:  ADD             R10, PC; off_661F10
27147C:  ADD             R11, PC; "NVEvent"
27147E:  ADD             R4, PC; dword_6D8200
271480:  LDR.W           R0, [R8,#(dword_6D821C - 0x6D8200)]
271484:  MOV             R3, R9
271486:  MOV             R1, R11; tag
271488:  MOV             R2, R5; fmt
27148A:  LDR.W           R0, [R0,R6,LSL#2]
27148E:  SUBS            R0, #1
271490:  CMP             R0, #9
271492:  IT LS
271494:  LDRLS.W         R3, [R10,R0,LSL#2]
271498:  MOVS            R0, #3; prio
27149A:  BLX             __android_log_print
27149E:  LDR             R0, [R4,#(dword_6D8220 - 0x6D8200)]
2714A0:  ADDS            R6, #1
2714A2:  CMP             R6, R0
2714A4:  BLT             loc_271480
2714A6:  LDR             R0, =(dword_6D8200 - 0x2714AC)
2714A8:  ADD             R0, PC; dword_6D8200
2714AA:  LDRD.W          R1, R4, [R0]
2714AE:  CMP             R4, R1
2714B0:  BNE             loc_2714C2
2714B2:  LDR             R1, =(aNvevent - 0x2714BC); "NVEvent"
2714B4:  ADR             R2, aEventNotMatche; "event not matched"
2714B6:  MOVS            R0, #3; prio
2714B8:  ADD             R1, PC; "NVEvent"
2714BA:  BLX             __android_log_print
2714BE:  MOVS            R0, #0
2714C0:  B               loc_271542
2714C2:  LDR.W           R9, =(aUnknownEventTy - 0x2714D4); "unknown event type!"
2714C6:  ADR.W           R8, aExaminingEvent; "examining event type [%d]: %s"
2714CA:  LDR.W           R11, =(aNvevent - 0x2714D6); "NVEvent"
2714CE:  LDR             R5, =(dword_6D8200 - 0x2714D8)
2714D0:  ADD             R9, PC; "unknown event type!"
2714D2:  ADD             R11, PC; "NVEvent"
2714D4:  ADD             R5, PC; dword_6D8200
2714D6:  LDR             R1, =(dword_6D8200 - 0x2714E0)
2714D8:  ADD.W           R0, R4, R4,LSL#1
2714DC:  ADD             R1, PC; dword_6D8200
2714DE:  ADD.W           R10, R1, R0,LSL#3
2714E2:  LDR.W           R0, [R10,#0x28]!
2714E6:  SUBS            R1, R0, #1
2714E8:  MOV             R0, R9
2714EA:  CMP             R1, #9
2714EC:  BHI             loc_2714F6
2714EE:  LDR             R0, =(off_661F10 - 0x2714F4); "NV_EVENT_KEY" ...
2714F0:  ADD             R0, PC; off_661F10
2714F2:  LDR.W           R0, [R0,R1,LSL#2]
2714F6:  STR             R0, [SP,#0x20+var_20]
2714F8:  MOVS            R0, #3; prio
2714FA:  MOV             R1, R11; tag
2714FC:  MOV             R2, R8; fmt
2714FE:  MOV             R3, R4
271500:  BLX             __android_log_print
271504:  LDR             R0, [R5,#(dword_6D8220 - 0x6D8200)]
271506:  CMP             R0, #1
271508:  BLT             loc_271524
27150A:  LDR             R2, =(dword_6D8200 - 0x271516)
27150C:  MOVS            R3, #0
27150E:  LDR.W           R1, [R10]
271512:  ADD             R2, PC; dword_6D8200
271514:  LDR             R2, [R2,#(dword_6D821C - 0x6D8200)]
271516:  LDR.W           R6, [R2,R3,LSL#2]
27151A:  CMP             R1, R6
27151C:  BEQ             loc_271534
27151E:  ADDS            R3, #1
271520:  CMP             R3, R0
271522:  BLT             loc_271516
271524:  LDR             R1, =(dword_6D8200 - 0x27152C)
271526:  ADDS            R0, R4, #1
271528:  ADD             R1, PC; dword_6D8200
27152A:  UXTB            R4, R0
27152C:  LDR             R1, [R1]
27152E:  CMP             R4, R1
271530:  BNE             loc_2714D6
271532:  B               loc_2714B2
271534:  LDR             R1, =(aNvevent - 0x27153E); "NVEvent"
271536:  ADR             R2, aEventMatched; "event matched"
271538:  MOVS            R0, #3; prio
27153A:  ADD             R1, PC; "NVEvent"
27153C:  BLX             __android_log_print
271540:  MOVS            R0, #1
271542:  ADD             SP, SP, #4
271544:  POP.W           {R8-R11}
271548:  POP             {R4-R7,PC}
