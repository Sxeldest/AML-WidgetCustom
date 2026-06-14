; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode17GetEndTranslationER7CVectorf
; Address            : 0x38AED0 - 0x38AF36
; =========================================================

38AED0:  MOVS            R3, #0
38AED2:  VMOV            S0, R2
38AED6:  STRD.W          R3, R3, [R1]
38AEDA:  STR             R3, [R1,#8]
38AEDC:  LDR             R3, [R0,#0x14]
38AEDE:  LDRB.W          R2, [R3,#0x2E]
38AEE2:  VLDR            S2, [R3,#0x18]
38AEE6:  VMUL.F32        S0, S2, S0
38AEEA:  LSLS            R2, R2, #0x1B
38AEEC:  IT MI
38AEEE:  VMOVMI.F32      S0, S2
38AEF2:  VCMPE.F32       S0, #0.0
38AEF6:  VMRS            APSR_nzcv, FPSCR
38AEFA:  BLE             locret_38AF34
38AEFC:  LDR             R0, [R0,#0x10]
38AEFE:  LDRB            R2, [R0,#4]
38AF00:  LSLS            R2, R2, #0x1E
38AF02:  IT PL
38AF04:  BXPL            LR
38AF06:  LDRSH.W         R2, [R0,#6]
38AF0A:  LDR             R0, [R0,#8]
38AF0C:  ADD.W           R0, R0, R2,LSL#5
38AF10:  VLDR            S2, [R0,#-0xC]
38AF14:  VLDR            S4, [R0,#-8]
38AF18:  VLDR            S6, [R0,#-4]
38AF1C:  VMUL.F32        S2, S0, S2
38AF20:  VMUL.F32        S4, S0, S4
38AF24:  VMUL.F32        S0, S0, S6
38AF28:  VSTR            S2, [R1]
38AF2C:  VSTR            S4, [R1,#4]
38AF30:  VSTR            S0, [R1,#8]
38AF34:  BX              LR
