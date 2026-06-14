; =========================================================
; Game Engine Function: _ZN8CRange2D9IsInRangeE9CVector2D
; Address            : 0x40E5D0 - 0x40E618
; =========================================================

40E5D0:  VMOV            S0, R1
40E5D4:  VLDR            S2, [R0]
40E5D8:  VCMPE.F32       S2, S0
40E5DC:  VMRS            APSR_nzcv, FPSCR
40E5E0:  BGE             loc_40E614
40E5E2:  VLDR            S2, [R0,#8]
40E5E6:  VCMPE.F32       S2, S0
40E5EA:  VMRS            APSR_nzcv, FPSCR
40E5EE:  BLE             loc_40E614
40E5F0:  VMOV            S0, R2
40E5F4:  VLDR            S2, [R0,#4]
40E5F8:  VCMPE.F32       S2, S0
40E5FC:  VMRS            APSR_nzcv, FPSCR
40E600:  BGE             loc_40E614
40E602:  VLDR            S2, [R0,#0xC]
40E606:  VCMPE.F32       S2, S0
40E60A:  VMRS            APSR_nzcv, FPSCR
40E60E:  ITT GT
40E610:  MOVGT           R0, #1
40E612:  BXGT            LR
40E614:  MOVS            R0, #0
40E616:  BX              LR
