; =========================================================
; Game Engine Function: sub_16A884
; Address            : 0x16A884 - 0x16A8F0
; =========================================================

16A884:  LDR             R1, =(dword_381B58 - 0x16A896)
16A886:  MOVW            R3, #0x19AC
16A88A:  VLDR            S0, [R0,#0x10]
16A88E:  MOVW            R2, #0x18C4
16A892:  ADD             R1, PC; dword_381B58
16A894:  VLDR            S2, [R0,#0x44]
16A898:  LDR             R1, [R1]
16A89A:  ADD.W           R12, R1, R2
16A89E:  VLDR            S4, [R1,#0x98]
16A8A2:  VMUL.F32        S0, S4, S0
16A8A6:  VMOV.F32        S4, #1.0
16A8AA:  VMUL.F32        S0, S0, S2
16A8AE:  VCMP.F32        S0, S4
16A8B2:  VMRS            APSR_nzcv, FPSCR
16A8B6:  IT LS
16A8B8:  VMOVLS.F32      S0, S4
16A8BC:  LDR             R3, [R1,R3]
16A8BE:  STR             R0, [R1,R2]
16A8C0:  MOVW            R2, #0x18D0
16A8C4:  VSTR            S0, [R12,#8]
16A8C8:  CMP             R3, #0
16A8CA:  ITTE NE
16A8CC:  VLDRNE          S2, [R3,#0x274]
16A8D0:  VMULNE.F32      S0, S0, S2
16A8D4:  VLDREQ          S0, =0.0
16A8D8:  ADD             R1, R2
16A8DA:  LDR             R2, [R0,#0x38]
16A8DC:  VSTR            S0, [R12,#4]
16A8E0:  LDRD.W          R3, R2, [R2,#0x2C]
16A8E4:  VSTR            S0, [R1,#0xC]
16A8E8:  STRD.W          R3, R2, [R1]
16A8EC:  STR             R0, [R1,#8]
16A8EE:  BX              LR
