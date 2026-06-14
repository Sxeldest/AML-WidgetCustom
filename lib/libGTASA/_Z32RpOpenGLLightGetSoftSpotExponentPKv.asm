; =========================================================
; Game Engine Function: _Z32RpOpenGLLightGetSoftSpotExponentPKv
; Address            : 0x22278C - 0x2227AE
; =========================================================

22278C:  LDRB            R1, [R0,#1]
22278E:  CMP             R1, #0x82
222790:  ITTT NE
222792:  VLDRNE          S0, =0.0
222796:  VMOVNE          R0, S0
22279A:  BXNE            LR
22279C:  LDR             R1, =(dword_6BD6FC - 0x2227A2)
22279E:  ADD             R1, PC; dword_6BD6FC
2227A0:  LDR             R1, [R1]
2227A2:  ADD             R0, R1
2227A4:  VLDR            S0, [R0]
2227A8:  VMOV            R0, S0
2227AC:  BX              LR
