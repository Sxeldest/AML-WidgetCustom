; =========================================================
; Game Engine Function: sub_108700
; Address            : 0x108700 - 0x108724
; =========================================================

108700:  VMOV            S0, R1
108704:  VMOV            S2, R0
108708:  VCMP.F32        S2, S0
10870C:  VSUB.F32        S4, S2, S0
108710:  VMRS            APSR_nzcv, FPSCR
108714:  VSUB.F32        S6, S0, S2
108718:  IT LT
10871A:  VMOVLT.F32      S4, S6
10871E:  VMOV            R0, S4
108722:  BX              LR
