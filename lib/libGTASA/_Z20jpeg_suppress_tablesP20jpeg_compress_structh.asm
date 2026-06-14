; =========================================================
; Game Engine Function: _Z20jpeg_suppress_tablesP20jpeg_compress_structh
; Address            : 0x475E66 - 0x475EE0
; =========================================================

475E66:  LDR             R2, [R0,#0x48]
475E68:  CMP             R2, #0
475E6A:  IT NE
475E6C:  STRBNE.W        R1, [R2,#0x80]
475E70:  LDR             R2, [R0,#0x4C]
475E72:  CMP             R2, #0
475E74:  IT NE
475E76:  STRBNE.W        R1, [R2,#0x80]
475E7A:  LDR             R2, [R0,#0x50]
475E7C:  CMP             R2, #0
475E7E:  IT NE
475E80:  STRBNE.W        R1, [R2,#0x80]
475E84:  LDR             R2, [R0,#0x54]
475E86:  CMP             R2, #0
475E88:  IT NE
475E8A:  STRBNE.W        R1, [R2,#0x80]
475E8E:  LDR             R2, [R0,#0x58]
475E90:  CMP             R2, #0
475E92:  IT NE
475E94:  STRBNE.W        R1, [R2,#0x111]
475E98:  LDR             R2, [R0,#0x68]
475E9A:  CMP             R2, #0
475E9C:  IT NE
475E9E:  STRBNE.W        R1, [R2,#0x111]
475EA2:  LDR             R2, [R0,#0x5C]
475EA4:  CMP             R2, #0
475EA6:  IT NE
475EA8:  STRBNE.W        R1, [R2,#0x111]
475EAC:  LDR             R2, [R0,#0x6C]
475EAE:  CMP             R2, #0
475EB0:  IT NE
475EB2:  STRBNE.W        R1, [R2,#0x111]
475EB6:  LDR             R2, [R0,#0x60]
475EB8:  CMP             R2, #0
475EBA:  IT NE
475EBC:  STRBNE.W        R1, [R2,#0x111]
475EC0:  LDR             R2, [R0,#0x70]
475EC2:  CMP             R2, #0
475EC4:  IT NE
475EC6:  STRBNE.W        R1, [R2,#0x111]
475ECA:  LDR             R2, [R0,#0x64]
475ECC:  CMP             R2, #0
475ECE:  IT NE
475ED0:  STRBNE.W        R1, [R2,#0x111]
475ED4:  LDR             R0, [R0,#0x74]
475ED6:  CMP             R0, #0
475ED8:  IT NE
475EDA:  STRBNE.W        R1, [R0,#0x111]
475EDE:  BX              LR
