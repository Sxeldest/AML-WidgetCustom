; =========================================================
; Game Engine Function: sub_165778
; Address            : 0x165778 - 0x165862
; =========================================================

165778:  VMOV.F32        S0, #1.0
16577C:  VLDR            S4, [R0,#4]
165780:  VLDR            S8, [R0,#0xC]
165784:  VLDR            S2, [R0]
165788:  VMOV.F32        S10, S4
16578C:  VLDR            S6, [R0,#8]
165790:  VMOV.F32        S12, S8
165794:  VMOV.F32        S14, S2
165798:  VMOV.F32        S1, S6
16579C:  VCMP.F32        S4, S0
1657A0:  VMRS            APSR_nzcv, FPSCR
1657A4:  VCMP.F32        S8, S0
1657A8:  IT GT
1657AA:  VMOVGT.F32      S10, S0
1657AE:  VMRS            APSR_nzcv, FPSCR
1657B2:  VCMP.F32        S2, S0
1657B6:  IT GT
1657B8:  VMOVGT.F32      S12, S0
1657BC:  VMRS            APSR_nzcv, FPSCR
1657C0:  VCMP.F32        S6, S0
1657C4:  IT GT
1657C6:  VMOVGT.F32      S14, S0
1657CA:  VMRS            APSR_nzcv, FPSCR
1657CE:  VCMP.F32        S4, #0.0
1657D2:  IT GT
1657D4:  VMOVGT.F32      S1, S0
1657D8:  VMOV.F32        S4, #0.5
1657DC:  VMRS            APSR_nzcv, FPSCR
1657E0:  VCMP.F32        S8, #0.0
1657E4:  VLDR            S0, =0.0
1657E8:  IT MI
1657EA:  VMOVMI.F32      S10, S0
1657EE:  VMRS            APSR_nzcv, FPSCR
1657F2:  VCMP.F32        S2, #0.0
1657F6:  IT MI
1657F8:  VMOVMI.F32      S12, S0
1657FC:  VMRS            APSR_nzcv, FPSCR
165800:  VCMP.F32        S6, #0.0
165804:  IT MI
165806:  VMOVMI.F32      S14, S0
16580A:  VMRS            APSR_nzcv, FPSCR
16580E:  IT MI
165810:  VMOVMI.F32      S1, S0
165814:  VLDR            S0, =255.0
165818:  VMOV.F32        S2, S4
16581C:  VMOV.F32        S6, S4
165820:  VMOV.F32        S8, S4
165824:  VMLA.F32        S4, S1, S0
165828:  VMLA.F32        S2, S10, S0
16582C:  VMLA.F32        S6, S12, S0
165830:  VMLA.F32        S8, S14, S0
165834:  VCVT.S32.F32    S4, S4
165838:  VCVT.S32.F32    S0, S2
16583C:  VCVT.S32.F32    S2, S6
165840:  VCVT.S32.F32    S6, S8
165844:  VMOV            R0, S0
165848:  VMOV            R1, S6
16584C:  ORR.W           R0, R1, R0,LSL#8
165850:  VMOV            R1, S4
165854:  ORR.W           R0, R0, R1,LSL#16
165858:  VMOV            R1, S2
16585C:  ORR.W           R0, R0, R1,LSL#24
165860:  BX              LR
