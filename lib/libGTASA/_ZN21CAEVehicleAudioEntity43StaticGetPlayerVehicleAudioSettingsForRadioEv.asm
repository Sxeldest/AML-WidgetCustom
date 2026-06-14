; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv
; Address            : 0x3AC5BC - 0x3AC5C6
; =========================================================

3AC5BC:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3AC5C2)
3AC5BE:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3AC5C0:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3AC5C2:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3AC5C4:  BX              LR
