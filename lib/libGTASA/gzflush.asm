; =========================================================
; Game Engine Function: gzflush
; Address            : 0x20CE4E - 0x20CEF2
; =========================================================

20CE4E:  PUSH            {R4-R7,LR}
20CE50:  ADD             R7, SP, #0xC
20CE52:  PUSH.W          {R8-R10}
20CE56:  MOV             R4, R0
20CE58:  MOV             R10, R1
20CE5A:  CBZ             R4, loc_20CEC2
20CE5C:  LDRB.W          R0, [R4,#0x5C]
20CE60:  CMP             R0, #0x77 ; 'w'
20CE62:  BNE             loc_20CEC2
20CE64:  LDR             R2, [R4,#0x10]
20CE66:  MOVS            R5, #0
20CE68:  MOV             R8, #0xFFFFFFFB
20CE6C:  MOV.W           R9, #0x4000
20CE70:  STR             R5, [R4,#4]
20CE72:  RSBS.W          R6, R2, #0x4000
20CE76:  BEQ             loc_20CE8E
20CE78:  LDR             R3, [R4,#0x40]; s
20CE7A:  MOVS            R1, #1; size
20CE7C:  LDR             R0, [R4,#0x48]; ptr
20CE7E:  MOV             R2, R6; n
20CE80:  BLX             fwrite
20CE84:  CMP             R0, R6
20CE86:  BNE             loc_20CEE6
20CE88:  LDR             R0, [R4,#0x48]
20CE8A:  STRD.W          R0, R9, [R4,#0xC]
20CE8E:  CBNZ            R5, loc_20CECC
20CE90:  MOV             R0, R4
20CE92:  MOV             R1, R10
20CE94:  BLX             j_deflate
20CE98:  MOV             R1, R0
20CE9A:  EOR.W           R0, R1, R8
20CE9E:  LDR             R2, [R4,#0x10]
20CEA0:  ORRS            R0, R6
20CEA2:  IT NE
20CEA4:  MOVNE           R0, R1
20CEA6:  CMP             R0, #1
20CEA8:  MOV             R1, R0
20CEAA:  STR             R0, [R4,#0x38]
20CEAC:  IT NE
20CEAE:  MOVNE           R1, #0
20CEB0:  CMP             R2, #0
20CEB2:  MOV             R3, R2
20CEB4:  IT NE
20CEB6:  MOVNE           R3, #1
20CEB8:  CMP             R0, #2
20CEBA:  ORR.W           R5, R3, R1
20CEBE:  BCC             loc_20CE72
20CEC0:  B               loc_20CEE0
20CEC2:  MOV             R0, #0xFFFFFFFE
20CEC6:  POP.W           {R8-R10}
20CECA:  POP             {R4-R7,PC}
20CECC:  LDR             R0, [R4,#0x38]
20CECE:  CMP             R0, #1
20CED0:  BHI             loc_20CEE0
20CED2:  LDR             R0, [R4,#0x40]; stream
20CED4:  BLX             fflush
20CED8:  LDR             R0, [R4,#0x38]
20CEDA:  CMP             R0, #1
20CEDC:  IT EQ
20CEDE:  MOVEQ           R0, #0
20CEE0:  POP.W           {R8-R10}
20CEE4:  POP             {R4-R7,PC}
20CEE6:  MOV.W           R0, #0xFFFFFFFF
20CEEA:  STR             R0, [R4,#0x38]
20CEEC:  POP.W           {R8-R10}
20CEF0:  POP             {R4-R7,PC}
