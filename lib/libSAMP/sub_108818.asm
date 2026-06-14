; =========================================================
; Game Engine Function: sub_108818
; Address            : 0x108818 - 0x108882
; =========================================================

108818:  VLDR            S0, =-360.0
10881C:  VMOV            S2, R1
108820:  VLDR            S4, =180.0
108824:  VADD.F32        S6, S2, S0
108828:  VLDR            S8, =-180.0
10882C:  VCMP.F32        S2, S4
108830:  VMRS            APSR_nzcv, FPSCR
108834:  IT GT
108836:  VMOVGT.F32      S2, S6
10883A:  VLDR            S6, =360.0
10883E:  VCMP.F32        S2, S8
108842:  VMRS            APSR_nzcv, FPSCR
108846:  VADD.F32        S10, S2, S6
10884A:  IT MI
10884C:  VMOVMI.F32      S2, S10
108850:  VMOV            S10, R0
108854:  VSUB.F32        S2, S2, S10
108858:  VCMP.F32        S2, S4
10885C:  VADD.F32        S0, S2, S0
108860:  VMRS            APSR_nzcv, FPSCR
108864:  IT GT
108866:  VMOVGT.F32      S2, S0
10886A:  VCMP.F32        S2, S8
10886E:  VADD.F32        S0, S2, S6
108872:  VMRS            APSR_nzcv, FPSCR
108876:  IT MI
108878:  VMOVMI.F32      S2, S0
10887C:  VMOV            R0, S2
108880:  BX              LR
