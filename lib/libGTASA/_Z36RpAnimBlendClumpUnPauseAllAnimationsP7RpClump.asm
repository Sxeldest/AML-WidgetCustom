; =========================================================
; Game Engine Function: _Z36RpAnimBlendClumpUnPauseAllAnimationsP7RpClump
; Address            : 0x390C38 - 0x390C5C
; =========================================================

390C38:  LDR             R1, =(ClumpOffset_ptr - 0x390C3E)
390C3A:  ADD             R1, PC; ClumpOffset_ptr
390C3C:  LDR             R1, [R1]; ClumpOffset
390C3E:  LDR             R1, [R1]
390C40:  LDR             R0, [R0,R1]
390C42:  LDR             R0, [R0]
390C44:  CMP             R0, #0
390C46:  IT EQ
390C48:  BXEQ            LR
390C4A:  LDR             R2, [R0]
390C4C:  LDRH            R1, [R0,#0x2A]
390C4E:  CMP             R2, #0
390C50:  ORR.W           R1, R1, #1
390C54:  STRH            R1, [R0,#0x2A]
390C56:  MOV             R0, R2
390C58:  BNE             loc_390C4A
390C5A:  BX              LR
