; =========================================================
; Game Engine Function: _Z22RpMaterialUVAnimExistsPK10RpMaterial
; Address            : 0x1CAEE4 - 0x1CAF24
; =========================================================

1CAEE4:  LDR             R1, =(RpUVAnimMaterialGlobals_ptr - 0x1CAEEA)
1CAEE6:  ADD             R1, PC; RpUVAnimMaterialGlobals_ptr
1CAEE8:  LDR             R1, [R1]; RpUVAnimMaterialGlobals
1CAEEA:  LDR             R1, [R1]
1CAEEC:  ADD             R0, R1
1CAEEE:  LDR             R1, [R0,#8]
1CAEF0:  CBNZ            R1, loc_1CAEFE
1CAEF2:  LDR             R1, [R0,#0xC]
1CAEF4:  CMP             R1, #0
1CAEF6:  ITT EQ
1CAEF8:  LDREQ           R1, [R0,#0x10]
1CAEFA:  CMPEQ           R1, #0
1CAEFC:  BEQ             loc_1CAF02
1CAEFE:  MOVS            R0, #1
1CAF00:  BX              LR
1CAF02:  LDR             R1, [R0,#0x14]
1CAF04:  CMP             R1, #0
1CAF06:  ITT EQ
1CAF08:  LDREQ           R1, [R0,#0x18]
1CAF0A:  CMPEQ           R1, #0
1CAF0C:  BNE             loc_1CAEFE
1CAF0E:  LDR             R1, [R0,#0x1C]
1CAF10:  CMP             R1, #0
1CAF12:  ITT EQ
1CAF14:  LDREQ           R1, [R0,#0x20]
1CAF16:  CMPEQ           R1, #0
1CAF18:  BNE             loc_1CAEFE
1CAF1A:  LDR             R0, [R0,#0x24]
1CAF1C:  CMP             R0, #0
1CAF1E:  IT NE
1CAF20:  MOVNE           R0, #1
1CAF22:  BX              LR
