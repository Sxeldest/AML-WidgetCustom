; =========================================================
; Game Engine Function: sub_114464
; Address            : 0x114464 - 0x114604
; =========================================================

114464:  PUSH            {R4-R7,LR}
114466:  ADD             R7, SP, #0xC
114468:  PUSH.W          {R8-R11}
11446C:  SUB             SP, SP, #4
11446E:  VPUSH           {D8-D13}
114472:  SUB             SP, SP, #0x40
114474:  VMOV.F32        S0, #1.0
114478:  VLDR            S2, =0.0
11447C:  VMOV            S16, R1
114480:  MOV             R8, R3
114482:  ADD.W           R10, SP, #0x90+var_54
114486:  MOV             R9, R2
114488:  MOV             R11, R0
11448A:  MOVS            R4, #0
11448C:  MOV             R0, R10
11448E:  MOVS            R1, #4
114490:  MOVS            R2, #4
114492:  VCMP.F32        S16, S0
114496:  VMRS            APSR_nzcv, FPSCR
11449A:  IT GE
11449C:  VMOVGE.F32      S2, S16
1144A0:  VCVT.F64.F32    D16, S2
1144A4:  LDR             R3, =(a030f - 0x1144AC); "%03.0f" ...
1144A6:  STR             R4, [SP,#0x90+var_54]
1144A8:  ADD             R3, PC; "%03.0f"
1144AA:  VSTR            D16, [SP,#0x90+var_90]
1144AE:  BL              sub_113E38
1144B2:  MOV             R5, R11
1144B4:  MOVW            R1, #0xCCCD
1144B8:  LDR.W           R0, [R5,#-0x18]!
1144BC:  MOVT            R1, #0x3FCC
1144C0:  LDR             R2, [R0,#0x18]
1144C2:  MOV             R0, R5
1144C4:  BLX             R2
1144C6:  MOV             R6, R0
1144C8:  LDR             R0, [R5]
1144CA:  MOVS            R1, #0x40900000
1144D0:  LDR             R2, [R0,#0x18]
1144D2:  MOV             R0, R5
1144D4:  BLX             R2
1144D6:  MOV             R1, R0
1144D8:  MOV             R0, R6
1144DA:  BL              sub_163C58
1144DE:  MOVS            R0, #0
1144E0:  BL              sub_163CA4
1144E4:  MOVS            R0, #0
1144E6:  BL              sub_163D1C
1144EA:  MOVS            R0, #3
1144EC:  BL              sub_163D80
1144F0:  MOV             R0, #0xC0FFFFFF
1144F4:  STR             R0, [SP,#0x90+var_58]
1144F6:  ADD             R0, SP, #0x90+var_58
1144F8:  BL              sub_163C74
1144FC:  ADD             R6, SP, #0x90+var_60
1144FE:  MOV             R0, R10
114500:  STRD.W          R4, R4, [SP,#0x90+var_60]
114504:  MOV             R1, R6
114506:  BL              sub_163C40
11450A:  LDR             R0, [R5]
11450C:  MOV             R1, R5
11450E:  LDR             R2, [R0,#0x14]
114510:  ADD             R0, SP, #0x90+var_68
114512:  BLX             R2
114514:  LDR             R0, [R5]
114516:  MOV             R1, R5
114518:  VLDR            S20, [SP,#0x90+var_68]
11451C:  LDR             R2, [R0,#0x14]
11451E:  ADD             R0, SP, #0x90+var_70
114520:  BLX             R2
114522:  LDR             R0, [R5]
114524:  MOV             R1, R5
114526:  VLDR            S22, [SP,#0x90+var_6C]
11452A:  LDR             R2, [R0,#0x4C]
11452C:  ADD             R0, SP, #0x90+var_78
11452E:  BLX             R2
114530:  VMOV.F32        S18, #0.5
114534:  VLDR            S2, [SP,#0x90+var_74]
114538:  VMOV            S0, R9
11453C:  MOV             R2, R6
11453E:  VMLS.F32        S22, S2, S0
114542:  VMOV            R1, S22
114546:  VMUL.F32        S4, S20, S18
11454A:  VMOV            R0, S4
11454E:  BL              sub_163D64
114552:  LDR.W           R0, [R11,#4]!
114556:  CMP             R0, #0
114558:  BEQ             loc_1145F6
11455A:  LDR             R0, [R0]
11455C:  CMP             R0, #0
11455E:  BEQ             loc_1145F6
114560:  LDR             R0, [R5]
114562:  ADD             R2, SP, #0x90+var_70
114564:  MOV             R1, R5
114566:  VMOV            S20, R8
11456A:  LDR             R3, [R0,#8]
11456C:  MOV.W           R0, #0x44000000
114570:  STRD.W          R0, R0, [SP,#0x90+var_70]
114574:  ADD             R0, SP, #0x90+var_68
114576:  BLX             R3
114578:  LDR             R0, [R5]
11457A:  MOV             R1, R5
11457C:  LDR             R2, [R0,#0x14]
11457E:  ADD             R0, SP, #0x90+var_70
114580:  BLX             R2
114582:  LDR             R0, [R5]
114584:  MOV             R1, R5
114586:  VLDR            S22, [SP,#0x90+var_70]
11458A:  LDR             R2, [R0,#0x14]
11458C:  ADD             R0, SP, #0x90+var_78
11458E:  BLX             R2
114590:  LDR             R0, [R5]
114592:  MOV             R1, R5
114594:  VLDR            S24, [SP,#0x90+var_74]
114598:  VLDR            S26, [SP,#0x90+var_64]
11459C:  LDR             R2, [R0,#0x4C]
11459E:  ADD             R0, SP, #0x90+var_80
1145A0:  BLX             R2
1145A2:  VMUL.F32        S0, S26, S18
1145A6:  VLDR            S2, [SP,#0x90+var_7C]
1145AA:  VMOV.F32        S4, #-2.0
1145AE:  MOV.W           R6, #0xFFFFFFFF
1145B2:  VMLS.F32        S0, S2, S20
1145B6:  VMUL.F32        S2, S22, S18
1145BA:  VSUB.F32        S0, S24, S0
1145BE:  VMOV            R1, S2; int
1145C2:  VLDR            S2, =0.016667
1145C6:  VMLA.F32        S4, S16, S2
1145CA:  VMOV            R2, S0; int
1145CE:  VMOV.F32        S0, #2.0
1145D2:  VCMP.F32        S4, S0
1145D6:  VMRS            APSR_nzcv, FPSCR
1145DA:  IT GT
1145DC:  VMOVGT.F32      S4, S0
1145E0:  LDRD.W          R3, R0, [SP,#0x90+var_68]; int
1145E4:  STR             R6, [SP,#0x90+var_84]
1145E6:  ADD             R6, SP, #0x90+var_84
1145E8:  STR             R0, [SP,#0x90+var_90]; float
1145EA:  MOV             R0, R11; int
1145EC:  STR             R6, [SP,#0x90+var_88]; int
1145EE:  VSTR            S4, [SP,#0x90+var_90+4]
1145F2:  BL              sub_163228
1145F6:  ADD             SP, SP, #0x40 ; '@'
1145F8:  VPOP            {D8-D13}
1145FC:  ADD             SP, SP, #4
1145FE:  POP.W           {R8-R11}
114602:  POP             {R4-R7,PC}
