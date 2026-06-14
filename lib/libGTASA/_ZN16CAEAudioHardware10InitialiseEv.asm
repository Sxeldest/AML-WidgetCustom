; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware10InitialiseEv
; Address            : 0x392414 - 0x392514
; =========================================================

392414:  PUSH            {R4-R7,LR}
392416:  ADD             R7, SP, #0xC
392418:  PUSH.W          {R8,R9,R11}
39241C:  MOV             R4, R0
39241E:  MOVS            R0, #0x34 ; '4'; unsigned int
392420:  BLX             _Znwj; operator new(uint)
392424:  BLX             j__ZN16CAEMP3BankLoaderC2Ev; CAEMP3BankLoader::CAEMP3BankLoader(void)
392428:  STR.W           R0, [R4,#0xB78]
39242C:  MOVS            R0, #0x24 ; '$'; unsigned int
39242E:  BLX             _Znwj; operator new(uint)
392432:  BLX             j__ZN17CAEMP3TrackLoaderC2Ev; CAEMP3TrackLoader::CAEMP3TrackLoader(void)
392436:  LDR.W           R1, [R4,#0xB78]
39243A:  STR.W           R0, [R4,#0xB7C]
39243E:  MOV             R0, R1; this
392440:  BLX             j__ZN16CAEMP3BankLoader10InitialiseEv; CAEMP3BankLoader::Initialise(void)
392444:  CMP             R0, #0
392446:  BEQ             loc_392508
392448:  LDR.W           R0, [R4,#0xB7C]; this
39244C:  BLX             j__ZN17CAEMP3TrackLoader10InitialiseEv; CAEMP3TrackLoader::Initialise(void)
392450:  CMP             R0, #1
392452:  BNE             loc_392508
392454:  MOV             R0, R4; this
392456:  BLX             j__ZN16CAEAudioHardware18InitOpenALListenerEv; CAEAudioHardware::InitOpenALListener(void)
39245A:  MOV             R0, #0x24068; unsigned int
392462:  BLX             _Znwj; operator new(uint)
392466:  MOVS            R1, #0; unsigned __int16
392468:  BLX             j__ZN19CAEStreamingChannelC2Et; CAEStreamingChannel::CAEStreamingChannel(ushort)
39246C:  STR.W           R0, [R4,#0xB88]
392470:  BLX             j__ZN19CAEStreamingChannel10InitialiseEv; CAEStreamingChannel::Initialise(void)
392474:  LDR             R0, =(AESmoothFadeThread_ptr - 0x392484)
392476:  MOVS            R1, #0x19
392478:  STRH.W          R1, [R4,#0x4A]
39247C:  MOV.W           R8, #1
392480:  ADD             R0, PC; AESmoothFadeThread_ptr
392482:  MOVS            R1, #7
392484:  STRB.W          R8, [R4,#4]
392488:  LDR             R0, [R0]; AESmoothFadeThread
39248A:  STR.W           R1, [R0,#(dword_9443D8 - 0x943BC4)]
39248E:  LDRH.W          R0, [R4,#0x4A]
392492:  CMP             R0, #2
392494:  BCC             loc_3924BE
392496:  ADD.W           R9, R4, #0xBD0
39249A:  MOVS            R5, #0
39249C:  MOVS            R0, #0x5C ; '\'; unsigned int
39249E:  BLX             _Znwj; operator new(uint)
3924A2:  ADDS            R6, R5, #1
3924A4:  LDRB            R2, [R4,#4]; unsigned int
3924A6:  MOVS            R3, #0x10; unsigned __int16
3924A8:  UXTH            R1, R6; unsigned __int16
3924AA:  BLX             j__ZN16CAEStaticChannelC2Etjt; CAEStaticChannel::CAEStaticChannel(ushort,uint,ushort)
3924AE:  STR.W           R0, [R9,R5,LSL#2]
3924B2:  ADDS            R1, R5, #2
3924B4:  MOV             R5, R6
3924B6:  LDRH.W          R0, [R4,#0x4A]
3924BA:  CMP             R1, R0
3924BC:  BLT             loc_39249C
3924BE:  LDR.W           R0, [R4,#0xB88]; this
3924C2:  MOVS            R1, #0xC2C80000; float
3924C8:  STR.W           R0, [R4,#0xBCC]
3924CC:  BLX             j__ZN15CAEAudioChannel9SetVolumeEf; CAEAudioChannel::SetVolume(float)
3924D0:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3924D6)
3924D2:  ADD             R0, PC; AESmoothFadeThread_ptr
3924D4:  LDR             R6, [R0]; AESmoothFadeThread
3924D6:  MOVS            R0, #0x37 ; '7'
3924D8:  STRH            R0, [R4,#6]
3924DA:  MOV             R0, R6; this
3924DC:  BLX             j__ZN19CAESmoothFadeThread10InitialiseEv; CAESmoothFadeThread::Initialise(void)
3924E0:  MOV             R0, R6; this
3924E2:  BLX             j__ZN19CAESmoothFadeThread5StartEv; CAESmoothFadeThread::Start(void)
3924E6:  ADDW            R6, R4, #0xB8C
3924EA:  LDR.W           R1, [R4,#0xB88]; CAEStreamingChannel *
3924EE:  MOV             R0, R6; this
3924F0:  BLX             j__ZN15CAEStreamThread10InitialiseEP19CAEStreamingChannel; CAEStreamThread::Initialise(CAEStreamingChannel *)
3924F4:  MOV             R0, R6; this
3924F6:  BLX             j__ZN15CAEStreamThread5StartEv; CAEStreamThread::Start(void)
3924FA:  LDRH.W          R0, [R4,#0x4A]
3924FE:  STRB.W          R8, [R4]
392502:  STRH.W          R0, [R4,#0x48]
392506:  B               loc_39250C
392508:  MOV.W           R8, #0
39250C:  MOV             R0, R8
39250E:  POP.W           {R8,R9,R11}
392512:  POP             {R4-R7,PC}
