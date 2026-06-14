; =========================================================
; Game Engine Function: GetMovingHrtfCoeffs
; Address            : 0x1D7238 - 0x1D77F8
; =========================================================

1D7238:  PUSH            {R4-R11,LR}
1D723C:  ADD             R11, SP, #0x1C
1D7240:  SUB             SP, SP, #4
1D7244:  VPUSH           {D8-D15}
1D7248:  SUB             SP, SP, #0x38
1D724C:  VLDR            S0, =1.5708
1D7250:  VMOV            S2, R1
1D7254:  STR             R0, [SP,#0x98+var_64]
1D7258:  VADD.F32        S0, S2, S0
1D725C:  VLDR            S2, =5.7296
1D7260:  STR             R3, [SP,#0x98+var_7C]
1D7264:  LDR             R0, =(unk_C5192 - 0x1D7270)
1D7268:  ADD             R5, PC, R0; unk_C5192
1D726C:  VMUL.F32        S16, S0, S2
1D7270:  VLDR            S0, =6.2832
1D7274:  VMOV            S2, R2
1D7278:  VADD.F32        S0, S2, S0
1D727C:  VLDR            S2, =0.15915
1D7280:  VCVT.S32.F32    S18, S16
1D7284:  VMUL.F32        S22, S0, S2
1D7288:  VMOV            R1, S18
1D728C:  LDRB            R7, [R5,R1]
1D7290:  MOV             R4, R1
1D7294:  STR             R4, [SP,#0x98+var_80]
1D7298:  VMOV            S0, R7
1D729C:  MOV             R1, R7
1D72A0:  VCVT.F32.U32    S0, S0
1D72A4:  VMUL.F32        S20, S22, S0
1D72A8:  VCVT.S32.F32    S0, S20
1D72AC:  VMOV            R0, S0
1D72B0:  BL              sub_221798
1D72B4:  MOV             R10, R1
1D72B8:  ADD             R0, R10, #1
1D72BC:  MOV             R1, R7
1D72C0:  BL              sub_221798
1D72C4:  VMOV            R0, S20; x
1D72C8:  STR             R1, [SP,#0x98+var_78]
1D72CC:  BL              floorf
1D72D0:  ADD             R4, R4, #1
1D72D4:  STR             R0, [SP,#0x98+var_84]
1D72D8:  CMP             R4, #0x12
1D72DC:  MOVCS           R4, #(byte_C51A4 - 0xC5192)
1D72E0:  LDRB            R6, [R5,R4]
1D72E4:  VMOV            S0, R6
1D72E8:  MOV             R1, R6
1D72EC:  VCVT.F32.U32    S0, S0
1D72F0:  VMUL.F32        S22, S22, S0
1D72F4:  VCVT.S32.F32    S0, S22
1D72F8:  VMOV            R0, S0
1D72FC:  BL              sub_221798
1D7300:  MOV             R8, R1
1D7304:  ADD             R0, R8, #1
1D7308:  MOV             R1, R6
1D730C:  BL              sub_221798
1D7310:  VMOV            R0, S22; x
1D7314:  MOV             R9, R1
1D7318:  BL              floorf
1D731C:  STR             R0, [SP,#0x98+var_88]
1D7320:  MOV             R1, R6
1D7324:  LDR             R0, =(word_C516C - 0x1D7330)
1D7328:  ADD             R5, PC, R0; word_C516C
1D732C:  ADD             R0, R5, R4,LSL#1
1D7330:  LDRH            R4, [R0]
1D7334:  ADD             R0, R8, R4
1D7338:  STR             R0, [SP,#0x98+var_70]
1D733C:  SUB             R0, R6, R8
1D7340:  BL              sub_221798
1D7344:  ADD             R0, R1, R4
1D7348:  STR             R0, [SP,#0x98+var_68]
1D734C:  ADD             R0, R9, R4
1D7350:  STR             R0, [SP,#0x98+var_74]
1D7354:  SUB             R0, R6, R9
1D7358:  MOV             R1, R6
1D735C:  BL              sub_221798
1D7360:  ADD             R0, R1, R4
1D7364:  LDR             R4, [SP,#0x98+var_64]
1D7368:  STR             R0, [SP,#0x98+var_6C]
1D736C:  LDR             R0, [SP,#0x98+var_88]
1D7370:  VLDR            S0, [R4]
1D7374:  VLDR            S2, =0.015
1D7378:  VLDR            S4, [R11,#arg_0]
1D737C:  VMOV            S26, R0
1D7380:  LDR             R0, [SP,#0x98+var_84]
1D7384:  VCVT.F32.U32    S0, S0
1D7388:  VMUL.F32        S2, S4, S2
1D738C:  VMOV.F32        S4, #0.5
1D7390:  VMOV            S28, R0
1D7394:  VMUL.F32        S0, S2, S0
1D7398:  VADD.F32        S0, S0, S4
1D739C:  VMOV            R0, S0; x
1D73A0:  BL              floorf
1D73A4:  VMOV            S30, R0
1D73A8:  LDR             R0, [SP,#0x98+var_80]
1D73AC:  MOV             R1, R7
1D73B0:  LDR             R8, [R11,#arg_10]
1D73B4:  LDR             R9, [R11,#arg_8]
1D73B8:  ADD             R0, R5, R0,LSL#1
1D73BC:  STR             R10, [SP,#0x98+var_8C]
1D73C0:  LDRH            R6, [R0]
1D73C4:  LDR             R0, [SP,#0x98+var_7C]
1D73C8:  VMOV            S24, R0
1D73CC:  ADD             R0, R10, R6
1D73D0:  STR             R0, [SP,#0x98+var_84]
1D73D4:  SUB             R0, R7, R10
1D73D8:  BL              sub_221798
1D73DC:  MOV             R5, R1
1D73E0:  LDR             R1, [SP,#0x98+var_78]
1D73E4:  ADD             R0, R5, R6
1D73E8:  STR             R0, [SP,#0x98+var_7C]
1D73EC:  ADD             R0, R1, R6
1D73F0:  STR             R0, [SP,#0x98+var_88]
1D73F4:  SUB             R0, R7, R1
1D73F8:  MOV             R1, R7
1D73FC:  BL              sub_221798
1D7400:  VMOV.F32        S2, #1.0
1D7404:  ADD             R0, R1, R6
1D7408:  STR             R0, [SP,#0x98+var_80]
1D740C:  VCVT.F32.U32    S4, S18
1D7410:  VSUB.F32        S8, S20, S28
1D7414:  VLDR            S10, =0.0001
1D7418:  VSUB.F32        S6, S22, S26
1D741C:  VCMPE.F32       S30, S2
1D7420:  VMRS            APSR_nzcv, FPSCR
1D7424:  VMOV.F32        S0, S2
1D7428:  VSUB.F32        S4, S16, S4
1D742C:  VCMPE.F32       S24, S10
1D7430:  VMOVGT.F32      S0, S30
1D7434:  VMRS            APSR_nzcv, FPSCR
1D7438:  VDIV.F32        S2, S2, S0
1D743C:  BLE             loc_1D7628
1D7440:  LDR             R0, [SP,#0x98+var_6C]
1D7444:  MOV             R3, R4
1D7448:  MOV             R2, R6,LSL#6
1D744C:  ADD             R6, R2, R5,LSL#6
1D7450:  ADD             R6, R3, R6
1D7454:  LDR             R5, [SP,#0x98+var_8C]
1D7458:  ADD             R0, R4, R0,LSL#6
1D745C:  ADD             R1, R2, R1,LSL#6
1D7460:  ADD             R0, R0, #4
1D7464:  STR             R0, [SP,#0x98+var_90]
1D7468:  LDR             R0, [SP,#0x98+var_68]
1D746C:  ADD             R1, R3, R1
1D7470:  VLDR            S12, =0.000030519
1D7474:  ADD             R1, R1, #4
1D7478:  ADD             R12, R9, #4
1D747C:  ADD             R0, R4, R0,LSL#6
1D7480:  VMUL.F32        S12, S24, S12
1D7484:  ADD             R0, R0, #4
1D7488:  STR             R0, [SP,#0x98+var_94]
1D748C:  LDR             R0, [SP,#0x98+var_74]
1D7490:  ADD             R0, R3, R0,LSL#6
1D7494:  ADD             R7, R0, #4
1D7498:  LDR             R0, [SP,#0x98+var_70]
1D749C:  ADD             R0, R3, R0,LSL#6
1D74A0:  ADD             R4, R0, #4
1D74A4:  ADD             R0, R6, #4
1D74A8:  LDR             R6, [SP,#0x98+var_78]
1D74AC:  ADD             R6, R2, R6,LSL#6
1D74B0:  ADD             R2, R2, R5,LSL#6
1D74B4:  ADD             R6, R3, R6
1D74B8:  ADD             R2, R3, R2
1D74BC:  LDR             R3, [R11,#arg_4]
1D74C0:  MOV             R5, R1
1D74C4:  LDMED           SP, {R1,R9}
1D74C8:  ADD             LR, R6, #4
1D74CC:  ADD             R10, R2, #4
1D74D0:  VMOV            S10, R3
1D74D4:  ADD             R2, R8, #4
1D74D8:  MOV             R6, R4
1D74DC:  MOV             R4, R7
1D74E0:  VCVT.F32.S32    S10, S10
1D74E4:  MOV             R8, #0
1D74E8:  ADD             R3, LR, R8
1D74EC:  ADD             R7, R10, R8
1D74F0:  LDRSH           R7, [R7]
1D74F4:  LDRSH           R3, [R3]
1D74F8:  VMOV            S14, R7
1D74FC:  ADD             R7, R6, R8
1D7500:  VMOV            S1, R3
1D7504:  ADD             R3, R4, R8
1D7508:  VCVT.F32.S32    S14, S14
1D750C:  VCVT.F32.S32    S1, S1
1D7510:  LDRSH           R7, [R7]
1D7514:  LDRSH           R3, [R3]
1D7518:  VMOV            S3, R7
1D751C:  ADD             R7, R0, R8
1D7520:  VMOV            S5, R3
1D7524:  ADD             R3, R5, R8
1D7528:  VCVT.F32.S32    S3, S3
1D752C:  VCVT.F32.S32    S5, S5
1D7530:  VLDR            S7, [R2]
1D7534:  VSUB.F32        S1, S1, S14
1D7538:  VSUB.F32        S5, S5, S3
1D753C:  VMUL.F32        S1, S1, S8
1D7540:  VADD.F32        S14, S1, S14
1D7544:  VMUL.F32        S1, S5, S6
1D7548:  VLDR            S5, [R2,#-4]
1D754C:  VMUL.F32        S5, S5, S10
1D7550:  VSUB.F32        S3, S3, S14
1D7554:  VADD.F32        S1, S3, S1
1D7558:  VLDR            S3, [R12]
1D755C:  VMUL.F32        S1, S1, S4
1D7560:  VADD.F32        S14, S1, S14
1D7564:  VLDR            S1, [R12,#-4]
1D7568:  VSUB.F32        S1, S5, S1
1D756C:  VMUL.F32        S14, S14, S12
1D7570:  VSTR            S14, [R12,#-4]
1D7574:  VADD.F32        S14, S1, S14
1D7578:  LDRSH           R7, [R7]
1D757C:  VMUL.F32        S1, S7, S10
1D7580:  LDRSH           R3, [R3]
1D7584:  VMOV            S9, R7
1D7588:  ADD             R7, R1, R8
1D758C:  VMOV            S11, R3
1D7590:  ADD             R3, R9, R8
1D7594:  VCVT.F32.S32    S9, S9
1D7598:  ADD             R8, R8, #2
1D759C:  VCVT.F32.S32    S11, S11
1D75A0:  LDRSH           R7, [R7]
1D75A4:  LDRSH           R3, [R3]
1D75A8:  VMUL.F32        S14, S14, S2
1D75AC:  VSUB.F32        S1, S1, S3
1D75B0:  CMP             R8, #0x40 ; '@'
1D75B4:  VMOV            S13, R7
1D75B8:  VMOV            S15, R3
1D75BC:  VCVT.F32.S32    S13, S13
1D75C0:  VCVT.F32.S32    S15, S15
1D75C4:  VSUB.F32        S11, S11, S9
1D75C8:  VSUB.F32        S15, S15, S13
1D75CC:  VMUL.F32        S11, S11, S8
1D75D0:  VADD.F32        S9, S11, S9
1D75D4:  VMUL.F32        S11, S15, S6
1D75D8:  VSUB.F32        S13, S13, S9
1D75DC:  VADD.F32        S11, S13, S11
1D75E0:  VMUL.F32        S11, S11, S4
1D75E4:  VADD.F32        S5, S11, S9
1D75E8:  VMUL.F32        S5, S5, S12
1D75EC:  VSTR            S5, [R12]
1D75F0:  VSTR            S14, [R2,#-4]
1D75F4:  VLDR            S14, [R12]
1D75F8:  ADD             R12, R12, #8
1D75FC:  VADD.F32        S14, S1, S14
1D7600:  VMUL.F32        S14, S14, S2
1D7604:  VSTR            S14, [R2]
1D7608:  ADD             R2, R2, #8
1D760C:  BNE             loc_1D74E8
1D7610:  B               loc_1D7688
1D7614:  DCFS 1.5708
1D7618:  DCFS 5.7296
1D761C:  DCFS 6.2832
1D7620:  DCFS 0.15915
1D7624:  DCFS 0.015
1D7628:  LDR             R0, [R11,#arg_4]
1D762C:  MOV             R1, #0
1D7630:  VMOV            S10, R0
1D7634:  MOV             R0, #0
1D7638:  VCVT.F32.S32    S10, S10
1D763C:  ADD             R2, R8, R1
1D7640:  ADD             R3, R9, R1
1D7644:  VLDR            S12, [R2]
1D7648:  VLDR            S14, [R2,#4]
1D764C:  VMUL.F32        S12, S12, S10
1D7650:  VLDR            S1, [R3]
1D7654:  VMUL.F32        S14, S14, S10
1D7658:  VLDR            S3, [R3,#4]
1D765C:  STR             R0, [R9,R1]
1D7660:  ADD             R1, R1, #8
1D7664:  CMP             R1, #0x100
1D7668:  STR             R0, [R3,#4]
1D766C:  VSUB.F32        S12, S12, S1
1D7670:  VSUB.F32        S14, S14, S3
1D7674:  VMUL.F32        S12, S2, S12
1D7678:  VMUL.F32        S14, S2, S14
1D767C:  VSTR            S12, [R2]
1D7680:  VSTR            S14, [R2,#4]
1D7684:  BNE             loc_1D763C
1D7688:  LDR             R1, [SP,#0x98+var_64]
1D768C:  MOVW            R0, #0xCF04
1D7690:  ADD             R2, R1, R0
1D7694:  LDR             R0, [SP,#0x98+var_84]
1D7698:  LDR             R1, [SP,#0x98+var_88]
1D769C:  LDRB            R0, [R2,R0]
1D76A0:  LDRB            R1, [R2,R1]
1D76A4:  VMOV            S10, R0
1D76A8:  VMOV            S12, R1
1D76AC:  VCVT.F32.U32    S10, S10
1D76B0:  VCVT.F32.U32    S12, S12
1D76B4:  LDR             R0, [SP,#0x98+var_70]
1D76B8:  LDR             R1, [SP,#0x98+var_74]
1D76BC:  LDRB            R0, [R2,R0]
1D76C0:  LDRB            R1, [R2,R1]
1D76C4:  VMOV            S14, R0
1D76C8:  VSUB.F32        S12, S12, S10
1D76CC:  VMOV            S1, R1
1D76D0:  LDR             R1, [R11,#arg_14]
1D76D4:  VCVT.F32.U32    S14, S14
1D76D8:  VCVT.F32.U32    S1, S1
1D76DC:  MOV             LR, R1
1D76E0:  LDR             R1, [R11,#arg_C]
1D76E4:  LDM             LR, {R3,R12}
1D76E8:  VMUL.F32        S12, S12, S8
1D76EC:  LDR             R7, [R1]
1D76F0:  LDR             R0, [R1,#4]
1D76F4:  VSUB.F32        S1, S1, S14
1D76F8:  VADD.F32        S10, S12, S10
1D76FC:  VMUL.F32        S12, S1, S6
1D7700:  VSUB.F32        S14, S14, S10
1D7704:  VADD.F32        S12, S14, S12
1D7708:  VMUL.F32        S12, S12, S4
1D770C:  VADD.F32        S10, S12, S10
1D7710:  VLDR            S12, =65536.0
1D7714:  VMUL.F32        S10, S10, S12
1D7718:  VCVT.S32.F32    S14, S10
1D771C:  VSTR            S14, [R1]
1D7720:  LDR             R4, [SP,#0x98+var_6C]
1D7724:  LDRB            R6, [R2,R4]
1D7728:  LDR             R4, [SP,#0x98+var_68]
1D772C:  VMOV            S5, R6
1D7730:  LDRB            R5, [R2,R4]
1D7734:  LDR             R4, [SP,#0x98+var_80]
1D7738:  VMOV            S3, R5
1D773C:  LDRB            R4, [R2,R4]
1D7740:  VMOV            S14, R4
1D7744:  LDR             R4, [SP,#0x98+var_7C]
1D7748:  LDRB            R2, [R2,R4]
1D774C:  VMOV            S1, R2
1D7750:  LDR             R2, [R11,#arg_4]
1D7754:  VCVT.F32.U32    S1, S1
1D7758:  VCVT.F32.U32    S14, S14
1D775C:  MOV             R4, R2
1D7760:  VCVT.F32.U32    S3, S3
1D7764:  MLS             R2, R3, R4, R7
1D7768:  VCVT.F32.U32    S5, S5
1D776C:  MLS             R0, R12, R4, R0
1D7770:  VSUB.F32        S14, S14, S1
1D7774:  VMUL.F32        S8, S14, S8
1D7778:  VSUB.F32        S14, S5, S3
1D777C:  VADD.F32        S8, S8, S1
1D7780:  VMUL.F32        S6, S14, S6
1D7784:  VSUB.F32        S14, S3, S8
1D7788:  VADD.F32        S6, S14, S6
1D778C:  VMUL.F32        S4, S6, S4
1D7790:  VCVT.S32.F32    S6, S10
1D7794:  VADD.F32        S4, S4, S8
1D7798:  VMOV            S8, R2
1D779C:  VCVT.F32.U32    S8, S8
1D77A0:  VCVT.F32.U32    S6, S6
1D77A4:  VMUL.F32        S4, S4, S12
1D77A8:  VSUB.F32        S6, S6, S8
1D77AC:  VCVT.S32.F32    S4, S4
1D77B0:  VMUL.F32        S6, S6, S2
1D77B4:  VSTR            S4, [R1,#4]
1D77B8:  VCVT.S32.F32    S4, S6
1D77BC:  VMOV            S6, R0
1D77C0:  VSTR            S4, [LR]
1D77C4:  VLDR            S4, [R1,#4]
1D77C8:  VCVT.F32.U32    S6, S6
1D77CC:  VCVT.F32.U32    S4, S4
1D77D0:  VSUB.F32        S4, S4, S6
1D77D4:  VMUL.F32        S2, S4, S2
1D77D8:  VCVT.S32.F32    S2, S2
1D77DC:  VCVT.S32.F32    S0, S0
1D77E0:  VSTR            S2, [LR,#4]
1D77E4:  VMOV            R0, S0
1D77E8:  SUB             SP, R11, #0x60 ; '`'
1D77EC:  VPOP            {D8-D15}
1D77F0:  ADD             SP, SP, #4
1D77F4:  POP             {R4-R11,PC}
