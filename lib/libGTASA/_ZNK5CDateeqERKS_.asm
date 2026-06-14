; =========================================================
; Game Engine Function: _ZNK5CDateeqERKS_
; Address            : 0x4D3AFA - 0x4D3B32
; =========================================================

4D3AFA:  LDR             R2, [R1,#0x14]
4D3AFC:  LDR             R3, [R0,#0x14]
4D3AFE:  CMP             R3, R2
4D3B00:  BNE             loc_4D3B2E
4D3B02:  LDR             R2, [R1,#0x10]
4D3B04:  LDR             R3, [R0,#0x10]
4D3B06:  CMP             R3, R2
4D3B08:  BNE             loc_4D3B2E
4D3B0A:  LDR             R2, [R1,#0xC]
4D3B0C:  LDR             R3, [R0,#0xC]
4D3B0E:  CMP             R3, R2
4D3B10:  BNE             loc_4D3B2E
4D3B12:  LDR             R2, [R1,#8]
4D3B14:  LDR             R3, [R0,#8]
4D3B16:  CMP             R3, R2
4D3B18:  BNE             loc_4D3B2E
4D3B1A:  LDR             R2, [R1,#4]
4D3B1C:  LDR             R3, [R0,#4]
4D3B1E:  CMP             R3, R2
4D3B20:  BNE             loc_4D3B2E
4D3B22:  LDR             R1, [R1]
4D3B24:  LDR             R0, [R0]
4D3B26:  CMP             R0, R1
4D3B28:  ITT EQ
4D3B2A:  MOVEQ           R0, #1
4D3B2C:  BXEQ            LR
4D3B2E:  MOVS            R0, #0
4D3B30:  BX              LR
