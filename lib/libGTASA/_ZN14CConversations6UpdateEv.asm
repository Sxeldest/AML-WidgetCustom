; =========================================================
; Game Engine Function: _ZN14CConversations6UpdateEv
; Address            : 0x300654 - 0x300722
; =========================================================

300654:  PUSH            {R4,R6,R7,LR}
300656:  ADD             R7, SP, #8
300658:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x30065E)
30065A:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
30065C:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
30065E:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus
300660:  CMP             R0, #2
300662:  BEQ             loc_300690
300664:  CMP             R0, #1
300666:  BNE             loc_3006AC
300668:  LDR             R0, =(AudioEngine_ptr - 0x300670)
30066A:  MOVS            R1, #0; unsigned __int8
30066C:  ADD             R0, PC; AudioEngine_ptr
30066E:  LDR             R0, [R0]; AudioEngine ; this
300670:  BLX             j__ZN12CAudioEngine28GetMissionAudioLoadingStatusEh; CAudioEngine::GetMissionAudioLoadingStatus(uchar)
300674:  CMP             R0, #1
300676:  BNE             locret_30068E
300678:  LDR             R0, =(AudioEngine_ptr - 0x300680)
30067A:  MOVS            R1, #0; unsigned __int8
30067C:  ADD             R0, PC; AudioEngine_ptr
30067E:  LDR             R0, [R0]; AudioEngine ; this
300680:  BLX             j__ZN12CAudioEngine22PlayLoadedMissionAudioEh; CAudioEngine::PlayLoadedMissionAudio(uchar)
300684:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x30068C)
300686:  MOVS            R1, #2
300688:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
30068A:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
30068C:  STR             R1, [R0]; CConversations::m_AwkwardSayStatus
30068E:  POP             {R4,R6,R7,PC}
300690:  LDR             R0, =(AudioEngine_ptr - 0x30069A)
300692:  MOVS            R1, #0; unsigned __int8
300694:  MOVS            R4, #0
300696:  ADD             R0, PC; AudioEngine_ptr
300698:  LDR             R0, [R0]; AudioEngine ; this
30069A:  BLX             j__ZN12CAudioEngine28IsMissionAudioSampleFinishedEh; CAudioEngine::IsMissionAudioSampleFinished(uchar)
30069E:  CMP             R0, #0
3006A0:  IT EQ
3006A2:  POPEQ           {R4,R6,R7,PC}
3006A4:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x3006AA)
3006A6:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
3006A8:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
3006AA:  STR             R4, [R0]; CConversations::m_AwkwardSayStatus
3006AC:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x3006B2)
3006AE:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
3006B0:  LDR             R4, [R0]; CConversations::m_aConversations ...
3006B2:  MOV             R0, R4; this
3006B4:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006B8:  ADD.W           R0, R4, #0x1C; this
3006BC:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006C0:  ADD.W           R0, R4, #0x38 ; '8'; this
3006C4:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006C8:  ADD.W           R0, R4, #0x54 ; 'T'; this
3006CC:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006D0:  ADD.W           R0, R4, #0x70 ; 'p'; this
3006D4:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006D8:  ADD.W           R0, R4, #0x8C; this
3006DC:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006E0:  ADD.W           R0, R4, #0xA8; this
3006E4:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006E8:  ADD.W           R0, R4, #0xC4; this
3006EC:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006F0:  ADD.W           R0, R4, #0xE0; this
3006F4:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
3006F8:  ADD.W           R0, R4, #0xFC; this
3006FC:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
300700:  ADD.W           R0, R4, #0x118; this
300704:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
300708:  ADD.W           R0, R4, #0x134; this
30070C:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
300710:  ADD.W           R0, R4, #0x150; this
300714:  BLX             j__ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
300718:  ADD.W           R0, R4, #0x16C; this
30071C:  POP.W           {R4,R6,R7,LR}
300720:  B               _ZN19CConversationForPed6UpdateEv; CConversationForPed::Update(void)
