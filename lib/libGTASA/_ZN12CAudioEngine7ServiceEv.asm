; =========================================================
; Game Engine Function: _ZN12CAudioEngine7ServiceEv
; Address            : 0x3BC914 - 0x3BCA5E
; =========================================================

3BC914:  PUSH            {R4-R7,LR}
3BC916:  ADD             R7, SP, #0xC
3BC918:  PUSH.W          {R11}
3BC91C:  MOV             R4, R0
3BC91E:  ADD.W           R5, R4, #0xB4
3BC922:  MOVS            R1, #0x1F; int
3BC924:  MOVS            R2, #0; float
3BC926:  MOV             R0, R5; this
3BC928:  MOV.W           R3, #0x3F800000; float
3BC92C:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BC930:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3BC938)
3BC932:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3BC93A)
3BC934:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3BC936:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3BC938:  LDR             R0, [R0]; CTimer::m_UserPause ...
3BC93A:  LDR             R1, [R1]; CTimer::m_CodePause ...
3BC93C:  LDRB            R0, [R0]; CTimer::m_UserPause
3BC93E:  LDRB            R1, [R1]; CTimer::m_CodePause
3BC940:  ORRS            R0, R1
3BC942:  LSLS            R0, R0, #0x18
3BC944:  BNE             loc_3BC954
3BC946:  MOV             R0, R5; this
3BC948:  MOVS            R1, #0x24 ; '$'; int
3BC94A:  MOVS            R2, #0; float
3BC94C:  MOV.W           R3, #0x3F800000; float
3BC950:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BC954:  LDR             R0, =(AEAudioHardware_ptr - 0x3BC95A)
3BC956:  ADD             R0, PC; AEAudioHardware_ptr
3BC958:  LDR             R6, [R0]; AEAudioHardware
3BC95A:  MOV             R0, R6; this
3BC95C:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BC960:  LDRSH.W         R1, [R4,#4]; __int16
3BC964:  MOV             R5, R0
3BC966:  MOV             R0, R6; this
3BC968:  MOVS            R2, #0; __int16 *
3BC96A:  BLX             j__ZN16CAEAudioHardware19GetChannelPlayTimesEsPs; CAEAudioHardware::GetChannelPlayTimes(short,short *)
3BC96E:  ADDS            R0, R5, #4
3BC970:  BNE             loc_3BC97C
3BC972:  LDRB            R0, [R4]
3BC974:  CBZ             R0, loc_3BC97C
3BC976:  MOVS            R0, #1
3BC978:  STRB            R0, [R4,#1]
3BC97A:  B               loc_3BC9A4
3BC97C:  ADDS            R0, R5, #6
3BC97E:  BNE             loc_3BC9A4
3BC980:  LDRB            R0, [R4,#1]
3BC982:  CBZ             R0, loc_3BC9A4
3BC984:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BC98E)
3BC986:  MOVS            R1, #0
3BC988:  STRB            R1, [R4,#1]
3BC98A:  ADD             R0, PC; AERadioTrackManager_ptr
3BC98C:  LDR             R0, [R0]; AERadioTrackManager ; this
3BC98E:  BLX             j__ZN20CAERadioTrackManager20IsVehicleRadioActiveEv; CAERadioTrackManager::IsVehicleRadioActive(void)
3BC992:  CBZ             R0, loc_3BC9A4
3BC994:  BLX             j__ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv; CAEVehicleAudioEntity::StaticGetPlayerVehicleAudioSettingsForRadio(void)
3BC998:  MOV             R1, R0
3BC99A:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BC9A0)
3BC99C:  ADD             R0, PC; AERadioTrackManager_ptr
3BC99E:  LDR             R0, [R0]; AERadioTrackManager
3BC9A0:  BLX             j__ZN20CAERadioTrackManager10StartRadioEP21tVehicleAudioSettings; CAERadioTrackManager::StartRadio(tVehicleAudioSettings *)
3BC9A4:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BC9AC)
3BC9A6:  MOV             R1, R5; int
3BC9A8:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BC9AA:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BC9AC:  BLX             j__ZN23CAECutsceneTrackManager7ServiceEi; CAECutsceneTrackManager::Service(int)
3BC9B0:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BC9B8)
3BC9B2:  MOV             R1, R5; int
3BC9B4:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BC9B6:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BC9B8:  BLX             j__ZN23CAEAmbienceTrackManager7ServiceEi; CAEAmbienceTrackManager::Service(int)
3BC9BC:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BC9C4)
3BC9BE:  MOV             R1, R5; int
3BC9C0:  ADD             R0, PC; AERadioTrackManager_ptr
3BC9C2:  LDR             R0, [R0]; AERadioTrackManager ; this
3BC9C4:  BLX             j__ZN20CAERadioTrackManager7ServiceEi; CAERadioTrackManager::Service(int)
3BC9C8:  MOVS            R0, #0; int
3BC9CA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BC9CE:  CBZ             R0, loc_3BC9DE
3BC9D0:  MOVW            R0, #0x1E34
3BC9D4:  LDR             R0, [R4,R0]
3BC9D6:  CMP             R0, #0
3BC9D8:  IT NE
3BC9DA:  NOPNE
3BC9DC:  NOP
3BC9DE:  ADDW            R0, R4, #0x4BC; this
3BC9E2:  BLX             j__ZN23CAECollisionAudioEntity7ServiceEv; CAECollisionAudioEntity::Service(void)
3BC9E6:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3BC9EE)
3BC9E8:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3BC9F0)
3BC9EA:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3BC9EC:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3BC9EE:  LDR             R0, [R0]; CTimer::m_UserPause ...
3BC9F0:  LDR             R1, [R1]; CTimer::m_CodePause ...
3BC9F2:  LDRB            R0, [R0]; CTimer::m_UserPause
3BC9F4:  LDRB            R1, [R1]; CTimer::m_CodePause
3BC9F6:  ORRS            R0, R1
3BC9F8:  LSLS            R0, R0, #0x18
3BC9FA:  BEQ             loc_3BCA1E
3BC9FC:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCA06)
3BC9FE:  MOV.W           R1, #0x3F800000; float
3BCA02:  ADD             R0, PC; AEAudioHardware_ptr
3BCA04:  LDR             R5, [R0]; AEAudioHardware
3BCA06:  MOV             R0, R5; this
3BCA08:  BLX             j__ZN16CAEAudioHardware26SetMusicFaderScalingFactorEf; CAEAudioHardware::SetMusicFaderScalingFactor(float)
3BCA0C:  MOV             R0, R5; this
3BCA0E:  MOV.W           R1, #0x3F800000; float
3BCA12:  BLX             j__ZN16CAEAudioHardware28SetEffectsFaderScalingFactorEf; CAEAudioHardware::SetEffectsFaderScalingFactor(float)
3BCA16:  MOV             R0, R5
3BCA18:  MOV.W           R1, #0x3F800000
3BCA1C:  B               loc_3BCA30
3BCA1E:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x3BCA24)
3BCA20:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
3BCA22:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
3BCA24:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
3BCA26:  CBZ             R0, loc_3BCA56
3BCA28:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCA30)
3BCA2A:  MOVS            R1, #0; float
3BCA2C:  ADD             R0, PC; AEAudioHardware_ptr
3BCA2E:  LDR             R0, [R0]; AEAudioHardware ; this
3BCA30:  BLX             j__ZN16CAEAudioHardware30SetNonStreamFaderScalingFactorEf; CAEAudioHardware::SetNonStreamFaderScalingFactor(float)
3BCA34:  ADD.W           R0, R4, #0x2A0; this
3BCA38:  BLX             j__ZN20CAEScriptAudioEntity7ServiceEv; CAEScriptAudioEntity::Service(void)
3BCA3C:  BLX             j__ZN23CAEPedSpeechAudioEntity7ServiceEv; CAEPedSpeechAudioEntity::Service(void)
3BCA40:  LDR             R0, =(AESoundManager_ptr - 0x3BCA46)
3BCA42:  ADD             R0, PC; AESoundManager_ptr
3BCA44:  LDR             R0, [R0]; AESoundManager ; this
3BCA46:  BLX             j__ZN15CAESoundManager7ServiceEv; CAESoundManager::Service(void)
3BCA4A:  POP.W           {R11}
3BCA4E:  POP.W           {R4-R7,LR}
3BCA52:  B.W             sub_196B5C
3BCA56:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCA5C)
3BCA58:  ADD             R0, PC; AEAudioHardware_ptr
3BCA5A:  LDR             R0, [R0]; AEAudioHardware
3BCA5C:  B               loc_3BCA18
