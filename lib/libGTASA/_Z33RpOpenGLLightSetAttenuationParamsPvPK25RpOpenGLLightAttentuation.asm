; =========================================================
; Game Engine Function: _Z33RpOpenGLLightSetAttenuationParamsPvPK25RpOpenGLLightAttentuation
; Address            : 0x222734 - 0x22274A
; =========================================================

222734:  LDR             R2, =(dword_6BD6FC - 0x22273E)
222736:  VLDR            D16, [R1]
22273A:  ADD             R2, PC; dword_6BD6FC
22273C:  LDR             R1, [R1,#8]
22273E:  LDR             R2, [R2]
222740:  ADD             R0, R2
222742:  STR             R1, [R0,#0xC]
222744:  VSTR            D16, [R0,#4]
222748:  BX              LR
