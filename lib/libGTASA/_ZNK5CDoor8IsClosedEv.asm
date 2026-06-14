; =========================================================
; Game Engine Function: _ZNK5CDoor8IsClosedEv
; Address            : 0x56F2A0 - 0x56F2B8
; =========================================================

56F2A0:  VLDR            S0, [R0,#4]
56F2A4:  VLDR            S2, [R0,#0xC]
56F2A8:  MOVS            R0, #0
56F2AA:  VCMP.F32        S2, S0
56F2AE:  VMRS            APSR_nzcv, FPSCR
56F2B2:  IT EQ
56F2B4:  MOVEQ           R0, #1
56F2B6:  BX              LR
