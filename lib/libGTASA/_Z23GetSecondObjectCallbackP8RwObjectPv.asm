; =========================================================
; Game Engine Function: _Z23GetSecondObjectCallbackP8RwObjectPv
; Address            : 0x5D0D70 - 0x5D0D7C
; =========================================================

5D0D70:  LDR             R2, [R1]
5D0D72:  STR             R0, [R1]
5D0D74:  CMP             R2, #0
5D0D76:  IT NE
5D0D78:  MOVNE           R0, #0
5D0D7A:  BX              LR
