; =========================================================
; Game Engine Function: sub_108728
; Address            : 0x108728 - 0x10879E
; =========================================================

108728:  VLDR            S4, =360.0
10872C:  VMOV            S2, R0
108730:  VLDR            S0, =0.0
108734:  VCMP.F32        S2, S4
108738:  VMRS            APSR_nzcv, FPSCR
10873C:  BGT             loc_108798
10873E:  VCMP.F32        S2, #0.0
108742:  VMRS            APSR_nzcv, FPSCR
108746:  BMI             loc_108798
108748:  VLDR            S0, =180.0
10874C:  VCMP.F32        S2, S0
108750:  VMRS            APSR_nzcv, FPSCR
108754:  BLE             loc_108780
108756:  VLDR            S0, =-180.0
10875A:  VLDR            D17, =3.14159265
10875E:  VADD.F32        S0, S2, S0
108762:  VLDR            D18, =-180.0
108766:  VCVT.F64.F32    D16, S0
10876A:  VMUL.F64        D16, D16, D17
10876E:  VDIV.F64        D16, D16, D18
108772:  VADD.F64        D16, D16, D17
108776:  VCVT.F32.F64    S0, D16
10877A:  VNEG.F32        S0, S0
10877E:  B               loc_108798
108780:  VCVT.F64.F32    D16, S2
108784:  VLDR            D17, =3.14159265
108788:  VMUL.F64        D16, D16, D17
10878C:  VLDR            D17, =180.0
108790:  VDIV.F64        D16, D16, D17
108794:  VCVT.F32.F64    S0, D16
108798:  VMOV            R0, S0
10879C:  BX              LR
