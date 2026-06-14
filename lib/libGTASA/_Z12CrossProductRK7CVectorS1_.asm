; =========================================================
; Game Engine Function: _Z12CrossProductRK7CVectorS1_
; Address            : 0x450874 - 0x4508BE
; =========================================================

450874:  VLDR            S0, [R2]
450878:  VLDR            S2, [R2,#4]
45087C:  VLDR            S10, [R1,#8]
450880:  VLDR            S4, [R2,#8]
450884:  VLDR            S8, [R1,#4]
450888:  VMUL.F32        S12, S10, S2
45088C:  VLDR            S6, [R1]
450890:  VMUL.F32        S14, S8, S4
450894:  VMUL.F32        S8, S8, S0
450898:  VMUL.F32        S2, S6, S2
45089C:  VMUL.F32        S4, S6, S4
4508A0:  VMUL.F32        S0, S10, S0
4508A4:  VSUB.F32        S12, S14, S12
4508A8:  VSUB.F32        S2, S2, S8
4508AC:  VSUB.F32        S0, S0, S4
4508B0:  VSTR            S12, [R0]
4508B4:  VSTR            S0, [R0,#4]
4508B8:  VSTR            S2, [R0,#8]
4508BC:  BX              LR
