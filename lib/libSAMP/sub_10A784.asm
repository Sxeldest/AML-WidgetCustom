; =========================================================
; Game Engine Function: sub_10A784
; Address            : 0x10A784 - 0x10A7B4
; =========================================================

10A784:  VMOV            S0, R0
10A788:  VCMP.F32        S0, #0.0
10A78C:  VMRS            APSR_nzcv, FPSCR
10A790:  BPL             loc_10A798
10A792:  VLDR            S0, =0.0
10A796:  B               loc_10A7AA
10A798:  VLDR            S2, =100.0
10A79C:  VCMP.F32        S0, S2
10A7A0:  VMRS            APSR_nzcv, FPSCR
10A7A4:  IT GT
10A7A6:  VMOVGT.F32      S0, S2
10A7AA:  LDR             R0, =(dword_238E84 - 0x10A7B0)
10A7AC:  ADD             R0, PC; dword_238E84
10A7AE:  VSTR            S0, [R0]
10A7B2:  BX              LR
