; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManager10ProcessPedEP4CPed
; Address            : 0x4EFC8E - 0x4EFD42
; =========================================================

4EFC8E:  PUSH            {R4-R7,LR}
4EFC90:  ADD             R7, SP, #0xC
4EFC92:  PUSH.W          {R11}
4EFC96:  MOV             R4, R0
4EFC98:  MOV             R6, R1
4EFC9A:  LDRB            R0, [R4,#0x18]
4EFC9C:  CBZ             R0, loc_4EFCA2
4EFC9E:  MOVS            R5, #1
4EFCA0:  B               loc_4EFD3A
4EFCA2:  LDR             R0, [R4,#8]
4EFCA4:  CBZ             R0, loc_4EFCC2
4EFCA6:  LDR             R1, [R0]
4EFCA8:  LDR             R2, [R1,#0x24]
4EFCAA:  MOV             R1, R6
4EFCAC:  BLX             R2
4EFCAE:  CMP             R0, #1
4EFCB0:  BNE             loc_4EFCC6
4EFCB2:  LDR             R0, [R4,#8]
4EFCB4:  CMP             R0, #0
4EFCB6:  ITTT NE
4EFCB8:  LDRNE           R1, [R0]
4EFCBA:  LDRNE           R1, [R1,#4]
4EFCBC:  BLXNE           R1
4EFCBE:  MOVS            R0, #0
4EFCC0:  STR             R0, [R4,#8]
4EFCC2:  MOVS            R5, #1
4EFCC4:  B               loc_4EFCC8
4EFCC6:  MOVS            R5, #0
4EFCC8:  LDR             R0, [R4,#0xC]
4EFCCA:  CBZ             R0, loc_4EFCEC
4EFCCC:  LDR             R1, [R0]
4EFCCE:  LDR             R2, [R1,#0x24]
4EFCD0:  MOV             R1, R6
4EFCD2:  BLX             R2
4EFCD4:  CMP             R0, #1
4EFCD6:  BNE             loc_4EFCEA
4EFCD8:  LDR             R0, [R4,#0xC]
4EFCDA:  CMP             R0, #0
4EFCDC:  ITTT NE
4EFCDE:  LDRNE           R1, [R0]
4EFCE0:  LDRNE           R1, [R1,#4]
4EFCE2:  BLXNE           R1
4EFCE4:  MOVS            R0, #0
4EFCE6:  STR             R0, [R4,#0xC]
4EFCE8:  B               loc_4EFCEC
4EFCEA:  MOVS            R5, #0
4EFCEC:  LDR             R0, [R4,#0x10]
4EFCEE:  CBZ             R0, loc_4EFD10
4EFCF0:  LDR             R1, [R0]
4EFCF2:  LDR             R2, [R1,#0x24]
4EFCF4:  MOV             R1, R6
4EFCF6:  BLX             R2
4EFCF8:  CMP             R0, #1
4EFCFA:  BNE             loc_4EFD0E
4EFCFC:  LDR             R0, [R4,#0x10]
4EFCFE:  CMP             R0, #0
4EFD00:  ITTT NE
4EFD02:  LDRNE           R1, [R0]
4EFD04:  LDRNE           R1, [R1,#4]
4EFD06:  BLXNE           R1
4EFD08:  MOVS            R0, #0
4EFD0A:  STR             R0, [R4,#0x10]
4EFD0C:  B               loc_4EFD10
4EFD0E:  MOVS            R5, #0
4EFD10:  LDR             R0, [R4,#0x14]
4EFD12:  CBZ             R0, loc_4EFD34
4EFD14:  LDR             R1, [R0]
4EFD16:  LDR             R2, [R1,#0x24]
4EFD18:  MOV             R1, R6
4EFD1A:  BLX             R2
4EFD1C:  CMP             R0, #1
4EFD1E:  BNE             loc_4EFD32
4EFD20:  LDR             R0, [R4,#0x14]
4EFD22:  CMP             R0, #0
4EFD24:  ITTT NE
4EFD26:  LDRNE           R1, [R0]
4EFD28:  LDRNE           R1, [R1,#4]
4EFD2A:  BLXNE           R1
4EFD2C:  MOVS            R0, #0
4EFD2E:  STR             R0, [R4,#0x14]
4EFD30:  B               loc_4EFD34
4EFD32:  MOVS            R5, #0
4EFD34:  CMP             R5, #0
4EFD36:  IT NE
4EFD38:  MOVNE           R5, #1
4EFD3A:  MOV             R0, R5
4EFD3C:  POP.W           {R11}
4EFD40:  POP             {R4-R7,PC}
