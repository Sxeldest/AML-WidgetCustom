; =========================================================
; Game Engine Function: _ZN8CRange3D9IsInRangeE7CVector
; Address            : 0x40E6A6 - 0x40E70E
; =========================================================

40E6A6:  VMOV            S0, R1
40E6AA:  VLDR            S2, [R0]
40E6AE:  VCMPE.F32       S2, S0
40E6B2:  VMRS            APSR_nzcv, FPSCR
40E6B6:  BGE             loc_40E70A
40E6B8:  VLDR            S2, [R0,#0xC]
40E6BC:  VCMPE.F32       S2, S0
40E6C0:  VMRS            APSR_nzcv, FPSCR
40E6C4:  BLE             loc_40E70A
40E6C6:  VMOV            S0, R2
40E6CA:  VLDR            S2, [R0,#4]
40E6CE:  VCMPE.F32       S2, S0
40E6D2:  VMRS            APSR_nzcv, FPSCR
40E6D6:  BGE             loc_40E70A
40E6D8:  VLDR            S2, [R0,#0x10]
40E6DC:  VCMPE.F32       S2, S0
40E6E0:  VMRS            APSR_nzcv, FPSCR
40E6E4:  BLE             loc_40E70A
40E6E6:  VMOV            S0, R3
40E6EA:  VLDR            S2, [R0,#8]
40E6EE:  VCMPE.F32       S2, S0
40E6F2:  VMRS            APSR_nzcv, FPSCR
40E6F6:  BGE             loc_40E70A
40E6F8:  VLDR            S2, [R0,#0x14]
40E6FC:  VCMPE.F32       S2, S0
40E700:  VMRS            APSR_nzcv, FPSCR
40E704:  ITT GT
40E706:  MOVGT           R0, #1
40E708:  BXGT            LR
40E70A:  MOVS            R0, #0
40E70C:  BX              LR
