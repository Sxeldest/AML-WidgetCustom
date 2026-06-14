; =========================================================
; Game Engine Function: _ZN12CWidgetWager14SetWidgetValueEf
; Address            : 0x2C9738 - 0x2C9754
; =========================================================

2C9738:  VMOV.F32        S0, #1.0
2C973C:  VMOV            S2, R1
2C9740:  MOVS            R1, #0
2C9742:  VCMP.F32        S2, S0
2C9746:  VMRS            APSR_nzcv, FPSCR
2C974A:  IT EQ
2C974C:  MOVEQ           R1, #1
2C974E:  STRB.W          R1, [R0,#0x540]
2C9752:  BX              LR
