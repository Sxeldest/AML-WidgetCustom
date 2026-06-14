; =========================================================
; Game Engine Function: _ZN12CAudioEngine5ResetEv
; Address            : 0x3BCDCC - 0x3BCF3A
; =========================================================

3BCDCC:  PUSH            {R4-R7,LR}
3BCDCE:  ADD             R7, SP, #0xC
3BCDD0:  PUSH.W          {R11}
3BCDD4:  MOV             R4, R0
3BCDD6:  LDR             R0, =(AESoundManager_ptr - 0x3BCDDC)
3BCDD8:  ADD             R0, PC; AESoundManager_ptr
3BCDDA:  LDR             R0, [R0]; AESoundManager ; this
3BCDDC:  BLX             j__ZN15CAESoundManager7ServiceEv; CAESoundManager::Service(void)
3BCDE0:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BCDE6)
3BCDE2:  ADD             R0, PC; AERadioTrackManager_ptr
3BCDE4:  LDR             R0, [R0]; AERadioTrackManager ; this
3BCDE6:  BLX             j__ZN20CAERadioTrackManager9IsRadioOnEv; CAERadioTrackManager::IsRadioOn(void)
3BCDEA:  CBZ             R0, loc_3BCE38
3BCDEC:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BCDF6)
3BCDEE:  MOVS            R1, #0
3BCDF0:  MOVS            R2, #1
3BCDF2:  ADD             R0, PC; AERadioTrackManager_ptr
3BCDF4:  LDR             R5, [R0]; AERadioTrackManager
3BCDF6:  MOV             R0, R5
3BCDF8:  BLX             j__ZN20CAERadioTrackManager9StopRadioEP21tVehicleAudioSettingsh; CAERadioTrackManager::StopRadio(tVehicleAudioSettings *,uchar)
3BCDFC:  MOV             R0, R5; this
3BCDFE:  BLX             j__ZN20CAERadioTrackManager9IsRadioOnEv; CAERadioTrackManager::IsRadioOn(void)
3BCE02:  CBZ             R0, loc_3BCE56
3BCE04:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCE0A)
3BCE06:  ADD             R0, PC; AEAudioHardware_ptr
3BCE08:  LDR             R5, [R0]; AEAudioHardware
3BCE0A:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BCE10)
3BCE0C:  ADD             R0, PC; AERadioTrackManager_ptr
3BCE0E:  LDR             R6, [R0]; AERadioTrackManager
3BCE10:  MOV             R0, R5; this
3BCE12:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BCE16:  MOV             R1, R0; int
3BCE18:  MOV             R0, R6; this
3BCE1A:  BLX             j__ZN20CAERadioTrackManager7ServiceEi; CAERadioTrackManager::Service(int)
3BCE1E:  MOV             R0, R5; this
3BCE20:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3BCE24:  MOV.W           R0, #0x7D0; useconds
3BCE28:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3BCE2C:  MOV             R0, R6; this
3BCE2E:  BLX             j__ZN20CAERadioTrackManager9IsRadioOnEv; CAERadioTrackManager::IsRadioOn(void)
3BCE32:  CMP             R0, #0
3BCE34:  BNE             loc_3BCE10
3BCE36:  B               loc_3BCE56
3BCE38:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BCE3E)
3BCE3A:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BCE3C:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BCE3E:  BLX             j__ZN23CAEAmbienceTrackManager21IsAmbienceTrackActiveEv; CAEAmbienceTrackManager::IsAmbienceTrackActive(void)
3BCE42:  CMP             R0, #0
3BCE44:  BEQ             loc_3BCEE2
3BCE46:  MOVS            R1, #1; unsigned __int8
3BCE48:  BLX             j__ZN12CAudioEngine17StopAmbienceTrackEh; CAudioEngine::StopAmbienceTrack(uchar)
3BCE4C:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BCE52)
3BCE4E:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BCE50:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BCE52:  BLX             j__ZN23CAEAmbienceTrackManager31StopSpecialMissionAmbienceTrackEv; CAEAmbienceTrackManager::StopSpecialMissionAmbienceTrack(void)
3BCE56:  ADDW            R0, R4, #0x4BC; this
3BCE5A:  BLX             j__ZN23CAECollisionAudioEntity5ResetEv; CAECollisionAudioEntity::Reset(void)
3BCE5E:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BCE64)
3BCE60:  ADD             R0, PC; AERadioTrackManager_ptr
3BCE62:  LDR             R0, [R0]; AERadioTrackManager ; this
3BCE64:  BLX             j__ZN20CAERadioTrackManager5ResetEv; CAERadioTrackManager::Reset(void)
3BCE68:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BCE6E)
3BCE6A:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BCE6C:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BCE6E:  BLX             j__ZN23CAEAmbienceTrackManager5ResetEv; CAEAmbienceTrackManager::Reset(void)
3BCE72:  ADD.W           R5, R4, #0xB4
3BCE76:  MOVS            R1, #0x24 ; '$'; int
3BCE78:  MOVS            R2, #0; float
3BCE7A:  MOV.W           R3, #0x3F800000; float
3BCE7E:  MOV             R0, R5; this
3BCE80:  MOVS            R6, #0
3BCE82:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BCE86:  MOV             R0, R5; this
3BCE88:  MOVS            R1, #0x23 ; '#'; int
3BCE8A:  MOVS            R2, #0; float
3BCE8C:  MOV.W           R3, #0x3F800000; float
3BCE90:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BCE94:  MOV             R0, R5; this
3BCE96:  BLX             j__ZN22CAEFrontendAudioEntity5ResetEv; CAEFrontendAudioEntity::Reset(void)
3BCE9A:  ADD.W           R0, R4, #0x2A0; this
3BCE9E:  BLX             j__ZN20CAEScriptAudioEntity5ResetEv; CAEScriptAudioEntity::Reset(void)
3BCEA2:  MOVW            R0, #0x1E34
3BCEA6:  LDR             R0, [R4,R0]; this
3BCEA8:  CMP             R0, #0
3BCEAA:  IT NE
3BCEAC:  BLXNE           j__ZN20CAEWeaponAudioEntity5ResetEv; CAEWeaponAudioEntity::Reset(void)
3BCEB0:  BLX             j__ZN21CAEWeatherAudioEntity11StaticResetEv; CAEWeatherAudioEntity::StaticReset(void)
3BCEB4:  BLX             j__ZN23CAEPedSpeechAudioEntity5ResetEv; CAEPedSpeechAudioEntity::Reset(void)
3BCEB8:  BLX             j__ZN27CAEPoliceScannerAudioEntity5ResetEv; CAEPoliceScannerAudioEntity::Reset(void)
3BCEBC:  LDR             R0, =(AESoundManager_ptr - 0x3BCEC2)
3BCEBE:  ADD             R0, PC; AESoundManager_ptr
3BCEC0:  LDR             R5, [R0]; AESoundManager
3BCEC2:  MOV             R0, R5; this
3BCEC4:  BLX             j__ZN15CAESoundManager5ResetEv; CAESoundManager::Reset(void)
3BCEC8:  MOV             R0, R5; this
3BCECA:  BLX             j__ZN15CAESoundManager7ServiceEv; CAESoundManager::Service(void)
3BCECE:  MOV             R0, R5; this
3BCED0:  MOVS            R1, #1; unsigned __int8
3BCED2:  BLX             j__ZN15CAESoundManager13PauseManuallyEh; CAESoundManager::PauseManually(uchar)
3BCED6:  MOVS            R0, #0xFF
3BCED8:  STRB            R0, [R4,#2]
3BCEDA:  STRH            R6, [R4]
3BCEDC:  POP.W           {R11}
3BCEE0:  POP             {R4-R7,PC}
3BCEE2:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BCEE8)
3BCEE4:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BCEE6:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BCEE8:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BCEEC:  CMP             R0, #0
3BCEEE:  BEQ             loc_3BCE56
3BCEF0:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BCEF6)
3BCEF2:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BCEF4:  LDR             R5, [R0]; AECutsceneTrackManager
3BCEF6:  MOV             R0, R5; this
3BCEF8:  BLX             j__ZN23CAECutsceneTrackManager17StopCutsceneTrackEv; CAECutsceneTrackManager::StopCutsceneTrack(void)
3BCEFC:  MOV             R0, R5; this
3BCEFE:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BCF02:  CMP             R0, #0
3BCF04:  BEQ             loc_3BCE56
3BCF06:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCF0C)
3BCF08:  ADD             R0, PC; AEAudioHardware_ptr
3BCF0A:  LDR             R5, [R0]; AEAudioHardware
3BCF0C:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BCF12)
3BCF0E:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BCF10:  LDR             R6, [R0]; AECutsceneTrackManager
3BCF12:  MOV             R0, R5; this
3BCF14:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BCF18:  MOV             R1, R0; int
3BCF1A:  MOV             R0, R6; this
3BCF1C:  BLX             j__ZN23CAECutsceneTrackManager7ServiceEi; CAECutsceneTrackManager::Service(int)
3BCF20:  MOV             R0, R5; this
3BCF22:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3BCF26:  MOV.W           R0, #0x7D0; useconds
3BCF2A:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3BCF2E:  MOV             R0, R6; this
3BCF30:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BCF34:  CMP             R0, #0
3BCF36:  BNE             loc_3BCF12
3BCF38:  B               loc_3BCE56
