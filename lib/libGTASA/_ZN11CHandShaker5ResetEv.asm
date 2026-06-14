; =========================================================
; Game Engine Function: _ZN11CHandShaker5ResetEv
; Address            : 0x3E291C - 0x3E299C
; =========================================================

3E291C:  PUSH            {R4,R6,R7,LR}
3E291E:  ADD             R7, SP, #8
3E2920:  VPUSH           {D8-D12}
3E2924:  MOV             R4, R0
3E2926:  MOVS            R0, #0
3E2928:  VLDR            S16, [R4,#0x18]
3E292C:  STRD.W          R0, R0, [R4]
3E2930:  STR             R0, [R4,#8]
3E2932:  BLX             rand
3E2936:  VMOV            S0, R0
3E293A:  VLDR            S18, [R4,#0x1C]
3E293E:  VCVT.F32.S32    S20, S0
3E2942:  BLX             rand
3E2946:  VMOV            S0, R0
3E294A:  VLDR            S22, [R4,#0x20]
3E294E:  VCVT.F32.S32    S24, S0
3E2952:  BLX             rand
3E2956:  VMOV            S0, R0
3E295A:  VLDR            S2, =4.6566e-10
3E295E:  VCVT.F32.S32    S0, S0
3E2962:  VMUL.F32        S4, S20, S2
3E2966:  VMUL.F32        S6, S24, S2
3E296A:  VMUL.F32        S0, S0, S2
3E296E:  VMUL.F32        S2, S16, S4
3E2972:  VMUL.F32        S4, S18, S6
3E2976:  VLDR            S6, =0.0
3E297A:  VMUL.F32        S0, S22, S0
3E297E:  VADD.F32        S2, S2, S6
3E2982:  VADD.F32        S4, S4, S6
3E2986:  VADD.F32        S0, S0, S6
3E298A:  VSTR            S2, [R4,#0x24]
3E298E:  VSTR            S4, [R4,#0x28]
3E2992:  VSTR            S0, [R4,#0x2C]
3E2996:  VPOP            {D8-D12}
3E299A:  POP             {R4,R6,R7,PC}
