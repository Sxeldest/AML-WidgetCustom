; =========================================================
; Game Engine Function: _ZNK12CEventDamage17TakesPriorityOverERK6CEvent
; Address            : 0x372B9C - 0x372C84
; =========================================================

372B9C:  PUSH            {R4-R7,LR}
372B9E:  ADD             R7, SP, #0xC
372BA0:  PUSH.W          {R11}
372BA4:  MOV             R4, R1
372BA6:  MOV             R5, R0
372BA8:  LDR             R0, [R4]
372BAA:  LDR             R1, [R0,#8]
372BAC:  MOV             R0, R4
372BAE:  BLX             R1
372BB0:  CMP             R0, #0x42 ; 'B'
372BB2:  BNE             loc_372BC2
372BB4:  LDRB.W          R0, [R5,#0x3C]
372BB8:  CMP             R0, #0
372BBA:  ITT NE
372BBC:  LDRBNE          R0, [R5,#9]
372BBE:  CMPNE           R0, #0
372BC0:  BNE             loc_372C5A
372BC2:  LDR             R0, [R4]
372BC4:  LDR             R1, [R0,#8]
372BC6:  MOV             R0, R4
372BC8:  BLX             R1
372BCA:  CMP             R0, #0x3A ; ':'
372BCC:  BNE             loc_372BDC
372BCE:  LDRB.W          R0, [R5,#0x3C]
372BD2:  CMP             R0, #0
372BD4:  ITT NE
372BD6:  LDRBNE          R0, [R5,#9]
372BD8:  CMPNE           R0, #0
372BDA:  BNE             loc_372C5A
372BDC:  LDR             R0, [R4]
372BDE:  LDR             R1, [R0,#8]
372BE0:  MOV             R0, R4
372BE2:  BLX             R1
372BE4:  CMP             R0, #8
372BE6:  BNE             loc_372BF6
372BE8:  LDRB.W          R0, [R5,#0x3C]
372BEC:  CMP             R0, #0
372BEE:  ITT NE
372BF0:  LDRBNE          R0, [R5,#9]
372BF2:  CMPNE           R0, #0
372BF4:  BNE             loc_372C5A
372BF6:  LDR             R0, [R5,#0x10]; this
372BF8:  CBZ             R0, loc_372C38
372BFA:  LDRB.W          R1, [R0,#0x3A]
372BFE:  AND.W           R1, R1, #7
372C02:  CMP             R1, #3
372C04:  BNE             loc_372C38
372C06:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372C0A:  CMP             R0, #1
372C0C:  BNE             loc_372C38
372C0E:  LDR             R0, [R4]
372C10:  LDR             R1, [R0,#8]
372C12:  MOV             R0, R4
372C14:  BLX             R1
372C16:  CMP             R0, #9
372C18:  BNE             loc_372C38
372C1A:  LDR             R0, [R4]
372C1C:  LDR             R1, [R0,#0x2C]
372C1E:  MOV             R0, R4
372C20:  BLX             R1
372C22:  LDR             R1, [R5,#0x10]
372C24:  CMP             R0, R1
372C26:  BNE             loc_372C5A
372C28:  LDRB.W          R0, [R5,#0x3C]
372C2C:  CMP             R0, #0
372C2E:  ITT NE
372C30:  LDRBNE          R0, [R5,#9]
372C32:  CMPNE           R0, #0
372C34:  BNE             loc_372C5A
372C36:  B               loc_372C62
372C38:  LDR             R0, [R4]
372C3A:  LDR             R1, [R0,#8]
372C3C:  MOV             R0, R4
372C3E:  BLX             R1
372C40:  CMP             R0, #9
372C42:  BNE             loc_372C62
372C44:  LDR             R0, [R5]
372C46:  LDR             R1, [R0,#0x2C]
372C48:  MOV             R0, R5
372C4A:  BLX             R1
372C4C:  MOV             R6, R0
372C4E:  LDR             R0, [R4]
372C50:  LDR             R1, [R0,#0x2C]
372C52:  MOV             R0, R4
372C54:  BLX             R1
372C56:  CMP             R6, R0
372C58:  BEQ             loc_372C62
372C5A:  MOVS            R0, #1
372C5C:  POP.W           {R11}
372C60:  POP             {R4-R7,PC}
372C62:  LDR             R0, [R5]
372C64:  LDR             R1, [R0,#0xC]
372C66:  MOV             R0, R5
372C68:  BLX             R1
372C6A:  MOV             R5, R0
372C6C:  LDR             R0, [R4]
372C6E:  LDR             R1, [R0,#0xC]
372C70:  MOV             R0, R4
372C72:  BLX             R1
372C74:  MOV             R1, R0
372C76:  MOVS            R0, #0
372C78:  CMP             R5, R1
372C7A:  IT GE
372C7C:  MOVGE           R0, #1
372C7E:  POP.W           {R11}
372C82:  POP             {R4-R7,PC}
