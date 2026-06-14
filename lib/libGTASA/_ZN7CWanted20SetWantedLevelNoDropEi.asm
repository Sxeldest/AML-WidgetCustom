; =========================================================
; Game Engine Function: _ZN7CWanted20SetWantedLevelNoDropEi
; Address            : 0x422258 - 0x42234C
; =========================================================

422258:  PUSH            {R4,R5,R7,LR}
42225A:  ADD             R7, SP, #8
42225C:  MOV             R4, R0
42225E:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x422266)
422260:  MOV             R5, R1
422262:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
422264:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
422266:  LDRD.W          R2, R0, [R4,#0x2C]
42226A:  LDRB.W          R1, [R1,#(byte_79683D - 0x7967F4)]
42226E:  CMP             R2, R0
422270:  BGE             loc_4222DE
422272:  CBNZ            R1, loc_4222DE
422274:  LDR             R1, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x42227C)
422276:  MOVS            R2, #0
422278:  ADD             R1, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
42227A:  LDR             R1, [R1]; CWanted::MaximumWantedLevel ...
42227C:  LDR             R1, [R1]; CWanted::MaximumWantedLevel
42227E:  STR             R2, [R4,#0x6C]
422280:  CMP             R1, R0
422282:  STR             R2, [R4,#0x50]
422284:  STR.W           R2, [R4,#0x88]
422288:  STR.W           R2, [R4,#0xA4]
42228C:  STR.W           R2, [R4,#0xC0]
422290:  STR.W           R2, [R4,#0xDC]
422294:  STR.W           R2, [R4,#0xF8]
422298:  STR.W           R2, [R4,#0x114]
42229C:  STR.W           R2, [R4,#0x130]
4222A0:  STR.W           R2, [R4,#0x14C]
4222A4:  STR.W           R2, [R4,#0x168]
4222A8:  STR.W           R2, [R4,#0x184]
4222AC:  STR.W           R2, [R4,#0x1A0]
4222B0:  STR.W           R2, [R4,#0x1BC]
4222B4:  STR.W           R2, [R4,#0x1D8]
4222B8:  STR             R2, [R4,#0x34]
4222BA:  IT LT
4222BC:  MOVLT           R0, R1
4222BE:  CMP             R0, #6
4222C0:  BHI             loc_4222CC
4222C2:  LDR             R1, =(unk_617CF0 - 0x4222C8)
4222C4:  ADD             R1, PC; unk_617CF0
4222C6:  LDR.W           R0, [R1,R0,LSL#2]
4222CA:  STR             R0, [R4]
4222CC:  MOV             R0, R4; this
4222CE:  BLX             j__ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
4222D2:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4222DA)
4222D4:  LDR             R2, [R4,#0x2C]
4222D6:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4222D8:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4222DA:  LDRB.W          R1, [R0,#(byte_79683D - 0x7967F4)]
4222DE:  CMP             R2, R5
4222E0:  BGE             locret_42234A
4222E2:  CMP             R1, #0
4222E4:  IT NE
4222E6:  POPNE           {R4,R5,R7,PC}
4222E8:  LDR             R0, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x4222F0)
4222EA:  MOVS            R1, #0
4222EC:  ADD             R0, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
4222EE:  LDR             R0, [R0]; CWanted::MaximumWantedLevel ...
4222F0:  LDR             R0, [R0]; CWanted::MaximumWantedLevel
4222F2:  STR             R1, [R4,#0x6C]
4222F4:  CMP             R0, R5
4222F6:  STR             R1, [R4,#0x50]
4222F8:  STR.W           R1, [R4,#0x88]
4222FC:  STR.W           R1, [R4,#0xA4]
422300:  STR.W           R1, [R4,#0xC0]
422304:  STR.W           R1, [R4,#0xDC]
422308:  STR.W           R1, [R4,#0xF8]
42230C:  STR.W           R1, [R4,#0x114]
422310:  STR.W           R1, [R4,#0x130]
422314:  STR.W           R1, [R4,#0x14C]
422318:  STR.W           R1, [R4,#0x168]
42231C:  STR.W           R1, [R4,#0x184]
422320:  STR.W           R1, [R4,#0x1A0]
422324:  STR.W           R1, [R4,#0x1BC]
422328:  STR.W           R1, [R4,#0x1D8]
42232C:  STR             R1, [R4,#0x34]
42232E:  IT LT
422330:  MOVLT           R5, R0
422332:  CMP             R5, #6
422334:  BHI             loc_422340
422336:  LDR             R0, =(unk_617CF0 - 0x42233C)
422338:  ADD             R0, PC; unk_617CF0
42233A:  LDR.W           R0, [R0,R5,LSL#2]
42233E:  STR             R0, [R4]
422340:  MOV             R0, R4; this
422342:  POP.W           {R4,R5,R7,LR}
422346:  B.W             _ZN7CWanted17UpdateWantedLevelEv; CWanted::UpdateWantedLevel(void)
42234A:  POP             {R4,R5,R7,PC}
