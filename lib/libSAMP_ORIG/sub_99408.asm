; =========================================================
; Game Engine Function: sub_99408
; Address            : 0x99408 - 0x99624
; =========================================================

99408:  PUSH            {R4-R7,LR}
9940A:  ADD             R7, SP, #0xC
9940C:  PUSH.W          {R8,R9,R11}
99410:  SUB             SP, SP, #8
99412:  LDR             R2, =(dword_1ACF68 - 0x9941C)
99414:  MOVW            R0, #0x19AC
99418:  ADD             R2, PC; dword_1ACF68
9941A:  LDR             R4, [R2]
9941C:  LDR             R5, [R4,R0]
9941E:  MOVS            R0, #1
99420:  STRB.W          R0, [R5,#0x7C]
99424:  LDRB.W          R0, [R5,#0x7F]
99428:  CBZ             R0, loc_99432
9942A:  ADD             SP, SP, #8
9942C:  POP.W           {R8,R9,R11}
99430:  POP             {R4-R7,PC}
99432:  LDR.W           R6, [R5,#0x1C0]
99436:  CMP             R6, #0
99438:  BEQ             loc_9942A
9943A:  LDR             R0, [R6,#0x10]
9943C:  CMP             R0, #1
9943E:  BNE             loc_99462
99440:  VLDR            S0, [R5,#0xC]
99444:  VLDR            S2, [R5,#0x1B4]
99448:  VLDR            S4, [R5,#0x1BC]
9944C:  VADD.F32        S0, S0, S2
99450:  VADD.F32        S0, S0, S4
99454:  VCVT.S32.F32    S0, S0
99458:  VCVT.F32.S32    S0, S0
9945C:  VSTR            S0, [R5,#0xC8]
99460:  B               loc_9942A
99462:  LDR.W           R0, [R5,#0x184]
99466:  MOV             R8, R2
99468:  SUBS            R1, R0, #1
9946A:  STR.W           R1, [R5,#0x184]
9946E:  BEQ             loc_9947E
99470:  LDR.W           R1, [R5,#0x18C]
99474:  ADD.W           R0, R1, R0,LSL#2
99478:  SUB.W           R1, R0, #8
9947C:  B               loc_99482
9947E:  ADD.W           R1, R5, #0x234
99482:  LDR.W           R0, [R5,#0x27C]
99486:  MOVS            R2, #1
99488:  LDR             R1, [R1]
9948A:  STRB.W          R2, [R5,#0x7C]
9948E:  STR.W           R1, [R5,#0x170]
99492:  BL              sub_9C12E
99496:  LDR.W           R1, [R5,#0x27C]
9949A:  VLDR            S0, [R5,#0xCC]
9949E:  LDR             R0, [R1,#0x40]
994A0:  LDR             R2, [R1,#0x48]
994A2:  ADD.W           R0, R2, R0,LSL#4
994A6:  SUBS            R0, #0x10
994A8:  VLD1.32         {D16-D17}, [R0]
994AC:  ADD.W           R0, R5, #0x210
994B0:  VST1.32         {D16-D17}, [R0]
994B4:  VLDR            S2, [R6,#0x20]
994B8:  VCMP.F32        S2, S0
994BC:  VMRS            APSR_nzcv, FPSCR
994C0:  IT GE
994C2:  VMOVGE.F32      S0, S2
994C6:  LDRD.W          R2, R0, [R6,#0xC]
994CA:  VSTR            S0, [R6,#0x20]
994CE:  ADDS            R3, R2, #1
994D0:  STR             R3, [R6,#0xC]
994D2:  CMP             R3, R0
994D4:  BGE             loc_99536
994D6:  ADD.W           R12, R4, #0x1560
994DA:  LDR.W           R4, [R8]
994DE:  MOV             R0, R8
994E0:  CMN.W           R2, #2
994E4:  MOVW            R0, #0x19AC
994E8:  ADD.W           R2, R2, #2
994EC:  LDR             R0, [R4,R0]
994EE:  LDR.W           R4, [R0,#0x1C0]
994F2:  IT LE
994F4:  LDRLE           R3, [R4,#0xC]
994F6:  RSB.W           R3, R3, R3,LSL#3
994FA:  VLDR            S0, [R4,#0x14]
994FE:  VLDR            S2, [R4,#0x18]
99502:  LDR             R0, [R4,#0x44]
99504:  VSUB.F32        S2, S2, S0
99508:  ADD.W           R0, R0, R3,LSL#2
9950C:  VLDR            S4, [R0]
99510:  ADD.W           R0, R1, #0x64 ; 'd'
99514:  VMLA.F32        S0, S2, S4
99518:  VLDR            S2, [R5,#0x1B4]
9951C:  VSUB.F32        S0, S0, S2
99520:  VLDR            S2, [R12]
99524:  VADD.F32        S0, S2, S0
99528:  VSTR            S0, [R5,#0x1BC]
9952C:  BL              sub_9E5DE
99530:  VLDR            S0, [R6,#0x1C]
99534:  B               loc_99550
99536:  ADD.W           R0, R1, #0x64 ; 'd'
9953A:  MOVS            R4, #0
9953C:  MOVS            R2, #1
9953E:  STR.W           R4, [R5,#0x1BC]
99542:  BL              sub_9E5DE
99546:  VLDR            S0, [R6,#0x20]
9954A:  STR             R4, [R6,#0xC]
9954C:  VSTR            S0, [R6,#0x1C]
99550:  VLDR            S2, [R5,#0xC]
99554:  MOV.W           R12, #0
99558:  VLDR            S4, [R5,#0x1B4]
9955C:  MOV             R9, R8
9955E:  VLDR            S6, [R5,#0x1BC]
99562:  VADD.F32        S2, S2, S4
99566:  LDR.W           R0, [R8]
9956A:  STRD.W          R12, R12, [R5,#0xE8]
9956E:  MOVW            R8, #0x19AC
99572:  LDR             R1, [R6,#0xC]
99574:  LDR.W           R4, [R0,R8]
99578:  MOVS            R0, #1
9957A:  STR.W           R12, [R5,#0xF8]
9957E:  VSTR            S0, [R5,#0xCC]
99582:  CMP.W           R1, #0xFFFFFFFF
99586:  VADD.F32        S2, S2, S6
9958A:  LDR.W           R2, [R4,#0x1C0]
9958E:  VCVT.S32.F32    S2, S2
99592:  VCVT.F32.S32    S2, S2
99596:  VSTR            S2, [R5,#0xC8]
9959A:  IT LE
9959C:  LDRLE           R1, [R2,#0xC]
9959E:  LDR             R2, [R2,#0x44]
995A0:  RSB.W           R1, R1, R1,LSL#3
995A4:  STRB.W          R0, [R4,#0x7C]
995A8:  LDR.W           R0, [R4,#0x27C]; int
995AC:  ADD.W           R6, R2, R1,LSL#2
995B0:  ADDS            R6, #0xC
995B2:  LDM             R6, {R1-R3,R6}; int
995B4:  STRD.W          R6, R12, [SP,#0x20+var_20]; float
995B8:  BL              sub_9BFD8
995BC:  LDR.W           R0, [R4,#0x27C]
995C0:  LDR.W           R2, [R9]
995C4:  LDR             R1, [R0,#0x40]
995C6:  LDR             R0, [R0,#0x48]
995C8:  ADD.W           R0, R0, R1,LSL#4
995CC:  SUBS            R0, #0x10
995CE:  VLD1.32         {D16-D17}, [R0]
995D2:  ADD.W           R0, R4, #0x210
995D6:  VST1.32         {D16-D17}, [R0]
995DA:  LDR.W           R0, [R2,R8]
995DE:  LDR.W           R0, [R0,#0x1C0]
995E2:  LDR             R1, [R0,#0xC]
995E4:  VLDR            S0, [R0,#0x14]
995E8:  VLDR            S2, [R0,#0x18]
995EC:  LDR             R0, [R0,#0x44]
995EE:  RSB.W           R1, R1, R1,LSL#3
995F2:  VSUB.F32        S0, S2, S0
995F6:  ADD.W           R0, R0, R1,LSL#2
995FA:  VLDR            S4, [R0]
995FE:  VLDR            S6, [R0,#0x1C]
99602:  VSUB.F32        S2, S6, S4
99606:  VMUL.F32        S0, S2, S0
9960A:  VLDR            S2, =0.65
9960E:  VMUL.F32        S0, S0, S2
99612:  VMOV            R0, S0
99616:  ADD             SP, SP, #8
99618:  POP.W           {R8,R9,R11}
9961C:  POP.W           {R4-R7,LR}
99620:  B.W             sub_970FC
