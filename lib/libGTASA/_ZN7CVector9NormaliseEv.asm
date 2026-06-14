; =========================================================
; Game Engine Function: _ZN7CVector9NormaliseEv
; Address            : 0x450B80 - 0x450BD8
; =========================================================

450B80:  VLDR            S0, [R0]
450B84:  VLDR            S4, [R0,#4]
450B88:  VMUL.F32        S8, S0, S0
450B8C:  VLDR            S2, [R0,#8]
450B90:  VMUL.F32        S6, S4, S4
450B94:  VMUL.F32        S10, S2, S2
450B98:  VADD.F32        S6, S8, S6
450B9C:  VADD.F32        S6, S6, S10
450BA0:  VCMPE.F32       S6, #0.0
450BA4:  VMRS            APSR_nzcv, FPSCR
450BA8:  ITTT LE
450BAA:  MOVLE.W         R1, #0x3F800000
450BAE:  STRLE           R1, [R0]
450BB0:  BXLE            LR
450BB2:  VSQRT.F32       S6, S6
450BB6:  VMOV.F32        S8, #1.0
450BBA:  VDIV.F32        S6, S8, S6
450BBE:  VMUL.F32        S0, S0, S6
450BC2:  VMUL.F32        S4, S6, S4
450BC6:  VMUL.F32        S2, S6, S2
450BCA:  VSTR            S0, [R0]
450BCE:  VSTR            S4, [R0,#4]
450BD2:  VSTR            S2, [R0,#8]
450BD6:  BX              LR
