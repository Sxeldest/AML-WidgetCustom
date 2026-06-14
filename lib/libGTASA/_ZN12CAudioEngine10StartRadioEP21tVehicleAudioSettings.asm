; =========================================================
; Game Engine Function: _ZN12CAudioEngine10StartRadioEP21tVehicleAudioSettings
; Address            : 0x3BD31C - 0x3BD348
; =========================================================

3BD31C:  PUSH            {R4,R5,R7,LR}
3BD31E:  ADD             R7, SP, #8
3BD320:  MOV             R5, R0
3BD322:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD32A)
3BD324:  MOV             R4, R1
3BD326:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD328:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD32A:  BLX             j__ZN23CAECutsceneTrackManager22GetCutsceneTrackStatusEv; CAECutsceneTrackManager::GetCutsceneTrackStatus(void)
3BD32E:  CBZ             R0, loc_3BD338
3BD330:  LDRB            R0, [R5]
3BD332:  CMP             R0, #0
3BD334:  IT EQ
3BD336:  POPEQ           {R4,R5,R7,PC}
3BD338:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD340)
3BD33A:  MOV             R1, R4
3BD33C:  ADD             R0, PC; AERadioTrackManager_ptr
3BD33E:  LDR             R0, [R0]; AERadioTrackManager
3BD340:  POP.W           {R4,R5,R7,LR}
3BD344:  B.W             j_j__ZN20CAERadioTrackManager10StartRadioEP21tVehicleAudioSettings; j_CAERadioTrackManager::StartRadio(tVehicleAudioSettings *)
