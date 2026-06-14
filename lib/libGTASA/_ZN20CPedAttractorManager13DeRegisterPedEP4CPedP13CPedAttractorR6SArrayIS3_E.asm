; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager13DeRegisterPedEP4CPedP13CPedAttractorR6SArrayIS3_E
; Address            : 0x4AACC0 - 0x4AADB6
; =========================================================

4AACC0:  PUSH            {R4-R7,LR}
4AACC2:  ADD             R7, SP, #0xC
4AACC4:  PUSH.W          {R8}
4AACC8:  MOV             R8, R3
4AACCA:  MOV             R6, R1
4AACCC:  CBZ             R2, loc_4AAD1A
4AACCE:  LDR.W           R0, [R8,#4]
4AACD2:  CMP             R0, #1
4AACD4:  BLT             loc_4AAD1A
4AACD6:  LDR.W           R1, [R8,#8]
4AACDA:  MOVS            R5, #0
4AACDC:  MOVS            R3, #0
4AACDE:  LDR.W           R4, [R1,R3,LSL#2]
4AACE2:  ADDS            R3, #1
4AACE4:  CMP             R4, R2
4AACE6:  IT EQ
4AACE8:  MOVEQ           R5, R4
4AACEA:  CMP             R3, R0
4AACEC:  BGE             loc_4AACF2
4AACEE:  CMP             R4, R2
4AACF0:  BNE             loc_4AACDE
4AACF2:  CBZ             R5, loc_4AAD1A
4AACF4:  LDR             R1, [R5,#0x28]
4AACF6:  CBZ             R1, loc_4AAD30
4AACF8:  ADD.W           R3, R1, R1,LSL#2
4AACFC:  MOV             R2, #0xFFFFFFEC
4AAD00:  LDR             R0, [R5,#0x2C]; dest
4AAD02:  ADD.W           R2, R2, R3,LSL#2; n
4AAD06:  MOVS            R3, #0
4AAD08:  LDR             R4, [R0]
4AAD0A:  CMP             R4, R6
4AAD0C:  BEQ             loc_4AAD22
4AAD0E:  ADDS            R3, #1
4AAD10:  ADDS            R0, #0x14
4AAD12:  SUBS            R2, #0x14
4AAD14:  CMP             R3, R1
4AAD16:  BCC             loc_4AAD08
4AAD18:  B               loc_4AAD30
4AAD1A:  MOVS            R0, #0
4AAD1C:  POP.W           {R8}
4AAD20:  POP             {R4-R7,PC}
4AAD22:  ADD.W           R1, R0, #0x14; src
4AAD26:  BLX             memmove_1
4AAD2A:  LDR             R0, [R5,#0x28]
4AAD2C:  SUBS            R0, #1
4AAD2E:  STR             R0, [R5,#0x28]
4AAD30:  LDR             R1, [R5,#0x10]
4AAD32:  CBZ             R1, loc_4AAD50
4AAD34:  MOV             R0, #0xFFFFFFFC
4AAD38:  ADD.W           R2, R0, R1,LSL#2; n
4AAD3C:  LDR             R0, [R5,#0x14]; dest
4AAD3E:  MOVS            R3, #0
4AAD40:  LDR             R4, [R0]
4AAD42:  CMP             R4, R6
4AAD44:  BEQ             loc_4AAD5E
4AAD46:  ADDS            R3, #1
4AAD48:  ADDS            R0, #4
4AAD4A:  SUBS            R2, #4
4AAD4C:  CMP             R3, R1
4AAD4E:  BCC             loc_4AAD40
4AAD50:  LDR             R0, [R5]
4AAD52:  MOV             R1, R6
4AAD54:  LDR             R2, [R0,#0x18]
4AAD56:  MOV             R0, R5
4AAD58:  BLX             R2
4AAD5A:  LDR             R0, [R5,#0x10]
4AAD5C:  B               loc_4AAD6A
4AAD5E:  ADDS            R1, R0, #4; src
4AAD60:  BLX             memmove_1
4AAD64:  LDR             R0, [R5,#0x10]
4AAD66:  SUBS            R0, #1
4AAD68:  STR             R0, [R5,#0x10]
4AAD6A:  LDR             R1, [R5,#0x1C]
4AAD6C:  CMN             R0, R1
4AAD6E:  BNE             loc_4AADAE
4AAD70:  LDR.W           R1, [R8,#4]
4AAD74:  CBZ             R1, loc_4AADA6
4AAD76:  MOV             R0, #0xFFFFFFFC
4AAD7A:  ADD.W           R2, R0, R1,LSL#2; n
4AAD7E:  LDR.W           R0, [R8,#8]; dest
4AAD82:  MOVS            R3, #0
4AAD84:  LDR             R6, [R0]
4AAD86:  CMP             R6, R5
4AAD88:  BEQ             loc_4AAD96
4AAD8A:  ADDS            R3, #1
4AAD8C:  ADDS            R0, #4
4AAD8E:  SUBS            R2, #4
4AAD90:  CMP             R3, R1
4AAD92:  BCC             loc_4AAD84
4AAD94:  B               loc_4AADA6
4AAD96:  ADDS            R1, R0, #4; src
4AAD98:  BLX             memmove_1
4AAD9C:  LDR.W           R0, [R8,#4]
4AADA0:  SUBS            R0, #1
4AADA2:  STR.W           R0, [R8,#4]
4AADA6:  LDR             R0, [R5]
4AADA8:  LDR             R1, [R0,#8]
4AADAA:  MOV             R0, R5
4AADAC:  BLX             R1
4AADAE:  MOVS            R0, #1
4AADB0:  POP.W           {R8}
4AADB4:  POP             {R4-R7,PC}
