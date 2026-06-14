; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x39B7EC - 0x39B980
; =========================================================

39B7EC:  PUSH            {R4,R6,R7,LR}
39B7EE:  ADD             R7, SP, #8
39B7F0:  SUB             SP, SP, #0x48
39B7F2:  MOV             R4, R0
39B7F4:  MOVS            R3, #0
39B7F6:  ADDS            R0, R2, #1
39B7F8:  STRD.W          R3, R3, [SP,#0x50+var_10]
39B7FC:  BNE             loc_39B8B6
39B7FE:  LDRH.W          R1, [R4,#0x92]
39B802:  MOVW            R12, #0xFFFF
39B806:  STRB.W          R3, [R4,#0x98]
39B80A:  CMP             R1, #2
39B80C:  BNE             loc_39B818
39B80E:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity18s_bAPlayerSpeakingE_ptr - 0x39B816)
39B810:  MOVS            R2, #0
39B812:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity18s_bAPlayerSpeakingE_ptr
39B814:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_bAPlayerSpeaking ...
39B816:  STRB            R2, [R1]; CAEPedSpeechAudioEntity::s_bAPlayerSpeaking
39B818:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B824)
39B81A:  MOVS            R0, #0
39B81C:  LDRSH.W         R3, [R4,#0xA8]
39B820:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B822:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39B82A)
39B824:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B826:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39B828:  RSB.W           R3, R3, R3,LSL#3
39B82C:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39B82E:  STRH.W          R0, [R1,R3,LSL#2]
39B832:  ADD.W           R1, R1, R3,LSL#2
39B836:  STRD.W          R0, R0, [R1,#4]
39B83A:  STRH.W          R12, [R1,#0xC]
39B83E:  STRH.W          R12, [R1,#0xE]
39B842:  STR             R0, [R1,#0x10]
39B844:  STRH.W          R12, [R1,#0x14]
39B848:  STRH.W          R12, [R1,#0x16]
39B84C:  STRB            R0, [R1,#0x1A]
39B84E:  STRH            R0, [R1,#0x18]
39B850:  STRH.W          R12, [R4,#0xA4]
39B854:  STR.W           R0, [R4,#0xA0]
39B858:  STRH.W          R12, [R4,#0xA6]
39B85C:  LDRB            R0, [R2]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39B85E:  CMP             R0, #0
39B860:  BEQ             loc_39B90C
39B862:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39B868)
39B864:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39B866:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39B868:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPed1
39B86A:  ADD.W           R0, R0, #0x298
39B86E:  CMP             R0, R4
39B870:  BNE             loc_39B882
39B872:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39B87C)
39B874:  LDRH.W          R1, [R4,#0xA8]
39B878:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39B87A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39B87C:  LDRH            R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39B87E:  CMP             R1, R0
39B880:  BEQ             loc_39B8A2
39B882:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39B888)
39B884:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39B886:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39B888:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPed2
39B88A:  ADD.W           R0, R0, #0x298
39B88E:  CMP             R0, R4
39B890:  BNE             loc_39B948
39B892:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39B89C)
39B894:  LDRH.W          R1, [R4,#0xA8]
39B898:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39B89A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2 ...
39B89C:  LDRH            R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2
39B89E:  CMP             R1, R0
39B8A0:  BNE             loc_39B948
39B8A2:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B8B0)
39B8A4:  SXTH            R1, R1
39B8A6:  RSB.W           R1, R1, R1,LSL#3
39B8AA:  MOVS            R2, #4
39B8AC:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B8AE:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B8B0:  STRH.W          R2, [R0,R1,LSL#2]
39B8B4:  B               loc_39B948
39B8B6:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B8C2)
39B8B8:  MOVS            R3, #5
39B8BA:  LDRSH.W         R2, [R4,#0xA8]
39B8BE:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B8C0:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B8C2:  RSB.W           R2, R2, R2,LSL#3
39B8C6:  STRH.W          R3, [R0,R2,LSL#2]
39B8CA:  LDR             R0, [R4,#4]
39B8CC:  LDRB.W          R2, [R0,#0x485]
39B8D0:  LSLS            R2, R2, #0x18
39B8D2:  BPL             loc_39B8E4
39B8D4:  LDRB.W          R2, [R0,#0x75C]
39B8D8:  CMP             R2, #2
39B8DA:  BNE             loc_39B8E4
39B8DC:  MOV             R0, R1; this
39B8DE:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
39B8E2:  B               loc_39B976
39B8E4:  LDRB.W          R2, [R4,#0x9B]
39B8E8:  CMP             R2, #0
39B8EA:  BNE             loc_39B976
39B8EC:  CMP             R0, #0
39B8EE:  BEQ             loc_39B976
39B8F0:  LDR             R2, [R0,#0x14]
39B8F2:  ADD.W           R3, R2, #0x30 ; '0'
39B8F6:  CMP             R2, #0
39B8F8:  IT EQ
39B8FA:  ADDEQ           R3, R0, #4
39B8FC:  MOV             R0, R1
39B8FE:  LDRD.W          R4, R2, [R3]
39B902:  LDR             R3, [R3,#8]
39B904:  MOV             R1, R4
39B906:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
39B90A:  B               loc_39B976
39B90C:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39B912)
39B90E:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39B910:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39B912:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39B914:  CBZ             R0, loc_39B948
39B916:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr - 0x39B91C)
39B918:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr
39B91A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed ...
39B91C:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed
39B91E:  ADD.W           R0, R0, #0x298
39B922:  CMP             R0, R4
39B924:  BNE             loc_39B948
39B926:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39B92C)
39B928:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39B92A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39B92C:  LDRH            R1, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39B92E:  LDRH.W          R0, [R4,#0xA8]
39B932:  CMP             R1, R0
39B934:  BNE             loc_39B948
39B936:  SXTH            R0, R1
39B938:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B944)
39B93A:  RSB.W           R0, R0, R0,LSL#3
39B93E:  MOVS            R2, #4
39B940:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B942:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B944:  STRH.W          R2, [R1,R0,LSL#2]
39B948:  LDR             R0, [R4,#4]
39B94A:  MOVS            R1, #0
39B94C:  STRB.W          R1, [R4,#0x9C]
39B950:  STRH.W          R12, [R4,#0xA8]
39B954:  LDR.W           R0, [R0,#0x440]
39B958:  CBZ             R0, loc_39B976
39B95A:  ADDS            R0, #4; this
39B95C:  MOVS            R1, #3; int
39B95E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
39B962:  CBZ             R0, loc_39B976
39B964:  LDR             R0, [R4,#4]
39B966:  MOVS            R1, #3; int
39B968:  LDR.W           R0, [R0,#0x440]
39B96C:  ADDS            R0, #4; this
39B96E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
39B972:  BLX             j__ZN18CTaskComplexFacial7StopAllEv; CTaskComplexFacial::StopAll(void)
39B976:  MOV             R0, SP; this
39B978:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
39B97C:  ADD             SP, SP, #0x48 ; 'H'
39B97E:  POP             {R4,R6,R7,PC}
