; =========================================================
; Game Engine Function: _ZNK5CDategtERKS_
; Address            : 0x4D3A76 - 0x4D3AB8
; =========================================================

4D3A76:  LDR             R2, [R1,#0x14]
4D3A78:  LDR             R3, [R0,#0x14]
4D3A7A:  CMP             R3, R2
4D3A7C:  BHI             loc_4D3AB0
4D3A7E:  BNE             loc_4D3AB4
4D3A80:  LDR             R2, [R1,#0x10]
4D3A82:  LDR             R3, [R0,#0x10]
4D3A84:  CMP             R3, R2
4D3A86:  BHI             loc_4D3AB0
4D3A88:  BNE             loc_4D3AB4
4D3A8A:  LDR             R2, [R1,#0xC]
4D3A8C:  LDR             R3, [R0,#0xC]
4D3A8E:  CMP             R3, R2
4D3A90:  BHI             loc_4D3AB0
4D3A92:  BNE             loc_4D3AB4
4D3A94:  LDR             R2, [R1,#8]
4D3A96:  LDR             R3, [R0,#8]
4D3A98:  CMP             R3, R2
4D3A9A:  BHI             loc_4D3AB0
4D3A9C:  BNE             loc_4D3AB4
4D3A9E:  LDR             R2, [R1,#4]
4D3AA0:  LDR             R3, [R0,#4]
4D3AA2:  CMP             R3, R2
4D3AA4:  BHI             loc_4D3AB0
4D3AA6:  BNE             loc_4D3AB4
4D3AA8:  LDR             R1, [R1]
4D3AAA:  LDR             R0, [R0]
4D3AAC:  CMP             R0, R1
4D3AAE:  BLS             loc_4D3AB4
4D3AB0:  MOVS            R0, #1
4D3AB2:  BX              LR
4D3AB4:  MOVS            R0, #0
4D3AB6:  BX              LR
