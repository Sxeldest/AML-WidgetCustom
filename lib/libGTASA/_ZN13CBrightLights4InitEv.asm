; =========================================================
; Game Engine Function: _ZN13CBrightLights4InitEv
; Address            : 0x5BFAF0 - 0x5BFAFC
; =========================================================

5BFAF0:  LDR             R0, =(_ZN13CBrightLights15NumBrightLightsE_ptr - 0x5BFAF8)
5BFAF2:  MOVS            R1, #0
5BFAF4:  ADD             R0, PC; _ZN13CBrightLights15NumBrightLightsE_ptr
5BFAF6:  LDR             R0, [R0]; CBrightLights::NumBrightLights ...
5BFAF8:  STR             R1, [R0]; CBrightLights::NumBrightLights
5BFAFA:  BX              LR
