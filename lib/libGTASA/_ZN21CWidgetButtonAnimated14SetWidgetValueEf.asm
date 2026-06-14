; =========================================================
; Game Engine Function: _ZN21CWidgetButtonAnimated14SetWidgetValueEf
; Address            : 0x2B4C1E - 0x2B4C42
; =========================================================

2B4C1E:  VMOV.F32        S0, #1.0
2B4C22:  LDR.W           R2, [R0,#0x90]
2B4C26:  VMOV            S2, R1
2B4C2A:  BIC.W           R1, R2, #4
2B4C2E:  VCMP.F32        S2, S0
2B4C32:  VMRS            APSR_nzcv, FPSCR
2B4C36:  IT EQ
2B4C38:  ORREQ.W         R1, R2, #4
2B4C3C:  STR.W           R1, [R0,#0x90]
2B4C40:  BX              LR
