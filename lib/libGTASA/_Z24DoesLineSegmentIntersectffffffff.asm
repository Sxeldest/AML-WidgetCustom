; =========================================================
; Game Engine Function: _Z24DoesLineSegmentIntersectffffffff
; Address            : 0x36236C - 0x362410
; =========================================================

36236C:  VMOV            S2, R0
362370:  VLDR            S0, [SP,#arg_8]
362374:  VMOV            S10, R2
362378:  VLDR            S12, [SP,#arg_0]
36237C:  VLDR            S8, [SP,#arg_C]
362380:  VMOV            S4, R1
362384:  VMOV            S6, R3
362388:  VLDR            S14, [SP,#arg_4]
36238C:  VSUB.F32        S1, S8, S4
362390:  MOVS            R0, #0
362392:  VSUB.F32        S7, S10, S2
362396:  VSUB.F32        S3, S0, S2
36239A:  VSUB.F32        S5, S6, S4
36239E:  VSUB.F32        S9, S12, S2
3623A2:  VSUB.F32        S11, S14, S4
3623A6:  VMUL.F32        S1, S7, S1
3623AA:  VMUL.F32        S3, S5, S3
3623AE:  VMUL.F32        S5, S5, S9
3623B2:  VMUL.F32        S7, S7, S11
3623B6:  VSUB.F32        S1, S1, S3
3623BA:  VSUB.F32        S3, S7, S5
3623BE:  VMUL.F32        S1, S3, S1
3623C2:  VCMPE.F32       S1, #0.0
3623C6:  VMRS            APSR_nzcv, FPSCR
3623CA:  IT GT
3623CC:  BXGT            LR
3623CE:  VSUB.F32        S8, S8, S14
3623D2:  VSUB.F32        S10, S10, S12
3623D6:  VSUB.F32        S2, S2, S12
3623DA:  VSUB.F32        S0, S0, S12
3623DE:  VSUB.F32        S6, S6, S14
3623E2:  VSUB.F32        S4, S4, S14
3623E6:  VMUL.F32        S10, S10, S8
3623EA:  VMUL.F32        S2, S2, S8
3623EE:  VMUL.F32        S6, S6, S0
3623F2:  VMUL.F32        S0, S4, S0
3623F6:  VSUB.F32        S4, S6, S10
3623FA:  VSUB.F32        S0, S0, S2
3623FE:  VMUL.F32        S0, S0, S4
362402:  VCMPE.F32       S0, #0.0
362406:  VMRS            APSR_nzcv, FPSCR
36240A:  IT LE
36240C:  MOVLE           R0, #1
36240E:  BX              LR
