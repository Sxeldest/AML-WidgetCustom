; =========================================================
; Game Engine Function: sub_AEA50
; Address            : 0xAEA50 - 0xAEAD2
; =========================================================

AEA50:  MOVS            R1, #0
AEA52:  STR             R2, [R0]
AEA54:  STR             R1, [R0,#8]
AEA56:  CMP             R3, #0
AEA58:  ITT NE
AEA5A:  STRDNE.W        R1, R1, [R0,#0x18]
AEA5E:  STRNE           R1, [R0,#0x20]
AEA60:  VLDR            S10, =0.0
AEA64:  VLDR            S4, [R0,#0x18]
AEA68:  VMOV            S0, R2
AEA6C:  VLDR            S2, =-0.0
AEA70:  VADD.F32        S4, S4, S10
AEA74:  VLDR            S6, [R0,#0x1C]
AEA78:  VMOV.F32        S12, S2
AEA7C:  VLDR            S8, [R0,#0x20]
AEA80:  VCMP.F32        S6, #0.0
AEA84:  VMRS            APSR_nzcv, FPSCR
AEA88:  IT GT
AEA8A:  VMOVGT.F32      S12, S0
AEA8E:  VCMP.F32        S8, #0.0
AEA92:  VMRS            APSR_nzcv, FPSCR
AEA96:  IT GT
AEA98:  VMOVGT.F32      S2, S0
AEA9C:  STR             R1, [R0,#0xC]
AEA9E:  VADD.F32        S4, S4, S12
AEAA2:  STRD.W          R1, R1, [R0,#0x18]
AEAA6:  STR             R1, [R0,#0x20]
AEAA8:  VADD.F32        S0, S4, S6
AEAAC:  VADD.F32        S0, S0, S2
AEAB0:  VCVT.S32.F32    S2, S4
AEAB4:  VCVT.S32.F32    S4, S0
AEAB8:  VCVT.F32.S32    S2, S2
AEABC:  VADD.F32        S0, S0, S8
AEAC0:  VCVT.F32.S32    S4, S4
AEAC4:  VSTR            S2, [R0,#0x10]
AEAC8:  VSTR            S0, [R0,#4]
AEACC:  VSTR            S4, [R0,#0x14]
AEAD0:  BX              LR
