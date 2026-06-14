; =========================================================
; Game Engine Function: sub_15EB0C
; Address            : 0x15EB0C - 0x15EBD4
; =========================================================

15EB0C:  PUSH            {R4-R7,LR}
15EB0E:  ADD             R7, SP, #0xC
15EB10:  PUSH.W          {R8}
15EB14:  SUB             SP, SP, #8
15EB16:  MOV             R5, R0
15EB18:  LDR             R0, [R0]
15EB1A:  CMP             R0, #0
15EB1C:  BEQ             loc_15EBCC
15EB1E:  MOV             R4, R1
15EB20:  STR             R1, [SP,#0x18+var_14]
15EB22:  ADD             R1, SP, #0x18+var_14
15EB24:  BL              sub_15FAE4
15EB28:  CMP             R0, #0
15EB2A:  BEQ             loc_15EBCC
15EB2C:  LDR             R0, [R5]
15EB2E:  MOV             R1, R4
15EB30:  BL              sub_15E7CC
15EB34:  LDR             R0, [R0,#8]
15EB36:  CBZ             R0, loc_15EB70
15EB38:  MOVS            R1, #0
15EB3A:  LDRB            R2, [R0,#0x14]
15EB3C:  CBZ             R2, loc_15EB56
15EB3E:  LDRD.W          R2, R3, [R0,#8]
15EB42:  LDR             R6, [R2,#4]
15EB44:  STR             R6, [R0,#0x1C]
15EB46:  STR             R3, [R2,#4]
15EB48:  LDR             R2, [R0,#0x18]
15EB4A:  LDR             R3, [R2,#8]
15EB4C:  STR             R3, [R0,#0x24]
15EB4E:  LDR             R3, [R2,#8]
15EB50:  ORR.W           R3, R3, #0x40 ; '@'
15EB54:  STR             R3, [R2,#8]
15EB56:  LDRB            R2, [R0,#0x15]
15EB58:  CBZ             R2, loc_15EB6A
15EB5A:  LDR             R2, [R0,#0x10]
15EB5C:  CBZ             R2, loc_15EB68
15EB5E:  LDR             R3, [R0,#8]
15EB60:  LDR             R6, [R3]
15EB62:  STR             R6, [R0,#0x20]
15EB64:  STR             R2, [R3]
15EB66:  B               loc_15EB6A
15EB68:  STRB            R1, [R0,#0x15]
15EB6A:  LDR             R0, [R0]
15EB6C:  CMP             R0, #0
15EB6E:  BNE             loc_15EB3A
15EB70:  LDR             R0, [R5]
15EB72:  MOV             R1, R4
15EB74:  BL              sub_15E7CC
15EB78:  LDR             R4, [R0,#0x1C]
15EB7A:  CBZ             R4, loc_15EBCC
15EB7C:  LDR             R0, =(off_23494C - 0x15EB8A)
15EB7E:  MOV             R8, #0x1D874D
15EB86:  ADD             R0, PC; off_23494C
15EB88:  LDR             R6, [R0]; dword_23DF24
15EB8A:  LDRB.W          R0, [R4,#0x50]
15EB8E:  CBZ             R0, loc_15EBAC
15EB90:  LDR             R0, [R4,#8]
15EB92:  LDR             R1, [R4,#0x54]
15EB94:  LDR             R2, [R6]
15EB96:  STR             R1, [R0,#0x40]
15EB98:  LDR             R1, [R4,#0x58]
15EB9A:  ADD.W           R3, R2, R8
15EB9E:  STR             R1, [R0,#0x44]
15EBA0:  MOVS            R2, #0
15EBA2:  LDR             R1, [R4,#0x5C]
15EBA4:  STR             R1, [R0,#0x48]
15EBA6:  ADD.W           R1, R0, #0x10
15EBAA:  BLX             R3
15EBAC:  LDRB.W          R0, [R4,#0x60]
15EBB0:  CBZ             R0, loc_15EBC6
15EBB2:  LDR             R1, [R6]
15EBB4:  MOVS            R3, #2
15EBB6:  LDR             R0, [R4,#8]
15EBB8:  ADD             R1, R8
15EBBA:  LDR             R2, [R4,#0x64]
15EBBC:  ADD.W           R5, R1, #0x5C ; '\'
15EBC0:  ADD.W           R1, R0, #0x40 ; '@'
15EBC4:  BLX             R5
15EBC6:  LDR             R4, [R4]
15EBC8:  CMP             R4, #0
15EBCA:  BNE             loc_15EB8A
15EBCC:  ADD             SP, SP, #8
15EBCE:  POP.W           {R8}
15EBD2:  POP             {R4-R7,PC}
