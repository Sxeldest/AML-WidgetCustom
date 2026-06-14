; =========================================================
; Game Engine Function: _ZNK10CTrainDoor24RetTranslationWhenClosedEv
; Address            : 0x56F31A - 0x56F33E
; =========================================================

56F31A:  VLDR            S0, [R0]
56F31E:  VLDR            S2, [R0,#4]
56F322:  VABS.F32        S4, S0
56F326:  VABS.F32        S6, S2
56F32A:  VCMPE.F32       S6, S4
56F32E:  VMRS            APSR_nzcv, FPSCR
56F332:  IT GT
56F334:  VMOVGT.F32      S2, S0
56F338:  VMOV            R0, S2
56F33C:  BX              LR
