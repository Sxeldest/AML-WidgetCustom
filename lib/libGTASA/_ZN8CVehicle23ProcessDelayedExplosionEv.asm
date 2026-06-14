; =========================================================
; Game Engine Function: _ZN8CVehicle23ProcessDelayedExplosionEv
; Address            : 0x584278 - 0x5842BE
; =========================================================

584278:  LDRH.W          R1, [R0,#0x4EE]
58427C:  CMP             R1, #0
58427E:  IT EQ
584280:  BXEQ            LR
584282:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58428C)
584284:  VLDR            S0, =16.667
584288:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58428A:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
58428C:  VLDR            S2, [R2]
584290:  VMUL.F32        S0, S2, S0
584294:  VCVT.U32.F32    S0, S0
584298:  VMOV            R2, S0
58429C:  SUBS            R1, R1, R2
58429E:  MOVW            R2, #0xFFFF
5842A2:  IT LS
5842A4:  MOVLS           R1, #0
5842A6:  TST             R1, R2
5842A8:  STRH.W          R1, [R0,#0x4EE]
5842AC:  BEQ             loc_5842B0
5842AE:  BX              LR
5842B0:  LDR             R2, [R0]
5842B2:  LDR.W           R1, [R0,#0x4F0]
5842B6:  LDR.W           R3, [R2,#0xA8]
5842BA:  MOVS            R2, #0
5842BC:  BX              R3
