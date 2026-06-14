; =========================================================
; Game Engine Function: _Z32RpOpenGLLightSetSoftSpotExponentPvf
; Address            : 0x22276C - 0x222786
; =========================================================

22276C:  LDRB            R2, [R0,#1]
22276E:  CMP             R2, #0x82
222770:  IT NE
222772:  BXNE            LR
222774:  VMOV            S0, R1
222778:  LDR             R1, =(dword_6BD6FC - 0x22277E)
22277A:  ADD             R1, PC; dword_6BD6FC
22277C:  LDR             R1, [R1]
22277E:  ADD             R0, R1
222780:  VSTR            S0, [R0]
222784:  BX              LR
