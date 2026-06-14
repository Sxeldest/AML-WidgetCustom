; =========================================================
; Game Engine Function: _ZN9CPathFind20SwitchRoadsOffInAreaEffffffbbb
; Address            : 0x3184BC - 0x31868A
; =========================================================

3184BC:  PUSH            {R4-R7,LR}
3184BE:  ADD             R7, SP, #0xC
3184C0:  PUSH.W          {R8-R11}
3184C4:  SUB             SP, SP, #4
3184C6:  VPUSH           {D8-D13}
3184CA:  SUB             SP, SP, #0x30; float
3184CC:  STR             R0, [SP,#0x80+var_54]
3184CE:  VMOV            S22, R3
3184D2:  LDRD.W          R4, R6, [R7,#arg_C]
3184D6:  VMOV            S24, R2
3184DA:  LDR             R5, [R7,#arg_14]
3184DC:  VMOV            S26, R1
3184E0:  VLDR            S16, [R7,#arg_8]
3184E4:  MOV.W           R9, #0
3184E8:  VLDR            S18, [R7,#arg_4]
3184EC:  VLDR            S20, [R7,#arg_0]
3184F0:  STR             R3, [SP,#0x80+var_58]
3184F2:  STR             R2, [SP,#0x80+var_5C]
3184F4:  STR             R1, [SP,#0x80+var_60]
3184F6:  ADD             R0, SP, #0x80+var_74
3184F8:  MOV             R10, R6
3184FA:  STM.W           R0, {R4,R6,R9}
3184FE:  MOV             R11, R4
318500:  MOV             R8, R5
318502:  LDR             R0, [SP,#0x80+var_54]; this
318504:  LDR             R1, [SP,#0x80+var_60]; float
318506:  LDR             R2, [SP,#0x80+var_5C]; float
318508:  LDR             R3, [SP,#0x80+var_58]; float
31850A:  STR             R5, [SP,#0x80+var_68]; bool
31850C:  VSTR            S20, [SP,#0x80+var_80]
318510:  VSTR            S18, [SP,#0x80+var_7C]
318514:  VSTR            S16, [SP,#0x80+var_78]
318518:  BLX             j__ZN9CPathFind32SwitchRoadsOffInAreaForOneRegionEffffffbbib; CPathFind::SwitchRoadsOffInAreaForOneRegion(float,float,float,float,float,float,bool,bool,int,bool)
31851C:  ADD.W           R9, R9, #1
318520:  CMP.W           R9, #0x40 ; '@'
318524:  BNE             loc_3184F6
318526:  LDR.W           R9, [SP,#0x80+var_54]
31852A:  MOVW            R0, #0x35A8
31852E:  LDR.W           R1, [R9,R0]
318532:  ADD             R0, R9
318534:  CMP             R1, #1
318536:  BLT             loc_3185F8
318538:  MOVS            R2, #0
31853A:  MOVW            R3, #0x35AC
31853E:  MOVW            R6, #0x35B4
318542:  RSB.W           R5, R2, R2,LSL#3
318546:  ADD.W           R12, R9, R5,LSL#2
31854A:  ADD.W           LR, R12, R3
31854E:  VLDR            S0, [LR]
318552:  VCMPE.F32       S0, S26
318556:  VMRS            APSR_nzcv, FPSCR
31855A:  BLT             loc_3185F2
31855C:  ADD.W           R4, R12, R6
318560:  VLDR            S0, [R4]
318564:  VCMPE.F32       S0, S22
318568:  VMRS            APSR_nzcv, FPSCR
31856C:  BLT             loc_3185F2
31856E:  MOVW            R4, #0x35BC
318572:  ADD             R4, R12
318574:  VLDR            S0, [R4]
318578:  VCMPE.F32       S0, S18
31857C:  VMRS            APSR_nzcv, FPSCR
318580:  BLT             loc_3185F2
318582:  MOVW            R4, #0x35B0
318586:  ADD             R4, R12
318588:  VLDR            S0, [R4]
31858C:  VCMPE.F32       S0, S24
318590:  VMRS            APSR_nzcv, FPSCR
318594:  BGT             loc_3185F2
318596:  MOVW            R4, #0x35B8
31859A:  ADD             R4, R12
31859C:  VLDR            S0, [R4]
3185A0:  VCMPE.F32       S0, S20
3185A4:  VMRS            APSR_nzcv, FPSCR
3185A8:  BGT             loc_3185F2
3185AA:  ADD.W           R4, R12, #0x35C0
3185AE:  VLDR            S0, [R4]
3185B2:  VCMPE.F32       S0, S16
3185B6:  VMRS            APSR_nzcv, FPSCR
3185BA:  BGT             loc_3185F2
3185BC:  SUBS            R1, #1
3185BE:  CMP             R2, R1
3185C0:  BGE             loc_3185EE
3185C2:  MOVW            R1, #0x35C8
3185C6:  ADD.W           R4, R12, R1
3185CA:  MOV             R5, R2
3185CC:  ADD.W           R1, R4, #0xC
3185D0:  VLD1.32         {D16-D17}, [R4]
3185D4:  ADDS            R5, #1
3185D6:  VLD1.32         {D18-D19}, [R1]
3185DA:  ADD.W           R1, LR, #0xC
3185DE:  VST1.32         {D16-D17}, [LR]
3185E2:  VST1.32         {D18-D19}, [R1]
3185E6:  LDR             R1, [R0]
3185E8:  SUBS            R1, #1
3185EA:  CMP             R5, R1
3185EC:  BLT             loc_3185CC
3185EE:  SUBS            R2, #1
3185F0:  STR             R1, [R0]
3185F2:  ADDS            R2, #1
3185F4:  CMP             R2, R1
3185F6:  BLT             loc_318542
3185F8:  CMP             R1, #0x3F ; '?'
3185FA:  BGT             loc_31867C
3185FC:  CMP.W           R8, #0
318600:  BNE             loc_31867C
318602:  MOVW            R2, #0x35AC
318606:  RSB.W           R1, R1, R1,LSL#3
31860A:  ADD             R2, R9
31860C:  ADD.W           R1, R2, R1,LSL#2
318610:  VSTR            S26, [R1]
318614:  LDR             R1, [R0]
318616:  RSB.W           R1, R1, R1,LSL#3
31861A:  ADD.W           R1, R2, R1,LSL#2
31861E:  VSTR            S24, [R1,#4]
318622:  LDR             R1, [R0]
318624:  RSB.W           R1, R1, R1,LSL#3
318628:  ADD.W           R1, R2, R1,LSL#2
31862C:  VSTR            S22, [R1,#8]
318630:  LDR             R1, [R0]
318632:  RSB.W           R1, R1, R1,LSL#3
318636:  ADD.W           R1, R2, R1,LSL#2
31863A:  VSTR            S20, [R1,#0xC]
31863E:  LDR             R1, [R0]
318640:  RSB.W           R1, R1, R1,LSL#3
318644:  ADD.W           R1, R2, R1,LSL#2
318648:  VSTR            S18, [R1,#0x10]
31864C:  LDR             R1, [R0]
31864E:  RSB.W           R1, R1, R1,LSL#3
318652:  ADD.W           R1, R2, R1,LSL#2
318656:  VSTR            S16, [R1,#0x14]
31865A:  LDR             R1, [R0]
31865C:  RSB.W           R1, R1, R1,LSL#3
318660:  ADD.W           R1, R2, R1,LSL#2
318664:  STRB.W          R11, [R1,#0x18]
318668:  LDR             R1, [R0]
31866A:  RSB.W           R1, R1, R1,LSL#3
31866E:  ADD.W           R1, R2, R1,LSL#2
318672:  STRB.W          R10, [R1,#0x19]
318676:  LDR             R1, [R0]
318678:  ADDS            R1, #1
31867A:  STR             R1, [R0]
31867C:  ADD             SP, SP, #0x30 ; '0'
31867E:  VPOP            {D8-D13}
318682:  ADD             SP, SP, #4
318684:  POP.W           {R8-R11}
318688:  POP             {R4-R7,PC}
