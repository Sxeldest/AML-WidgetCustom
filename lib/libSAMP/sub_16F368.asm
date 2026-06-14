; =========================================================
; Game Engine Function: sub_16F368
; Address            : 0x16F368 - 0x16F5BE
; =========================================================

16F368:  PUSH            {R4-R7,LR}
16F36A:  ADD             R7, SP, #0xC
16F36C:  PUSH.W          {R8}
16F370:  VPUSH           {D8-D9}
16F374:  SUB             SP, SP, #0x38
16F376:  MOV             R8, R0
16F378:  LDR             R0, =(dword_381B58 - 0x16F384)
16F37A:  MOV             R5, R1
16F37C:  MOVW            R1, #0x15B0
16F380:  ADD             R0, PC; dword_381B58
16F382:  VLDR            S0, =0.0
16F386:  LDR             R6, [R0]
16F388:  MOVW            R0, #0x15B4
16F38C:  ADD             R0, R6
16F38E:  VLDR            S12, [R6,#0x14]
16F392:  VLDR            S2, [R0]
16F396:  ADDS            R0, R6, R1
16F398:  VLDR            S10, [R6,#0x10]
16F39C:  MOVW            R1, #0x1554
16F3A0:  VLDR            S4, [R0]
16F3A4:  VADD.F32        S6, S2, S2
16F3A8:  VNEG.F32        S2, S2
16F3AC:  ADDS            R4, R6, R1
16F3AE:  VADD.F32        S8, S4, S4
16F3B2:  VNEG.F32        S4, S4
16F3B6:  VCMP.F32        S12, S6
16F3BA:  VMOV.F32        S6, S0
16F3BE:  VMRS            APSR_nzcv, FPSCR
16F3C2:  IT GT
16F3C4:  VMOVGT.F32      S6, S2
16F3C8:  VCMP.F32        S10, S8
16F3CC:  VMOV.F32        S2, S0
16F3D0:  VMRS            APSR_nzcv, FPSCR
16F3D4:  IT GT
16F3D6:  VMOVGT.F32      S2, S4
16F3DA:  VADD.F32        S4, S12, S6
16F3DE:  VADD.F32        S8, S10, S2
16F3E2:  LDR             R0, [R5,#8]
16F3E4:  VSUB.F32        S6, S0, S6
16F3E8:  VSUB.F32        S2, S0, S2
16F3EC:  LSLS            R1, R0, #3
16F3EE:  VSTR            S4, [SP,#0x58+var_24]
16F3F2:  VSTR            S8, [SP,#0x58+var_28]
16F3F6:  VSTR            S6, [SP,#0x58+var_2C]
16F3FA:  VSTR            S2, [SP,#0x58+var_30]
16F3FE:  BMI             loc_16F414
16F400:  LSLS            R1, R0, #5
16F402:  BMI             loc_16F480
16F404:  LSLS            R0, R0, #6
16F406:  BMI.W           loc_16F514
16F40A:  LDRD.W          R0, R1, [R5,#0xC]
16F40E:  STRD.W          R0, R1, [R8]
16F412:  B               loc_16F508
16F414:  LDR.W           R0, [R4,#0x43C]
16F418:  LDR.W           R1, [R4,#0x444]
16F41C:  ADD.W           R0, R1, R0,LSL#2
16F420:  LDR.W           R0, [R0,#-8]
16F424:  LDRB.W          R1, [R0,#0x142]
16F428:  CMP             R1, #0
16F42A:  BEQ             loc_16F4B2
16F42C:  VMOV.F32        S4, S0
16F430:  LDR             R1, [R0,#8]
16F432:  VLDR            S2, [R0,#0x10]
16F436:  LSLS            R2, R1, #0x1F
16F438:  BNE             loc_16F44E
16F43A:  VLDR            S4, [R4]
16F43E:  VLDR            S6, [R4,#0x378]
16F442:  VADD.F32        S4, S4, S4
16F446:  VLDR            S8, [R0,#0x274]
16F44A:  VMLA.F32        S4, S6, S8
16F44E:  VADD.F32        S2, S2, S4
16F452:  LSLS            R1, R1, #0x15
16F454:  BPL             loc_16F472
16F456:  VLDR            S0, [R4]
16F45A:  VLDR            S4, [R4,#0x378]
16F45E:  VLDR            S8, [R0,#0x274]
16F462:  VADD.F32        S0, S0, S0
16F466:  VLDR            S6, [R0,#0x148]
16F46A:  VMLA.F32        S6, S4, S8
16F46E:  VADD.F32        S0, S0, S6
16F472:  VADD.F32        S6, S2, S0
16F476:  VLDR            S4, =3.4028e38
16F47A:  VLDR            S0, =-3.4028e38
16F47E:  B               loc_16F4DA
16F480:  VMOV.F32        S0, #1.0
16F484:  VLDR            S6, [R5,#0x10]
16F488:  VMOV.F32        S2, #-1.0
16F48C:  VLDR            S4, [R5,#0xC]
16F490:  VADD.F32        S8, S6, S0
16F494:  VADD.F32        S6, S6, S2
16F498:  VADD.F32        S0, S4, S0
16F49C:  VADD.F32        S2, S4, S2
16F4A0:  VSTR            S8, [SP,#0x58+var_34]
16F4A4:  VSTR            S6, [SP,#0x58+var_3C]
16F4A8:  VSTR            S0, [SP,#0x58+var_38]
16F4AC:  VSTR            S2, [SP,#0x58+var_40]
16F4B0:  B               loc_16F4EA
16F4B2:  VLDR            S2, [R0,#0xC]
16F4B6:  VLDR            S4, [R0,#0x14]
16F4BA:  VLDR            S0, [R4,#0x14]
16F4BE:  VADD.F32        S4, S2, S4
16F4C2:  VLDR            S6, [R0,#0x70]
16F4C6:  VSUB.F32        S4, S4, S0
16F4CA:  VADD.F32        S0, S0, S2
16F4CE:  VLDR            S2, =-3.4028e38
16F4D2:  VSUB.F32        S4, S4, S6
16F4D6:  VLDR            S6, =3.4028e38
16F4DA:  VSTR            S6, [SP,#0x58+var_34]
16F4DE:  VSTR            S4, [SP,#0x58+var_38]
16F4E2:  VSTR            S2, [SP,#0x58+var_3C]
16F4E6:  VSTR            S0, [SP,#0x58+var_40]
16F4EA:  ADD             R1, SP, #0x58+var_40
16F4EC:  ADD             R2, SP, #0x58+var_30
16F4EE:  MOVS            R0, #0
16F4F0:  ADD.W           R3, R5, #0xA0
16F4F4:  STRD.W          R2, R1, [SP,#0x58+var_58]
16F4F8:  ADD.W           R1, R5, #0xC
16F4FC:  ADD.W           R2, R5, #0x14
16F500:  STR             R0, [SP,#0x58+var_50]
16F502:  MOV             R0, R8
16F504:  BL              sub_170454
16F508:  ADD             SP, SP, #0x38 ; '8'
16F50A:  VPOP            {D8-D9}
16F50E:  POP.W           {R8}
16F512:  POP             {R4-R7,PC}
16F514:  ADD             R0, SP, #0x58+var_48
16F516:  VLDR            S16, [R4,#0x64]
16F51A:  BL              sub_170190
16F51E:  LDRB.W          R0, [R4,#0x5C2]
16F522:  CBZ             R0, loc_16F596
16F524:  VMOV.F32        S0, #24.0
16F528:  VLDR            S18, [SP,#0x58+var_44]
16F52C:  VMUL.F32        S2, S16, S0
16F530:  VLDR            S16, [SP,#0x58+var_48]
16F534:  VADD.F32        S0, S2, S18
16F538:  VADD.F32        S2, S2, S16
16F53C:  VMOV.F32        S4, #-8.0
16F540:  ADD             R1, SP, #0x58+var_40
16F542:  VMOV.F32        S6, #-16.0
16F546:  ADD             R2, SP, #0x58+var_30
16F548:  STRD.W          R2, R1, [SP,#0x58+var_58]
16F54C:  MOVS            R0, #0
16F54E:  ADD.W           R2, R5, #0x14
16F552:  ADD.W           R3, R5, #0xA0
16F556:  ADD             R1, SP, #0x58+var_48
16F558:  STR             R0, [SP,#0x58+var_50]
16F55A:  MOV             R0, R8
16F55C:  VSTR            S0, [SP,#0x58+var_34]
16F560:  VSTR            S2, [SP,#0x58+var_38]
16F564:  VADD.F32        S4, S18, S4
16F568:  VADD.F32        S6, S16, S6
16F56C:  VSTR            S4, [SP,#0x58+var_3C]
16F570:  VSTR            S6, [SP,#0x58+var_40]
16F574:  BL              sub_170454
16F578:  LDR.W           R0, [R5,#0xA0]
16F57C:  ADDS            R0, #1
16F57E:  BNE             loc_16F508
16F580:  VMOV.F32        S0, #2.0
16F584:  VADD.F32        S2, S18, S0
16F588:  VADD.F32        S0, S16, S0
16F58C:  VSTR            S2, [R8,#4]
16F590:  VSTR            S0, [R8]
16F594:  B               loc_16F508
16F596:  LDRB.W          R0, [R4,#0x5C3]
16F59A:  CMP             R0, #0
16F59C:  BEQ             loc_16F524
16F59E:  LDRB            R0, [R6,#8]
16F5A0:  LSLS            R0, R0, #0x1D
16F5A2:  BMI             loc_16F524
16F5A4:  VMOV.F32        S0, #8.0
16F5A8:  VLDR            S18, [SP,#0x58+var_44]
16F5AC:  VMOV.F32        S2, #16.0
16F5B0:  VLDR            S16, [SP,#0x58+var_48]
16F5B4:  VADD.F32        S0, S18, S0
16F5B8:  VADD.F32        S2, S16, S2
16F5BC:  B               loc_16F53C
