; =========================================================
; Game Engine Function: _ZN12CFireManager18GetNumFiresInRangeEP7CVectorf
; Address            : 0x3F34FC - 0x3F3548
; =========================================================

3F34FC:  VMOV            S0, R2
3F3500:  MOVS            R3, #0
3F3502:  MOV.W           R12, #0
3F3506:  B               loc_3F3514
3F3508:  ADDS            R3, #0x28 ; '('
3F350A:  CMP.W           R3, #0x960
3F350E:  ITT EQ
3F3510:  MOVEQ           R0, R12
3F3512:  BXEQ            LR
3F3514:  LDRB            R2, [R0,R3]
3F3516:  AND.W           R2, R2, #3
3F351A:  CMP             R2, #1
3F351C:  BNE             loc_3F3508
3F351E:  ADDS            R2, R0, R3
3F3520:  VLDR            D16, [R1]
3F3524:  VLDR            D17, [R2,#4]
3F3528:  VSUB.F32        D16, D17, D16
3F352C:  VMUL.F32        D1, D16, D16
3F3530:  VADD.F32        S2, S2, S3
3F3534:  VSQRT.F32       S2, S2
3F3538:  VCMPE.F32       S2, S0
3F353C:  VMRS            APSR_nzcv, FPSCR
3F3540:  IT LE
3F3542:  ADDLE.W         R12, R12, #1
3F3546:  B               loc_3F3508
