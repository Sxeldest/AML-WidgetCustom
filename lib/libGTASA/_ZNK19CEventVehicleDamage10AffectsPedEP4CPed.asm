; =========================================================
; Game Engine Function: _ZNK19CEventVehicleDamage10AffectsPedEP4CPed
; Address            : 0x37709A - 0x3770EE
; =========================================================

37709A:  PUSH            {R4,R5,R7,LR}
37709C:  ADD             R7, SP, #8
37709E:  MOV             R4, R1
3770A0:  MOV             R5, R0
3770A2:  MOV             R0, R4; this
3770A4:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3770A8:  CMP             R0, #1
3770AA:  BNE             loc_3770D4
3770AC:  LDR             R0, [R5,#0x14]
3770AE:  CBZ             R0, loc_3770D4
3770B0:  LDRB.W          R0, [R4,#0x485]
3770B4:  LSLS            R0, R0, #0x1F
3770B6:  ITT NE
3770B8:  LDRNE.W         R0, [R4,#0x590]; this
3770BC:  CMPNE           R0, #0
3770BE:  BEQ             loc_3770D8
3770C0:  MOV             R1, R4; CPed *
3770C2:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
3770C6:  CMP             R0, #1
3770C8:  BNE             loc_3770D8
3770CA:  LDR.W           R0, [R4,#0x590]
3770CE:  LDR.W           R0, [R0,#0x464]
3770D2:  CBZ             R0, loc_3770D8
3770D4:  MOVS            R0, #0
3770D6:  POP             {R4,R5,R7,PC}
3770D8:  LDR             R1, [R5,#0x10]
3770DA:  MOVS            R0, #0
3770DC:  CMP             R1, #0
3770DE:  IT EQ
3770E0:  POPEQ           {R4,R5,R7,PC}
3770E2:  LDR.W           R2, [R4,#0x590]
3770E6:  CMP             R2, R1
3770E8:  IT EQ
3770EA:  MOVEQ           R0, #1
3770EC:  POP             {R4,R5,R7,PC}
