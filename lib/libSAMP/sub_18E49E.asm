; =========================================================
; Game Engine Function: sub_18E49E
; Address            : 0x18E49E - 0x18E69E
; =========================================================

18E49E:  PUSH            {R4-R7,LR}
18E4A0:  ADD             R7, SP, #0xC
18E4A2:  PUSH.W          {R8-R11}
18E4A6:  SUB             SP, SP, #0x164
18E4A8:  STR             R1, [SP,#0x180+var_17C]
18E4AA:  LDRB            R1, [R0]
18E4AC:  STR             R0, [SP,#0x180+src]
18E4AE:  CBZ             R1, loc_18E4C8
18E4B0:  ADDS            R0, #1
18E4B2:  MOVS            R6, #0
18E4B4:  MOVS            R5, #0
18E4B6:  MOVS            R4, #0
18E4B8:  LDRB            R1, [R0,R4]
18E4BA:  ADDS            R6, #8
18E4BC:  ADC.W           R5, R5, #0
18E4C0:  ADDS            R4, #1
18E4C2:  CMP             R1, #0
18E4C4:  BNE             loc_18E4B8
18E4C6:  B               loc_18E4CE
18E4C8:  MOVS            R4, #0
18E4CA:  MOVS            R6, #0
18E4CC:  MOVS            R5, #0
18E4CE:  MOVW            R1, #0x4925
18E4D2:  LSRS            R0, R4, #3
18E4D4:  MOVT            R1, #0x2492
18E4D8:  MOV             R2, #0xFFFFFFF8
18E4DC:  UMULL.W         R0, R1, R0, R1
18E4E0:  ADD.W           R0, R4, #8
18E4E4:  AND.W           R0, R2, R0,LSR#3
18E4E8:  RSB.W           R1, R1, R1,LSL#3
18E4EC:  RSB.W           R1, R4, R1,LSL#3
18E4F0:  ADD             R0, R1
18E4F2:  ADD.W           R9, R0, #0x37 ; '7'
18E4F6:  ADD.W           R11, R9, R4
18E4FA:  ADD.W           R8, R11, #9
18E4FE:  MOV             R0, R8; unsigned int
18E500:  BLX             j__Znaj; operator new[](uint)
18E504:  LDR             R1, [SP,#0x180+src]; src
18E506:  MOV             R2, R4; n
18E508:  MOV             R10, R0
18E50A:  BLX             j_memcpy
18E50E:  ADD.W           R0, R10, R4
18E512:  MOVS            R1, #0x80
18E514:  STRB.W          R1, [R0],#1; int
18E518:  MOV             R1, R9; n
18E51A:  BLX             sub_22178C
18E51E:  ADD.W           R0, R11, R10
18E522:  REV             R1, R6
18E524:  REV             R2, R5
18E526:  MOVW            R4, #0x5476
18E52A:  STR.W           R2, [R0,#1]
18E52E:  MOVT            R4, #0x1032
18E532:  STR.W           R1, [R0,#5]
18E536:  MOVS.W          R0, R8,LSR#6
18E53A:  STR             R0, [SP,#0x180+var_174]
18E53C:  MOV             R0, #0x67452301
18E544:  MOVW            R8, #0xAB89
18E548:  STR             R0, [SP,#0x180+src]
18E54A:  MOV             R0, #0x98BADCFE
18E552:  MOVT            R8, #0xEFCD
18E556:  STR             R0, [SP,#0x180+var_168]
18E558:  MOV             R0, #0xC3D2E1F0
18E560:  STR.W           R10, [SP,#0x180+var_180]
18E564:  STR             R0, [SP,#0x180+var_16C]
18E566:  BEQ.W           loc_18E67E
18E56A:  ADD.W           R9, SP, #0x180+var_160
18E56E:  MOV             R11, R10
18E570:  MOV.W           R10, #0
18E574:  ADD.W           R0, R9, #0x40 ; '@'
18E578:  STR             R0, [SP,#0x180+var_178]
18E57A:  MOVS            R0, #0
18E57C:  ADD.W           R1, R11, R0
18E580:  VLD1.32         {D16-D17}, [R1]
18E584:  ADD.W           R1, R9, R0
18E588:  ADDS            R0, #0x10
18E58A:  VREV32.8        Q8, Q8
18E58E:  CMP             R0, #0x40 ; '@'
18E590:  VST1.32         {D16-D17}, [R1]
18E594:  BNE             loc_18E57C
18E596:  LDR             R0, [SP,#0x180+var_178]; int
18E598:  MOV.W           R1, #0x100; n
18E59C:  BLX             sub_22178C
18E5A0:  MOVS            R0, #0
18E5A2:  ADD.W           R1, R9, R0
18E5A6:  LDR.W           R5, [R9,R0]
18E5AA:  ADDS            R0, #4
18E5AC:  LDR             R3, [R1,#0x20]
18E5AE:  CMP.W           R0, #0x100
18E5B2:  LDR             R6, [R1,#0x34]
18E5B4:  LDR             R2, [R1,#8]
18E5B6:  EOR.W           R3, R3, R6
18E5BA:  EOR.W           R2, R2, R3
18E5BE:  EOR.W           R2, R2, R5
18E5C2:  MOV.W           R2, R2,ROR#31
18E5C6:  STR             R2, [R1,#0x40]
18E5C8:  BNE             loc_18E5A2
18E5CA:  LDR             R3, [SP,#0x180+var_16C]
18E5CC:  MOVS            R0, #0
18E5CE:  LDR             R2, [SP,#0x180+var_168]
18E5D0:  MOV             R6, R4
18E5D2:  LDR             R5, [SP,#0x180+src]
18E5D4:  MOV             R1, R8
18E5D6:  STR             R4, [SP,#0x180+var_170]
18E5D8:  MOV             R12, R5
18E5DA:  MOV             LR, R2
18E5DC:  MOV             R4, R6
18E5DE:  CMP             R0, #0x13
18E5E0:  BHI             loc_18E5F6
18E5E2:  AND.W           R2, LR, R1
18E5E6:  BIC.W           R5, R4, R1
18E5EA:  ADDS            R6, R5, R2
18E5EC:  MOV             R5, #0x5A827999
18E5F4:  B               loc_18E638
18E5F6:  CMP             R0, #0x27 ; '''
18E5F8:  BHI             loc_18E60C
18E5FA:  MOVW            R5, #0xEBA1
18E5FE:  EOR.W           R2, LR, R1
18E602:  EOR.W           R6, R2, R4
18E606:  MOVT            R5, #0x6ED9
18E60A:  B               loc_18E638
18E60C:  CMP             R0, #0x3B ; ';'
18E60E:  BHI             loc_18E628
18E610:  ORR.W           R5, R4, LR
18E614:  AND.W           R2, R4, LR
18E618:  ANDS            R5, R1
18E61A:  ORR.W           R6, R5, R2
18E61E:  MOV             R5, #0x8F1BBCDC
18E626:  B               loc_18E638
18E628:  EOR.W           R2, LR, R1
18E62C:  MOVW            R5, #0xC1D6
18E630:  EOR.W           R6, R2, R4
18E634:  MOVT            R5, #0xCA62
18E638:  ADD.W           R2, R3, R12,ROR#27
18E63C:  LDR.W           R3, [R9,R0,LSL#2]
18E640:  ADD             R2, R6
18E642:  ADD             R2, R5
18E644:  ADDS            R0, #1
18E646:  ADDS            R5, R2, R3
18E648:  MOV.W           R2, R1,ROR#2
18E64C:  CMP             R0, #0x50 ; 'P'
18E64E:  MOV             R3, R4
18E650:  MOV             R6, LR
18E652:  MOV             R1, R12
18E654:  BNE             loc_18E5D8
18E656:  LDR             R0, [SP,#0x180+var_16C]
18E658:  ADD             R8, R12
18E65A:  ADD.W           R11, R11, #0x40 ; '@'
18E65E:  ADD.W           R10, R10, #1
18E662:  ADD             R0, R4
18E664:  STR             R0, [SP,#0x180+var_16C]
18E666:  LDR             R0, [SP,#0x180+var_168]
18E668:  LDR             R4, [SP,#0x180+var_170]
18E66A:  ADD             R0, R2
18E66C:  STR             R0, [SP,#0x180+var_168]
18E66E:  LDR             R0, [SP,#0x180+src]
18E670:  ADD             R4, LR
18E672:  ADD             R0, R5
18E674:  STR             R0, [SP,#0x180+src]
18E676:  LDR             R0, [SP,#0x180+var_174]
18E678:  CMP             R10, R0
18E67A:  BNE.W           loc_18E57A
18E67E:  LDR             R0, [SP,#0x180+var_180]; void *
18E680:  BLX             j__ZdaPv; operator delete[](void *)
18E684:  LDR             R0, [SP,#0x180+var_17C]
18E686:  LDR             R1, [SP,#0x180+src]
18E688:  STRD.W          R1, R8, [R0]
18E68C:  LDR             R1, [SP,#0x180+var_168]
18E68E:  STRD.W          R1, R4, [R0,#8]
18E692:  LDR             R1, [SP,#0x180+var_16C]
18E694:  STR             R1, [R0,#0x10]
18E696:  ADD             SP, SP, #0x164
18E698:  POP.W           {R8-R11}
18E69C:  POP             {R4-R7,PC}
