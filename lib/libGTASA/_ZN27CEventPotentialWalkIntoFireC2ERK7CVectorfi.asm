; =========================================================
; Game Engine Function: _ZN27CEventPotentialWalkIntoFireC2ERK7CVectorfi
; Address            : 0x377400 - 0x377478
; =========================================================

377400:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventPotentialWalkIntoFire::CEventPotentialWalkIntoFire(CVector const&, float, int)'
377402:  ADD             R7, SP, #8
377404:  VMOV.F32        S0, #2.0
377408:  MOV.W           LR, #0
37740C:  VMOV            S6, R2
377410:  STR.W           LR, [R0,#4]
377414:  VMOV.F32        S2, #1.0
377418:  MOV             LR, #0xC80100
377420:  LDR.W           R12, =(_ZTV27CEventPotentialWalkIntoFire_ptr - 0x377430)
377424:  STR.W           LR, [R0,#8]
377428:  ADR.W           LR, loc_377480
37742C:  ADD             R12, PC; _ZTV27CEventPotentialWalkIntoFire_ptr
37742E:  VLDR            S4, =1.05
377432:  MOVW            R4, #0xFFFF
377436:  VCMPE.F32       S6, S0
37743A:  LDR.W           R12, [R12]; `vtable for'CEventPotentialWalkIntoFire ...
37743E:  VMRS            APSR_nzcv, FPSCR
377442:  VCMPE.F32       S6, S2
377446:  IT LT
377448:  ADDLT.W         LR, LR, #4
37744C:  VMRS            APSR_nzcv, FPSCR
377450:  VLDR            S0, [LR]
377454:  STRH            R4, [R0,#0xC]
377456:  ADD.W           R4, R12, #8
37745A:  STR             R4, [R0]
37745C:  IT LT
37745E:  VMOVLT.F32      S0, S4
377462:  VLDR            D16, [R1]
377466:  LDR             R4, [R1,#8]
377468:  STRD.W          R4, R2, [R0,#0x18]
37746C:  STR             R3, [R0,#0x24]
37746E:  VSTR            D16, [R0,#0x10]
377472:  VSTR            S0, [R0,#0x20]
377476:  POP             {R4,R6,R7,PC}
