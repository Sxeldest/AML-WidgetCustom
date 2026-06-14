; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility18ResolveProbabilityEf
; Address            : 0x3933A0 - 0x3933F2
; =========================================================

3933A0:  PUSH            {R7,LR}
3933A2:  MOV             R7, SP
3933A4:  VPUSH           {D8}
3933A8:  VMOV.F32        S0, #1.0
3933AC:  VMOV            S16, R0
3933B0:  VCMPE.F32       S16, S0
3933B4:  VMRS            APSR_nzcv, FPSCR
3933B8:  ITTT GE
3933BA:  MOVGE           R0, #1
3933BC:  VPOPGE          {D8}
3933C0:  POPGE           {R7,PC}
3933C2:  BLX             rand
3933C6:  VMOV            S0, R0
3933CA:  VLDR            S2, =4.6566e-10
3933CE:  MOVS            R0, #0
3933D0:  VCVT.F32.S32    S0, S0
3933D4:  VMUL.F32        S0, S0, S2
3933D8:  VLDR            S2, =0.0
3933DC:  VADD.F32        S0, S0, S2
3933E0:  VCMPE.F32       S0, S16
3933E4:  VMRS            APSR_nzcv, FPSCR
3933E8:  IT LT
3933EA:  MOVLT           R0, #1
3933EC:  VPOP            {D8}
3933F0:  POP             {R7,PC}
