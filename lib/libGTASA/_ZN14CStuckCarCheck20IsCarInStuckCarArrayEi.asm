; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck20IsCarInStuckCarArrayEi
; Address            : 0x328E56 - 0x328ED8
; =========================================================

328E56:  LDR             R2, [R0]
328E58:  CMP             R2, R1
328E5A:  BEQ             loc_328EC6
328E5C:  LDR             R2, [R0,#0x24]
328E5E:  CMP             R2, R1
328E60:  ITT NE
328E62:  LDRNE           R2, [R0,#0x48]
328E64:  CMPNE           R2, R1
328E66:  BEQ             loc_328EC6
328E68:  LDR             R2, [R0,#0x6C]
328E6A:  CMP             R2, R1
328E6C:  ITT NE
328E6E:  LDRNE.W         R2, [R0,#0x90]
328E72:  CMPNE           R2, R1
328E74:  BEQ             loc_328EC6
328E76:  LDR.W           R2, [R0,#0xB4]
328E7A:  CMP             R2, R1
328E7C:  ITT NE
328E7E:  LDRNE.W         R2, [R0,#0xD8]
328E82:  CMPNE           R2, R1
328E84:  BEQ             loc_328EC6
328E86:  LDR.W           R2, [R0,#0xFC]
328E8A:  CMP             R2, R1
328E8C:  ITT NE
328E8E:  LDRNE.W         R2, [R0,#0x120]
328E92:  CMPNE           R2, R1
328E94:  BEQ             loc_328EC6
328E96:  LDR.W           R2, [R0,#0x144]
328E9A:  CMP             R2, R1
328E9C:  ITT NE
328E9E:  LDRNE.W         R2, [R0,#0x168]
328EA2:  CMPNE           R2, R1
328EA4:  BEQ             loc_328EC6
328EA6:  LDR.W           R2, [R0,#0x18C]
328EAA:  CMP             R2, R1
328EAC:  ITT NE
328EAE:  LDRNE.W         R2, [R0,#0x1B0]
328EB2:  CMPNE           R2, R1
328EB4:  BEQ             loc_328EC6
328EB6:  LDR.W           R2, [R0,#0x1D4]
328EBA:  CMP             R2, R1
328EBC:  ITT NE
328EBE:  LDRNE.W         R2, [R0,#0x1F8]
328EC2:  CMPNE           R2, R1
328EC4:  BNE             loc_328ECA
328EC6:  MOVS            R0, #1
328EC8:  BX              LR
328ECA:  LDR.W           R2, [R0,#0x21C]
328ECE:  MOVS            R0, #0
328ED0:  CMP             R2, R1
328ED2:  IT EQ
328ED4:  MOVEQ           R0, #1
328ED6:  BX              LR
