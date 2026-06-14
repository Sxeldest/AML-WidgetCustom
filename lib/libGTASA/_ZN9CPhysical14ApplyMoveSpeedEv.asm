; =========================================================
; Game Engine Function: _ZN9CPhysical14ApplyMoveSpeedEv
; Address            : 0x3FD81C - 0x3FD880
; =========================================================

3FD81C:  LDRH.W          R1, [R0,#0x44]
3FD820:  MOVW            R2, #0x2020
3FD824:  TST             R1, R2
3FD826:  ITTTT NE
3FD828:  MOVNE           R1, #0
3FD82A:  STRDNE.W        R1, R1, [R0,#0x48]
3FD82E:  STRNE           R1, [R0,#0x50]
3FD830:  BXNE            LR
3FD832:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FD83C)
3FD834:  VLDR            S0, [R0,#0x48]
3FD838:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FD83A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3FD83C:  VLDR            S2, [R1]
3FD840:  LDR             R1, [R0,#0x14]
3FD842:  VMUL.F32        S0, S0, S2
3FD846:  VLDR            S4, [R1,#0x30]
3FD84A:  VADD.F32        S0, S0, S4
3FD84E:  VSTR            S0, [R1,#0x30]
3FD852:  VLDR            S0, [R0,#0x4C]
3FD856:  LDR             R1, [R0,#0x14]
3FD858:  VMUL.F32        S0, S0, S2
3FD85C:  VLDR            S4, [R1,#0x34]
3FD860:  VADD.F32        S0, S0, S4
3FD864:  VSTR            S0, [R1,#0x34]
3FD868:  VLDR            S0, [R0,#0x50]
3FD86C:  LDR             R0, [R0,#0x14]
3FD86E:  VMUL.F32        S0, S0, S2
3FD872:  VLDR            S2, [R0,#0x38]
3FD876:  VADD.F32        S0, S0, S2
3FD87A:  VSTR            S0, [R0,#0x38]
3FD87E:  BX              LR
