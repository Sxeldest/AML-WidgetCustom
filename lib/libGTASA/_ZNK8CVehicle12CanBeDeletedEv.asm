; =========================================================
; Game Engine Function: _ZNK8CVehicle12CanBeDeletedEv
; Address            : 0x582B12 - 0x582C2A
; =========================================================

582B12:  LDRB.W          R1, [R0,#0x489]
582B16:  CMP             R1, #0
582B18:  ITT EQ
582B1A:  LDRBEQ.W        R1, [R0,#0x48B]
582B1E:  CMPEQ           R1, #0
582B20:  BEQ             loc_582B26
582B22:  MOVS            R0, #0
582B24:  BX              LR
582B26:  LDR.W           R1, [R0,#0x464]
582B2A:  CBZ             R1, loc_582B40
582B2C:  LDRB.W          R2, [R1,#0x448]
582B30:  CMP             R2, #2
582B32:  BEQ             loc_582B22
582B34:  LDR.W           R1, [R1,#0x44C]
582B38:  CMP             R1, #0x37 ; '7'
582B3A:  IT NE
582B3C:  CMPNE           R1, #0x32 ; '2'
582B3E:  BNE             loc_582B22
582B40:  LDR.W           R1, [R0,#0x468]
582B44:  CBZ             R1, loc_582B5A
582B46:  LDRB.W          R2, [R1,#0x448]
582B4A:  CMP             R2, #2
582B4C:  BEQ             loc_582B22
582B4E:  LDR.W           R1, [R1,#0x44C]
582B52:  CMP             R1, #0x37 ; '7'
582B54:  IT NE
582B56:  CMPNE           R1, #0x32 ; '2'
582B58:  BNE             loc_582B22
582B5A:  LDR.W           R1, [R0,#0x46C]
582B5E:  CBZ             R1, loc_582B74
582B60:  LDRB.W          R2, [R1,#0x448]
582B64:  CMP             R2, #2
582B66:  BEQ             loc_582B22
582B68:  LDR.W           R1, [R1,#0x44C]
582B6C:  CMP             R1, #0x37 ; '7'
582B6E:  IT NE
582B70:  CMPNE           R1, #0x32 ; '2'
582B72:  BNE             loc_582B22
582B74:  LDR.W           R1, [R0,#0x470]
582B78:  CBZ             R1, loc_582B8E
582B7A:  LDRB.W          R2, [R1,#0x448]
582B7E:  CMP             R2, #2
582B80:  BEQ             loc_582B22
582B82:  LDR.W           R1, [R1,#0x44C]
582B86:  CMP             R1, #0x37 ; '7'
582B88:  IT NE
582B8A:  CMPNE           R1, #0x32 ; '2'
582B8C:  BNE             loc_582B22
582B8E:  LDR.W           R1, [R0,#0x474]
582B92:  CBZ             R1, loc_582BA8
582B94:  LDRB.W          R2, [R1,#0x448]
582B98:  CMP             R2, #2
582B9A:  BEQ             loc_582B22
582B9C:  LDR.W           R1, [R1,#0x44C]
582BA0:  CMP             R1, #0x37 ; '7'
582BA2:  IT NE
582BA4:  CMPNE           R1, #0x32 ; '2'
582BA6:  BNE             loc_582B22
582BA8:  LDR.W           R1, [R0,#0x478]
582BAC:  CBZ             R1, loc_582BC2
582BAE:  LDRB.W          R2, [R1,#0x448]
582BB2:  CMP             R2, #2
582BB4:  BEQ             loc_582B22
582BB6:  LDR.W           R1, [R1,#0x44C]
582BBA:  CMP             R1, #0x37 ; '7'
582BBC:  IT NE
582BBE:  CMPNE           R1, #0x32 ; '2'
582BC0:  BNE             loc_582B22
582BC2:  LDR.W           R1, [R0,#0x47C]
582BC6:  CBZ             R1, loc_582BDC
582BC8:  LDRB.W          R2, [R1,#0x448]
582BCC:  CMP             R2, #2
582BCE:  BEQ             loc_582B22
582BD0:  LDR.W           R1, [R1,#0x44C]
582BD4:  CMP             R1, #0x37 ; '7'
582BD6:  IT NE
582BD8:  CMPNE           R1, #0x32 ; '2'
582BDA:  BNE             loc_582B22
582BDC:  LDR.W           R1, [R0,#0x480]
582BE0:  CBZ             R1, loc_582BFA
582BE2:  LDRB.W          R2, [R1,#0x448]
582BE6:  CMP             R2, #2
582BE8:  BEQ.W           loc_582B22
582BEC:  LDR.W           R1, [R1,#0x44C]
582BF0:  CMP             R1, #0x37 ; '7'
582BF2:  IT NE
582BF4:  CMPNE           R1, #0x32 ; '2'
582BF6:  BNE.W           loc_582B22
582BFA:  LDR.W           R1, [R0,#0x484]
582BFE:  CBZ             R1, loc_582C18
582C00:  LDRB.W          R2, [R1,#0x448]
582C04:  CMP             R2, #2
582C06:  BEQ.W           loc_582B22
582C0A:  LDR.W           R1, [R1,#0x44C]
582C0E:  CMP             R1, #0x37 ; '7'
582C10:  IT NE
582C12:  CMPNE           R1, #0x32 ; '2'
582C14:  BNE.W           loc_582B22
582C18:  LDRB.W          R0, [R0,#0x4A8]
582C1C:  CMP             R0, #2
582C1E:  IT NE
582C20:  CMPNE           R0, #4
582C22:  BEQ.W           loc_582B22
582C26:  MOVS            R0, #1
582C28:  BX              LR
