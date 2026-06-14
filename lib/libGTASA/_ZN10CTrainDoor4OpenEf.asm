; =========================================================
; Game Engine Function: _ZN10CTrainDoor4OpenEf
; Address            : 0x56F3D8 - 0x56F41A
; =========================================================

56F3D8:  VLDR            S0, [R0]
56F3DC:  VMOV.F32        S8, #1.0
56F3E0:  VLDR            S2, [R0,#4]
56F3E4:  VABS.F32        S4, S0
56F3E8:  VABS.F32        S6, S2
56F3EC:  VCMPE.F32       S6, S4
56F3F0:  VMRS            APSR_nzcv, FPSCR
56F3F4:  IT GT
56F3F6:  VMOVGT.F32      S0, S2
56F3FA:  VMOV            S2, R1
56F3FE:  LDR             R1, [R0,#0xC]
56F400:  VCMPE.F32       S2, S8
56F404:  STR             R1, [R0,#0x10]
56F406:  VMRS            APSR_nzcv, FPSCR
56F40A:  ITEE LT
56F40C:  VMULLT.F32      S0, S0, S2
56F410:  MOVGE           R1, #1
56F412:  STRBGE          R1, [R0,#9]
56F414:  VSTR            S0, [R0,#0xC]
56F418:  BX              LR
