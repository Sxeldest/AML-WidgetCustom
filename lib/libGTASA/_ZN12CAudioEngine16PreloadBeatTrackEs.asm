; =========================================================
; Game Engine Function: _ZN12CAudioEngine16PreloadBeatTrackEs
; Address            : 0x3BD66C - 0x3BD76C
; =========================================================

3BD66C:  PUSH            {R4-R7,LR}
3BD66E:  ADD             R7, SP, #0xC
3BD670:  PUSH.W          {R11}
3BD674:  MOV             R5, R0
3BD676:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD67E)
3BD678:  MOV             R4, R1
3BD67A:  ADD             R0, PC; AERadioTrackManager_ptr
3BD67C:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD67E:  BLX             j__ZN20CAERadioTrackManager9IsRadioOnEv; CAERadioTrackManager::IsRadioOn(void)
3BD682:  CBZ             R0, loc_3BD6EE
3BD684:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD68A)
3BD686:  ADD             R0, PC; AERadioTrackManager_ptr
3BD688:  LDR             R6, [R0]; AERadioTrackManager
3BD68A:  MOV             R0, R6; this
3BD68C:  BLX             j__ZN20CAERadioTrackManager24GetCurrentRadioStationIDEv; CAERadioTrackManager::GetCurrentRadioStationID(void)
3BD690:  STRB            R0, [R5,#2]
3BD692:  BLX             j__ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv; CAEVehicleAudioEntity::StaticGetPlayerVehicleAudioSettingsForRadio(void)
3BD696:  MOV             R1, R0
3BD698:  MOV             R0, R6
3BD69A:  MOVS            R2, #1
3BD69C:  BLX             j__ZN20CAERadioTrackManager9StopRadioEP21tVehicleAudioSettingsh; CAERadioTrackManager::StopRadio(tVehicleAudioSettings *,uchar)
3BD6A0:  ADD.W           R0, R5, #0xB4; this
3BD6A4:  MOVS            R1, #0x23 ; '#'; int
3BD6A6:  MOVS            R2, #0; float
3BD6A8:  MOV.W           R3, #0x3F800000; float
3BD6AC:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BD6B0:  MOV             R0, R6; this
3BD6B2:  BLX             j__ZN20CAERadioTrackManager9IsRadioOnEv; CAERadioTrackManager::IsRadioOn(void)
3BD6B6:  CMP             R0, #0
3BD6B8:  BEQ             loc_3BD756
3BD6BA:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD6C0)
3BD6BC:  ADD             R0, PC; AEAudioHardware_ptr
3BD6BE:  LDR             R5, [R0]; AEAudioHardware
3BD6C0:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD6C6)
3BD6C2:  ADD             R0, PC; AERadioTrackManager_ptr
3BD6C4:  LDR             R6, [R0]; AERadioTrackManager
3BD6C6:  MOV             R0, R5; this
3BD6C8:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BD6CC:  MOV             R1, R0; int
3BD6CE:  MOV             R0, R6; this
3BD6D0:  BLX             j__ZN20CAERadioTrackManager7ServiceEi; CAERadioTrackManager::Service(int)
3BD6D4:  MOV             R0, R5; this
3BD6D6:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3BD6DA:  MOV.W           R0, #0x7D0; useconds
3BD6DE:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3BD6E2:  MOV             R0, R6; this
3BD6E4:  BLX             j__ZN20CAERadioTrackManager9IsRadioOnEv; CAERadioTrackManager::IsRadioOn(void)
3BD6E8:  CMP             R0, #0
3BD6EA:  BNE             loc_3BD6C6
3BD6EC:  B               loc_3BD756
3BD6EE:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BD6F4)
3BD6F0:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BD6F2:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BD6F4:  BLX             j__ZN23CAEAmbienceTrackManager21IsAmbienceTrackActiveEv; CAEAmbienceTrackManager::IsAmbienceTrackActive(void)
3BD6F8:  CBZ             R0, loc_3BD702
3BD6FA:  MOVS            R1, #1; unsigned __int8
3BD6FC:  BLX             j__ZN12CAudioEngine17StopAmbienceTrackEh; CAudioEngine::StopAmbienceTrack(uchar)
3BD700:  B               loc_3BD756
3BD702:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD708)
3BD704:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD706:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD708:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BD70C:  CBZ             R0, loc_3BD718
3BD70E:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD714)
3BD710:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD712:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD714:  BLX             j__ZN23CAECutsceneTrackManager17StopCutsceneTrackEv; CAECutsceneTrackManager::StopCutsceneTrack(void)
3BD718:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD71E)
3BD71A:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD71C:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD71E:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BD722:  CBZ             R0, loc_3BD756
3BD724:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD72A)
3BD726:  ADD             R0, PC; AEAudioHardware_ptr
3BD728:  LDR             R5, [R0]; AEAudioHardware
3BD72A:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD730)
3BD72C:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD72E:  LDR             R6, [R0]; AECutsceneTrackManager
3BD730:  MOV             R0, R5; this
3BD732:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BD736:  MOV             R1, R0; int
3BD738:  MOV             R0, R6; this
3BD73A:  BLX             j__ZN23CAECutsceneTrackManager7ServiceEi; CAECutsceneTrackManager::Service(int)
3BD73E:  MOV             R0, R5; this
3BD740:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3BD744:  MOV.W           R0, #0x7D0; useconds
3BD748:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3BD74C:  MOV             R0, R6; this
3BD74E:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BD752:  CMP             R0, #0
3BD754:  BNE             loc_3BD730
3BD756:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD760)
3BD758:  MOV             R1, R4; __int16
3BD75A:  MOVS            R2, #0; unsigned __int8
3BD75C:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD75E:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD760:  POP.W           {R11}
3BD764:  POP.W           {R4-R7,LR}
3BD768:  B.W             sub_19B83C
