; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity21TurnOnRadioForVehicleEv
; Address            : 0x3AE330 - 0x3AE376
; =========================================================

3AE330:  LDR             R1, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3AE33A)
3AE332:  LDR.W           R12, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3AE33E)
3AE336:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3AE338:  LDR             R3, [R0,#4]
3AE33A:  ADD             R12, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3AE33C:  LDR             R2, [R1]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3AE33E:  ADD.W           R1, R0, #0x80
3AE342:  LDR.W           R12, [R12]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3AE346:  LDR.W           R3, [R3,#0x464]
3AE34A:  STR             R1, [R2]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3AE34C:  STR.W           R3, [R12]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3AE350:  LDRSB.W         R0, [R0,#0x9B]
3AE354:  CMP             R0, #0
3AE356:  IT NE
3AE358:  CMPNE           R0, #2
3AE35A:  BEQ             loc_3AE36C
3AE35C:  CMP             R0, #3
3AE35E:  IT NE
3AE360:  BXNE            LR
3AE362:  LDR             R0, =(AudioEngine_ptr - 0x3AE368)
3AE364:  ADD             R0, PC; AudioEngine_ptr
3AE366:  LDR             R0, [R0]; AudioEngine
3AE368:  B.W             j_j__ZN12CAudioEngine10StartRadioEP21tVehicleAudioSettings; j_CAudioEngine::StartRadio(tVehicleAudioSettings *)
3AE36C:  LDR             R0, =(AudioEngine_ptr - 0x3AE372)
3AE36E:  ADD             R0, PC; AudioEngine_ptr
3AE370:  LDR             R0, [R0]; AudioEngine
3AE372:  B.W             j_j__ZN12CAudioEngine10StartRadioEP21tVehicleAudioSettings; j_CAudioEngine::StartRadio(tVehicleAudioSettings *)
