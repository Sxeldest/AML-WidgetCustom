; =========================================================
; Game Engine Function: _Z22RpHAnimHierarchyDetachP16RpHAnimHierarchy
; Address            : 0x1C2B18 - 0x1C2B3A
; =========================================================

1C2B18:  LDR             R1, [R0,#4]
1C2B1A:  CMP             R1, #1
1C2B1C:  IT LT
1C2B1E:  BXLT            LR
1C2B20:  MOV.W           R12, #0
1C2B24:  MOVS            R2, #0xC
1C2B26:  MOVS            R3, #0
1C2B28:  LDR             R1, [R0,#0x10]
1C2B2A:  ADDS            R3, #1
1C2B2C:  STR.W           R12, [R1,R2]
1C2B30:  ADDS            R2, #0x10
1C2B32:  LDR             R1, [R0,#4]
1C2B34:  CMP             R3, R1
1C2B36:  BLT             loc_1C2B28
1C2B38:  BX              LR
