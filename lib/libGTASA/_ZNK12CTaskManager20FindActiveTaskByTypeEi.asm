; =========================================================
; Game Engine Function: _ZNK12CTaskManager20FindActiveTaskByTypeEi
; Address            : 0x533AB0 - 0x533C00
; =========================================================

533AB0:  PUSH            {R4-R7,LR}
533AB2:  ADD             R7, SP, #0xC
533AB4:  PUSH.W          {R8}
533AB8:  MOV             R8, R0
533ABA:  MOV             R4, R1
533ABC:  LDR.W           R5, [R8]
533AC0:  CMP             R5, #0
533AC2:  ITT EQ
533AC4:  LDREQ.W         R5, [R8,#4]
533AC8:  CMPEQ           R5, #0
533ACA:  BEQ.W           loc_533BE2
533ACE:  LDR             R0, [R5]
533AD0:  LDR             R1, [R0,#0x14]
533AD2:  MOV             R0, R5
533AD4:  BLX             R1
533AD6:  LDR             R1, [R5]
533AD8:  CMP             R0, R4
533ADA:  MOV             R6, R5
533ADC:  MOV             R0, R5
533ADE:  LDR             R1, [R1,#0xC]
533AE0:  IT NE
533AE2:  MOVNE           R6, #0
533AE4:  BLX             R1
533AE6:  MOV             R5, R0
533AE8:  CBNZ            R6, loc_533AEE
533AEA:  CMP             R5, #0
533AEC:  BNE             loc_533ACE
533AEE:  CMP             R6, #0
533AF0:  BNE             loc_533BDA
533AF2:  LDR.W           R5, [R8,#0x14]
533AF6:  MOVS            R6, #0
533AF8:  CBZ             R5, loc_533B1A
533AFA:  LDR             R0, [R5]
533AFC:  LDR             R1, [R0,#0x14]
533AFE:  MOV             R0, R5
533B00:  BLX             R1
533B02:  LDR             R1, [R5]
533B04:  CMP             R0, R4
533B06:  MOV.W           R6, #0
533B0A:  MOV             R0, R5
533B0C:  LDR             R1, [R1,#0xC]
533B0E:  IT EQ
533B10:  MOVEQ           R6, R5
533B12:  BLX             R1
533B14:  MOV             R5, R0
533B16:  CMP             R6, #0
533B18:  BEQ             loc_533AF8
533B1A:  CMP             R6, #0
533B1C:  BNE             loc_533B42
533B1E:  LDR.W           R5, [R8,#0x18]
533B22:  CBZ             R5, loc_533B42
533B24:  LDR             R0, [R5]
533B26:  LDR             R1, [R0,#0x14]
533B28:  MOV             R0, R5
533B2A:  BLX             R1
533B2C:  LDR             R1, [R5]
533B2E:  CMP             R0, R4
533B30:  MOV             R6, R5
533B32:  MOV             R0, R5
533B34:  LDR             R1, [R1,#0xC]
533B36:  IT NE
533B38:  MOVNE           R6, #0
533B3A:  BLX             R1
533B3C:  MOV             R5, R0
533B3E:  CMP             R6, #0
533B40:  BEQ             loc_533B22
533B42:  CBNZ            R6, loc_533B68
533B44:  LDR.W           R5, [R8,#0x1C]
533B48:  CBZ             R5, loc_533B68
533B4A:  LDR             R0, [R5]
533B4C:  LDR             R1, [R0,#0x14]
533B4E:  MOV             R0, R5
533B50:  BLX             R1
533B52:  LDR             R1, [R5]
533B54:  CMP             R0, R4
533B56:  MOV             R6, R5
533B58:  MOV             R0, R5
533B5A:  LDR             R1, [R1,#0xC]
533B5C:  IT NE
533B5E:  MOVNE           R6, #0
533B60:  BLX             R1
533B62:  MOV             R5, R0
533B64:  CMP             R6, #0
533B66:  BEQ             loc_533B48
533B68:  CBNZ            R6, loc_533B8E
533B6A:  LDR.W           R5, [R8,#0x20]
533B6E:  CBZ             R5, loc_533B8E
533B70:  LDR             R0, [R5]
533B72:  LDR             R1, [R0,#0x14]
533B74:  MOV             R0, R5
533B76:  BLX             R1
533B78:  LDR             R1, [R5]
533B7A:  CMP             R0, R4
533B7C:  MOV             R6, R5
533B7E:  MOV             R0, R5
533B80:  LDR             R1, [R1,#0xC]
533B82:  IT NE
533B84:  MOVNE           R6, #0
533B86:  BLX             R1
533B88:  MOV             R5, R0
533B8A:  CMP             R6, #0
533B8C:  BEQ             loc_533B6E
533B8E:  CBNZ            R6, loc_533BB4
533B90:  LDR.W           R5, [R8,#0x24]
533B94:  CBZ             R5, loc_533BB4
533B96:  LDR             R0, [R5]
533B98:  LDR             R1, [R0,#0x14]
533B9A:  MOV             R0, R5
533B9C:  BLX             R1
533B9E:  LDR             R1, [R5]
533BA0:  CMP             R0, R4
533BA2:  MOV             R6, R5
533BA4:  MOV             R0, R5
533BA6:  LDR             R1, [R1,#0xC]
533BA8:  IT NE
533BAA:  MOVNE           R6, #0
533BAC:  BLX             R1
533BAE:  MOV             R5, R0
533BB0:  CMP             R6, #0
533BB2:  BEQ             loc_533B94
533BB4:  CBNZ            R6, loc_533BDA
533BB6:  LDR.W           R5, [R8,#0x28]
533BBA:  CBZ             R5, loc_533BDA
533BBC:  LDR             R0, [R5]
533BBE:  LDR             R1, [R0,#0x14]
533BC0:  MOV             R0, R5
533BC2:  BLX             R1
533BC4:  LDR             R1, [R5]
533BC6:  CMP             R0, R4
533BC8:  MOV             R6, R5
533BCA:  MOV             R0, R5
533BCC:  LDR             R1, [R1,#0xC]
533BCE:  IT NE
533BD0:  MOVNE           R6, #0
533BD2:  BLX             R1
533BD4:  MOV             R5, R0
533BD6:  CMP             R6, #0
533BD8:  BEQ             loc_533BBA
533BDA:  MOV             R0, R6
533BDC:  POP.W           {R8}
533BE0:  POP             {R4-R7,PC}
533BE2:  LDR.W           R5, [R8,#8]
533BE6:  CMP             R5, #0
533BE8:  ITT EQ
533BEA:  LDREQ.W         R5, [R8,#0xC]
533BEE:  CMPEQ           R5, #0
533BF0:  BNE.W           loc_533ACE
533BF4:  LDR.W           R5, [R8,#0x10]
533BF8:  CMP             R5, #0
533BFA:  BNE.W           loc_533ACE
533BFE:  B               loc_533AF2
