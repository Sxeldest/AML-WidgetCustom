; =========================================================
; Game Engine Function: sub_1E71B0
; Address            : 0x1E71B0 - 0x1E71C4
; =========================================================

1E71B0:  UXTB            R1, R1
1E71B2:  LDRB            R2, [R0]
1E71B4:  CMP             R2, R1
1E71B6:  IT EQ
1E71B8:  BXEQ            LR
1E71BA:  ADDS            R0, #1
1E71BC:  CMP             R2, #0
1E71BE:  BNE             loc_1E71B2
1E71C0:  MOVS            R0, #0
1E71C2:  BX              LR
