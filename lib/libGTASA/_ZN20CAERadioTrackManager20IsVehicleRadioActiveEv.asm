; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager20IsVehicleRadioActiveEv
; Address            : 0x3A1340 - 0x3A1364
; =========================================================

3A1340:  PUSH            {R7,LR}
3A1342:  MOV             R7, SP
3A1344:  BLX             j__ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv; CAEVehicleAudioEntity::StaticGetPlayerVehicleAudioSettingsForRadio(void)
3A1348:  CBZ             R0, loc_3A1360
3A134A:  LDRB            R0, [R0,#0x1B]
3A134C:  CMP             R0, #3
3A134E:  BHI             loc_3A1360
3A1350:  MOVS            R1, #1
3A1352:  LSLS            R0, R0, #3
3A1354:  MOVT            R1, #0x101
3A1358:  LSR.W           R0, R1, R0
3A135C:  UXTB            R0, R0
3A135E:  POP             {R7,PC}
3A1360:  MOVS            R0, #0
3A1362:  POP             {R7,PC}
