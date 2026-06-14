; =========================================================
; Game Engine Function: _Z34RpAnimBlendClumpPauseAllAnimationsP7RpClump
; Address            : 0x390C10 - 0x390C34
; =========================================================

390C10:  LDR             R1, =(ClumpOffset_ptr - 0x390C16)
390C12:  ADD             R1, PC; ClumpOffset_ptr
390C14:  LDR             R1, [R1]; ClumpOffset
390C16:  LDR             R1, [R1]
390C18:  LDR             R0, [R0,R1]
390C1A:  LDR             R0, [R0]
390C1C:  CMP             R0, #0
390C1E:  IT EQ
390C20:  BXEQ            LR
390C22:  LDR             R2, [R0]
390C24:  LDRH            R1, [R0,#0x2A]
390C26:  CMP             R2, #0
390C28:  BIC.W           R1, R1, #1
390C2C:  STRH            R1, [R0,#0x2A]
390C2E:  MOV             R0, R2
390C30:  BNE             loc_390C22
390C32:  BX              LR
