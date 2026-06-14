; =========================================================
; Game Engine Function: _ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector
; Address            : 0x306AF8 - 0x306B7C
; =========================================================

306AF8:  LDR             R2, [R0,#0x38]
306AFA:  CMP             R2, #0
306AFC:  IT EQ
306AFE:  MOVEQ           R2, R0
306B00:  LDRB.W          R3, [R2,#0x32]
306B04:  CMP             R3, #0
306B06:  IT EQ
306B08:  BXEQ            LR
306B0A:  VLDR            S0, [R0,#8]
306B0E:  VMOV.F32        S10, #0.5
306B12:  VLDR            S4, [R0,#0x10]
306B16:  VLDR            S2, [R0,#0xC]
306B1A:  VLDR            S6, [R0,#0x14]
306B1E:  VADD.F32        S0, S0, S4
306B22:  VLDR            S8, [R0,#0x18]
306B26:  VADD.F32        S2, S2, S6
306B2A:  VLDR            S4, [R1]
306B2E:  VLDR            S6, [R1,#4]
306B32:  VMUL.F32        S0, S0, S10
306B36:  VMUL.F32        S2, S2, S10
306B3A:  VLDR            S10, [R1,#8]
306B3E:  VADD.F32        S8, S8, S10
306B42:  VADD.F32        S0, S4, S0
306B46:  VADD.F32        S2, S2, S6
306B4A:  VSTR            S0, [R1]
306B4E:  VSTR            S2, [R1,#4]
306B52:  VSTR            S8, [R1,#8]
306B56:  VLDR            S4, [R2,#0x20]
306B5A:  VLDR            S6, [R2,#0x24]
306B5E:  VLDR            S10, [R2,#0x28]
306B62:  VSUB.F32        S0, S0, S4
306B66:  VSUB.F32        S2, S2, S6
306B6A:  VSUB.F32        S4, S8, S10
306B6E:  VSTR            S0, [R1]
306B72:  VSTR            S2, [R1,#4]
306B76:  VSTR            S4, [R1,#8]
306B7A:  BX              LR
