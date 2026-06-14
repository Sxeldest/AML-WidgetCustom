; =========================================================
; Game Engine Function: _ZNK21CEventAcquaintancePed17TakesPriorityOverERK6CEvent
; Address            : 0x3750B2 - 0x37511C
; =========================================================

3750B2:  PUSH            {R4-R7,LR}
3750B4:  ADD             R7, SP, #0xC
3750B6:  PUSH.W          {R11}
3750BA:  MOV             R4, R1
3750BC:  MOV             R5, R0
3750BE:  LDR             R0, [R4]
3750C0:  LDR             R1, [R0,#8]
3750C2:  MOV             R0, R4
3750C4:  BLX             R1
3750C6:  MOV             R6, R0
3750C8:  LDR             R0, [R5]
3750CA:  LDR             R1, [R0,#8]
3750CC:  MOV             R0, R5
3750CE:  BLX             R1
3750D0:  CMP             R6, R0
3750D2:  BNE             loc_3750E0
3750D4:  LDR             R0, [R5,#0x10]; this
3750D6:  CBZ             R0, loc_375102
3750D8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3750DC:  MOV             R5, R0
3750DE:  B               loc_375104
3750E0:  LDR             R0, [R5]
3750E2:  LDR             R1, [R0,#0xC]
3750E4:  MOV             R0, R5
3750E6:  BLX             R1
3750E8:  MOV             R5, R0
3750EA:  LDR             R0, [R4]
3750EC:  LDR             R1, [R0,#0xC]
3750EE:  MOV             R0, R4
3750F0:  BLX             R1
3750F2:  MOVS            R1, #0
3750F4:  CMP             R5, R0
3750F6:  IT GE
3750F8:  MOVGE           R1, #1
3750FA:  MOV             R0, R1
3750FC:  POP.W           {R11}
375100:  POP             {R4-R7,PC}
375102:  MOVS            R5, #0
375104:  LDR             R0, [R4,#0x10]; this
375106:  CBZ             R0, loc_375112
375108:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37510C:  EOR.W           R0, R0, #1
375110:  B               loc_375114
375112:  MOVS            R0, #1
375114:  ANDS            R0, R5
375116:  POP.W           {R11}
37511A:  POP             {R4-R7,PC}
