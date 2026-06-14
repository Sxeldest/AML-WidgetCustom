; =========================================================
; Game Engine Function: _ZNK23CPedAcquaintanceScanner15IsScanPermittedERK4CPed
; Address            : 0x4BC3EC - 0x4BC492
; =========================================================

4BC3EC:  PUSH            {R4-R7,LR}
4BC3EE:  ADD             R7, SP, #0xC
4BC3F0:  PUSH.W          {R11}
4BC3F4:  MOV             R4, R1
4BC3F6:  MOV             R5, R0
4BC3F8:  MOV             R0, R4; this
4BC3FA:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BC3FE:  CMP             R0, #1
4BC400:  BNE             loc_4BC48A
4BC402:  LDRB.W          R0, [R4,#0x448]
4BC406:  CMP             R0, #2
4BC408:  ITT EQ
4BC40A:  LDRBEQ          R0, [R5,#0xC]
4BC40C:  CMPEQ           R0, #0
4BC40E:  BEQ             loc_4BC45C
4BC410:  LDR.W           R0, [R4,#0x440]
4BC414:  ADDS            R0, #0x38 ; '8'; this
4BC416:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
4BC41A:  MOV             R5, R0
4BC41C:  CBZ             R5, loc_4BC454
4BC41E:  LDR             R0, [R5]
4BC420:  LDR             R1, [R0,#8]
4BC422:  MOV             R0, R5
4BC424:  BLX             R1
4BC426:  CMP             R0, #0x24 ; '$'
4BC428:  BNE             loc_4BC454
4BC42A:  LDR.W           R0, [R4,#0x440]
4BC42E:  LDR.W           R0, [R0,#0xC4]
4BC432:  CBZ             R0, loc_4BC48A
4BC434:  MOV             R0, R5; this
4BC436:  MOV             R1, R4; CPed *
4BC438:  MOVW            R2, #0x6A4; int
4BC43C:  BLX             j__ZNK22CEventEditableResponse25ComputeResponseTaskOfTypeEP4CPedi; CEventEditableResponse::ComputeResponseTaskOfType(CPed *,int)
4BC440:  CMP             R0, #1
4BC442:  BNE             loc_4BC48A
4BC444:  LDR.W           R0, [R4,#0x440]; this
4BC448:  POP.W           {R11}
4BC44C:  POP.W           {R4-R7,LR}
4BC450:  B.W             _ZN16CPedIntelligence32FindRespectedFriendInInformRangeEv; CPedIntelligence::FindRespectedFriendInInformRange(void)
4BC454:  MOVS            R0, #1
4BC456:  POP.W           {R11}
4BC45A:  POP             {R4-R7,PC}
4BC45C:  LDRB.W          R0, [R4,#0x485]
4BC460:  LSLS            R0, R0, #0x1F
4BC462:  BNE             loc_4BC468
4BC464:  MOVS            R6, #0
4BC466:  B               loc_4BC470
4BC468:  LDRB            R6, [R5,#0xD]
4BC46A:  CMP             R6, #0
4BC46C:  IT NE
4BC46E:  MOVNE           R6, #1
4BC470:  MOV             R0, R4; this
4BC472:  BLX             j__ZN22CPedScriptedTaskRecord9GetStatusEPK4CPed; CPedScriptedTaskRecord::GetStatus(CPed const*)
4BC476:  CBZ             R0, loc_4BC486
4BC478:  LDRB            R0, [R5,#0xE]
4BC47A:  CMP             R0, #0
4BC47C:  IT NE
4BC47E:  MOVNE           R0, #1
4BC480:  ORRS            R0, R6
4BC482:  BNE             loc_4BC410
4BC484:  B               loc_4BC48A
4BC486:  CMP             R6, #1
4BC488:  BEQ             loc_4BC410
4BC48A:  MOVS            R0, #0
4BC48C:  POP.W           {R11}
4BC490:  POP             {R4-R7,PC}
