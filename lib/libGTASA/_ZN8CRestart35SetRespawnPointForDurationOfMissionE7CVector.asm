; =========================================================
; Game Engine Function: _ZN8CRestart35SetRespawnPointForDurationOfMissionE7CVector
; Address            : 0x324ED8 - 0x324EFA
; =========================================================

324ED8:  PUSH            {R7,LR}
324EDA:  MOV             R7, SP
324EDC:  LDR.W           R12, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x324EE6)
324EE0:  LDR             R3, =(_ZN8CRestart34OverrideRespawnBasePointForMissionE_ptr - 0x324EE8)
324EE2:  ADD             R12, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324EE4:  ADD             R3, PC; _ZN8CRestart34OverrideRespawnBasePointForMissionE_ptr
324EE6:  LDR.W           R12, [R12]; CRestart::bOverrideRespawnBasePointForMission ...
324EEA:  LDR.W           LR, [R3]; CRestart::OverrideRespawnBasePointForMission ...
324EEE:  MOVS            R3, #1
324EF0:  STRB.W          R3, [R12]; CRestart::bOverrideRespawnBasePointForMission
324EF4:  STM.W           LR, {R0-R2}; CRestart::OverrideRespawnBasePointForMission
324EF8:  POP             {R7,PC}
