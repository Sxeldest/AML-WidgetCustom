; =========================================================
; Game Engine Function: _ZN9CPathFind21FindParkingNodeInAreaEffffff
; Address            : 0x31B43C - 0x31B59C
; =========================================================

31B43C:  PUSH            {R4-R7,LR}
31B43E:  ADD             R7, SP, #0xC
31B440:  PUSH.W          {R8-R10}
31B444:  LDR             R6, =(dword_7AF318 - 0x31B456)
31B446:  VMOV.F32        S9, #0.125
31B44A:  VMOV            S14, R3
31B44E:  VLDR            S6, [R7,#arg_C]
31B452:  ADD             R6, PC; dword_7AF318
31B454:  VLDR            S8, [R7,#arg_8]
31B458:  VLDR            S10, [R7,#arg_4]
31B45C:  VMOV            S3, R2
31B460:  LDR.W           LR, [R6]
31B464:  MOVS            R3, #0
31B466:  VLDR            S12, [R7,#arg_0]
31B46A:  MOVW            R8, #0x1104
31B46E:  MOV.W           R9, #0xF00000
31B472:  MOV.W           R12, #0
31B476:  MOV.W           R10, #0
31B47A:  MOVS            R6, #0
31B47C:  ADD.W           R4, R1, R3,LSL#2
31B480:  LDR.W           R5, [R4,#0x804]
31B484:  CMP             R5, #0
31B486:  BEQ             loc_31B54E
31B488:  LDR.W           R4, [R4,R8]
31B48C:  CMP             R4, #1
31B48E:  BLT             loc_31B54E
31B490:  ADDS            R5, #0xC
31B492:  LDRSH.W         R2, [R5,#-4]
31B496:  VMOV            S11, R2
31B49A:  VCVT.F32.S32    S11, S11
31B49E:  LDRSH.W         R2, [R5]
31B4A2:  VMOV            S13, R2
31B4A6:  VCVT.F32.S32    S15, S13
31B4AA:  VMUL.F32        S11, S11, S9
31B4AE:  VCMPE.F32       S11, S3
31B4B2:  VMRS            APSR_nzcv, FPSCR
31B4B6:  BLE             loc_31B548
31B4B8:  VCMPE.F32       S11, S14
31B4BC:  VMRS            APSR_nzcv, FPSCR
31B4C0:  BGE             loc_31B548
31B4C2:  LDRSH.W         R2, [R5,#-2]
31B4C6:  VMOV            S13, R2
31B4CA:  VCVT.F32.S32    S13, S13
31B4CE:  VMUL.F32        S13, S13, S9
31B4D2:  VCMPE.F32       S13, S12
31B4D6:  VMRS            APSR_nzcv, FPSCR
31B4DA:  BLE             loc_31B548
31B4DC:  VCMPE.F32       S13, S10
31B4E0:  VMRS            APSR_nzcv, FPSCR
31B4E4:  BGE             loc_31B548
31B4E6:  VMUL.F32        S15, S15, S9
31B4EA:  VCMPE.F32       S15, S8
31B4EE:  VMRS            APSR_nzcv, FPSCR
31B4F2:  BLE             loc_31B548
31B4F4:  VCMPE.F32       S15, S6
31B4F8:  VMRS            APSR_nzcv, FPSCR
31B4FC:  BGE             loc_31B548
31B4FE:  LDRB            R2, [R5,#0xE]
31B500:  AND.W           R2, R9, R2,LSL#16
31B504:  CMP.W           R2, #0x200000
31B508:  BNE             loc_31B548
31B50A:  CMP             R6, LR
31B50C:  MOV.W           R2, #0
31B510:  ITTT EQ
31B512:  VMOVEQ.F32      S7, S15
31B516:  VMOVEQ.F32      S5, S13
31B51A:  VMOVEQ.F32      S1, S11
31B51E:  CMP             R6, #0
31B520:  ITTT EQ
31B522:  VMOVEQ.F32      S0, S15
31B526:  VMOVEQ.F32      S4, S13
31B52A:  VMOVEQ.F32      S2, S11
31B52E:  CMP             R6, LR
31B530:  IT EQ
31B532:  MOVEQ           R2, #1
31B534:  CMP             R6, #0
31B536:  ORR.W           R12, R12, R2
31B53A:  MOV.W           R2, #0
31B53E:  IT EQ
31B540:  MOVEQ           R2, #1
31B542:  ADDS            R6, #1
31B544:  ORR.W           R10, R10, R2
31B548:  ADDS            R5, #0x1C
31B54A:  SUBS            R4, #1
31B54C:  BNE             loc_31B492
31B54E:  ADDS            R3, #1
31B550:  CMP             R3, #0x40 ; '@'
31B552:  BNE             loc_31B47C
31B554:  LDR             R1, =(dword_7AF318 - 0x31B560)
31B556:  ADD.W           R2, LR, #1
31B55A:  CMP             R2, R6
31B55C:  ADD             R1, PC; dword_7AF318
31B55E:  IT GE
31B560:  MOVGE           R2, #0
31B562:  STR             R2, [R1]
31B564:  MOVS.W          R1, R10,LSL#31
31B568:  BEQ             loc_31B57E
31B56A:  ANDS.W          R1, R12, #1
31B56E:  ITTT NE
31B570:  VMOVNE.F32      S0, S7
31B574:  VMOVNE.F32      S4, S5
31B578:  VMOVNE.F32      S2, S1
31B57C:  B               loc_31B58A
31B57E:  VLDR            S2, =0.0
31B582:  VMOV.F32        S4, S2
31B586:  VMOV.F32        S0, S2
31B58A:  VSTR            S2, [R0]
31B58E:  VSTR            S4, [R0,#4]
31B592:  VSTR            S0, [R0,#8]
31B596:  POP.W           {R8-R10}
31B59A:  POP             {R4-R7,PC}
