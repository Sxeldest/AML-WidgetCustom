; =========================================================
; Game Engine Function: _ZNK13CEventGunShot15IsCriminalEventEv
; Address            : 0x370E6C - 0x370E94
; =========================================================

370E6C:  LDR             R0, [R0,#0x10]; this
370E6E:  CBZ             R0, loc_370E90
370E70:  LDRB.W          R1, [R0,#0x3A]
370E74:  AND.W           R1, R1, #7
370E78:  CMP             R1, #3
370E7A:  BNE             loc_370E90
370E7C:  PUSH            {R7,LR}
370E7E:  MOV             R7, SP
370E80:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
370E84:  CMP             R0, #0
370E86:  POP.W           {R7,LR}
370E8A:  ITT NE
370E8C:  MOVNE           R0, #1
370E8E:  BXNE            LR
370E90:  MOVS            R0, #0
370E92:  BX              LR
