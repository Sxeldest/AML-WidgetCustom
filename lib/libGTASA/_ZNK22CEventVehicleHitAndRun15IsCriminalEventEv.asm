; =========================================================
; Game Engine Function: _ZNK22CEventVehicleHitAndRun15IsCriminalEventEv
; Address            : 0x379EA2 - 0x379EC2
; =========================================================

379EA2:  LDR             R0, [R0,#0x10]
379EA4:  LDR.W           R0, [R0,#0x464]; this
379EA8:  CBZ             R0, loc_379EBE
379EAA:  PUSH            {R7,LR}
379EAC:  MOV             R7, SP
379EAE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
379EB2:  CMP             R0, #0
379EB4:  POP.W           {R7,LR}
379EB8:  ITT NE
379EBA:  MOVNE           R0, #1
379EBC:  BXNE            LR
379EBE:  MOVS            R0, #0
379EC0:  BX              LR
