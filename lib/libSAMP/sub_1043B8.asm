; =========================================================
; Game Engine Function: sub_1043B8
; Address            : 0x1043B8 - 0x104524
; =========================================================

1043B8:  PUSH            {R4-R7,LR}
1043BA:  ADD             R7, SP, #0xC
1043BC:  PUSH.W          {R11}
1043C0:  VPUSH           {D8-D9}
1043C4:  MOV             R4, R0
1043C6:  LDR             R0, [R0,#0x5C]
1043C8:  CMP             R0, #0
1043CA:  BEQ.W           loc_1044FE
1043CE:  LDRB.W          R0, [R0,#0x485]
1043D2:  LSLS            R0, R0, #0x1B
1043D4:  BMI.W           loc_1044FE
1043D8:  MOV             R0, R4
1043DA:  BL              sub_F8C70
1043DE:  CMP             R0, #0
1043E0:  BEQ.W           loc_1044FE
1043E4:  LDRB.W          R0, [R4,#0x60]
1043E8:  CMP             R0, #0
1043EA:  BNE.W           loc_1044FE
1043EE:  LDR             R1, [R4,#0x5C]
1043F0:  LDR.W           R0, [R1,#0x590]
1043F4:  CBZ             R0, loc_1043FE
1043F6:  LDRB.W          R2, [R1,#0x485]
1043FA:  LSLS            R2, R2, #0x1F
1043FC:  BNE             loc_104496
1043FE:  LDR             R0, [R4,#0x48]
104400:  CMP             R0, #0
104402:  BEQ             loc_1044FE
104404:  SUBS            R1, R0, #1
104406:  VLDR            S2, =0.02
10440A:  LDR             R0, =(unk_B36FE - 0x104416)
10440C:  VMOV            S0, R1
104410:  STR             R1, [R4,#0x48]
104412:  ADD             R0, PC; unk_B36FE
104414:  VCVT.F32.U32    S0, S0
104418:  VMUL.F32        S0, S0, S2
10441C:  VCVT.U32.F32    S0, S0
104420:  VMOV            R1, S0
104424:  CMP             R1, #5
104426:  MOV             R2, R1
104428:  IT CC
10442A:  MOVCC           R2, #0
10442C:  CMP             R1, #0xFA
10442E:  MOV.W           R1, #0
104432:  IT HI
104434:  MOVHI           R2, #0xFA
104436:  BL              sub_107188
10443A:  LDR             R0, [R4,#0x48]
10443C:  CMP.W           R0, #0x7D0
104440:  BLS             loc_1044FE
104442:  LDR             R0, [R4,#0x5C]
104444:  LDR.W           R6, [R0,#0x590]
104448:  CMP             R6, #0
10444A:  BEQ             loc_1044FE
10444C:  BL              sub_F0B30
104450:  MOV             R5, R0
104452:  LDR             R0, [R4,#0x4C]
104454:  ADDS            R0, #0xC8
104456:  CMP             R0, R5
104458:  BCS             loc_1044FE
10445A:  BLX             lrand48
10445E:  MOV             R1, #0x66666667
104466:  SMMUL.W         R1, R0, R1
10446A:  LSRS            R2, R1, #4
10446C:  ADD.W           R1, R2, R1,LSR#31
104470:  ADD.W           R1, R1, R1,LSL#2
104474:  SUB.W           R0, R0, R1,LSL#3
104478:  UXTB            R0, R0
10447A:  CMP             R0, #0x14
10447C:  BCC             loc_1044AA
10447E:  LDR             R1, [R4,#0x48]
104480:  MOVW            R2, #0x1388
104484:  CMP             R1, R2
104486:  BCC             loc_1044B0
104488:  ADR             R1, dword_10453C
10448A:  CMP             R0, #0x1D
10448C:  IT HI
10448E:  ADDHI           R1, #4
104490:  VLDR            S16, [R1]
104494:  B               loc_1044B4
104496:  LDR.W           R2, [R0,#0x464]
10449A:  CMP             R2, R1
10449C:  BNE             loc_1044FE
10449E:  LDRH            R0, [R0,#0x26]
1044A0:  SUBW            R0, R0, #0x239
1044A4:  CMP             R0, #2
1044A6:  BCS             loc_1043FE
1044A8:  B               loc_1044FE
1044AA:  VLDR            S16, =0.0
1044AE:  B               loc_1044B4
1044B0:  VLDR            S16, =0.012
1044B4:  LDR             R0, [R6,#0x48]
1044B6:  MOVS            R1, #0
1044B8:  BL              sub_108700
1044BC:  VMOV            S0, R0
1044C0:  VLDR            D9, =0.050000001
1044C4:  VCVT.F64.F32    D16, S0
1044C8:  VCMP.F64        D16, D9
1044CC:  VMRS            APSR_nzcv, FPSCR
1044D0:  BGT             loc_1044EC
1044D2:  LDR             R0, [R6,#0x4C]
1044D4:  MOVS            R1, #0
1044D6:  BL              sub_108700
1044DA:  VMOV            S0, R0
1044DE:  VCVT.F64.F32    D16, S0
1044E2:  VCMP.F64        D16, D9
1044E6:  VMRS            APSR_nzcv, FPSCR
1044EA:  BLE             loc_1044FC
1044EC:  LDR             R0, [R6,#0x5C]
1044EE:  VMOV            S0, R0
1044F2:  VADD.F32        S0, S16, S0
1044F6:  VMOV            R0, S0
1044FA:  STR             R0, [R6,#0x5C]
1044FC:  STR             R5, [R4,#0x4C]
1044FE:  LDR             R0, =(off_234970 - 0x10450C)
104500:  MOVS            R1, #0
104502:  LDR             R2, [R4,#0x48]
104504:  MOVW            R3, #0x1389
104508:  ADD             R0, PC; off_234970
10450A:  CMP             R2, R3
10450C:  LDR             R0, [R0]; dword_23DEF0
10450E:  LDR             R0, [R0]
104510:  IT CC
104512:  MOVCC           R1, #1
104514:  VPOP            {D8-D9}
104518:  POP.W           {R11}
10451C:  POP.W           {R4-R7,LR}
104520:  B.W             sub_F97A8
