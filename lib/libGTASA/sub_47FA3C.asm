; =========================================================
; Game Engine Function: sub_47FA3C
; Address            : 0x47FA3C - 0x47FB40
; =========================================================

47FA3C:  PUSH            {R4,R5,R7,LR}
47FA3E:  ADD             R7, SP, #8
47FA40:  MOV             R4, R0
47FA42:  LDR.W           R5, [R4,#0x180]
47FA46:  LDRB            R0, [R5,#8]
47FA48:  CBZ             R0, loc_47FA5A
47FA4A:  LDR             R0, [R4]
47FA4C:  MOVS            R1, #0x30 ; '0'
47FA4E:  STR             R1, [R0,#0x14]
47FA50:  LDR             R0, [R4]
47FA52:  LDR             R1, [R0]
47FA54:  MOV             R0, R4
47FA56:  BLX             R1
47FA58:  B               loc_47FAFE
47FA5A:  LDRB.W          R0, [R4,#0x4A]
47FA5E:  CBZ             R0, loc_47FA9C
47FA60:  LDR             R0, [R4,#0x74]
47FA62:  CBNZ            R0, loc_47FA9C
47FA64:  LDRB.W          R0, [R4,#0x50]
47FA68:  CMP             R0, #0
47FA6A:  ITT NE
47FA6C:  LDRBNE.W        R0, [R4,#0x5A]
47FA70:  CMPNE           R0, #0
47FA72:  BEQ             loc_47FA80
47FA74:  LDR             R0, [R5,#0x18]
47FA76:  STR.W           R0, [R4,#0x1A8]
47FA7A:  MOVS            R0, #1
47FA7C:  STRB            R0, [R5,#8]
47FA7E:  B               loc_47FA9C
47FA80:  LDRB.W          R0, [R4,#0x58]
47FA84:  CBZ             R0, loc_47FA8E
47FA86:  LDR             R0, [R5,#0x14]
47FA88:  STR.W           R0, [R4,#0x1A8]
47FA8C:  B               loc_47FA9C
47FA8E:  LDR             R0, [R4]
47FA90:  MOVS            R1, #0x2E ; '.'
47FA92:  STR             R1, [R0,#0x14]
47FA94:  LDR             R0, [R4]
47FA96:  LDR             R1, [R0]
47FA98:  MOV             R0, R4
47FA9A:  BLX             R1
47FA9C:  LDR.W           R0, [R4,#0x19C]
47FAA0:  LDR             R1, [R0]
47FAA2:  MOV             R0, R4
47FAA4:  BLX             R1
47FAA6:  LDR.W           R0, [R4,#0x188]
47FAAA:  LDR             R1, [R0,#8]
47FAAC:  MOV             R0, R4
47FAAE:  BLX             R1
47FAB0:  LDRB.W          R0, [R4,#0x41]
47FAB4:  CBNZ            R0, loc_47FAFE
47FAB6:  LDRB            R0, [R5,#0x10]
47FAB8:  CBNZ            R0, loc_47FAC4
47FABA:  LDR.W           R0, [R4,#0x1A4]
47FABE:  LDR             R1, [R0]
47FAC0:  MOV             R0, R4
47FAC2:  BLX             R1
47FAC4:  LDR.W           R0, [R4,#0x1A0]
47FAC8:  LDR             R1, [R0]
47FACA:  MOV             R0, R4
47FACC:  BLX             R1
47FACE:  LDRB.W          R0, [R4,#0x4A]
47FAD2:  CBZ             R0, loc_47FAE0
47FAD4:  LDR.W           R0, [R4,#0x1A8]
47FAD8:  LDRB            R1, [R5,#8]
47FADA:  LDR             R2, [R0]
47FADC:  MOV             R0, R4
47FADE:  BLX             R2
47FAE0:  LDR.W           R0, [R4,#0x18C]
47FAE4:  LDRB            R1, [R5,#8]
47FAE6:  LDR             R2, [R0]
47FAE8:  CMP             R1, #0
47FAEA:  IT NE
47FAEC:  MOVNE           R1, #3
47FAEE:  MOV             R0, R4
47FAF0:  BLX             R2
47FAF2:  LDR.W           R0, [R4,#0x184]
47FAF6:  MOVS            R1, #0
47FAF8:  LDR             R2, [R0]
47FAFA:  MOV             R0, R4
47FAFC:  BLX             R2
47FAFE:  LDR             R0, [R4,#8]
47FB00:  CBZ             R0, locret_47FB3E
47FB02:  LDR             R1, [R5,#0xC]
47FB04:  MOVS            R3, #1
47FB06:  STR             R1, [R0,#0xC]
47FB08:  LDRB            R1, [R5,#8]
47FB0A:  LDR             R0, [R4,#8]
47FB0C:  LDR             R2, [R5,#0xC]
47FB0E:  CMP             R1, #0
47FB10:  IT NE
47FB12:  MOVNE           R3, #2
47FB14:  ADDS            R1, R3, R2
47FB16:  STR             R1, [R0,#0x10]
47FB18:  LDRB.W          R0, [R4,#0x40]
47FB1C:  CBZ             R0, locret_47FB3E
47FB1E:  LDR.W           R0, [R4,#0x190]
47FB22:  LDRB            R0, [R0,#0x11]
47FB24:  CMP             R0, #0
47FB26:  IT NE
47FB28:  POPNE           {R4,R5,R7,PC}
47FB2A:  LDR             R0, [R4,#8]
47FB2C:  MOVS            R3, #1
47FB2E:  LDRB.W          R1, [R4,#0x5A]
47FB32:  LDR             R2, [R0,#0x10]
47FB34:  CMP             R1, #0
47FB36:  IT NE
47FB38:  MOVNE           R3, #2
47FB3A:  ADDS            R1, R2, R3
47FB3C:  STR             R1, [R0,#0x10]
47FB3E:  POP             {R4,R5,R7,PC}
