; =========================================================
; Game Engine Function: _ZN7CCamera19GetScreenFadeStatusEv
; Address            : 0x3DB9B4 - 0x3DB9DC
; =========================================================

3DB9B4:  ADDW            R0, R0, #0xB84
3DB9B8:  VLDR            S0, =255.0
3DB9BC:  VLDR            S2, [R0]
3DB9C0:  MOVS            R0, #1
3DB9C2:  VCMP.F32        S2, S0
3DB9C6:  VMRS            APSR_nzcv, FPSCR
3DB9CA:  VCMP.F32        S2, #0.0
3DB9CE:  IT EQ
3DB9D0:  MOVEQ           R0, #2
3DB9D2:  VMRS            APSR_nzcv, FPSCR
3DB9D6:  IT EQ
3DB9D8:  MOVEQ           R0, #0
3DB9DA:  BX              LR
