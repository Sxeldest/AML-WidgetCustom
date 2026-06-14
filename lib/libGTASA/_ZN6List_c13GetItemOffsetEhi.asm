; =========================================================
; Game Engine Function: _ZN6List_c13GetItemOffsetEhi
; Address            : 0x36CDDA - 0x36CE0A
; =========================================================

36CDDA:  CBZ             R1, loc_36CDF0
36CDDC:  LDR             R0, [R0]
36CDDE:  CMP             R2, #1
36CDE0:  BLT             locret_36CE04
36CDE2:  MOVS            R1, #0
36CDE4:  CBZ             R0, loc_36CE06
36CDE6:  LDR             R0, [R0,#4]
36CDE8:  ADDS            R1, #1
36CDEA:  CMP             R1, R2
36CDEC:  BLT             loc_36CDE4
36CDEE:  B               locret_36CE04
36CDF0:  LDR             R0, [R0,#4]
36CDF2:  CMP             R2, #1
36CDF4:  IT LT
36CDF6:  BXLT            LR
36CDF8:  MOVS            R1, #0
36CDFA:  CBZ             R0, loc_36CE06
36CDFC:  LDR             R0, [R0]
36CDFE:  ADDS            R1, #1
36CE00:  CMP             R1, R2
36CE02:  BLT             loc_36CDFA
36CE04:  BX              LR
36CE06:  MOVS            R0, #0
36CE08:  BX              LR
