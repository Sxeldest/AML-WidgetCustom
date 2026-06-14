; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntity13CalcMoveRatioEP4CPed
; Address            : 0x51839C - 0x518468
; =========================================================

51839C:  VLDR            S0, =0.04
5183A0:  VLDR            S2, [R0,#0x50]
5183A4:  VCMPE.F32       S2, S0
5183A8:  VMRS            APSR_nzcv, FPSCR
5183AC:  BGE             loc_5183B4
5183AE:  VLDR            S0, =0.0
5183B2:  B               loc_518410
5183B4:  VMOV.F32        S0, #25.0
5183B8:  VCMPE.F32       S2, S0
5183BC:  VMRS            APSR_nzcv, FPSCR
5183C0:  BLE             loc_5183C8
5183C2:  VMOV.F32        S0, #1.0
5183C6:  B               loc_518410
5183C8:  VSQRT.F32       S0, S2
5183CC:  VMOV.F32        S4, #1.0
5183D0:  VCMPE.F32       S2, S4
5183D4:  VMRS            APSR_nzcv, FPSCR
5183D8:  BGE             loc_5183F4
5183DA:  VLDR            S2, =-0.2
5183DE:  VMOV.F32        S4, #1.25
5183E2:  VADD.F32        S0, S0, S2
5183E6:  VMOV.F32        S2, #0.5
5183EA:  VMUL.F32        S0, S0, S4
5183EE:  VMUL.F32        S0, S0, S2
5183F2:  B               loc_518410
5183F4:  VMOV.F32        S2, #-1.0
5183F8:  VMOV.F32        S4, #0.25
5183FC:  VADD.F32        S0, S0, S2
518400:  VMOV.F32        S2, #0.5
518404:  VMUL.F32        S0, S0, S4
518408:  VMUL.F32        S0, S0, S2
51840C:  VADD.F32        S0, S0, S2
518410:  VSQRT.F32       S0, S0
518414:  VMOV.F32        S2, #3.0
518418:  VLDR            S6, =0.2
51841C:  VMOV.F32        S4, #2.0
518420:  VMUL.F32        S0, S0, S2
518424:  VCMPE.F32       S0, S4
518428:  VMRS            APSR_nzcv, FPSCR
51842C:  VMOV.F32        S2, S0
518430:  IT GT
518432:  VMOVGT.F32      S2, S4
518436:  LDRB            R1, [R0,#0x1C]
518438:  CMP             R1, #0
51843A:  IT EQ
51843C:  VMOVEQ.F32      S0, S2
518440:  VLDR            S2, [R0,#0x3C]
518444:  VSUB.F32        S4, S0, S2
518448:  VADD.F32        S2, S2, S6
51844C:  VCMPE.F32       S4, S6
518450:  VMRS            APSR_nzcv, FPSCR
518454:  VMOV.F32        S4, S0
518458:  IT GT
51845A:  VMOVGT.F32      S4, S2
51845E:  VSTR            S4, [R0,#0x3C]
518462:  VSTR            S0, [R0,#0x40]
518466:  BX              LR
