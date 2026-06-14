; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCar14ControlSubTaskEP4CPed
; Address            : 0x4F947C - 0x4F9504
; =========================================================

4F947C:  PUSH            {R4,R5,R7,LR}
4F947E:  ADD             R7, SP, #8
4F9480:  MOV             R4, R0
4F9482:  MOV             R5, R1
4F9484:  LDR             R0, [R4,#0xC]
4F9486:  CBZ             R0, loc_4F94EE
4F9488:  LDRB.W          R0, [R5,#0x485]
4F948C:  LSLS            R0, R0, #0x1F
4F948E:  BNE             loc_4F94C6
4F9490:  LDR             R0, [R4,#8]
4F9492:  LDR             R1, [R0]
4F9494:  LDR             R1, [R1,#0x14]
4F9496:  BLX             R1
4F9498:  CMP.W           R0, #0x330
4F949C:  BEQ             loc_4F94C6
4F949E:  LDR             R0, [R4,#8]
4F94A0:  LDR             R1, [R0]
4F94A2:  LDR             R1, [R1,#0x14]
4F94A4:  BLX             R1
4F94A6:  MOVW            R1, #0x32E
4F94AA:  CMP             R0, R1
4F94AC:  BEQ             loc_4F94C6
4F94AE:  LDR             R0, [R4,#8]
4F94B0:  LDR             R1, [R0]
4F94B2:  LDR             R1, [R1,#0x14]
4F94B4:  BLX             R1
4F94B6:  CMP             R0, #0xCE
4F94B8:  BEQ             loc_4F94C6
4F94BA:  LDR             R0, [R4,#8]
4F94BC:  LDR             R1, [R0]
4F94BE:  LDR             R1, [R1,#0x14]
4F94C0:  BLX             R1
4F94C2:  CMP             R0, #0xD4
4F94C4:  BNE             loc_4F94F2
4F94C6:  LDRB            R0, [R4,#0x18]
4F94C8:  CBNZ            R0, loc_4F94EA
4F94CA:  LDR             R0, [R4,#8]
4F94CC:  LDR             R1, [R0]
4F94CE:  LDR             R1, [R1,#0x14]
4F94D0:  BLX             R1
4F94D2:  MOVW            R1, #0x329
4F94D6:  CMP             R0, R1
4F94D8:  BNE             loc_4F94EA
4F94DA:  LDR             R0, [R4,#8]
4F94DC:  MOVS            R2, #0
4F94DE:  MOVS            R3, #0
4F94E0:  LDR             R1, [R0]
4F94E2:  LDR.W           R12, [R1,#0x1C]
4F94E6:  MOV             R1, R5
4F94E8:  BLX             R12
4F94EA:  LDR             R0, [R4,#8]
4F94EC:  POP             {R4,R5,R7,PC}
4F94EE:  MOVS            R0, #0
4F94F0:  POP             {R4,R5,R7,PC}
4F94F2:  MOVS            R0, #off_18; this
4F94F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F94F8:  LDRD.W          R1, R2, [R4,#0xC]; int
4F94FC:  LDRB            R3, [R4,#0x18]; bool
4F94FE:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4F9502:  POP             {R4,R5,R7,PC}
