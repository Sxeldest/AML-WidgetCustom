; =========================================================
; Game Engine Function: _ZN12CEventSource22ComputeEventSourceTypeERK6CEventRK4CPed
; Address            : 0x37B170 - 0x37B1BC
; =========================================================

37B170:  PUSH            {R4,R5,R7,LR}
37B172:  ADD             R7, SP, #8
37B174:  MOV             R5, R1
37B176:  LDR             R1, [R0]
37B178:  LDR             R1, [R1,#0x2C]
37B17A:  BLX             R1
37B17C:  MOV             R4, R0
37B17E:  CBZ             R4, loc_37B1B8
37B180:  LDRB.W          R0, [R4,#0x3A]
37B184:  AND.W           R0, R0, #7
37B188:  CMP             R0, #3
37B18A:  BNE             loc_37B1B8
37B18C:  LDR.W           R5, [R5,#0x440]
37B190:  MOV             R1, R4; CPed *
37B192:  MOV             R0, R5; this
37B194:  BLX             j__ZNK16CPedIntelligence14IsThreatenedByERK4CPed; CPedIntelligence::IsThreatenedBy(CPed const&)
37B198:  CMP             R0, #0
37B19A:  ITT NE
37B19C:  MOVNE           R0, #3
37B19E:  POPNE           {R4,R5,R7,PC}
37B1A0:  MOV             R0, R5; this
37B1A2:  MOV             R1, R4; CPed *
37B1A4:  BLX             j__ZNK16CPedIntelligence14IsFriendlyWithERK4CPed; CPedIntelligence::IsFriendlyWith(CPed const&)
37B1A8:  CMP             R0, #0
37B1AA:  ITT NE
37B1AC:  MOVNE           R0, #2
37B1AE:  POPNE           {R4,R5,R7,PC}
37B1B0:  MOV             R0, R4; this
37B1B2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37B1B6:  POP             {R4,R5,R7,PC}
37B1B8:  MOVS            R0, #0
37B1BA:  POP             {R4,R5,R7,PC}
