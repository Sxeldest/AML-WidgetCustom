; =========================================================
; Game Engine Function: sub_1783C0
; Address            : 0x1783C0 - 0x1785AE
; =========================================================

1783C0:  PUSH            {R4-R7,LR}
1783C2:  ADD             R7, SP, #0xC
1783C4:  PUSH.W          {R8-R11}
1783C8:  SUB             SP, SP, #0x24; float
1783CA:  MOV             R8, R0
1783CC:  LDR             R0, [R0,#0x58]
1783CE:  LDR.W           R1, [R8,#0x48]
1783D2:  LDRB.W          R3, [R8,#4]
1783D6:  RSB.W           R0, R0, R0,LSL#3
1783DA:  LDR.W           R10, [R8,#0x1C]
1783DE:  ADD.W           R1, R1, R0,LSL#2
1783E2:  LSLS            R0, R3, #0x1E
1783E4:  ADD.W           R9, R1, #8
1783E8:  STR             R1, [SP,#0x40+var_20]
1783EA:  BMI             loc_17844E
1783EC:  LDR             R0, =(aXxxxxxxXXXxxxx - 0x1783FC); "..-         -XXXXXXX-    X    -        "... ...
1783EE:  ADD.W           R11, R1, #0xA
1783F2:  MOVS            R6, #0
1783F4:  MOV.W           LR, #0
1783F8:  ADD             R0, PC; "..-         -XXXXXXX-    X    -        "...
1783FA:  MOV             R12, R0
1783FC:  MOV             R0, R12
1783FE:  MOVS            R5, #0
178400:  ADD.W           R0, R12, LR
178404:  LDRH.W          R4, [R11]
178408:  MOVS            R3, #0
17840A:  LDRH.W          R1, [R9]
17840E:  ADD             R4, R6
178410:  LDRB            R2, [R0,R5]
178412:  MLA.W           R1, R10, R4, R1
178416:  LDR.W           R4, [R8,#0x14]
17841A:  CMP             R2, #0x2E ; '.'
17841C:  IT EQ
17841E:  MOVEQ.W         R3, #0xFFFFFFFF
178422:  CMP             R2, #0x58 ; 'X'
178424:  MOV.W           R2, #0
178428:  ADD             R4, R1
17842A:  STRB            R3, [R4,R5]
17842C:  LDR.W           R3, [R8,#0x14]
178430:  IT EQ
178432:  MOVEQ.W         R2, #0xFFFFFFFF
178436:  ADD             R1, R3
178438:  ADD             R1, R5
17843A:  ADDS            R5, #1
17843C:  CMP             R5, #0x6C ; 'l'
17843E:  STRB.W          R2, [R1,#0x6D]
178442:  BNE             loc_178404
178444:  ADDS            R6, #1
178446:  ADD             LR, R5
178448:  CMP             R6, #0x1B
17844A:  BNE             loc_1783FC
17844C:  B               loc_17847A
17844E:  LDRH            R0, [R1,#0xA]
178450:  MOVS            R3, #0xFF
178452:  LDRH.W          R1, [R9]
178456:  MLA.W           R0, R10, R0, R1
17845A:  LDR.W           R1, [R8,#0x14]
17845E:  ADD.W           R2, R0, R10
178462:  ADD             R1, R2
178464:  STRB            R3, [R1,#1]
178466:  LDR.W           R1, [R8,#0x14]
17846A:  STRB            R3, [R1,R2]
17846C:  LDR.W           R1, [R8,#0x14]
178470:  ADD             R1, R0
178472:  STRB            R3, [R1,#1]
178474:  LDR.W           R1, [R8,#0x14]
178478:  STRB            R3, [R1,R0]
17847A:  LDRH.W          R0, [R9]
17847E:  VMOV.F32        S0, #0.5
178482:  VLDR            S6, [R8,#0x28]
178486:  LDR.W           R2, [R8,#0x40]
17848A:  VMOV            S2, R0
17848E:  LDR             R0, [SP,#0x40+var_20]
178490:  CMP             R2, #1
178492:  VCVT.F32.U32    S2, S2
178496:  LDRH            R0, [R0,#0xA]
178498:  VMOV            S4, R0
17849C:  VCVT.F32.U32    S4, S4
1784A0:  VADD.F32        S2, S2, S0
1784A4:  VADD.F32        S0, S4, S0
1784A8:  VLDR            S4, [R8,#0x24]
1784AC:  VMUL.F32        S2, S4, S2
1784B0:  VMUL.F32        S0, S6, S0
1784B4:  VSTR            S2, [R8,#0x2C]
1784B8:  VSTR            S0, [R8,#0x30]
1784BC:  BLT             loc_178580
1784BE:  MOVS            R5, #0
1784C0:  MOVS            R6, #0x18
1784C2:  LDR.W           R1, [R8,#0x48]
1784C6:  LDR             R0, [R1,R6]; int
1784C8:  CMP             R0, #0
1784CA:  BEQ             loc_178578
1784CC:  ADD             R1, R6
1784CE:  LDR.W           R12, [R1,#-0x18]
1784D2:  CMP.W           R12, #0x10000
1784D6:  BHI             loc_178578
1784D8:  LDRH.W          R3, [R1,#-0x12]
1784DC:  LDRH.W          R4, [R1,#-0xE]
1784E0:  VLDR            S0, [R1,#-8]
1784E4:  VLDR            S12, [R1,#-4]
1784E8:  VMOV            S8, R3
1784EC:  VMOV            S10, R4
1784F0:  ADD             R4, R3
1784F2:  LDRH.W          LR, [R1,#-0x14]
1784F6:  VMOV            R2, S0; int
1784FA:  LDRH.W          R9, [R1,#-0x10]
1784FE:  VMOV            R3, S12; int
178502:  VMOV            S1, R4
178506:  VLDR            S2, [R8,#0x24]
17850A:  ADD.W           R4, LR, R9
17850E:  VMOV            S6, LR
178512:  VMOV            S14, R9
178516:  VLDR            S4, [R8,#0x28]
17851A:  VMOV            S3, R4
17851E:  LDR.W           R1, [R1,#-0xC]
178522:  VCVT.F32.U32    S8, S8
178526:  STR             R1, [SP,#0x40+var_28]; float
178528:  VCVT.F32.U32    S10, S10
17852C:  UXTH.W          R1, R12; int
178530:  VCVT.F32.U32    S14, S14
178534:  VCVT.F32.U32    S6, S6
178538:  VCVT.F32.S32    S1, S1
17853C:  VCVT.F32.S32    S3, S3
178540:  VADD.F32        S8, S12, S8
178544:  VMUL.F32        S10, S4, S10
178548:  VMUL.F32        S14, S2, S14
17854C:  VADD.F32        S0, S0, S6
178550:  VMUL.F32        S4, S4, S1
178554:  VMUL.F32        S2, S2, S3
178558:  VSTR            S8, [SP,#0x40+var_3C]
17855C:  VSTR            S10, [SP,#0x40+var_34]
178560:  VSTR            S14, [SP,#0x40+var_38]
178564:  VSTR            S0, [SP,#0x40+var_40]
178568:  VSTR            S4, [SP,#0x40+var_2C]
17856C:  VSTR            S2, [SP,#0x40+var_30]
178570:  BL              sub_178290
178574:  LDR.W           R2, [R8,#0x40]
178578:  ADDS            R5, #1
17857A:  ADDS            R6, #0x1C
17857C:  CMP             R5, R2
17857E:  BLT             loc_1784C2
178580:  LDR.W           R1, [R8,#0x34]
178584:  CMP             R1, #1
178586:  BLT             loc_1785A6
178588:  MOVS            R5, #0
17858A:  LDR.W           R0, [R8,#0x3C]
17858E:  LDR.W           R0, [R0,R5,LSL#2]
178592:  LDRB.W          R2, [R0,#0x54]
178596:  CBZ             R2, loc_1785A0
178598:  BL              sub_178630
17859C:  LDR.W           R1, [R8,#0x34]
1785A0:  ADDS            R5, #1
1785A2:  CMP             R5, R1
1785A4:  BLT             loc_17858A
1785A6:  ADD             SP, SP, #0x24 ; '$'
1785A8:  POP.W           {R8-R11}
1785AC:  POP             {R4-R7,PC}
