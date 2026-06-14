; =========================================================
; Game Engine Function: _Z16rwIsAlphaBlendOnv
; Address            : 0x1AED84 - 0x1AED92
; =========================================================

1AED84:  LDR             R0, =(dword_6B3208 - 0x1AED8A)
1AED86:  ADD             R0, PC; dword_6B3208
1AED88:  LDR             R0, [R0,#(dword_6B3234 - 0x6B3208)]
1AED8A:  CMP             R0, #0
1AED8C:  IT NE
1AED8E:  MOVNE           R0, #1
1AED90:  BX              LR
