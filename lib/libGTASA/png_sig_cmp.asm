; =========================================================
; Game Engine Function: png_sig_cmp
; Address            : 0x1ED994 - 0x1ED9C0
; =========================================================

1ED994:  CMP             R2, #8
1ED996:  BLS             loc_1ED9A0
1ED998:  MOVS            R2, #8
1ED99A:  CMP             R1, #7
1ED99C:  BHI             loc_1ED9A6
1ED99E:  B               loc_1ED9AC
1ED9A0:  CBZ             R2, loc_1ED9A6
1ED9A2:  CMP             R1, #7
1ED9A4:  BLS             loc_1ED9AC
1ED9A6:  MOV.W           R0, #0xFFFFFFFF
1ED9AA:  BX              LR
1ED9AC:  ADDS            R3, R2, R1
1ED9AE:  ADD             R0, R1; void *
1ED9B0:  CMP             R3, #8
1ED9B2:  ADR             R3, sub_1ED9C0
1ED9B4:  IT HI
1ED9B6:  RSBHI.W         R2, R1, #8; size_t
1ED9BA:  ADD             R1, R3; void *
1ED9BC:  B.W             j_memcmp
