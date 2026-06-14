; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f
; Address            : 0x3934B8 - 0x393552
; =========================================================

3934B8:  VMOV            S0, R0
3934BC:  SUBS            R0, R1, #1
3934BE:  ADD.W           R0, R2, R0,LSL#3
3934C2:  VLDR            S2, [R0]
3934C6:  VCMPE.F32       S2, S0
3934CA:  VMRS            APSR_nzcv, FPSCR
3934CE:  BGE             loc_3934DA
3934D0:  VLDR            S0, [R0,#4]
3934D4:  VMOV            R0, S0
3934D8:  BX              LR
3934DA:  VLDR            S2, [R2]
3934DE:  VCMPE.F32       S2, S0
3934E2:  VMRS            APSR_nzcv, FPSCR
3934E6:  ITTT GE
3934E8:  VLDRGE          S0, [R2,#4]
3934EC:  VMOVGE          R0, S0
3934F0:  BXGE            LR
3934F2:  MOV.W           R12, #0
3934F6:  CMP             R1, #1
3934F8:  BLT             loc_393524
3934FA:  VCMPE.F32       S2, S0
3934FE:  VMRS            APSR_nzcv, FPSCR
393502:  BGE             loc_393524
393504:  ADD.W           R3, R2, #8
393508:  MOVS            R0, #1
39350A:  VLDR            S2, [R3]
39350E:  MOV             R12, R0
393510:  CMP             R12, R1
393512:  ITTTT LT
393514:  ADDLT           R3, #8
393516:  ADDLT.W         R0, R12, #1
39351A:  VCMPELT.F32     S2, S0
39351E:  VMRSLT          APSR_nzcv, FPSCR
393522:  BLT             loc_39350A
393524:  ADD.W           R0, R2, R12,LSL#3
393528:  VLDR            S6, [R0,#-8]
39352C:  VLDR            S4, [R0,#4]
393530:  VSUB.F32        S2, S2, S6
393534:  VLDR            S8, [R0,#-4]
393538:  VSUB.F32        S0, S0, S6
39353C:  VDIV.F32        S0, S0, S2
393540:  VSUB.F32        S2, S4, S8
393544:  VMUL.F32        S0, S0, S2
393548:  VADD.F32        S0, S8, S0
39354C:  VMOV            R0, S0
393550:  BX              LR
