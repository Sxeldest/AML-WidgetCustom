; =========================================================
; Game Engine Function: sub_141580
; Address            : 0x141580 - 0x1416F4
; =========================================================

141580:  PUSH            {R4-R7,LR}
141582:  ADD             R7, SP, #0xC
141584:  PUSH.W          {R8-R11}
141588:  SUB             SP, SP, #4
14158A:  VPUSH           {D8}
14158E:  SUB             SP, SP, #0x10
141590:  MOV             R6, R0
141592:  LDR             R0, =(off_23496C - 0x14159A)
141594:  MOV             R4, R1
141596:  ADD             R0, PC; off_23496C
141598:  LDR.W           R11, [R0]; dword_23DEF4
14159C:  LDR.W           R1, [R11]
1415A0:  CMP             R1, #0
1415A2:  BEQ.W           loc_1416D2
1415A6:  MOV             R5, R2
1415A8:  MOVS            R0, #0
1415AA:  CMP             R2, #0
1415AC:  BEQ.W           loc_1416D4
1415B0:  CMP.W           R4, #0x7D0
1415B4:  BHI.W           loc_1416D4
1415B8:  LDR.W           R1, [R1,#0x3B0]
1415BC:  LDR             R1, [R1]
1415BE:  CMP             R1, #0
1415C0:  BEQ.W           loc_1416D4
1415C4:  LDR             R0, [R5,#0xC]
1415C6:  CMP             R0, #0
1415C8:  BEQ.W           loc_1416D2
1415CC:  MOV             R0, R5
1415CE:  BL              sub_10A1E4
1415D2:  CMP             R0, #0
1415D4:  BNE             loc_1416D2
1415D6:  MOV             R0, R5
1415D8:  BL              sub_109F36
1415DC:  CMP             R0, #0
1415DE:  BNE             loc_1416D2
1415E0:  MOV             R0, R5
1415E2:  BL              sub_F8E1C
1415E6:  VLDR            S16, =90.0
1415EA:  VMOV            S0, R0
1415EE:  VCMP.F32        S0, S16
1415F2:  VMRS            APSR_nzcv, FPSCR
1415F6:  BGT             loc_1416D2
1415F8:  LDR             R0, [R5,#0xC]
1415FA:  MOVS            R1, #0
1415FC:  ADD.W           R0, R0, #0x468
141600:  LDR.W           R2, [R0,R1,LSL#2]
141604:  CMP             R2, #0
141606:  BNE             loc_1416CA
141608:  ADDS            R1, #1
14160A:  CMP             R1, #7
14160C:  BNE             loc_141600
14160E:  LDR.W           R0, [R11]
141612:  MOV.W           R8, #0
141616:  LDR.W           R0, [R0,#0x3B0]
14161A:  LDR             R6, [R0]
14161C:  MOV.W           R0, #0x13A0
141620:  ADD.W           R9, R6, #0x13A0
141624:  LDRH.W          R10, [R6,R0]
141628:  UXTH.W          R1, R8
14162C:  MOV             R0, R6
14162E:  BL              sub_148EBA
141632:  CBNZ            R0, loc_1416AA
141634:  ADD.W           R0, R6, R8
141638:  LDRB.W          R0, [R0,#0xFB4]
14163C:  CBZ             R0, loc_1416AA
14163E:  ADD.W           R0, R6, R8,LSL#2
141642:  LDR             R0, [R0,#4]
141644:  CBZ             R0, loc_1416AA
141646:  LDR             R0, [R0]
141648:  CBZ             R0, loc_1416AA
14164A:  LDRB            R1, [R0,#0x10]
14164C:  CBZ             R1, loc_1416AA
14164E:  LDR.W           R0, [R0,#0x128]
141652:  CBZ             R0, loc_1416AA
141654:  LDR             R0, [R0,#0x5C]
141656:  CBZ             R0, loc_1416AA
141658:  LDR             R0, [R0,#0x14]
14165A:  CBZ             R0, loc_1416AA
14165C:  STR.W           R9, [SP,#0x38+var_2C]
141660:  LDR.W           R9, [R0,#0x34]
141664:  STR.W           R10, [SP,#0x38+var_30]
141668:  LDR.W           R10, [R0,#0x38]
14166C:  LDR             R1, [R0,#0x30]
14166E:  MOV             R0, R5
141670:  MOV             R2, R9
141672:  STR             R1, [SP,#0x38+var_38]
141674:  MOV             R3, R10
141676:  BL              sub_F8DB8
14167A:  LDR             R1, [SP,#0x38+var_38]
14167C:  MOV             R2, R9
14167E:  STR             R0, [SP,#0x38+var_34]
141680:  MOV             R3, R10
141682:  MOV             R0, R5
141684:  LDR.W           R9, [SP,#0x38+var_2C]
141688:  LDR.W           R10, [SP,#0x38+var_30]
14168C:  BL              sub_F8DB8
141690:  VMOV            S0, R0
141694:  LDR             R0, [SP,#0x38+var_34]
141696:  VCMP.F32        S0, S16
14169A:  VMOV            S2, R0
14169E:  VMRS            APSR_nzcv, FPSCR
1416A2:  ITT LT
1416A4:  VMOVLT.F32      S16, S2
1416A8:  MOVLT           R10, R8
1416AA:  ADD.W           R8, R8, #1
1416AE:  CMP.W           R8, #0x3EC
1416B2:  BNE             loc_141628
1416B4:  LDRH.W          R0, [R9]
1416B8:  UXTH.W          R1, R10
1416BC:  CMP             R1, R0
1416BE:  BNE             loc_1416D2
1416C0:  LDR.W           R0, [R11]
1416C4:  MOV             R1, R4
1416C6:  MOVS            R2, #0
1416C8:  B               loc_1416EC
1416CA:  LDR             R0, [R6,#0x1C]
1416CC:  LDR             R0, [R0,#0x5C]
1416CE:  CMP             R2, R0
1416D0:  BEQ             loc_1416E2
1416D2:  MOVS            R0, #0
1416D4:  ADD             SP, SP, #0x10
1416D6:  VPOP            {D8}
1416DA:  ADD             SP, SP, #4
1416DC:  POP.W           {R8-R11}
1416E0:  POP             {R4-R7,PC}
1416E2:  ADDS            R1, #1
1416E4:  LDR.W           R0, [R11]
1416E8:  SXTB            R2, R1
1416EA:  MOV             R1, R4
1416EC:  BL              sub_144876
1416F0:  MOVS            R0, #1
1416F2:  B               loc_1416D4
