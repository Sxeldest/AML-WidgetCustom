; =========================================================
; Game Engine Function: _Z32_rpMaterialListFindMaterialIndexPK14RpMaterialListPK10RpMaterial
; Address            : 0x217990 - 0x2179AC
; =========================================================

217990:  LDR             R2, [R0,#4]
217992:  SUBS            R3, R2, #1
217994:  MOV             R2, R3
217996:  ADDS            R3, R2, #1
217998:  CMP             R3, #1
21799A:  BLT             loc_2179A8
21799C:  LDR             R3, [R0]
21799E:  LDR.W           R12, [R3,R2,LSL#2]
2179A2:  SUBS            R3, R2, #1
2179A4:  CMP             R12, R1
2179A6:  BNE             loc_217994
2179A8:  MOV             R0, R2
2179AA:  BX              LR
