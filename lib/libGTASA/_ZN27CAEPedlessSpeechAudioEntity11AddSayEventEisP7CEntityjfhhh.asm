; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntity11AddSayEventEisP7CEntityjfhhh
; Address            : 0x39D788 - 0x39D9B4
; =========================================================

39D788:  PUSH            {R4-R7,LR}
39D78A:  ADD             R7, SP, #0xC
39D78C:  PUSH.W          {R8-R11}
39D790:  SUB             SP, SP, #4
39D792:  MOV             R6, R3
39D794:  MOV             R4, R0
39D796:  CMP             R6, #0
39D798:  MOV             R11, R2
39D79A:  ITT NE
39D79C:  LDRBNE.W        R0, [R4,#0x90]
39D7A0:  CMPNE           R0, #0
39D7A2:  MOV             R5, R1
39D7A4:  MOVW            R9, #0xFFFF
39D7A8:  BEQ.W           loc_39D9A8
39D7AC:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr - 0x39D7B2)
39D7AE:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr
39D7B0:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled ...
39D7B2:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled
39D7B4:  CMP             R0, #0
39D7B6:  ITT EQ
39D7B8:  LDRBEQ.W        R0, [R4,#0x9A]
39D7BC:  CMPEQ           R0, #0
39D7BE:  BNE.W           loc_39D9A8
39D7C2:  LDR             R0, =(TheCamera_ptr - 0x39D7C8)
39D7C4:  ADD             R0, PC; TheCamera_ptr
39D7C6:  LDR             R0, [R0]; TheCamera
39D7C8:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
39D7CC:  CBZ             R0, loc_39D7F4
39D7CE:  LDRH.W          R0, [R4,#0x92]
39D7D2:  CMP             R0, #2
39D7D4:  IT NE
39D7D6:  CMPNE           R0, #4
39D7D8:  BEQ             loc_39D7EE
39D7DA:  CMP.W           R11, #0xD
39D7DE:  IT NE
39D7E0:  CMPNE.W         R11, #0x74 ; 't'
39D7E4:  BEQ             loc_39D7EE
39D7E6:  CMP.W           R11, #0xF
39D7EA:  BNE.W           loc_39D9A8
39D7EE:  LDR             R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x39D7F4)
39D7F0:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
39D7F2:  B               loc_39D7F8
39D7F4:  LDR             R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x39D7FA)
39D7F6:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
39D7F8:  LDR             R0, [R0]; CGameLogic::GameState ...
39D7FA:  LDRB            R0, [R0]; CGameLogic::GameState
39D7FC:  CMP             R0, #2
39D7FE:  BEQ.W           loc_39D9A8
39D802:  VLDR            S0, [R7,#arg_4]
39D806:  VMOV            R0, S0; this
39D80A:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
39D80E:  CMP             R5, #0x34 ; '4'
39D810:  BNE.W           loc_39D9A8
39D814:  CMP             R0, #0
39D816:  BEQ.W           loc_39D9A8
39D81A:  LDR             R0, [R7,#arg_8]
39D81C:  CBNZ            R0, loc_39D828
39D81E:  LDRB.W          R0, [R4,#0x99]
39D822:  CMP             R0, #0
39D824:  BNE.W           loc_39D9A8
39D828:  LDRB.W          R0, [R4,#0x98]
39D82C:  CMP             R0, #0
39D82E:  BNE.W           loc_39D9A8
39D832:  SUB.W           R0, R11, #0xAD
39D836:  CMP             R0, #2
39D838:  BHI.W           loc_39D9A8
39D83C:  LDR             R0, =(_ZN10CStreaming21ms_numModelsRequestedE_ptr - 0x39D848)
39D83E:  MOVS            R1, #0xA0004
39D844:  ADD             R0, PC; _ZN10CStreaming21ms_numModelsRequestedE_ptr
39D846:  STR.W           R1, [R4,#0x92]
39D84A:  LDR             R0, [R0]; CStreaming::ms_numModelsRequested ...
39D84C:  LDR             R0, [R0]; CStreaming::ms_numModelsRequested
39D84E:  CMP             R0, #0x10
39D850:  BLT             loc_39D860
39D852:  LDR             R0, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x39D858)
39D854:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
39D856:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
39D858:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
39D85A:  CMP             R0, #0
39D85C:  BNE.W           loc_39D9A8
39D860:  LDR             R0, =(TheCamera_ptr - 0x39D868)
39D862:  LDR             R1, [R6,#0x14]
39D864:  ADD             R0, PC; TheCamera_ptr
39D866:  ADD.W           R2, R1, #0x30 ; '0'
39D86A:  CMP             R1, #0
39D86C:  LDR             R0, [R0]; TheCamera
39D86E:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
39D870:  IT EQ
39D872:  ADDEQ           R2, R6, #4
39D874:  VLDR            S0, [R2]
39D878:  ADD.W           R1, R3, #0x30 ; '0'
39D87C:  CMP             R3, #0
39D87E:  IT EQ
39D880:  ADDEQ           R1, R0, #4
39D882:  VLDR            D16, [R2,#4]
39D886:  VLDR            S2, [R1]
39D88A:  VLDR            D17, [R1,#4]
39D88E:  VSUB.F32        S0, S0, S2
39D892:  VSUB.F32        D16, D16, D17
39D896:  VMUL.F32        D1, D16, D16
39D89A:  VMUL.F32        S0, S0, S0
39D89E:  VADD.F32        S0, S0, S2
39D8A2:  VADD.F32        S0, S0, S3
39D8A6:  VLDR            S2, =3600.0
39D8AA:  VCMPE.F32       S0, S2
39D8AE:  VMRS            APSR_nzcv, FPSCR
39D8B2:  BGT             loc_39D9A8
39D8B4:  MOV             R0, R4; this
39D8B6:  MOV             R1, R11; __int16
39D8B8:  BLX             j__ZN23CAEPedSpeechAudioEntity28CanWePlayGlobalSpeechContextEs; CAEPedSpeechAudioEntity::CanWePlayGlobalSpeechContext(short)
39D8BC:  MOV             R8, R0
39D8BE:  UXTH.W          R0, R8
39D8C2:  CMP             R0, #4
39D8C4:  BHI             loc_39D9A8
39D8C6:  SUB.W           R2, R7, #-var_1E; __int16 *
39D8CA:  MOV             R0, R4; this
39D8CC:  MOV             R1, R11; __int16
39D8CE:  BLX             j__ZN23CAEPedSpeechAudioEntity18GetSoundAndBankIDsEsPs; CAEPedSpeechAudioEntity::GetSoundAndBankIDs(short,short *)
39D8D2:  MOV             R10, R0
39D8D4:  CMP.W           R10, #0
39D8D8:  BLT             loc_39D9A8
39D8DA:  LDR.W           R0, [R4,#0x114]; this
39D8DE:  ADD.W           R5, R4, #0x114
39D8E2:  CBZ             R0, loc_39D8EE
39D8E4:  MOV             R1, R5; CEntity **
39D8E6:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
39D8EA:  MOVS            R0, #0
39D8EC:  STR             R0, [R5]
39D8EE:  MOV             R0, R6; this
39D8F0:  MOV             R1, R5; CEntity **
39D8F2:  STR             R6, [R5]
39D8F4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
39D8F8:  UBFX.W          R0, R11, #3, #0xD
39D8FC:  CMP             R0, #0x2C ; ','
39D8FE:  BHI             loc_39D96C
39D900:  LDR             R0, =(gSpeechContextLookup_ptr - 0x39D908)
39D902:  MOVS            R1, #0
39D904:  ADD             R0, PC; gSpeechContextLookup_ptr
39D906:  LDR             R2, [R0]; gSpeechContextLookup ; int
39D908:  SXTH            R0, R1
39D90A:  LSLS            R3, R0, #4
39D90C:  LDRH            R3, [R2,R3]
39D90E:  CMP             R3, R9
39D910:  ITTT NE
39D912:  ADDNE           R1, #1
39D914:  UXTHNE.W        R6, R11
39D918:  CMPNE           R3, R6
39D91A:  BNE             loc_39D908
39D91C:  CMP             R3, R9
39D91E:  BEQ             loc_39D96C
39D920:  LDR             R1, =(gSpeechContextLookup_ptr - 0x39D926)
39D922:  ADD             R1, PC; gSpeechContextLookup_ptr
39D924:  LDR             R1, [R1]; gSpeechContextLookup
39D926:  ADD.W           R0, R1, R0,LSL#4
39D92A:  MOV.W           R1, #0x3E8; int
39D92E:  LDRH            R5, [R0,#0xC]
39D930:  MOVS            R0, #(stderr+1); this
39D932:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39D936:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39D93E)
39D938:  ADD             R0, R5
39D93A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39D93C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39D93E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39D940:  SXTAH.W         R0, R1, R0
39D944:  SUB.W           R1, R11, #0x154
39D948:  UXTH            R1, R1
39D94A:  CMP             R1, #0x12
39D94C:  BHI             loc_39D960
39D94E:  MOVS            R1, #0xFEAC0000
39D954:  ADD.W           R1, R1, R11,LSL#16
39D958:  ADD.W           R1, R4, R1,ASR#14
39D95C:  ADDS            R1, #0xB4
39D95E:  B               loc_39D96A
39D960:  LDR             R1, =(gGlobalSpeechContextNextPlayTime_ptr - 0x39D966)
39D962:  ADD             R1, PC; gGlobalSpeechContextNextPlayTime_ptr
39D964:  LDR             R1, [R1]; gGlobalSpeechContextNextPlayTime
39D966:  ADD.W           R1, R1, R11,LSL#2
39D96A:  STR             R0, [R1]
39D96C:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x39D974)
39D96E:  LDR             R1, [R7,#arg_0]; unsigned int
39D970:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
39D972:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
39D974:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
39D976:  LDRSB.W         R0, [R0,#0x34]
39D97A:  VMOV            S0, R0
39D97E:  LDR             R0, [R7,#arg_10]
39D980:  VCVT.F32.S32    S0, S0
39D984:  STRB.W          R0, [R4,#0x9B]
39D988:  LDR             R0, [R7,#arg_C]
39D98A:  STRB.W          R0, [R4,#0x9C]
39D98E:  MOVS            R0, #1
39D990:  STRH.W          R8, [R4,#0xA8]
39D994:  STRB.W          R0, [R4,#0x98]
39D998:  MOV             R0, R4; this
39D99A:  STRH.W          R11, [R4,#0xB0]
39D99E:  VSTR            S0, [R4,#0xAC]
39D9A2:  BLX             j__ZN23CAEPedSpeechAudioEntity17LoadAndPlaySpeechEj; CAEPedSpeechAudioEntity::LoadAndPlaySpeech(uint)
39D9A6:  MOV             R9, R10
39D9A8:  SXTH.W          R0, R9
39D9AC:  ADD             SP, SP, #4
39D9AE:  POP.W           {R8-R11}
39D9B2:  POP             {R4-R7,PC}
