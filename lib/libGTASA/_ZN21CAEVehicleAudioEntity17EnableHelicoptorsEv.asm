; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17EnableHelicoptorsEv
; Address            : 0x3AC5DC - 0x3AC5E8
; =========================================================

3AC5DC:  LDR             R0, =(_ZN21CAEVehicleAudioEntity21s_HelicoptorsDisabledE_ptr - 0x3AC5E4)
3AC5DE:  MOVS            R1, #0
3AC5E0:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity21s_HelicoptorsDisabledE_ptr
3AC5E2:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_HelicoptorsDisabled ...
3AC5E4:  STRB            R1, [R0]; CAEVehicleAudioEntity::s_HelicoptorsDisabled
3AC5E6:  BX              LR
