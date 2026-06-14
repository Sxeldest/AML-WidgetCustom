; =========================================================
; Game Engine Function: _ZNK19CPedGroupMembership10IsFollowerEPK4CPed
; Address            : 0x4B2114 - 0x4B2150
; =========================================================

4B2114:  CMP             R1, #0
4B2116:  ITT EQ
4B2118:  MOVEQ           R0, #0
4B211A:  BXEQ            LR
4B211C:  LDR             R2, [R0,#4]
4B211E:  CMP             R2, R1
4B2120:  ITT NE
4B2122:  LDRNE           R2, [R0,#8]
4B2124:  CMPNE           R2, R1
4B2126:  BEQ             loc_4B214C
4B2128:  LDR             R2, [R0,#0xC]
4B212A:  CMP             R2, R1
4B212C:  ITT NE
4B212E:  LDRNE           R2, [R0,#0x10]
4B2130:  CMPNE           R2, R1
4B2132:  BEQ             loc_4B214C
4B2134:  LDR             R2, [R0,#0x14]
4B2136:  CMP             R2, R1
4B2138:  ITT NE
4B213A:  LDRNE           R2, [R0,#0x18]
4B213C:  CMPNE           R2, R1
4B213E:  BEQ             loc_4B214C
4B2140:  LDR             R2, [R0,#0x1C]
4B2142:  MOVS            R0, #0
4B2144:  CMP             R2, R1
4B2146:  IT EQ
4B2148:  MOVEQ           R0, #1
4B214A:  BX              LR
4B214C:  MOVS            R0, #1
4B214E:  BX              LR
