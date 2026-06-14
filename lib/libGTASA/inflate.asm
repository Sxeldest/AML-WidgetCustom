; =========================================================
; Game Engine Function: inflate
; Address            : 0x20E9A8 - 0x20ECC2
; =========================================================

20E9A8:  PUSH            {R4-R7,LR}
20E9AA:  ADD             R7, SP, #0xC
20E9AC:  PUSH.W          {R8-R11}
20E9B0:  SUB             SP, SP, #4
20E9B2:  MOV             R4, R0
20E9B4:  CMP             R4, #0
20E9B6:  BEQ.W           def_20EA04; jumptable 0020EA04 default case
20E9BA:  LDR             R3, [R4,#0x1C]
20E9BC:  CMP             R3, #0
20E9BE:  ITT NE
20E9C0:  LDRNE           R0, [R4]
20E9C2:  CMPNE           R0, #0
20E9C4:  BEQ.W           def_20EA04; jumptable 0020EA04 default case
20E9C8:  MOVW            R12, #0x1085
20E9CC:  CMP             R1, #4
20E9CE:  MOV.W           R9, #0
20E9D2:  ADR.W           R8, aIncorrectDataC; "incorrect data check"
20E9D6:  IT EQ
20E9D8:  MOVEQ           R9, #0xFFFFFFFB
20E9DC:  MOV             R2, #0xFFFFFFFB
20E9E0:  MOV.W           R10, #0xD
20E9E4:  MOV.W           R11, #5
20E9E8:  MOVT            R12, #0x842
20E9EC:  MOV.W           LR, #0xA
20E9F0:  B               loc_20E9F6
20E9F2:  LDR             R3, [R4,#0x1C]
20E9F4:  MOV             R2, R9
20E9F6:  LDR             R6, [R3]
20E9F8:  CMP             R6, #0xD; switch 14 cases
20E9FA:  BHI.W           def_20EA04; jumptable 0020EA04 default case
20E9FE:  MOV             R1, #0xFFFFFFFD
20EA02:  MOVS            R0, #1
20EA04:  TBH.W           [PC,R6,LSL#1]; switch jump
20EA08:  DCW 0xE; jump table for switch statement
20EA0A:  DCW 0x5A
20EA0C:  DCW 0xEF
20EA0E:  DCW 0xF1
20EA10:  DCW 0xF3
20EA12:  DCW 0xF5
20EA14:  DCW 0xF7
20EA16:  DCW 0x2D
20EA18:  DCW 0x89
20EA1A:  DCW 0x9D
20EA1C:  DCW 0xB3
20EA1E:  DCW 0xC9
20EA20:  DCW 0x100
20EA22:  DCW 0x104
20EA24:  LDR             R1, [R4,#4]; jumptable 0020EA04 case 0
20EA26:  MOV             R0, R2
20EA28:  CMP             R1, #0
20EA2A:  BEQ.W           loc_20EC08; jumptable 0020EA04 case 12
20EA2E:  LDR             R2, [R4,#8]
20EA30:  SUBS            R1, #1
20EA32:  LDR             R0, [R4]
20EA34:  ADDS            R2, #1
20EA36:  ADDS            R6, R0, #1
20EA38:  STRD.W          R6, R1, [R4]
20EA3C:  STR             R2, [R4,#8]
20EA3E:  LDRB            R1, [R0]
20EA40:  STR             R1, [R3,#4]
20EA42:  LDR             R0, [R4,#0x1C]
20EA44:  AND.W           R1, R1, #0xF
20EA48:  CMP             R1, #8
20EA4A:  BNE             loc_20EA94
20EA4C:  LDR             R1, [R0,#4]
20EA4E:  MOVS            R3, #8
20EA50:  LDR             R2, [R0,#0x10]
20EA52:  ADD.W           R1, R3, R1,LSR#4
20EA56:  CMP             R1, R2
20EA58:  BLS             loc_20EAB6
20EA5A:  STR.W           R10, [R0]
20EA5E:  ADR             R1, aInvalidWindowS; "invalid window size"
20EA60:  B               loc_20EAFC
20EA62:  LDR             R0, [R3,#0x14]; jumptable 0020EA04 case 7
20EA64:  MOV             R1, R4
20EA66:  MOV             R5, R12
20EA68:  BLX             j_inflate_blocks
20EA6C:  MOV             R1, R0
20EA6E:  ADDS            R0, R1, #3
20EA70:  BEQ             loc_20EA9C
20EA72:  CMP             R1, #1
20EA74:  BNE.W           loc_20EBDC
20EA78:  LDR             R1, [R4,#0x1C]
20EA7A:  ADDS            R2, R1, #4
20EA7C:  LDR             R0, [R1,#0x14]
20EA7E:  MOV             R1, R4
20EA80:  BLX             j_inflate_blocks_reset
20EA84:  LDR             R0, [R4,#0x1C]
20EA86:  LDR             R1, [R0,#0xC]
20EA88:  CMP             R1, #0
20EA8A:  BEQ             loc_20EB0E
20EA8C:  MOVS            R1, #0xC
20EA8E:  MOV             R2, R9
20EA90:  STR             R1, [R0]
20EA92:  B               loc_20EAAC
20EA94:  STR.W           R10, [R0]
20EA98:  ADR             R1, aUnknownCompres_0; "unknown compression method"
20EA9A:  B               loc_20EAFC
20EA9C:  LDR             R0, [R4,#0x1C]
20EA9E:  MOVS            R1, #0
20EAA0:  MOV             R2, #0xFFFFFFFD
20EAA4:  STR.W           R10, [R0]
20EAA8:  LDR             R0, [R4,#0x1C]
20EAAA:  STR             R1, [R0,#4]
20EAAC:  LDR             R3, [R4,#0x1C]
20EAAE:  MOV             R12, R5
20EAB0:  MOV.W           LR, #0xA
20EAB4:  B               loc_20E9F6
20EAB6:  MOVS            R1, #1
20EAB8:  MOV             R2, R9
20EABA:  STR             R1, [R0]
20EABC:  LDR             R1, [R4,#4]; jumptable 0020EA04 case 1
20EABE:  MOV             R0, R2
20EAC0:  CMP             R1, #0
20EAC2:  BEQ.W           loc_20EC08; jumptable 0020EA04 case 12
20EAC6:  LDR             R3, [R4,#8]
20EAC8:  SUBS            R1, #1
20EACA:  LDR             R2, [R4]
20EACC:  LDR             R0, [R4,#0x1C]
20EACE:  ADDS            R3, #1
20EAD0:  ADDS            R6, R2, #1
20EAD2:  STRD.W          R6, R1, [R4]
20EAD6:  STR             R3, [R4,#8]
20EAD8:  LDR             R3, [R0,#4]
20EADA:  LDRB            R1, [R2]
20EADC:  ORR.W           R2, R1, R3,LSL#8
20EAE0:  UMULL.W         R3, R6, R2, R12
20EAE4:  SUBS            R3, R2, R6
20EAE6:  ADD.W           R3, R6, R3,LSR#1
20EAEA:  LSRS            R6, R3, #4
20EAEC:  LSLS            R6, R6, #5
20EAEE:  SUB.W           R3, R6, R3,LSR#4
20EAF2:  SUBS            R2, R2, R3
20EAF4:  BEQ             loc_20EB02
20EAF6:  STR.W           R10, [R0]
20EAFA:  ADR             R1, aIncorrectHeade; "incorrect header check"
20EAFC:  LDR             R0, [R4,#0x1C]
20EAFE:  STR             R1, [R4,#0x18]
20EB00:  B               loc_20EBCE
20EB02:  LSLS            R1, R1, #0x1A
20EB04:  BMI.W           loc_20EC14
20EB08:  MOVS            R1, #7
20EB0A:  STR             R1, [R0]
20EB0C:  B               loc_20E9F2
20EB0E:  MOVS            R1, #8
20EB10:  MOV             R2, R9
20EB12:  MOV             R12, R5
20EB14:  MOV.W           LR, #0xA
20EB18:  STR             R1, [R0]
20EB1A:  LDR             R1, [R4,#4]; jumptable 0020EA04 case 8
20EB1C:  MOV             R0, R2
20EB1E:  CMP             R1, #0
20EB20:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EB22:  LDR             R2, [R4,#8]
20EB24:  SUBS            R1, #1
20EB26:  LDR             R0, [R4]
20EB28:  LDR             R3, [R4,#0x1C]
20EB2A:  ADDS            R2, #1
20EB2C:  ADDS            R6, R0, #1
20EB2E:  STRD.W          R6, R1, [R4]
20EB32:  STR             R2, [R4,#8]
20EB34:  MOV             R2, R9
20EB36:  LDRB            R0, [R0]
20EB38:  MOVS            R1, #9
20EB3A:  LSLS            R0, R0, #0x18
20EB3C:  STR             R0, [R3,#8]
20EB3E:  LDR             R0, [R4,#0x1C]
20EB40:  STR             R1, [R0]
20EB42:  LDR             R1, [R4,#4]; jumptable 0020EA04 case 9
20EB44:  MOV             R0, R2
20EB46:  CMP             R1, #0
20EB48:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EB4A:  LDR             R2, [R4,#8]
20EB4C:  SUBS            R1, #1
20EB4E:  LDR             R0, [R4]
20EB50:  LDR             R3, [R4,#0x1C]
20EB52:  ADDS            R2, #1
20EB54:  ADDS            R6, R0, #1
20EB56:  STRD.W          R6, R1, [R4]
20EB5A:  STR             R2, [R4,#8]
20EB5C:  MOV             R2, R9
20EB5E:  LDRB            R0, [R0]
20EB60:  LDR             R1, [R3,#8]
20EB62:  ADD.W           R0, R1, R0,LSL#16
20EB66:  STR             R0, [R3,#8]
20EB68:  LDR             R0, [R4,#0x1C]
20EB6A:  STR.W           LR, [R0]
20EB6E:  LDR             R1, [R4,#4]; jumptable 0020EA04 case 10
20EB70:  MOV             R0, R2
20EB72:  CMP             R1, #0
20EB74:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EB76:  LDR             R2, [R4,#8]
20EB78:  SUBS            R1, #1
20EB7A:  LDR             R0, [R4]
20EB7C:  LDR             R3, [R4,#0x1C]
20EB7E:  ADDS            R2, #1
20EB80:  ADDS            R6, R0, #1
20EB82:  STRD.W          R6, R1, [R4]
20EB86:  STR             R2, [R4,#8]
20EB88:  MOV             R2, R9
20EB8A:  LDRB            R0, [R0]
20EB8C:  LDR             R1, [R3,#8]
20EB8E:  ADD.W           R0, R1, R0,LSL#8
20EB92:  STR             R0, [R3,#8]
20EB94:  LDR             R0, [R4,#0x1C]
20EB96:  MOVS            R1, #0xB
20EB98:  STR             R1, [R0]
20EB9A:  LDR             R1, [R4,#4]; jumptable 0020EA04 case 11
20EB9C:  MOV             R0, R2
20EB9E:  CBZ             R1, loc_20EC08; jumptable 0020EA04 case 12
20EBA0:  LDR             R2, [R4,#8]
20EBA2:  SUBS            R1, #1
20EBA4:  LDR             R0, [R4]
20EBA6:  LDR             R3, [R4,#0x1C]
20EBA8:  ADDS            R2, #1
20EBAA:  ADDS            R6, R0, #1
20EBAC:  STRD.W          R6, R1, [R4]
20EBB0:  STR             R2, [R4,#8]
20EBB2:  LDRB            R0, [R0]
20EBB4:  LDR             R1, [R3,#8]
20EBB6:  ADD             R0, R1
20EBB8:  STR             R0, [R3,#8]
20EBBA:  LDR             R0, [R4,#0x1C]
20EBBC:  LDRD.W          R1, R2, [R0,#4]
20EBC0:  CMP             R1, R2
20EBC2:  BEQ             loc_20EBD4
20EBC4:  STR.W           R10, [R0]
20EBC8:  LDR             R0, [R4,#0x1C]
20EBCA:  STR.W           R8, [R4,#0x18]
20EBCE:  STR.W           R11, [R0,#4]
20EBD2:  B               loc_20E9F2
20EBD4:  MOVS            R1, #0xC
20EBD6:  STR             R1, [R0]
20EBD8:  MOVS            R0, #1
20EBDA:  B               loc_20EC08; jumptable 0020EA04 case 12
20EBDC:  CMP             R1, #0
20EBDE:  MOV             R0, R9
20EBE0:  IT NE
20EBE2:  MOVNE           R0, R1
20EBE4:  B               loc_20EC08; jumptable 0020EA04 case 12
20EBE6:  MOV             R0, R2; jumptable 0020EA04 case 2
20EBE8:  B               loc_20EC1A
20EBEA:  MOV             R0, R2; jumptable 0020EA04 case 3
20EBEC:  B               loc_20EC40
20EBEE:  MOV             R0, R2; jumptable 0020EA04 case 4
20EBF0:  B               loc_20EC6A
20EBF2:  MOV             R0, R2; jumptable 0020EA04 case 5
20EBF4:  B               loc_20EC94
20EBF6:  MOVS            R0, #0xD; jumptable 0020EA04 case 6
20EBF8:  ADR             R1, aNeedDictionary; "need dictionary"
20EBFA:  STR             R0, [R3]
20EBFC:  LDR             R0, [R4,#0x1C]
20EBFE:  STR             R1, [R4,#0x18]
20EC00:  MOVS            R1, #0
20EC02:  STR             R1, [R0,#4]
20EC04:  MOV             R0, #0xFFFFFFFE; jumptable 0020EA04 default case
20EC08:  ADD             SP, SP, #4; jumptable 0020EA04 case 12
20EC0A:  POP.W           {R8-R11}
20EC0E:  POP             {R4-R7,PC}
20EC10:  MOV             R0, R1; jumptable 0020EA04 case 13
20EC12:  B               loc_20EC08; jumptable 0020EA04 case 12
20EC14:  MOVS            R1, #2
20EC16:  STR             R1, [R0]
20EC18:  MOV             R0, R9
20EC1A:  LDR             R1, [R4,#4]
20EC1C:  CMP             R1, #0
20EC1E:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EC20:  LDR             R2, [R4,#8]
20EC22:  SUBS            R1, #1
20EC24:  LDR             R0, [R4]
20EC26:  LDR             R3, [R4,#0x1C]
20EC28:  ADDS            R2, #1
20EC2A:  ADDS            R6, R0, #1
20EC2C:  STRD.W          R6, R1, [R4]
20EC30:  STR             R2, [R4,#8]
20EC32:  MOVS            R1, #3
20EC34:  LDRB            R0, [R0]
20EC36:  LSLS            R0, R0, #0x18
20EC38:  STR             R0, [R3,#8]
20EC3A:  LDR             R0, [R4,#0x1C]
20EC3C:  STR             R1, [R0]
20EC3E:  MOV             R0, R9
20EC40:  LDR             R1, [R4,#4]
20EC42:  CMP             R1, #0
20EC44:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EC46:  LDR             R2, [R4,#8]
20EC48:  SUBS            R1, #1
20EC4A:  LDR             R0, [R4]
20EC4C:  LDR             R3, [R4,#0x1C]
20EC4E:  ADDS            R2, #1
20EC50:  ADDS            R6, R0, #1
20EC52:  STRD.W          R6, R1, [R4]
20EC56:  STR             R2, [R4,#8]
20EC58:  LDRB            R0, [R0]
20EC5A:  LDR             R1, [R3,#8]
20EC5C:  ADD.W           R0, R1, R0,LSL#16
20EC60:  STR             R0, [R3,#8]
20EC62:  LDR             R0, [R4,#0x1C]
20EC64:  MOVS            R1, #4
20EC66:  STR             R1, [R0]
20EC68:  MOV             R0, R9
20EC6A:  LDR             R1, [R4,#4]
20EC6C:  CMP             R1, #0
20EC6E:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EC70:  LDR             R2, [R4,#8]
20EC72:  SUBS            R1, #1
20EC74:  LDR             R0, [R4]
20EC76:  LDR             R3, [R4,#0x1C]
20EC78:  ADDS            R2, #1
20EC7A:  ADDS            R6, R0, #1
20EC7C:  STRD.W          R6, R1, [R4]
20EC80:  STR             R2, [R4,#8]
20EC82:  LDRB            R0, [R0]
20EC84:  LDR             R1, [R3,#8]
20EC86:  ADD.W           R0, R1, R0,LSL#8
20EC8A:  STR             R0, [R3,#8]
20EC8C:  LDR             R0, [R4,#0x1C]
20EC8E:  MOVS            R1, #5
20EC90:  STR             R1, [R0]
20EC92:  MOV             R0, R9
20EC94:  LDR             R1, [R4,#4]
20EC96:  CMP             R1, #0
20EC98:  BEQ             loc_20EC08; jumptable 0020EA04 case 12
20EC9A:  LDR             R2, [R4,#8]
20EC9C:  SUBS            R1, #1
20EC9E:  LDR             R0, [R4]
20ECA0:  LDR             R3, [R4,#0x1C]
20ECA2:  ADDS            R2, #1
20ECA4:  ADDS            R6, R0, #1
20ECA6:  STRD.W          R6, R1, [R4]
20ECAA:  STR             R2, [R4,#8]
20ECAC:  LDRB            R0, [R0]
20ECAE:  LDR             R1, [R3,#8]
20ECB0:  ADD             R0, R1
20ECB2:  STR             R0, [R3,#8]
20ECB4:  LDR             R0, [R4,#0x1C]
20ECB6:  LDR             R1, [R0,#8]
20ECB8:  STR             R1, [R4,#0x30]
20ECBA:  MOVS            R1, #6
20ECBC:  STR             R1, [R0]
20ECBE:  MOVS            R0, #2
20ECC0:  B               loc_20EC08; jumptable 0020EA04 case 12
