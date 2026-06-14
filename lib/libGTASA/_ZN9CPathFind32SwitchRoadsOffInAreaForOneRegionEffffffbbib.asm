; =========================================================
; Game Engine Function: _ZN9CPathFind32SwitchRoadsOffInAreaForOneRegionEffffffbbib
; Address            : 0x315590 - 0x315704
; =========================================================

315590:  PUSH            {R4-R7,LR}
315592:  ADD             R7, SP, #0xC
315594:  PUSH.W          {R8-R11}
315598:  SUB             SP, SP, #4
31559A:  VPUSH           {D8-D14}
31559E:  SUB             SP, SP, #0x18
3155A0:  MOV             R11, R0
3155A2:  LDR             R0, [R7,#arg_14]
3155A4:  ADD.W           R12, R11, R0,LSL#2
3155A8:  LDR.W           R0, [R12,#0x804]
3155AC:  CMP             R0, #0
3155AE:  BEQ.W           loc_3156F6
3155B2:  MOVW            R6, #0x1104
3155B6:  LDR             R5, [R7,#arg_10]
3155B8:  ADD             R6, R12
3155BA:  CMP             R5, #0
3155BC:  ITTE EQ
3155BE:  LDREQ           R5, [R6]
3155C0:  ADDWEQ          R6, R12, #0xFE4
3155C4:  MOVNE           R5, #0
3155C6:  LDR.W           LR, [R6]
3155CA:  CMP             R5, LR
3155CC:  BGE.W           loc_3156F6
3155D0:  VMOV.F32        S28, #0.125
3155D4:  LDR.W           R8, [R7,#arg_18]
3155D8:  ADDW            R4, R12, #0x804
3155DC:  VMOV            S22, R3
3155E0:  VLDR            S16, [R7,#arg_8]
3155E4:  VMOV            S24, R2
3155E8:  VLDR            S18, [R7,#arg_4]
3155EC:  VMOV            S26, R1
3155F0:  VLDR            S20, [R7,#arg_0]
3155F4:  ADD.W           R9, SP, #0x70+var_5C
3155F8:  ADD             R3, SP, #0x70+var_60
3155FA:  MOV.W           R12, #0xFFFFFFFF
3155FE:  B               loc_315602
315600:  LDR             R0, [R4]
315602:  RSB.W           R1, R5, R5,LSL#3
315606:  ADD.W           R1, R0, R1,LSL#2
31560A:  LDRSH.W         R0, [R1,#8]
31560E:  LDRSH.W         R6, [R1,#0xC]
315612:  VMOV            S0, R0
315616:  VCVT.F32.S32    S0, S0
31561A:  VMUL.F32        S2, S0, S28
31561E:  VMOV            S0, R6
315622:  VCVT.F32.S32    S0, S0
315626:  VCMPE.F32       S2, S26
31562A:  VMRS            APSR_nzcv, FPSCR
31562E:  BLT             loc_3156EE
315630:  VCMPE.F32       S2, S24
315634:  VMRS            APSR_nzcv, FPSCR
315638:  BGT             loc_3156EE
31563A:  LDRSH.W         R0, [R1,#0xA]
31563E:  VMOV            S2, R0
315642:  VCVT.F32.S32    S2, S2
315646:  VMUL.F32        S2, S2, S28
31564A:  VCMPE.F32       S2, S22
31564E:  VMRS            APSR_nzcv, FPSCR
315652:  BLT             loc_3156EE
315654:  VCMPE.F32       S2, S20
315658:  VMRS            APSR_nzcv, FPSCR
31565C:  BGT             loc_3156EE
31565E:  VMUL.F32        S0, S0, S28
315662:  VCMPE.F32       S0, S18
315666:  VMRS            APSR_nzcv, FPSCR
31566A:  BLT             loc_3156EE
31566C:  VCMPE.F32       S0, S16
315670:  VMRS            APSR_nzcv, FPSCR
315674:  BGT             loc_3156EE
315676:  LDRB            R0, [R1,#0x1A]
315678:  LDRH            R6, [R1,#0x18]
31567A:  ORR.W           R0, R6, R0,LSL#16
31567E:  ADD.W           R6, R12, R0,LSR#20
315682:  BIC.W           R6, R6, #0xFF000000
315686:  CMP             R6, #2
315688:  BCC             loc_3156EE
31568A:  CMP.W           R8, #0
31568E:  UBFX.W          R6, R0, #5, #1
315692:  ITE NE
315694:  UBFXNE.W        R0, R0, #8, #1
315698:  LDREQ           R0, [R7,#arg_C]
31569A:  CMP             R6, R0
31569C:  BEQ             loc_3156EE
31569E:  LDR.W           R10, [R7,#arg_C]
3156A2:  MOV             R0, R11
3156A4:  MOV             R2, R9
3156A6:  STR.W           LR, [SP,#0x70+var_64]
3156AA:  STRD.W          R10, R8, [SP,#0x70+var_70]
3156AE:  B               loc_3156BA
3156B0:  STRD.W          R10, R8, [SP,#0x70+var_70]
3156B4:  MOV             R0, R11
3156B6:  MOV             R2, R9
3156B8:  MOVS            R3, #0
3156BA:  BLX             j__ZN9CPathFind26SwitchOffNodeAndNeighboursEP9CPathNodePS1_S2_bb; CPathFind::SwitchOffNodeAndNeighbours(CPathNode *,CPathNode **,CPathNode **,bool,bool)
3156BE:  LDR             R1, [SP,#0x70+var_5C]
3156C0:  CMP             R1, #0
3156C2:  BNE             loc_3156B0
3156C4:  LDR             R1, [SP,#0x70+var_60]
3156C6:  MOV             R6, R8
3156C8:  ADD.W           R8, SP, #0x70+var_60
3156CC:  CBZ             R1, loc_3156E2
3156CE:  MOV             R0, R11
3156D0:  MOV             R2, R8
3156D2:  MOVS            R3, #0
3156D4:  STRD.W          R10, R6, [SP,#0x70+var_70]
3156D8:  BLX             j__ZN9CPathFind26SwitchOffNodeAndNeighboursEP9CPathNodePS1_S2_bb; CPathFind::SwitchOffNodeAndNeighbours(CPathNode *,CPathNode **,CPathNode **,bool,bool)
3156DC:  LDR             R1, [SP,#0x70+var_60]
3156DE:  CMP             R1, #0
3156E0:  BNE             loc_3156CE
3156E2:  LDR.W           LR, [SP,#0x70+var_64]
3156E6:  MOV             R3, R8
3156E8:  MOV.W           R12, #0xFFFFFFFF
3156EC:  MOV             R8, R6
3156EE:  ADDS            R5, #1
3156F0:  CMP             R5, LR
3156F2:  BNE.W           loc_315600
3156F6:  ADD             SP, SP, #0x18
3156F8:  VPOP            {D8-D14}
3156FC:  ADD             SP, SP, #4
3156FE:  POP.W           {R8-R11}
315702:  POP             {R4-R7,PC}
