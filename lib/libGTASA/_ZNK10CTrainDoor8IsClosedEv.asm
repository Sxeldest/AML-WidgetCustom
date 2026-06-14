; =========================================================
; Game Engine Function: _ZNK10CTrainDoor8IsClosedEv
; Address            : 0x56F2E8 - 0x56F31A
; =========================================================

56F2E8:  VLDR            S0, [R0]
56F2EC:  VLDR            S2, [R0,#4]
56F2F0:  VABS.F32        S6, S0
56F2F4:  VLDR            S4, [R0,#0xC]
56F2F8:  VABS.F32        S8, S2
56F2FC:  MOVS            R0, #0
56F2FE:  VCMPE.F32       S8, S6
56F302:  VMRS            APSR_nzcv, FPSCR
56F306:  IT GT
56F308:  VMOVGT.F32      S2, S0
56F30C:  VCMP.F32        S4, S2
56F310:  VMRS            APSR_nzcv, FPSCR
56F314:  IT EQ
56F316:  MOVEQ           R0, #1
56F318:  BX              LR
