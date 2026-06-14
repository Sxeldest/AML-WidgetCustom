; =========================================================
; Game Engine Function: _ZN4CBox6RecalcEv
; Address            : 0x2D95E2 - 0x2D9632
; =========================================================

2D95E2:  VLDR            S0, [R0]
2D95E6:  VLDR            S2, [R0,#0xC]
2D95EA:  VCMPE.F32       S0, S2
2D95EE:  VMRS            APSR_nzcv, FPSCR
2D95F2:  ITT GT
2D95F4:  VSTRGT          S0, [R0,#0xC]
2D95F8:  VSTRGT          S2, [R0]
2D95FC:  VLDR            S0, [R0,#4]
2D9600:  VLDR            S2, [R0,#0x10]
2D9604:  VCMPE.F32       S0, S2
2D9608:  VMRS            APSR_nzcv, FPSCR
2D960C:  ITT GT
2D960E:  VSTRGT          S0, [R0,#0x10]
2D9612:  VSTRGT          S2, [R0,#4]
2D9616:  VLDR            S0, [R0,#8]
2D961A:  VLDR            S2, [R0,#0x14]
2D961E:  VCMPE.F32       S0, S2
2D9622:  VMRS            APSR_nzcv, FPSCR
2D9626:  ITT GT
2D9628:  VSTRGT          S0, [R0,#0x14]
2D962C:  VSTRGT          S2, [R0,#8]
2D9630:  BX              LR
