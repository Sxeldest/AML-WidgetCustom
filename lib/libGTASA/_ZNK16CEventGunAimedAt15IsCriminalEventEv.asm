; =========================================================
; Game Engine Function: _ZNK16CEventGunAimedAt15IsCriminalEventEv
; Address            : 0x3763DC - 0x3763F8
; =========================================================

3763DC:  LDR             R0, [R0,#0x10]; this
3763DE:  CBZ             R0, loc_3763F4
3763E0:  PUSH            {R7,LR}
3763E2:  MOV             R7, SP
3763E4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3763E8:  CMP             R0, #0
3763EA:  POP.W           {R7,LR}
3763EE:  ITT NE
3763F0:  MOVNE           R0, #1
3763F2:  BXNE            LR
3763F4:  MOVS            R0, #0
3763F6:  BX              LR
