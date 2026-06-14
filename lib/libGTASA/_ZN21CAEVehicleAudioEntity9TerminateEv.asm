; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity9TerminateEv
; Address            : 0x3AC94C - 0x3ACB70
; =========================================================

3AC94C:  PUSH            {R4-R7,LR}
3AC94E:  ADD             R7, SP, #0xC
3AC950:  PUSH.W          {R8,R9,R11}
3AC954:  SUB             SP, SP, #0x78
3AC956:  MOV             R8, R0
3AC958:  LDRB.W          R0, [R8,#0xA4]
3AC95C:  CMP             R0, #0
3AC95E:  BEQ.W           loc_3ACB68
3AC962:  ADD.W           R5, R8, #0xE8
3AC966:  MOV.W           R9, #0
3AC96A:  MOVS            R4, #0
3AC96C:  LDR.W           R0, [R5,R4,LSL#3]; this
3AC970:  CBZ             R0, loc_3AC988
3AC972:  MOVS            R1, #4; unsigned __int16
3AC974:  MOVS            R2, #0; unsigned __int16
3AC976:  LSLS            R6, R4, #1
3AC978:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AC97C:  LDR.W           R0, [R5,R6,LSL#2]; this
3AC980:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AC984:  STR.W           R9, [R5,R6,LSL#2]
3AC988:  ADDS            R4, #1
3AC98A:  CMP             R4, #0xC
3AC98C:  BNE             loc_3AC96C
3AC98E:  MOVS            R4, #0
3AC990:  MOVW            R5, #0xFFFF
3AC994:  STR             R4, [SP,#0x90+var_84]
3AC996:  LDRH.W          R0, [R8,#0x156]
3AC99A:  CMP             R0, R5
3AC99C:  BEQ             loc_3AC9B2
3AC99E:  LDRH.W          R0, [R8,#0x20C]
3AC9A2:  CMP             R0, #0
3AC9A4:  ITT NE
3AC9A6:  ADDNE.W         R0, R8, #0x184; this
3AC9AA:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3AC9AE:  STRH.W          R5, [R8,#0x156]
3AC9B2:  ADD             R0, SP, #0x90+var_8C; this
3AC9B4:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AC9B8:  STR             R4, [SP,#0x90+var_84]
3AC9BA:  LDRH.W          R1, [R8,#0xDE]; unsigned __int16
3AC9BE:  CMP             R1, R5
3AC9C0:  BEQ             loc_3AC9EE
3AC9C2:  LDR             R0, =(AEAudioHardware_ptr - 0x3AC9CA)
3AC9C4:  MOVS            R2, #0x28 ; '('; __int16
3AC9C6:  ADD             R0, PC; AEAudioHardware_ptr
3AC9C8:  LDR             R0, [R0]; AEAudioHardware ; this
3AC9CA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AC9CE:  CMP             R0, #0
3AC9D0:  ITT NE
3AC9D2:  LDRHNE.W        R0, [R8,#0x156]
3AC9D6:  CMPNE           R0, R5
3AC9D8:  BEQ             loc_3AC9EE
3AC9DA:  LDRH.W          R0, [R8,#0x20C]
3AC9DE:  CMP             R0, #0
3AC9E0:  ITT NE
3AC9E2:  ADDNE.W         R0, R8, #0x184; this
3AC9E6:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3AC9EA:  STRH.W          R5, [R8,#0x156]
3AC9EE:  ADD             R0, SP, #0x90+var_8C; this
3AC9F0:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AC9F4:  LDR.W           R0, [R8,#0x158]; this
3AC9F8:  CBZ             R0, loc_3ACA14
3AC9FA:  MOVS            R1, #4; unsigned __int16
3AC9FC:  MOVS            R2, #0; unsigned __int16
3AC9FE:  MOVS            R4, #0
3ACA00:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3ACA04:  LDR.W           R0, [R8,#0x158]; this
3ACA08:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ACA0C:  STRH.W          R5, [R8,#0x156]
3ACA10:  STR.W           R4, [R8,#0x158]
3ACA14:  LDR.W           R0, [R8,#0x160]; this
3ACA18:  CBZ             R0, loc_3ACA34
3ACA1A:  MOVS            R1, #4; unsigned __int16
3ACA1C:  MOVS            R2, #0; unsigned __int16
3ACA1E:  MOVS            R4, #0
3ACA20:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3ACA24:  LDR.W           R0, [R8,#0x160]; this
3ACA28:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ACA2C:  STRH.W          R5, [R8,#0x15C]
3ACA30:  STR.W           R4, [R8,#0x160]
3ACA34:  LDR.W           R0, [R8,#0x168]; this
3ACA38:  CBZ             R0, loc_3ACA54
3ACA3A:  MOVS            R1, #4; unsigned __int16
3ACA3C:  MOVS            R2, #0; unsigned __int16
3ACA3E:  MOVS            R4, #0
3ACA40:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3ACA44:  LDR.W           R0, [R8,#0x168]; this
3ACA48:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ACA4C:  STRH.W          R5, [R8,#0x164]
3ACA50:  STR.W           R4, [R8,#0x168]
3ACA54:  LDR.W           R0, [R8,#0x170]; this
3ACA58:  CBZ             R0, loc_3ACA74
3ACA5A:  MOVS            R1, #4; unsigned __int16
3ACA5C:  MOVS            R2, #0; unsigned __int16
3ACA5E:  MOVS            R4, #0
3ACA60:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3ACA64:  LDR.W           R0, [R8,#0x170]; this
3ACA68:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ACA6C:  STRH.W          R5, [R8,#0x16C]
3ACA70:  STR.W           R4, [R8,#0x170]
3ACA74:  LDR.W           R0, [R8,#0x178]; this
3ACA78:  CBZ             R0, loc_3ACA84
3ACA7A:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3ACA7E:  MOVS            R0, #0
3ACA80:  STR.W           R0, [R8,#0x178]
3ACA84:  LDR.W           R0, [R8,#0x17C]; this
3ACA88:  CBZ             R0, loc_3ACA94
3ACA8A:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3ACA8E:  MOVS            R0, #0
3ACA90:  STR.W           R0, [R8,#0x17C]
3ACA94:  LDR.W           R0, [R8,#0x180]; this
3ACA98:  CBZ             R0, loc_3ACAA4
3ACA9A:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3ACA9E:  MOVS            R0, #0
3ACAA0:  STR.W           R0, [R8,#0x180]
3ACAA4:  LDRB.W          R0, [R8,#0xA5]
3ACAA8:  CBZ             R0, loc_3ACAD0
3ACAAA:  LDRSB.W         R0, [R8,#0x9B]
3ACAAE:  ADD.W           R1, R8, #0x80
3ACAB2:  CMP             R0, #0
3ACAB4:  IT NE
3ACAB6:  CMPNE           R0, #2
3ACAB8:  BEQ             loc_3ACAC4
3ACABA:  CMP             R0, #3
3ACABC:  BNE             loc_3ACAD0
3ACABE:  LDR             R0, =(AudioEngine_ptr - 0x3ACAC4)
3ACAC0:  ADD             R0, PC; AudioEngine_ptr
3ACAC2:  B               loc_3ACAC8
3ACAC4:  LDR             R0, =(AudioEngine_ptr - 0x3ACACA)
3ACAC6:  ADD             R0, PC; AudioEngine_ptr
3ACAC8:  LDR             R0, [R0]; AudioEngine
3ACACA:  MOVS            R2, #0
3ACACC:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
3ACAD0:  LDRH.W          R0, [R8,#0xE0]
3ACAD4:  CMP             R0, R5
3ACAD6:  BEQ             loc_3ACB18
3ACAD8:  MOVS            R1, #0xFFF90000
3ACADE:  ADD.W           R0, R1, R0,LSL#16
3ACAE2:  CMP.W           R0, #0x90000
3ACAE6:  BHI             loc_3ACB14
3ACAE8:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ACAF4)
3ACAEA:  LSRS            R3, R0, #0xE
3ACAEC:  LDRH.W          R2, [R8,#0xDC]
3ACAF0:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ACAF2:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ACAF4:  LDRH            R1, [R1,R3]
3ACAF6:  CMP             R1, R2
3ACAF8:  BNE             loc_3ACB14
3ACAFA:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ACB04)
3ACAFC:  LSRS            R0, R0, #0x10
3ACAFE:  MOVS            R2, #0
3ACB00:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ACB02:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ACB04:  ADD.W           R0, R1, R0,LSL#2
3ACB08:  LDRSH.W         R1, [R0,#2]
3ACB0C:  CMP             R1, #0
3ACB0E:  IT GT
3ACB10:  SUBGT           R2, R1, #1
3ACB12:  STRH            R2, [R0,#2]
3ACB14:  STRH.W          R5, [R8,#0xE0]
3ACB18:  STRH.W          R5, [R8,#0xDC]
3ACB1C:  MOVS            R0, #0
3ACB1E:  LDRB.W          R1, [R8,#0xA5]
3ACB22:  STR.W           R0, [R8,#4]
3ACB26:  CMP             R1, #0
3ACB28:  STRH.W          R5, [R8,#0xDE]
3ACB2C:  STRB.W          R0, [R8,#0xA9]
3ACB30:  BEQ             loc_3ACB40
3ACB32:  LDR             R1, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3ACB3C)
3ACB34:  STRB.W          R0, [R8,#0xA5]
3ACB38:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3ACB3A:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3ACB3C:  STR             R0, [R1]; CAEVehicleAudioEntity::s_pPlayerDriver
3ACB3E:  B               loc_3ACB4C
3ACB40:  LDRB.W          R0, [R8,#0xA6]
3ACB44:  CBZ             R0, loc_3ACB5E
3ACB46:  MOVS            R0, #0
3ACB48:  STRB.W          R0, [R8,#0xA6]
3ACB4C:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3ACB56)
3ACB4E:  MOVS            R2, #0
3ACB50:  LDR             R1, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3ACB58)
3ACB52:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3ACB54:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3ACB56:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3ACB58:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3ACB5A:  STR             R2, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3ACB5C:  STR             R2, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3ACB5E:  MOVS            R0, #0
3ACB60:  STRB.W          R0, [R8,#0xA4]
3ACB64:  STRB.W          R0, [R8,#0xA7]
3ACB68:  ADD             SP, SP, #0x78 ; 'x'
3ACB6A:  POP.W           {R8,R9,R11}
3ACB6E:  POP             {R4-R7,PC}
