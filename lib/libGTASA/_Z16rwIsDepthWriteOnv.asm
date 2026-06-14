; =========================================================
; Game Engine Function: _Z16rwIsDepthWriteOnv
; Address            : 0x1AED70 - 0x1AED7E
; =========================================================

1AED70:  LDR             R0, =(dword_6B3208 - 0x1AED76)
1AED72:  ADD             R0, PC; dword_6B3208
1AED74:  LDR             R0, [R0,#(dword_6B3228 - 0x6B3208)]
1AED76:  CMP             R0, #0
1AED78:  IT NE
1AED7A:  MOVNE           R0, #1
1AED7C:  BX              LR
