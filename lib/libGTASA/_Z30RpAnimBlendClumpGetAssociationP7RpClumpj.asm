; =========================================================
; Game Engine Function: _Z30RpAnimBlendClumpGetAssociationP7RpClumpj
; Address            : 0x390A00 - 0x390A22
; =========================================================

390A00:  LDR             R2, =(ClumpOffset_ptr - 0x390A06)
390A02:  ADD             R2, PC; ClumpOffset_ptr
390A04:  LDR             R2, [R2]; ClumpOffset
390A06:  LDR             R2, [R2]
390A08:  LDR             R0, [R0,R2]
390A0A:  LDR             R0, [R0]
390A0C:  CMP             R0, #0
390A0E:  ITT EQ
390A10:  MOVEQ           R0, #0
390A12:  BXEQ            LR
390A14:  LDRSH.W         R2, [R0,#0x28]
390A18:  CMP             R2, R1
390A1A:  ITT EQ
390A1C:  SUBEQ           R0, #4
390A1E:  BXEQ            LR
390A20:  B               loc_390A0A
