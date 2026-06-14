; =========================================================
; Game Engine Function: sub_67530
; Address            : 0x67530 - 0x677AC
; =========================================================

67530:  PUSH            {R4-R7,LR}
67532:  ADD             R7, SP, #0xC
67534:  PUSH.W          {R8}
67538:  MOV             R5, R2
6753A:  LDR             R2, [R0,#0x5C]
6753C:  CMP             R2, #0
6753E:  BEQ             loc_67610
67540:  MOV             R8, R1
67542:  LDR             R1, =(off_114AA8 - 0x6754E)
67544:  MOVW            R3, #0x7D24
67548:  LDR             R2, [R2]
6754A:  ADD             R1, PC; off_114AA8
6754C:  MOVT            R3, #0x66 ; 'f'
67550:  LDR             R4, [R1]; dword_1A4404
67552:  LDR             R1, [R4]
67554:  ADD             R3, R1
67556:  CMP             R2, R3
67558:  BEQ             loc_67610
6755A:  LDR             R0, [R0,#4]
6755C:  CMP             R0, #0
6755E:  ITT NE
67560:  LDRNE           R0, [R0,#0x18]
67562:  CMPNE           R0, #0
67564:  BEQ             loc_67610
67566:  MOV             R2, #0x5D1021
6756E:  ADD             R1, R2
67570:  BLX             R1
67572:  MOV             R6, R0
67574:  LDR             R0, [R4]
67576:  MOV             R1, #0x1C2C91
6757E:  ADDS            R2, R0, R1
67580:  MOV             R0, R6
67582:  MOV             R1, R5
67584:  BLX             R2
67586:  LDR             R1, [R6,#8]
67588:  LSLS            R2, R0, #6
6758A:  LDR             R2, [R1,R2]
6758C:  VMOV            S14, R2
67590:  VCMP.F32        S14, S14
67594:  VMRS            APSR_nzcv, FPSCR
67598:  ITTTT VC
6759A:  ADDVC.W         R1, R1, R0,LSL#6
6759E:  LDRVC           R0, [R1,#4]
675A0:  VMOVVC          S10, R0
675A4:  VCMPVC.F32      S10, S10
675A8:  IT VC
675AA:  VMRSVC          APSR_nzcv, FPSCR
675AE:  BVS             loc_67610
675B0:  LDR             R0, [R1,#8]
675B2:  VMOV            S6, R0
675B6:  VCMP.F32        S6, S6
675BA:  VMRS            APSR_nzcv, FPSCR
675BE:  ITTTT VC
675C0:  LDRVC           R0, [R1,#0x10]
675C2:  VMOVVC          S4, R0
675C6:  VCMPVC.F32      S4, S4
675CA:  VMRSVC          APSR_nzcv, FPSCR
675CE:  BVS             loc_67610
675D0:  LDR             R0, [R1,#0x14]
675D2:  VMOV            S2, R0
675D6:  VCMP.F32        S2, S2
675DA:  VMRS            APSR_nzcv, FPSCR
675DE:  ITTTT VC
675E0:  LDRVC           R0, [R1,#0x18]
675E2:  VMOVVC          S0, R0
675E6:  VCMPVC.F32      S0, S0
675EA:  VMRSVC          APSR_nzcv, FPSCR
675EE:  BVS             loc_67610
675F0:  LDR             R0, [R1,#0x20]
675F2:  VMOV            S1, R0
675F6:  VCMP.F32        S1, S1
675FA:  VMRS            APSR_nzcv, FPSCR
675FE:  ITTTT VC
67600:  LDRVC           R0, [R1,#0x24]
67602:  VMOVVC          S12, R0
67606:  VCMPVC.F32      S12, S12
6760A:  VMRSVC          APSR_nzcv, FPSCR
6760E:  BVC             loc_67618
67610:  MOVS            R0, #0
67612:  POP.W           {R8}
67616:  POP             {R4-R7,PC}
67618:  LDR             R0, [R1,#0x28]
6761A:  VMOV            S8, R0
6761E:  MOVS            R0, #0
67620:  VCMP.F32        S8, S8
67624:  VMRS            APSR_nzcv, FPSCR
67628:  BVS             loc_676AC
6762A:  VABS.F32        S5, S14
6762E:  VLDR            S3, =+Inf
67632:  VCMP.F32        S5, S3
67636:  VMRS            APSR_nzcv, FPSCR
6763A:  BEQ             loc_676AC
6763C:  VABS.F32        S5, S10
67640:  VCMP.F32        S5, S3
67644:  VMRS            APSR_nzcv, FPSCR
67648:  ITTT NE
6764A:  VABSNE.F32      S5, S6
6764E:  VCMPNE.F32      S5, S3
67652:  VMRSNE          APSR_nzcv, FPSCR
67656:  BEQ             loc_676AC
67658:  VABS.F32        S5, S4
6765C:  VCMP.F32        S5, S3
67660:  VMRS            APSR_nzcv, FPSCR
67664:  ITTT NE
67666:  VABSNE.F32      S5, S2
6766A:  VCMPNE.F32      S5, S3
6766E:  VMRSNE          APSR_nzcv, FPSCR
67672:  BEQ             loc_676AC
67674:  VABS.F32        S5, S0
67678:  VCMP.F32        S5, S3
6767C:  VMRS            APSR_nzcv, FPSCR
67680:  ITTT NE
67682:  VABSNE.F32      S5, S1
67686:  VCMPNE.F32      S5, S3
6768A:  VMRSNE          APSR_nzcv, FPSCR
6768E:  BEQ             loc_676AC
67690:  VABS.F32        S5, S12
67694:  VCMP.F32        S5, S3
67698:  VMRS            APSR_nzcv, FPSCR
6769C:  ITTT NE
6769E:  VABSNE.F32      S5, S8
676A2:  VCMPNE.F32      S5, S3
676A6:  VMRSNE          APSR_nzcv, FPSCR
676AA:  BNE             loc_676B2
676AC:  POP.W           {R8}
676B0:  POP             {R4-R7,PC}
676B2:  VLDR            S3, =20000.0
676B6:  MOVS            R0, #0
676B8:  VCMP.F32        S14, S3
676BC:  VMRS            APSR_nzcv, FPSCR
676C0:  BGT             loc_676AC
676C2:  VLDR            S5, =-20000.0
676C6:  VCMP.F32        S14, S5
676CA:  VMRS            APSR_nzcv, FPSCR
676CE:  BMI             loc_676AC
676D0:  VCMP.F32        S10, S3
676D4:  MOVS            R0, #0
676D6:  VMRS            APSR_nzcv, FPSCR
676DA:  BGT             loc_676AC
676DC:  VCMP.F32        S10, S5
676E0:  VMRS            APSR_nzcv, FPSCR
676E4:  BMI             loc_676AC
676E6:  VCMP.F32        S6, S3
676EA:  MOVS            R0, #0
676EC:  VMRS            APSR_nzcv, FPSCR
676F0:  BGT             loc_676AC
676F2:  VCMP.F32        S6, S5
676F6:  VMRS            APSR_nzcv, FPSCR
676FA:  BMI             loc_676AC
676FC:  VCMP.F32        S1, S3
67700:  MOVS            R0, #0
67702:  VMRS            APSR_nzcv, FPSCR
67706:  BGT             loc_676AC
67708:  VCMP.F32        S1, S5
6770C:  VMRS            APSR_nzcv, FPSCR
67710:  BMI             loc_676AC
67712:  VCMP.F32        S12, S3
67716:  MOVS            R0, #0
67718:  VMRS            APSR_nzcv, FPSCR
6771C:  BGT             loc_676AC
6771E:  VCMP.F32        S12, S5
67722:  VMRS            APSR_nzcv, FPSCR
67726:  BMI             loc_676AC
67728:  VCMP.F32        S8, S3
6772C:  MOVS            R0, #0
6772E:  VMRS            APSR_nzcv, FPSCR
67732:  BGT             loc_676AC
67734:  VCMP.F32        S8, S5
67738:  VMRS            APSR_nzcv, FPSCR
6773C:  BMI             loc_676AC
6773E:  VCMP.F32        S4, S3
67742:  MOVS            R0, #0
67744:  VMRS            APSR_nzcv, FPSCR
67748:  BGT             loc_676AC
6774A:  VCMP.F32        S4, S5
6774E:  VMRS            APSR_nzcv, FPSCR
67752:  BMI             loc_676AC
67754:  VCMP.F32        S2, S3
67758:  MOVS            R0, #0
6775A:  VMRS            APSR_nzcv, FPSCR
6775E:  BGT             loc_676AC
67760:  VCMP.F32        S2, S5
67764:  VMRS            APSR_nzcv, FPSCR
67768:  BMI             loc_676AC
6776A:  VCMP.F32        S0, S3
6776E:  MOVS            R0, #0
67770:  VMRS            APSR_nzcv, FPSCR
67774:  BGT             loc_676AC
67776:  VCMP.F32        S0, S5
6777A:  VMRS            APSR_nzcv, FPSCR
6777E:  BMI             loc_676AC
67780:  CMP             R1, #0
67782:  BEQ             loc_676AC
67784:  VLD1.8          {D16-D17}, [R1]!
67788:  MOVS            R0, #1
6778A:  VLD1.8          {D18-D19}, [R1]!
6778E:  VLD1.8          {D20-D21}, [R1]!
67792:  VLD1.8          {D22-D23}, [R1]
67796:  VST1.8          {D16-D17}, [R8]!
6779A:  VST1.8          {D18-D19}, [R8]!
6779E:  VST1.8          {D20-D21}, [R8]!
677A2:  VST1.8          {D22-D23}, [R8]
677A6:  POP.W           {R8}
677AA:  POP             {R4-R7,PC}
