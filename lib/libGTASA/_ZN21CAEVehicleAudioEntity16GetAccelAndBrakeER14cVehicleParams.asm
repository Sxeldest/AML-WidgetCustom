; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity16GetAccelAndBrakeER14cVehicleParams
; Address            : 0x3B3A1C - 0x3B3A68
; =========================================================

3B3A1C:  PUSH            {R4,R5,R7,LR}
3B3A1E:  ADD             R7, SP, #8
3B3A20:  MOV             R4, R1
3B3A22:  MOV             R1, R0
3B3A24:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3B3A2A)
3B3A26:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3B3A28:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3B3A2A:  LDR             R0, [R0]; this
3B3A2C:  CBZ             R0, loc_3B3A60
3B3A2E:  LDRB.W          R1, [R1,#0xA7]
3B3A32:  CBNZ            R1, loc_3B3A60
3B3A34:  LDR.W           R1, [R0,#0x44C]
3B3A38:  CMP             R1, #0x3F ; '?'
3B3A3A:  BEQ             loc_3B3A60
3B3A3C:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3B3A40:  CBZ             R0, loc_3B3A60
3B3A42:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3B3A48)
3B3A44:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3B3A46:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3B3A48:  LDR             R0, [R0]; this
3B3A4A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
3B3A4E:  MOV             R5, R0
3B3A50:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3B3A54:  STRH            R0, [R4,#0x20]
3B3A56:  MOV             R0, R5; this
3B3A58:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3B3A5C:  STRH            R0, [R4,#0x22]
3B3A5E:  POP             {R4,R5,R7,PC}
3B3A60:  MOVS            R0, #0
3B3A62:  STRH            R0, [R4,#0x20]
3B3A64:  STRH            R0, [R4,#0x22]
3B3A66:  POP             {R4,R5,R7,PC}
