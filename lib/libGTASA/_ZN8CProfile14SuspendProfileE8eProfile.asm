; =========================================================
; Game Engine Function: _ZN8CProfile14SuspendProfileE8eProfile
; Address            : 0x40D6E4 - 0x40D720
; =========================================================

40D6E4:  LDR             R1, =(_ZN8CProfile14ms_afStartTimeE_ptr - 0x40D6EC)
40D6E6:  LDR             R2, =(_ZN8CProfile19ms_afCumulativeTimeE_ptr - 0x40D6F2)
40D6E8:  ADD             R1, PC; _ZN8CProfile14ms_afStartTimeE_ptr
40D6EA:  VLDR            S0, =0.0
40D6EE:  ADD             R2, PC; _ZN8CProfile19ms_afCumulativeTimeE_ptr
40D6F0:  LDR             R1, [R1]; CProfile::ms_afStartTime ...
40D6F2:  LDR             R2, [R2]; CProfile::ms_afCumulativeTime ...
40D6F4:  ADD.W           R1, R1, R0,LSL#2
40D6F8:  VLDR            S2, [R1]
40D6FC:  LDR             R1, =(_ZN8CProfile12ms_afEndTimeE_ptr - 0x40D706)
40D6FE:  VSUB.F32        S0, S0, S2
40D702:  ADD             R1, PC; _ZN8CProfile12ms_afEndTimeE_ptr
40D704:  LDR             R1, [R1]; CProfile::ms_afEndTime ...
40D706:  ADD.W           R1, R1, R0,LSL#2
40D70A:  ADD.W           R0, R2, R0,LSL#2
40D70E:  VLDR            S2, [R0]
40D712:  VSTR            S0, [R1]
40D716:  VADD.F32        S0, S0, S2
40D71A:  VSTR            S0, [R0]
40D71E:  BX              LR
