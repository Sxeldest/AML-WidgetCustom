; =========================================================
; Game Engine Function: _Z30RpMatFXWorldSectorQueryEffectsP13RpWorldSector
; Address            : 0x1C6FB4 - 0x1C6FBE
; =========================================================

1C6FB4:  LDR             R1, =(dword_6B724C - 0x1C6FBA)
1C6FB6:  ADD             R1, PC; dword_6B724C
1C6FB8:  LDR             R1, [R1]
1C6FBA:  LDR             R0, [R0,R1]
1C6FBC:  BX              LR
