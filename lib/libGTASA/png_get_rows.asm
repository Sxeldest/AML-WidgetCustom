; =========================================================
; Game Engine Function: png_get_rows
; Address            : 0x1F31B6 - 0x1F31CA
; =========================================================

1F31B6:  MOV             R2, R0
1F31B8:  MOVS            R0, #0
1F31BA:  CMP             R2, #0
1F31BC:  IT EQ
1F31BE:  BXEQ            LR
1F31C0:  CMP             R1, #0
1F31C2:  IT NE
1F31C4:  LDRNE.W         R0, [R1,#0x114]
1F31C8:  BX              LR
