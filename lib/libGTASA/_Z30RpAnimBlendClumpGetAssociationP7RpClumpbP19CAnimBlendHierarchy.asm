; =========================================================
; Game Engine Function: _Z30RpAnimBlendClumpGetAssociationP7RpClumpbP19CAnimBlendHierarchy
; Address            : 0x390A28 - 0x390A48
; =========================================================

390A28:  LDR             R1, =(ClumpOffset_ptr - 0x390A2E)
390A2A:  ADD             R1, PC; ClumpOffset_ptr
390A2C:  LDR             R1, [R1]; ClumpOffset
390A2E:  LDR             R1, [R1]
390A30:  LDR             R0, [R0,R1]
390A32:  LDR             R0, [R0]
390A34:  CMP             R0, #0
390A36:  ITT EQ
390A38:  MOVEQ           R0, #0
390A3A:  BXEQ            LR
390A3C:  LDR             R1, [R0,#0x10]
390A3E:  CMP             R1, R2
390A40:  ITT EQ
390A42:  SUBEQ           R0, #4
390A44:  BXEQ            LR
390A46:  B               loc_390A32
