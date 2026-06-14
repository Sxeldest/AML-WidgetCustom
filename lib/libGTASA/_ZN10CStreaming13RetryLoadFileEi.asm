; =========================================================
; Game Engine Function: _ZN10CStreaming13RetryLoadFileEi
; Address            : 0x2D22A4 - 0x2D2384
; =========================================================

2D22A4:  PUSH            {R4-R7,LR}
2D22A6:  ADD             R7, SP, #0xC
2D22A8:  PUSH.W          {R11}
2D22AC:  MOV             R4, R0
2D22AE:  BLX             j__ZN4CPad15StopPadsShakingEv; CPad::StopPadsShaking(void)
2D22B2:  LDR             R0, =(_ZN10CStreaming15ms_channelErrorE_ptr - 0x2D22B8)
2D22B4:  ADD             R0, PC; _ZN10CStreaming15ms_channelErrorE_ptr
2D22B6:  LDR             R0, [R0]; CStreaming::ms_channelError ...
2D22B8:  LDR             R0, [R0]; CStreaming::ms_channelError
2D22BA:  ADDS            R0, #1; this
2D22BC:  BEQ             loc_2D22C4
2D22BE:  BLX             j__ZN14CLoadingScreen5PauseEv; CLoadingScreen::Pause(void)
2D22C2:  B               loc_2D22CE
2D22C4:  MOV             R0, #0
2D22CA:  BNE             loc_2D22DA
2D22CC:  B               loc_2D2378
2D22CE:  LDR             R0, =(_ZN10CStreaming15ms_channelErrorE_ptr - 0x2D22D4)
2D22D0:  ADD             R0, PC; _ZN10CStreaming15ms_channelErrorE_ptr
2D22D2:  LDR             R0, [R0]; CStreaming::ms_channelError ...
2D22D4:  LDR             R0, [R0]; CStreaming::ms_channelError
2D22D6:  ADDS            R0, #1
2D22D8:  BEQ             loc_2D2378
2D22DA:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D22E2)
2D22DC:  MOVS            R1, #0x98; int
2D22DE:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D22E0:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D22E2:  MLA.W           R0, R4, R1, R0
2D22E6:  ADD.W           R5, R0, #0x80
2D22EA:  LDR             R0, [R5]
2D22EC:  CBZ             R0, loc_2D2324
2D22EE:  CMP             R0, #1
2D22F0:  BEQ             loc_2D2356
2D22F2:  CMP             R0, #3
2D22F4:  BNE             loc_2D22EC
2D22F6:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D22FE)
2D22F8:  MOVS            R1, #0x98
2D22FA:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D22FC:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D22FE:  MLA.W           R0, R4, R1, R0
2D2302:  LDR.W           R1, [R0,#0x90]
2D2306:  ADDS            R1, #1
2D2308:  STR.W           R1, [R0,#0x90]
2D230C:  MOV             R0, R4; int
2D230E:  BLX             j__Z17CdStreamGetStatusi; CdStreamGetStatus(int)
2D2312:  CMP             R0, #0xFA
2D2314:  BEQ             loc_2D22CE
2D2316:  CMP             R0, #0xFF
2D2318:  BNE             loc_2D2324
2D231A:  MOV             R0, R4; int
2D231C:  BLX             j__Z17CdStreamGetStatusi; CdStreamGetStatus(int)
2D2320:  CMP             R0, #0xFF
2D2322:  BEQ             loc_2D22CE
2D2324:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D232E)
2D2326:  MOVS            R2, #0x98
2D2328:  LDR             R1, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x2D2330)
2D232A:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D232C:  ADD             R1, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
2D232E:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D2330:  MLA.W           R6, R4, R2, R0
2D2334:  LDR             R0, [R1]; CStreaming::ms_pStreamingBuffer ...
2D2336:  LDR.W           R1, [R0,R4,LSL#2]; void *
2D233A:  MOV             R0, R4; int
2D233C:  LDRD.W          R2, R3, [R6,#0x88]; unsigned int
2D2340:  BLX             j__Z12CdStreamReadiPvjj; CdStreamRead(int,void *,uint,uint)
2D2344:  MOVS            R0, #1
2D2346:  STR             R0, [R5]
2D2348:  MOV             R0, #0xFFFFFDA8
2D2350:  STR.W           R0, [R6,#0x84]
2D2354:  B               loc_2D22CE
2D2356:  MOV             R0, R4; this
2D2358:  BLX             j__ZN10CStreaming21ProcessLoadingChannelEi; CStreaming::ProcessLoadingChannel(int)
2D235C:  CMP             R0, #1
2D235E:  BNE             loc_2D22CE
2D2360:  LDR             R0, [R5]
2D2362:  CMP             R0, #2
2D2364:  ITT EQ
2D2366:  MOVEQ           R0, R4; this
2D2368:  BLXEQ           j__ZN10CStreaming21ProcessLoadingChannelEi; CStreaming::ProcessLoadingChannel(int)
2D236C:  LDR             R0, =(_ZN10CStreaming15ms_channelErrorE_ptr - 0x2D2376)
2D236E:  MOV.W           R1, #0xFFFFFFFF
2D2372:  ADD             R0, PC; _ZN10CStreaming15ms_channelErrorE_ptr
2D2374:  LDR             R0, [R0]; this
2D2376:  STR             R1, [R0]; CStreaming::ms_channelError
2D2378:  POP.W           {R11}
2D237C:  POP.W           {R4-R7,LR}
2D2380:  B.W             j_j__ZN14CLoadingScreen8ContinueEv; j_CLoadingScreen::Continue(void)
