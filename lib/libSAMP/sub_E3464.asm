; =========================================================
; Game Engine Function: sub_E3464
; Address            : 0xE3464 - 0xE3586
; =========================================================

E3464:  PUSH            {R4-R7,LR}
E3466:  ADD             R7, SP, #0xC
E3468:  PUSH.W          {R8-R11}
E346C:  SUB             SP, SP, #4
E346E:  VPUSH           {D8-D14}
E3472:  SUB             SP, SP, #0x20
E3474:  MOV             R5, R0
E3476:  LDR             R0, =(off_23496C - 0xE347C)
E3478:  ADD             R0, PC; off_23496C
E347A:  LDR             R4, [R0]; dword_23DEF4
E347C:  LDR             R0, [R4]
E347E:  CMP             R0, #0
E3480:  BEQ             loc_E3578
E3482:  LDR             R0, =(off_234970 - 0xE348A)
E3484:  MOV             R11, R1
E3486:  ADD             R0, PC; off_234970
E3488:  LDR             R0, [R0]; dword_23DEF0
E348A:  LDR             R0, [R0]
E348C:  BL              sub_E35A0
E3490:  CMP             R0, #0
E3492:  BEQ             loc_E3578
E3494:  LDR             R0, [R4]
E3496:  ADD.W           R6, R5, #0x10
E349A:  LDR.W           R0, [R0,#0x3B0]
E349E:  LDR             R0, [R0]
E34A0:  ADDW            R10, R0, #0xFB4
E34A4:  ADD.W           R8, R0, #4
E34A8:  BL              sub_F0B30
E34AC:  VLDR            S16, =0.0125
E34B0:  MOV             R5, R0
E34B2:  VLDR            S18, =0.04
E34B6:  MOV.W           R9, #0
E34BA:  VLDR            S20, =0.065
E34BE:  VLDR            S22, =0.35
E34C2:  LDRB.W          R0, [R6,#-0x10]
E34C6:  CMP             R0, #0
E34C8:  BEQ             loc_E3568
E34CA:  LDRD.W          R0, R1, [R6]
E34CE:  ADD             R0, R1
E34D0:  CMP             R5, R0
E34D2:  BHI             loc_E3568
E34D4:  LDRB.W          R0, [R10,R9]
E34D8:  CMP             R0, #0
E34DA:  BEQ             loc_E3568
E34DC:  LDR.W           R0, [R8]
E34E0:  CMP             R0, #0
E34E2:  BEQ             loc_E3568
E34E4:  LDR             R4, [R0]
E34E6:  CMP             R4, #0
E34E8:  BEQ             loc_E3568
E34EA:  LDR.W           R0, [R4,#0x128]
E34EE:  CBZ             R0, loc_E3568
E34F0:  LDRB            R1, [R4,#0x19]
E34F2:  CBZ             R1, loc_E3568
E34F4:  BL              sub_F8E1C
E34F8:  VLDR            S0, [R6,#0xC]
E34FC:  VMOV            S2, R0
E3500:  VCMP.F32        S2, S0
E3504:  VMRS            APSR_nzcv, FPSCR
E3508:  BHI             loc_E3568
E350A:  LDR.W           R0, [R4,#0x128]
E350E:  ADD             R2, SP, #0x78+var_64
E3510:  MOVS            R1, #8
E3512:  BL              sub_104D90
E3516:  LDR             R0, [R6,#0x10]
E3518:  VMOV.F32        S24, S20
E351C:  LDR             R1, [SP,#0x78+var_60]
E351E:  SUBS            R0, #1
E3520:  STR             R1, [SP,#0x78+var_68]
E3522:  VLDR            S28, [SP,#0x78+var_5C]
E3526:  VMOV            S0, R0
E352A:  LDR.W           R0, [R4,#0x128]
E352E:  LDR             R4, [SP,#0x78+var_64]
E3530:  VCVT.F32.S32    S0, S0
E3534:  VMLA.F32        S24, S0, S16
E3538:  VMUL.F32        S26, S0, S18
E353C:  BL              sub_F8D40
E3540:  VMOV            S0, R0
E3544:  LDR             R0, [R6,#8]
E3546:  LDR             R3, [SP,#0x78+var_68]
E3548:  SUB.W           R1, R6, #0xC
E354C:  VMLA.F32        S26, S0, S24
E3550:  MOV             R2, R4
E3552:  STRD.W          R1, R0, [SP,#0x78+var_74]
E3556:  MOV             R1, R11
E3558:  VADD.F32        S0, S26, S22
E355C:  VADD.F32        S0, S28, S0
E3560:  VSTR            S0, [SP,#0x78+var_78]
E3564:  BL              sub_E35C8
E3568:  ADD.W           R9, R9, #1
E356C:  ADD.W           R8, R8, #4
E3570:  ADDS            R6, #0x24 ; '$'
E3572:  CMP.W           R9, #0x3EC
E3576:  BNE             loc_E34C2
E3578:  ADD             SP, SP, #0x20 ; ' '
E357A:  VPOP            {D8-D14}
E357E:  ADD             SP, SP, #4
E3580:  POP.W           {R8-R11}
E3584:  POP             {R4-R7,PC}
