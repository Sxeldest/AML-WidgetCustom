; =========================================================
; Game Engine Function: _ZN12CAudioEngine17StopCutsceneTrackEh
; Address            : 0x3BD580 - 0x3BD630
; =========================================================

3BD580:  PUSH            {R4-R7,LR}
3BD582:  ADD             R7, SP, #0xC
3BD584:  PUSH.W          {R11}
3BD588:  SUB             SP, SP, #8
3BD58A:  MOV             R4, R0
3BD58C:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD594)
3BD58E:  MOV             R5, R1
3BD590:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD592:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD594:  BLX             j__ZN23CAECutsceneTrackManager17StopCutsceneTrackEv; CAECutsceneTrackManager::StopCutsceneTrack(void)
3BD598:  CBZ             R5, loc_3BD608
3BD59A:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD5A0)
3BD59C:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD59E:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD5A0:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BD5A4:  CBZ             R0, loc_3BD5D8
3BD5A6:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD5AC)
3BD5A8:  ADD             R0, PC; AEAudioHardware_ptr
3BD5AA:  LDR             R5, [R0]; AEAudioHardware
3BD5AC:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD5B2)
3BD5AE:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD5B0:  LDR             R6, [R0]; AECutsceneTrackManager
3BD5B2:  MOV             R0, R5; this
3BD5B4:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BD5B8:  MOV             R1, R0; int
3BD5BA:  MOV             R0, R6; this
3BD5BC:  BLX             j__ZN23CAECutsceneTrackManager7ServiceEi; CAECutsceneTrackManager::Service(int)
3BD5C0:  MOV             R0, R5; this
3BD5C2:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3BD5C6:  MOV.W           R0, #0x7D0; useconds
3BD5CA:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3BD5CE:  MOV             R0, R6; this
3BD5D0:  BLX             j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; CAECutsceneTrackManager::IsCutsceneTrackActive(void)
3BD5D4:  CMP             R0, #0
3BD5D6:  BNE             loc_3BD5B2
3BD5D8:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD5E2)
3BD5DA:  LDRSB.W         R5, [R4,#2]
3BD5DE:  ADD             R0, PC; AERadioTrackManager_ptr
3BD5E0:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD5E2:  BLX             j__ZN20CAERadioTrackManager20IsVehicleRadioActiveEv; CAERadioTrackManager::IsVehicleRadioActive(void)
3BD5E6:  CMP             R5, #0
3BD5E8:  BLT             loc_3BD612
3BD5EA:  CBZ             R0, loc_3BD602
3BD5EC:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD5FA)
3BD5EE:  MOVS            R2, #0
3BD5F0:  LDRSB.W         R1, [R4,#2]; signed __int8
3BD5F4:  MOVS            R3, #0; float
3BD5F6:  ADD             R0, PC; AERadioTrackManager_ptr
3BD5F8:  STR             R2, [SP,#0x18+var_18]; unsigned __int8
3BD5FA:  MOVS            R2, #0; signed __int8
3BD5FC:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD5FE:  BLX             j__ZN20CAERadioTrackManager10StartRadioEaafh; CAERadioTrackManager::StartRadio(signed char,signed char,float,uchar)
3BD602:  MOVS            R0, #0xFF
3BD604:  STRB            R0, [R4,#2]
3BD606:  B               loc_3BD624
3BD608:  LDRB            R0, [R4]
3BD60A:  CBZ             R0, loc_3BD628
3BD60C:  MOVS            R0, #1
3BD60E:  STRB            R0, [R4,#1]
3BD610:  B               loc_3BD624
3BD612:  CBZ             R0, loc_3BD624
3BD614:  BLX             j__ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv; CAEVehicleAudioEntity::StaticGetPlayerVehicleAudioSettingsForRadio(void)
3BD618:  MOV             R1, R0
3BD61A:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD620)
3BD61C:  ADD             R0, PC; AERadioTrackManager_ptr
3BD61E:  LDR             R0, [R0]; AERadioTrackManager
3BD620:  BLX             j__ZN20CAERadioTrackManager10StartRadioEP21tVehicleAudioSettings; CAERadioTrackManager::StartRadio(tVehicleAudioSettings *)
3BD624:  MOVS            R0, #0
3BD626:  STRB            R0, [R4]
3BD628:  ADD             SP, SP, #8
3BD62A:  POP.W           {R11}
3BD62E:  POP             {R4-R7,PC}
