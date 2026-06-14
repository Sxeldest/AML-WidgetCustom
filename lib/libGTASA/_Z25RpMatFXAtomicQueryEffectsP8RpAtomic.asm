; =========================================================
; Game Engine Function: _Z25RpMatFXAtomicQueryEffectsP8RpAtomic
; Address            : 0x1C6F74 - 0x1C6F7E
; =========================================================

1C6F74:  LDR             R1, =(dword_6B7248 - 0x1C6F7A)
1C6F76:  ADD             R1, PC; dword_6B7248
1C6F78:  LDR             R1, [R1]
1C6F7A:  LDR             R0, [R0,R1]
1C6F7C:  BX              LR
