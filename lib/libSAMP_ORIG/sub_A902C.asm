; =========================================================
; Game Engine Function: sub_A902C
; Address            : 0xA902C - 0xA95A0
; =========================================================

A902C:  PUSH            {R4-R7,LR}
A902E:  ADD             R7, SP, #0xC
A9030:  PUSH.W          {R8-R11}
A9034:  SUB             SP, SP, #4
A9036:  VPUSH           {D8-D15}
A903A:  SUB             SP, SP, #0x28
A903C:  MOV             R12, R0
A903E:  LDR             R0, =(off_114D5C - 0xA904E)
A9040:  MOV             R6, R1
A9042:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xA9050)
A9046:  VMOV.F32        S16, #1.0
A904A:  ADD             R0, PC; off_114D5C
A904C:  ADD             R1, PC; __stack_chk_guard_ptr
A904E:  VLDR            S20, [R7,#arg_C]
A9052:  LDR.W           R8, [R7,#arg_4]
A9056:  VMOV.F32        S2, #-4.0
A905A:  LDR             R1, [R1]; __stack_chk_guard
A905C:  BIC.W           R10, R2, #1
A9060:  LDR             R5, [R7,#arg_0]
A9062:  LDR.W           R9, [R0]; dword_1ACF68
A9066:  LDR             R1, [R1]
A9068:  SUBS.W          R11, R8, R5
A906C:  STR             R1, [SP,#0x88+var_64]
A906E:  MOV.W           R1, #0
A9072:  VCMP.F32        S20, S16
A9076:  STR.W           R11, [SP,#0x88+var_74]
A907A:  IT LS
A907C:  SUBLS.W         R11, R5, R8
A9080:  VMRS            APSR_nzcv, FPSCR
A9084:  IT NE
A9086:  MOVNE           R1, #1
A9088:  LDR.W           R0, [R9]
A908C:  MOVW            R5, #0x1588
A9090:  STR             R2, [SP,#0x88+var_78]
A9092:  ADDS            R4, R0, R5
A9094:  LDR             R5, [R7,#arg_10]
A9096:  SUBS.W          R2, R10, #8
A909A:  AND.W           LR, R5, #1
A909E:  CLZ.W           R2, R2
A90A2:  ADD.W           R5, R12, LR,LSL#2
A90A6:  MOV.W           R2, R2,LSR#5
A90AA:  VLDR            S0, [R5]
A90AE:  VLDR            S28, [R5,#8]
A90B2:  VSUB.F32        S4, S28, S0
A90B6:  VADD.F32        S30, S4, S2
A90BA:  VLDR            S2, [R4]
A90BE:  BEQ             loc_A90E4
A90C0:  CMP.W           R11, #0
A90C4:  BMI             loc_A90E4
A90C6:  ADD.W           R5, R11, #1
A90CA:  VMOV            S4, R5
A90CE:  VCVT.F32.S32    S4, S4
A90D2:  VDIV.F32        S4, S30, S4
A90D6:  VCMP.F32        S4, S2
A90DA:  VMRS            APSR_nzcv, FPSCR
A90DE:  IT GE
A90E0:  VMOVGE.F32      S2, S4
A90E4:  VMOV.F32        S24, #2.0
A90E8:  STR             R3, [SP,#0x88+var_70]
A90EA:  VMOV.F32        S18, #0.5
A90EE:  AND.W           R3, R2, R1
A90F2:  VCMP.F32        S2, S30
A90F6:  VMOV.F32        S26, S30
A90FA:  VMRS            APSR_nzcv, FPSCR
A90FE:  IT MI
A9100:  VMOVMI.F32      S26, S2
A9104:  LDR.W           R1, [R4,#0x448]
A9108:  CMP             R1, R6
A910A:  VADD.F32        S0, S0, S24
A910E:  VMUL.F32        S17, S26, S18
A9112:  VADD.F32        S22, S17, S0
A9116:  BNE.W           loc_A93BE
A911A:  LDR.W           R1, [R4,#0x470]
A911E:  MOVS            R5, #0
A9120:  CMP             R1, #2
A9122:  BEQ             loc_A9172
A9124:  CMP             R1, #1
A9126:  BNE.W           loc_A93C0
A912A:  LDRB.W          R1, [R0,#0xE8]
A912E:  CMP             R1, #0
A9130:  BEQ             loc_A91CC
A9132:  VSUB.F32        S0, S30, S26
A9136:  VCMP.F32        S0, #0.0
A913A:  VMRS            APSR_nzcv, FPSCR
A913E:  BLE             loc_A91E0
A9140:  ADD.W           R0, R0, LR,LSL#2
A9144:  VLDR            S2, [R0,#0xE0]
A9148:  VSUB.F32        S2, S2, S22
A914C:  VDIV.F32        S2, S2, S0
A9150:  VCMP.F32        S2, S16
A9154:  VLDR            S0, =0.0
A9158:  VMRS            APSR_nzcv, FPSCR
A915C:  VCMP.F32        S2, #0.0
A9160:  IT GT
A9162:  VMOVGT.F32      S2, S16
A9166:  VMRS            APSR_nzcv, FPSCR
A916A:  IT MI
A916C:  VMOVMI.F32      S2, S0
A9170:  B               loc_A91E4
A9172:  ADD             R0, SP, #0x88+var_6C; int
A9174:  STRD.W          R12, R3, [SP,#0x88+var_80]
A9178:  MOVS            R1, #3; int
A917A:  MOVS            R2, #5; int
A917C:  MOVS            R3, #0; int
A917E:  STR             R5, [SP,#0x88+var_88]; float
A9180:  MOV             R5, LR
A9182:  BL              sub_99284
A9186:  VLDR            S2, [SP,#0x88+var_68]
A918A:  CMP             R5, #0
A918C:  VLDR            S0, [SP,#0x88+var_6C]
A9190:  MOV             LR, R5
A9192:  VNEG.F32        S19, S2
A9196:  IT EQ
A9198:  VMOVEQ.F32      S19, S0
A919C:  LDR.W           R0, [R4,#0x53C]
A91A0:  CMP             R0, R6
A91A2:  ITT EQ
A91A4:  LDRBEQ.W        R0, [R4,#0x454]
A91A8:  CMPEQ           R0, #0
A91AA:  BEQ.W           loc_A92C4
A91AE:  LDRD.W          R12, R3, [SP,#0x88+var_80]
A91B2:  VCMP.F32        S19, #0.0
A91B6:  VMRS            APSR_nzcv, FPSCR
A91BA:  BEQ.W           loc_A93BE
A91BE:  LDR             R3, [R7,#arg_0]
A91C0:  CMP             R8, R3
A91C2:  BNE             loc_A923E
A91C4:  VLDR            S21, =0.0
A91C8:  LDR             R3, [SP,#0x88+var_7C]
A91CA:  B               loc_A92E8
A91CC:  MOV             R4, R12
A91CE:  MOV             R5, LR
A91D0:  MOV             R6, R3
A91D2:  BL              sub_8B080
A91D6:  MOV             LR, R5
A91D8:  MOV             R3, R6
A91DA:  MOV             R12, R4
A91DC:  MOVS            R5, #0
A91DE:  B               loc_A93C0
A91E0:  VLDR            S2, =0.0
A91E4:  VSUB.F32        S0, S16, S2
A91E8:  LDR             R5, [SP,#0x88+var_70]
A91EA:  CMP.W           LR, #0
A91EE:  IT EQ
A91F0:  VMOVEQ.F32      S0, S2
A91F4:  CMP             R3, #0
A91F6:  BEQ.W           loc_A952A
A91FA:  VCMP.F32        S0, #0.0
A91FE:  MOV             R4, R3
A9200:  MOV             R6, LR
A9202:  MOV             R9, R12
A9204:  VMRS            APSR_nzcv, FPSCR
A9208:  BPL             loc_A9292
A920A:  VLDR            S19, =0.0
A920E:  VMOV            R1, S20; y
A9212:  VDIV.F32        S0, S0, S19
A9216:  VSUB.F32        S0, S16, S0
A921A:  VMOV            R0, S0; x
A921E:  BLX             powf
A9222:  LDR             R1, [R7,#arg_0]
A9224:  VMOV            S2, R0
A9228:  VMOV            S0, R1
A922C:  VCVT.F32.U32    S0, S0
A9230:  VMLA.F32        S19, S0, S2
A9234:  VCVT.U32.F32    S0, S19
A9238:  VMOV            R2, S0
A923C:  B               loc_A9584
A923E:  LDR             R0, [SP,#0x88+var_70]
A9240:  MOV             R1, R8
A9242:  MOV             R2, R3
A9244:  LDR             R0, [R0]
A9246:  ITT HI
A9248:  MOVHI           R1, R3
A924A:  MOVHI           R2, R8
A924C:  CMP             R2, R0
A924E:  IT CS
A9250:  MOVCS           R2, R0
A9252:  CMP             R1, R0
A9254:  IT HI
A9256:  MOVHI           R2, R1
A9258:  SUBS            R0, R2, R3
A925A:  LDR             R3, [SP,#0x88+var_7C]
A925C:  CBZ             R3, loc_A92D2
A925E:  LDR             R1, [SP,#0x88+var_74]
A9260:  BLX             sub_108874
A9264:  VDIV.F32        S0, S16, S20
A9268:  VMOV            S2, R0
A926C:  VMOV            R1, S0; y
A9270:  VCVT.F32.U32    S2, S2
A9274:  VMOV            R0, S2; x
A9278:  BLX             powf
A927C:  VLDR            S0, =0.0
A9280:  VMOV            S2, R0
A9284:  LDR             R3, [SP,#0x88+var_7C]
A9286:  MOV             LR, R5
A9288:  LDR.W           R12, [SP,#0x88+var_80]
A928C:  VADD.F32        S21, S2, S0
A9290:  B               loc_A92E8
A9292:  VMOV            R0, S0; x
A9296:  VMOV            R1, S20; y
A929A:  BLX             powf
A929E:  LDR             R1, [SP,#0x88+var_74]
A92A0:  VMOV            S4, R0
A92A4:  VMOV            S0, R1
A92A8:  LDR             R1, [R7,#arg_0]
A92AA:  VCVT.F32.U32    S0, S0
A92AE:  VMOV            S2, R1
A92B2:  VCVT.F32.U32    S2, S2
A92B6:  VMLA.F32        S2, S0, S4
A92BA:  VCVT.U32.F32    S0, S2
A92BE:  VMOV            R2, S0
A92C2:  B               loc_A9584
A92C4:  BL              sub_8B080
A92C8:  MOV             LR, R5
A92CA:  LDRD.W          R12, R3, [SP,#0x88+var_80]
A92CE:  MOVS            R5, #0
A92D0:  B               loc_A93C0
A92D2:  LDR             R1, [SP,#0x88+var_74]
A92D4:  VMOV            S2, R0
A92D8:  VCVT.F32.U32    S2, S2
A92DC:  VMOV            S0, R1
A92E0:  VCVT.F32.U32    S0, S0
A92E4:  VDIV.F32        S21, S2, S0
A92E8:  MOVS            R4, #0
A92EA:  CMP.W           R10, #8
A92EE:  BNE             loc_A9306
A92F0:  LDR             R0, [R7,#arg_8]
A92F2:  MOVS            R1, #3
A92F4:  BL              sub_AB7D0
A92F8:  LDR             R3, [SP,#0x88+var_7C]
A92FA:  MOV             LR, R5
A92FC:  LDR.W           R12, [SP,#0x88+var_80]
A9300:  CMP             R0, #0
A9302:  IT GT
A9304:  MOVGT           R4, #1
A9306:  ORR.W           R0, R3, R4
A930A:  CMP             R0, #1
A930C:  BNE             loc_A9332
A930E:  VLDR            S0, =100.0
A9312:  LDR.W           R0, [R9]
A9316:  VDIV.F32        S0, S19, S0
A931A:  VLDR            S2, [R0,#0x334]
A931E:  VCMP.F32        S2, #0.0
A9322:  VMRS            APSR_nzcv, FPSCR
A9326:  BLE             loc_A9378
A9328:  VMOV.F32        S2, #10.0
A932C:  VDIV.F32        S0, S0, S2
A9330:  B               loc_A9378
A9332:  LDR.W           R0, [R9]
A9336:  ADD.W           R1, R11, #0x64 ; 'd'
A933A:  CMP             R1, #0xC9
A933C:  BCC             loc_A934C
A933E:  VLDR            S0, [R0,#0x334]
A9342:  VCMP.F32        S0, #0.0
A9346:  VMRS            APSR_nzcv, FPSCR
A934A:  BLE             loc_A9370
A934C:  VMOV            S0, R11
A9350:  VCMP.F32        S19, #0.0
A9354:  VCVT.F32.S32    S0, S0
A9358:  VMRS            APSR_nzcv, FPSCR
A935C:  VMOV.F32        S4, S16
A9360:  VMOV.F32        S2, #-1.0
A9364:  IT MI
A9366:  VMOVMI.F32      S4, S2
A936A:  VDIV.F32        S0, S4, S0
A936E:  B               loc_A9378
A9370:  VLDR            S0, =100.0
A9374:  VDIV.F32        S0, S19, S0
A9378:  VMOV.F32        S2, #10.0
A937C:  VLDR            S4, [R0,#0x338]
A9380:  VCMP.F32        S4, #0.0
A9384:  VMRS            APSR_nzcv, FPSCR
A9388:  VCMP.F32        S21, S16
A938C:  VMUL.F32        S2, S0, S2
A9390:  IT GT
A9392:  VMOVGT.F32      S0, S2
A9396:  VMRS            APSR_nzcv, FPSCR
A939A:  ITT GE
A939C:  VCMPGE.F32      S0, #0.0
A93A0:  VMRSGE          APSR_nzcv, FPSCR
A93A4:  BGT             loc_A93BE
A93A6:  VCMP.F32        S21, #0.0
A93AA:  VMRS            APSR_nzcv, FPSCR
A93AE:  BHI.W           loc_A94FE
A93B2:  VCMP.F32        S0, #0.0
A93B6:  VMRS            APSR_nzcv, FPSCR
A93BA:  BPL.W           loc_A94FE
A93BE:  MOVS            R5, #0
A93C0:  LDR             R6, [R7,#arg_14]
A93C2:  VCMP.F32        S30, S16
A93C6:  VMRS            APSR_nzcv, FPSCR
A93CA:  BPL             loc_A93DA
A93CC:  VLDR            D16, [R12]
A93D0:  VMOV            D17, D16
A93D4:  VST1.32         {D16-D17}, [R6]
A93D8:  B               loc_A94DA
A93DA:  VMOV.F32        S30, #-2.0
A93DE:  LDR             R2, [R7,#arg_0]
A93E0:  CMP             R8, R2
A93E2:  VADD.F32        S0, S28, S30
A93E6:  VSUB.F32        S28, S0, S17
A93EA:  BNE             loc_A93FC
A93EC:  VLDR            S2, =0.0
A93F0:  B               loc_A9464
A93F2:  ALIGN 4
A93F4:  DCD off_114D5C - 0xA904E
A93F8:  DCFS 0.0
A93FC:  LDR             R0, [SP,#0x88+var_70]
A93FE:  MOV             R1, R8
A9400:  LDR             R0, [R0]
A9402:  ITE HI
A9404:  MOVHI           R1, R2
A9406:  MOVLS           R8, R2
A9408:  CMP             R8, R0
A940A:  IT CS
A940C:  MOVCS           R8, R0
A940E:  CMP             R1, R0
A9410:  IT HI
A9412:  MOVHI           R8, R1
A9414:  SUB.W           R0, R8, R2
A9418:  CBZ             R3, loc_A944E
A941A:  LDR             R1, [SP,#0x88+var_74]
A941C:  MOV             R8, R12
A941E:  MOV             R4, LR
A9420:  BLX             sub_108874
A9424:  VDIV.F32        S0, S16, S20
A9428:  VMOV            S2, R0
A942C:  VMOV            R1, S0; y
A9430:  VCVT.F32.U32    S2, S2
A9434:  VMOV            R0, S2; x
A9438:  BLX             powf
A943C:  VLDR            S0, =0.0
A9440:  VMOV            S2, R0
A9444:  MOV             LR, R4
A9446:  MOV             R12, R8
A9448:  VADD.F32        S2, S2, S0
A944C:  B               loc_A9464
A944E:  LDR             R1, [SP,#0x88+var_74]
A9450:  VMOV            S2, R0
A9454:  VCVT.F32.U32    S2, S2
A9458:  VMOV            S0, R1
A945C:  VCVT.F32.U32    S0, S0
A9460:  VDIV.F32        S2, S2, S0
A9464:  VSUB.F32        S6, S28, S22
A9468:  CMP.W           LR, #0
A946C:  VSUB.F32        S4, S16, S2
A9470:  IT EQ
A9472:  VMOVEQ.F32      S4, S2
A9476:  VNEG.F32        S0, S26
A947A:  VMLA.F32        S22, S6, S4
A947E:  BNE             loc_A94AE
A9480:  VMOV.F32        S6, S22
A9484:  VLDR            S2, [R12,#4]
A9488:  VLDR            S4, [R12,#0xC]
A948C:  VMLA.F32        S22, S0, S18
A9490:  VADD.F32        S4, S4, S30
A9494:  VMLA.F32        S6, S26, S18
A9498:  VSTR            S22, [R6]
A949C:  VADD.F32        S2, S2, S24
A94A0:  VSTR            S4, [R6,#0xC]
A94A4:  VSTR            S6, [R6,#8]
A94A8:  VSTR            S2, [R6,#4]
A94AC:  B               loc_A94DA
A94AE:  VMOV.F32        S6, S22
A94B2:  VLDR            S4, [R12,#8]
A94B6:  VLDR            S2, [R12]
A94BA:  VMLA.F32        S22, S0, S18
A94BE:  VMLA.F32        S6, S26, S18
A94C2:  VSTR            S22, [R6,#4]
A94C6:  VADD.F32        S4, S4, S30
A94CA:  VADD.F32        S0, S2, S24
A94CE:  VSTR            S6, [R6,#0xC]
A94D2:  VSTR            S4, [R6,#8]
A94D6:  VSTR            S0, [R6]
A94DA:  LDR             R0, [SP,#0x88+var_64]
A94DC:  LDR             R1, =(__stack_chk_guard_ptr - 0xA94E2)
A94DE:  ADD             R1, PC; __stack_chk_guard_ptr
A94E0:  LDR             R1, [R1]; __stack_chk_guard
A94E2:  LDR             R1, [R1]
A94E4:  CMP             R1, R0
A94E6:  ITTTT EQ
A94E8:  MOVEQ           R0, R5
A94EA:  ADDEQ           SP, SP, #0x28 ; '('
A94EC:  VPOPEQ          {D8-D15}
A94F0:  ADDEQ           SP, SP, #4
A94F2:  ITT EQ
A94F4:  POPEQ.W         {R8-R11}
A94F8:  POPEQ           {R4-R7,PC}
A94FA:  BLX             __stack_chk_fail
A94FE:  VADD.F32        S0, S21, S0
A9502:  VLDR            S2, =0.0
A9506:  VCMP.F32        S0, S16
A950A:  VMRS            APSR_nzcv, FPSCR
A950E:  VCMP.F32        S0, #0.0
A9512:  IT GT
A9514:  VMOVGT.F32      S0, S16
A9518:  VMRS            APSR_nzcv, FPSCR
A951C:  IT MI
A951E:  VMOVMI.F32      S0, S2
A9522:  LDR             R5, [SP,#0x88+var_70]
A9524:  CMP             R3, #0
A9526:  BNE.W           loc_A91FA
A952A:  MOV             R9, R12
A952C:  MOV             R4, R3
A952E:  MOV             R6, LR
A9530:  CMP.W           R10, #8
A9534:  BNE             loc_A9558
A9536:  LDR             R0, [SP,#0x88+var_74]
A9538:  VMOV            S2, R0
A953C:  LDR             R0, [R7,#arg_0]
A953E:  VCVT.F32.U32    S2, S2
A9542:  VMOV            S4, R0
A9546:  VCVT.F32.U32    S4, S4
A954A:  VMLA.F32        S4, S2, S0
A954E:  VCVT.U32.F32    S0, S4
A9552:  VMOV            R2, S0
A9556:  B               loc_A9584
A9558:  LDR             R0, [SP,#0x88+var_74]
A955A:  VMOV            S2, R0
A955E:  VCVT.F32.U32    S2, S2
A9562:  VMUL.F32        S0, S0, S2
A9566:  VADD.F32        S2, S0, S18
A956A:  VCVT.U32.F32    S0, S0
A956E:  VCVT.U32.F32    S2, S2
A9572:  VMOV            R0, S0
A9576:  VMOV            R1, S2
A957A:  CMP             R0, R1
A957C:  IT CC
A957E:  MOVCC           R0, R1
A9580:  LDR             R1, [R7,#arg_0]
A9582:  ADDS            R2, R0, R1
A9584:  LDR             R1, [SP,#0x88+var_78]
A9586:  LDR             R0, [R7,#arg_8]
A9588:  BL              sub_AF538
A958C:  LDR             R1, [R5]
A958E:  MOV             R12, R9
A9590:  MOV             LR, R6
A9592:  MOV             R3, R4
A9594:  CMP             R1, R0
A9596:  ITTE NE
A9598:  STRNE           R0, [R5]
A959A:  MOVNE           R5, #1
A959C:  MOVEQ           R5, #0
A959E:  B               loc_A93C0
