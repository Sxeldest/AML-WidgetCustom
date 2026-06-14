; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe23ShouldLoadSunbatheAnimsEv
; Address            : 0x4ED584 - 0x4ED5E4
; =========================================================

4ED584:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4ED590)
4ED586:  MOV.W           R2, #0x194
4ED58A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4ED592)
4ED58C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4ED58E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4ED590:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4ED592:  LDR             R1, [R1]; CWorld::Players ...
4ED594:  LDR             R0, [R0]; CWorld::PlayerInFocus
4ED596:  SMULBB.W        R0, R0, R2
4ED59A:  LDR             R1, [R1,R0]
4ED59C:  LDR.W           R0, [R1,#0x590]
4ED5A0:  CMP             R0, #0
4ED5A2:  ITT NE
4ED5A4:  LDRNE.W         R1, [R1,#0x484]
4ED5A8:  ANDSNE.W        R1, R1, #0x100
4ED5AC:  BEQ             loc_4ED5E0
4ED5AE:  VLDR            S0, [R0,#0x48]
4ED5B2:  VLDR            S2, [R0,#0x4C]
4ED5B6:  VMUL.F32        S0, S0, S0
4ED5BA:  VLDR            S4, [R0,#0x50]
4ED5BE:  VMUL.F32        S2, S2, S2
4ED5C2:  VMUL.F32        S4, S4, S4
4ED5C6:  VADD.F32        S0, S0, S2
4ED5CA:  VLDR            S2, =0.04
4ED5CE:  VADD.F32        S0, S0, S4
4ED5D2:  VCMPE.F32       S0, S2
4ED5D6:  VMRS            APSR_nzcv, FPSCR
4ED5DA:  ITT GT
4ED5DC:  MOVGT           R0, #0
4ED5DE:  BXGT            LR
4ED5E0:  MOVS            R0, #1
4ED5E2:  BX              LR
