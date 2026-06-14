; =========================================================
; Game Engine Function: _ZNK10CTrainDoor11IsFullyOpenEv
; Address            : 0x56F33E - 0x56F388
; =========================================================

56F33E:  VLDR            S0, [R0]
56F342:  VLDR            S2, [R0,#4]
56F346:  VABS.F32        S6, S0
56F34A:  VLDR            S4, [R0,#0xC]
56F34E:  VABS.F32        S8, S2
56F352:  MOVS            R0, #0
56F354:  VMOV.F64        D17, #-0.5
56F358:  VCMPE.F32       S8, S6
56F35C:  VMRS            APSR_nzcv, FPSCR
56F360:  IT GT
56F362:  VMOVGT.F32      S0, S2
56F366:  VABS.F32        S0, S0
56F36A:  VCVT.F64.F32    D16, S0
56F36E:  VABS.F32        S0, S4
56F372:  VADD.F64        D16, D16, D17
56F376:  VCVT.F64.F32    D17, S0
56F37A:  VCMPE.F64       D16, D17
56F37E:  VMRS            APSR_nzcv, FPSCR
56F382:  IT LE
56F384:  MOVLE           R0, #1
56F386:  BX              LR
