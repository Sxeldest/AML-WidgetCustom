; =========================================================
; Game Engine Function: _ZNK10CTrainDoor22RetTranslationWhenOpenEv
; Address            : 0x56F388 - 0x56F3AC
; =========================================================

56F388:  VLDR            S0, [R0]
56F38C:  VLDR            S2, [R0,#4]
56F390:  VABS.F32        S4, S0
56F394:  VABS.F32        S6, S2
56F398:  VCMPE.F32       S6, S4
56F39C:  VMRS            APSR_nzcv, FPSCR
56F3A0:  IT GT
56F3A2:  VMOVGT.F32      S0, S2
56F3A6:  VMOV            R0, S0
56F3AA:  BX              LR
