; =========================================================
; Game Engine Function: _Z28RwTexDictionaryRemoveTextureP9RwTexture
; Address            : 0x1DB996 - 0x1DB9B0
; =========================================================

1DB996:  LDR             R1, [R0,#4]
1DB998:  CMP             R1, #0
1DB99A:  ITTTT NE
1DB99C:  LDRDNE.W        R1, R2, [R0,#8]
1DB9A0:  MOVNE           R3, #0
1DB9A2:  STRNE           R3, [R0,#4]
1DB9A4:  STRNE           R1, [R2]
1DB9A6:  ITT NE
1DB9A8:  LDRDNE.W        R1, R2, [R0,#8]
1DB9AC:  STRNE           R2, [R1,#4]
1DB9AE:  BX              LR
