; =========================================================
; Game Engine Function: _Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi
; Address            : 0x1C2C90 - 0x1C2CB4
; =========================================================

1C2C90:  LDR.W           R12, [R0,#4]
1C2C94:  CMP.W           R12, #1
1C2C98:  BLT             loc_1C2CAE
1C2C9A:  LDR             R3, [R0,#0x10]
1C2C9C:  MOVS            R0, #0
1C2C9E:  LDR             R2, [R3]
1C2CA0:  CMP             R2, R1
1C2CA2:  IT EQ
1C2CA4:  BXEQ            LR
1C2CA6:  ADDS            R0, #1
1C2CA8:  ADDS            R3, #0x10
1C2CAA:  CMP             R0, R12
1C2CAC:  BLT             loc_1C2C9E
1C2CAE:  MOV.W           R0, #0xFFFFFFFF
1C2CB2:  BX              LR
