; =========================================================
; Game Engine Function: _ZNK13CEventGunShot17TakesPriorityOverERK6CEvent
; Address            : 0x370C10 - 0x370C92
; =========================================================

370C10:  PUSH            {R4-R7,LR}
370C12:  ADD             R7, SP, #0xC
370C14:  PUSH.W          {R11}
370C18:  MOV             R4, R1
370C1A:  MOV             R5, R0
370C1C:  LDR             R0, [R4]
370C1E:  LDR             R1, [R0,#8]
370C20:  MOV             R0, R4
370C22:  BLX             R1
370C24:  MOV             R6, R0
370C26:  LDR             R0, [R5]
370C28:  LDR             R1, [R0,#8]
370C2A:  MOV             R0, R5
370C2C:  BLX             R1
370C2E:  CMP             R6, R0
370C30:  BNE             loc_370C4A
370C32:  LDR             R0, [R5,#0x10]; this
370C34:  CBZ             R0, loc_370C6C
370C36:  LDRB.W          R1, [R0,#0x3A]
370C3A:  AND.W           R1, R1, #7
370C3E:  CMP             R1, #3
370C40:  BNE             loc_370C6C
370C42:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
370C46:  MOV             R5, R0
370C48:  B               loc_370C6E
370C4A:  LDR             R0, [R5]
370C4C:  LDR             R1, [R0,#0xC]
370C4E:  MOV             R0, R5
370C50:  BLX             R1
370C52:  MOV             R5, R0
370C54:  LDR             R0, [R4]
370C56:  LDR             R1, [R0,#0xC]
370C58:  MOV             R0, R4
370C5A:  BLX             R1
370C5C:  MOVS            R1, #0
370C5E:  CMP             R5, R0
370C60:  IT GE
370C62:  MOVGE           R1, #1
370C64:  MOV             R0, R1
370C66:  POP.W           {R11}
370C6A:  POP             {R4-R7,PC}
370C6C:  MOVS            R5, #0
370C6E:  LDR             R0, [R4,#0x10]; this
370C70:  CBZ             R0, loc_370C88
370C72:  LDRB.W          R1, [R0,#0x3A]
370C76:  AND.W           R1, R1, #7
370C7A:  CMP             R1, #3
370C7C:  BNE             loc_370C88
370C7E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
370C82:  EOR.W           R0, R0, #1
370C86:  B               loc_370C8A
370C88:  MOVS            R0, #1
370C8A:  ANDS            R0, R5
370C8C:  POP.W           {R11}
370C90:  POP             {R4-R7,PC}
