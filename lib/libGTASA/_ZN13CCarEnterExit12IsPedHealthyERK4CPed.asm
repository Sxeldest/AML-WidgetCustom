; =========================================================
; Game Engine Function: _ZN13CCarEnterExit12IsPedHealthyERK4CPed
; Address            : 0x5087A2 - 0x5087BA
; =========================================================

5087A2:  ADDW            R0, R0, #0x544
5087A6:  VLDR            S0, [R0]
5087AA:  MOVS            R0, #0
5087AC:  VCMPE.F32       S0, #0.0
5087B0:  VMRS            APSR_nzcv, FPSCR
5087B4:  IT GT
5087B6:  MOVGT           R0, #1
5087B8:  BX              LR
