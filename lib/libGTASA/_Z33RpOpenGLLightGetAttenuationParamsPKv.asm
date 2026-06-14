; =========================================================
; Game Engine Function: _Z33RpOpenGLLightGetAttenuationParamsPKv
; Address            : 0x222750 - 0x222766
; =========================================================

222750:  LDR             R2, =(dword_6BD6FC - 0x222756)
222752:  ADD             R2, PC; dword_6BD6FC
222754:  LDR             R2, [R2]
222756:  ADD             R1, R2
222758:  VLDR            D16, [R1,#4]
22275C:  LDR             R1, [R1,#0xC]
22275E:  STR             R1, [R0,#8]
222760:  VSTR            D16, [R0]
222764:  BX              LR
