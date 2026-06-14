; =========================================================
; Game Engine Function: _ZN8CRestart37ClearRespawnPointForDurationOfMissionEv
; Address            : 0x324F04 - 0x324F10
; =========================================================

324F04:  LDR             R0, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x324F0C)
324F06:  MOVS            R1, #0
324F08:  ADD             R0, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324F0A:  LDR             R0, [R0]; CRestart::bOverrideRespawnBasePointForMission ...
324F0C:  STRB            R1, [R0]; CRestart::bOverrideRespawnBasePointForMission
324F0E:  BX              LR
