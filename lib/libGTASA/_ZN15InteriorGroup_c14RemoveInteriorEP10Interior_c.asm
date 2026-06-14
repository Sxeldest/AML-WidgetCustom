; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c14RemoveInteriorEP10Interior_c
; Address            : 0x449B16 - 0x449BB0
; =========================================================

449B16:  MOV             R3, R0
449B18:  LDR.W           R12, [R3,#0x10]!
449B1C:  CMP             R12, R1
449B1E:  ITTTT NE
449B20:  MOVNE           R3, R0
449B22:  LDRNE.W         R2, [R3,#0x14]!
449B26:  CMPNE           R2, R1
449B28:  MOVNE           R3, R0
449B2A:  ITT NE
449B2C:  LDRNE.W         R2, [R3,#0x18]!
449B30:  CMPNE           R2, R1
449B32:  BNE             loc_449B58
449B34:  MOVS            R1, #0
449B36:  STR             R1, [R3]
449B38:  LDR.W           R12, [R0,#0x10]
449B3C:  LDRB            R1, [R0,#0xF]
449B3E:  SUBS            R1, #1
449B40:  STRB            R1, [R0,#0xF]
449B42:  CMP.W           R12, #0
449B46:  BNE             loc_449B54
449B48:  LDR             R1, [R0,#0x14]
449B4A:  CMP             R1, #0
449B4C:  ITT EQ
449B4E:  LDREQ           R1, [R0,#0x18]
449B50:  CMPEQ           R1, #0
449B52:  BEQ             loc_449B8C
449B54:  MOVS            R0, #0
449B56:  BX              LR
449B58:  MOV             R3, R0
449B5A:  LDR.W           R2, [R3,#0x1C]!
449B5E:  CMP             R2, R1
449B60:  ITTT NE
449B62:  MOVNE           R3, R0
449B64:  LDRNE.W         R2, [R3,#0x20]!
449B68:  CMPNE           R2, R1
449B6A:  BEQ             loc_449B34
449B6C:  MOV             R3, R0
449B6E:  LDR.W           R2, [R3,#0x24]!
449B72:  CMP             R2, R1
449B74:  ITTT NE
449B76:  MOVNE           R3, R0
449B78:  LDRNE.W         R2, [R3,#0x28]!
449B7C:  CMPNE           R2, R1
449B7E:  BEQ             loc_449B34
449B80:  MOV             R3, R0
449B82:  LDR.W           R2, [R3,#0x2C]!
449B86:  CMP             R2, R1
449B88:  BNE             loc_449B42
449B8A:  B               loc_449B34
449B8C:  LDR             R1, [R0,#0x1C]
449B8E:  CMP             R1, #0
449B90:  ITT EQ
449B92:  LDREQ           R1, [R0,#0x20]
449B94:  CMPEQ           R1, #0
449B96:  BNE             loc_449B54
449B98:  LDR             R1, [R0,#0x24]
449B9A:  CMP             R1, #0
449B9C:  ITT EQ
449B9E:  LDREQ           R1, [R0,#0x28]
449BA0:  CMPEQ           R1, #0
449BA2:  BNE             loc_449B54
449BA4:  LDR             R1, [R0,#0x2C]
449BA6:  MOVS            R0, #0
449BA8:  CMP             R1, #0
449BAA:  IT EQ
449BAC:  MOVEQ           R0, #1
449BAE:  BX              LR
