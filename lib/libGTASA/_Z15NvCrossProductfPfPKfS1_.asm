; =========================================================
; Game Engine Function: _Z15NvCrossProductfPfPKfS1_
; Address            : 0x277324 - 0x27736E
; =========================================================

277324:  VLDR            S0, [R1]
277328:  VLDR            S10, [R2,#8]
27732C:  VLDR            S2, [R1,#4]
277330:  VLDR            S4, [R1,#8]
277334:  VMUL.F32        S12, S10, S0
277338:  VLDR            S6, [R2]
27733C:  VMUL.F32        S10, S2, S10
277340:  VLDR            S8, [R2,#4]
277344:  VMUL.F32        S14, S4, S6
277348:  VMUL.F32        S4, S4, S8
27734C:  VMUL.F32        S2, S2, S6
277350:  VMUL.F32        S0, S8, S0
277354:  VSUB.F32        S6, S14, S12
277358:  VSUB.F32        S4, S10, S4
27735C:  VSUB.F32        S0, S0, S2
277360:  VSTR            S4, [R0]
277364:  VSTR            S6, [R0,#4]
277368:  VSTR            S0, [R0,#8]
27736C:  BX              LR
