; =========================================================
; Game Engine Function: sub_72440
; Address            : 0x72440 - 0x72A5C
; =========================================================

72440:  PUSH            {R4-R7,LR}
72442:  ADD             R7, SP, #0xC
72444:  PUSH.W          {R8-R10}
72448:  VPUSH           {D8-D10}
7244C:  SUB             SP, SP, #0x30
7244E:  MOV             R8, R0
72450:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x72458)
72454:  ADD             R0, PC; __stack_chk_guard_ptr
72456:  LDR             R0, [R0]; __stack_chk_guard
72458:  LDR             R0, [R0]
7245A:  STR             R0, [SP,#0x60+var_34]
7245C:  BL              sub_8D060
72460:  LDR             R0, =(off_114AD8 - 0x72466)
72462:  ADD             R0, PC; off_114AD8
72464:  LDR             R0, [R0]; dword_1A4434
72466:  LDR             R0, [R0]
72468:  CMP             R0, #0
7246A:  BEQ             loc_724F6
7246C:  LDR             R0, =(off_114AA8 - 0x7247A)
7246E:  MOV             R1, #0x96B514
72476:  ADD             R0, PC; off_114AA8
72478:  LDR             R0, [R0]; dword_1A4404
7247A:  LDR             R0, [R0]
7247C:  LDRB            R0, [R0,R1]
7247E:  CBZ             R0, loc_7249E
72480:  BL              sub_83B30
72484:  BL              sub_7E42C
72488:  LDR             R0, =(off_114B44 - 0x7248E)
7248A:  ADD             R0, PC; off_114B44
7248C:  LDR             R0, [R0]; byte_1A4480
7248E:  LDRB            R0, [R0]
72490:  CBZ             R0, loc_724D6
72492:  LDR             R0, =(off_114B48 - 0x7249A)
72494:  MOVS            R1, #0
72496:  ADD             R0, PC; off_114B48
72498:  LDR             R0, [R0]; dword_1A41D8
7249A:  LDR             R0, [R0]
7249C:  B               loc_724D2
7249E:  LDR             R0, =(byte_1A448C - 0x724A4)
724A0:  ADD             R0, PC; byte_1A448C
724A2:  LDRB            R0, [R0]
724A4:  CBZ             R0, loc_724B0
724A6:  BL              sub_7E3C0
724AA:  BL              sub_83B10
724AE:  B               loc_724B8
724B0:  BL              sub_7E42C
724B4:  BL              sub_83B30
724B8:  LDR             R0, =(off_114B44 - 0x724BE)
724BA:  ADD             R0, PC; off_114B44
724BC:  LDR             R0, [R0]; byte_1A4480
724BE:  LDRB            R0, [R0]
724C0:  CBZ             R0, loc_724D6
724C2:  LDR             R0, =(off_114C2C - 0x724CA)
724C4:  LDR             R1, =(off_114B48 - 0x724CC)
724C6:  ADD             R0, PC; off_114C2C
724C8:  ADD             R1, PC; off_114B48
724CA:  LDR             R0, [R0]; byte_116D31
724CC:  LDR             R2, [R1]; dword_1A41D8
724CE:  LDRB            R1, [R0]
724D0:  LDR             R0, [R2]
724D2:  BL              sub_68F78
724D6:  LDR             R0, =(off_114C30 - 0x724DC)
724D8:  ADD             R0, PC; off_114C30
724DA:  LDR             R0, [R0]; dword_1ABE70
724DC:  LDRD.W          R4, R5, [R0]
724E0:  CMP             R4, R5
724E2:  BEQ             loc_724F6
724E4:  LDR             R0, [R4,#0x10]
724E6:  CMP             R0, #0
724E8:  ITTT NE
724EA:  LDRNE           R1, [R0]
724EC:  LDRNE           R1, [R1,#0x18]
724EE:  BLXNE           R1
724F0:  ADDS            R4, #0x18
724F2:  CMP             R4, R5
724F4:  BNE             loc_724E4
724F6:  LDR             R0, =(off_114BA8 - 0x724FC)
724F8:  ADD             R0, PC; off_114BA8
724FA:  LDR             R0, [R0]; byte_1A41DC
724FC:  LDRB            R0, [R0]
724FE:  LDR             R4, =(off_114B10 - 0x72506)
72500:  CMP             R0, #0
72502:  ADD             R4, PC; off_114B10
72504:  BEQ.W           loc_728F0
72508:  LDR             R0, =(byte_1A4498 - 0x72510)
7250A:  MOV             R10, R4
7250C:  ADD             R0, PC; byte_1A4498
7250E:  LDRB            R0, [R0]
72510:  DMB.W           ISH
72514:  LDR             R5, =(dword_1A4490 - 0x7251A)
72516:  ADD             R5, PC; dword_1A4490
72518:  LSLS            R0, R0, #0x1F
7251A:  BEQ.W           loc_72986
7251E:  LDR             R0, =(byte_1A44A4 - 0x72524)
72520:  ADD             R0, PC; byte_1A44A4
72522:  LDRB            R0, [R0]
72524:  DMB.W           ISH
72528:  LDR             R4, =(dword_1A449C - 0x7252E)
7252A:  ADD             R4, PC; dword_1A449C
7252C:  LSLS            R0, R0, #0x1F
7252E:  BEQ.W           loc_729A8
72532:  BL              sub_8C514
72536:  VMOV.F32        S0, #0.5
7253A:  LDR             R1, =(unk_1A44A8 - 0x72548)
7253C:  VLDR            S2, [R0,#0x10]
72540:  VMOV.F32        S6, #-1.0
72544:  ADD             R1, PC; unk_1A44A8
72546:  VLDR            S18, [R0,#8]
7254A:  VLDR            S16, [R0,#0xC]
7254E:  ADD             R2, SP, #0x60+var_38
72550:  VLDR            S4, [R1]
72554:  ADD             R3, SP, #0x60+var_54
72556:  MOV.W           R6, #0x3F800000
7255A:  VMLA.F32        S4, S2, S0
7255E:  VMOV.F32        S0, #1.0
72562:  VADD.F32        S2, S4, S6
72566:  VCMP.F32        S4, S0
7256A:  VMRS            APSR_nzcv, FPSCR
7256E:  IT GT
72570:  VMOVGT.F32      S4, S2
72574:  VMOV            R0, S4
72578:  VSTR            S4, [R1]
7257C:  ADD             R1, SP, #0x60+var_3C
7257E:  STRD.W          R2, R1, [SP,#0x60+var_60]
72582:  MOV.W           R1, #0x3F800000
72586:  MOV.W           R2, #0x3F800000
7258A:  BL              sub_88B28
7258E:  LDRD.W          R0, R1, [SP,#0x60+var_3C]
72592:  LDR             R2, [SP,#0x60+var_54]
72594:  LDR             R3, =(byte_1A44B4 - 0x7259E)
72596:  STRD.W          R0, R6, [SP,#0x60+var_44]
7259A:  ADD             R3, PC; byte_1A44B4
7259C:  STRD.W          R2, R1, [SP,#0x60+var_4C]
725A0:  LDRB            R0, [R3]
725A2:  DMB.W           ISH
725A6:  LDR             R6, =(dword_1A44AE - 0x725AC)
725A8:  ADD             R6, PC; dword_1A44AE
725AA:  LSLS            R0, R0, #0x1F
725AC:  BEQ.W           loc_729CC
725B0:  LDRB            R0, [R6,#(dword_1A44AE+3 - 0x1A44AE)]
725B2:  CBZ             R0, loc_725D2
725B4:  LDRB            R1, [R6]
725B6:  EOR.W           R0, R0, #0x5A ; 'Z'
725BA:  LDRB            R2, [R6,#(dword_1A44AE+1 - 0x1A44AE)]
725BC:  STRB            R0, [R6,#(dword_1A44AE+3 - 0x1A44AE)]
725BE:  EOR.W           R0, R1, #0x5A ; 'Z'
725C2:  LDRB            R3, [R6,#(dword_1A44AE+2 - 0x1A44AE)]
725C4:  STRB            R0, [R6]
725C6:  EOR.W           R0, R2, #0x5A ; 'Z'
725CA:  STRB            R0, [R6,#(dword_1A44AE+1 - 0x1A44AE)]
725CC:  EOR.W           R0, R3, #0x5A ; 'Z'
725D0:  STRB            R0, [R6,#(dword_1A44AE+2 - 0x1A44AE)]
725D2:  LDR             R1, =(dword_1A44AE - 0x725E2)
725D4:  MOVS            R0, #0xBF800000
725DA:  MOVS            R2, #0; int
725DC:  STR             R0, [SP,#0x60+var_60]; float
725DE:  ADD             R1, PC; dword_1A44AE ; int
725E0:  ADD             R0, SP, #0x60+var_54; int
725E2:  MOVS            R3, #0; int
725E4:  MOVS            R6, #0
725E6:  BL              sub_899BC
725EA:  VMOV.F32        S2, #10.0
725EE:  VLDR            S0, [SP,#0x60+var_54]
725F2:  VMUL.F32        S4, S0, S2
725F6:  VLDR            S0, [R5]
725FA:  VCMP.F32        S0, #0.0
725FE:  VMRS            APSR_nzcv, FPSCR
72602:  BPL             loc_72616
72604:  VLDR            S0, [R4]
72608:  STR             R6, [R5]
7260A:  VNEG.F32        S6, S0
7260E:  VLDR            S0, =0.0
72612:  VSTR            S6, [R4]
72616:  VADD.F32        S8, S4, S0
7261A:  VLDR            S6, [SP,#0x60+var_50]
7261E:  VCMP.F32        S8, S18
72622:  VMRS            APSR_nzcv, FPSCR
72626:  BLE             loc_7263C
72628:  VLDR            S8, [R4]
7262C:  VSUB.F32        S0, S18, S4
72630:  VNEG.F32        S4, S8
72634:  VSTR            S0, [R5]
72638:  VSTR            S4, [R4]
7263C:  VMUL.F32        S4, S6, S2
72640:  VLDR            S2, [R5,#4]
72644:  VCMP.F32        S2, #0.0
72648:  VMRS            APSR_nzcv, FPSCR
7264C:  BPL             loc_72666
7264E:  LDR             R0, =(dword_1A44A0 - 0x72658)
72650:  MOVS            R1, #0
72652:  STR             R1, [R5,#(dword_1A4494 - 0x1A4490)]
72654:  ADD             R0, PC; dword_1A44A0
72656:  VLDR            S2, [R0]
7265A:  VNEG.F32        S6, S2
7265E:  VLDR            S2, =0.0
72662:  VSTR            S6, [R0]
72666:  VADD.F32        S6, S4, S2
7266A:  LDR             R0, =(dword_1A44A0 - 0x72670)
7266C:  ADD             R0, PC; dword_1A44A0
7266E:  VCMP.F32        S6, S16
72672:  VMRS            APSR_nzcv, FPSCR
72676:  BLE             loc_726E8
72678:  VLDR            S6, [R0]
7267C:  VSUB.F32        S2, S16, S4
72680:  VNEG.F32        S4, S6
72684:  VSTR            S2, [R5,#4]
72688:  VSTR            S4, [R0]
7268C:  B               loc_726EC
7268E:  ALIGN 0x10
72690:  DCD off_114AD8 - 0x72466
72694:  DCD off_114AA8 - 0x7247A
72698:  DCD off_114B44 - 0x7248E
7269C:  DCD off_114B48 - 0x7249A
726A0:  DCD byte_1A448C - 0x724A4
726A4:  DCD off_114B44 - 0x724BE
726A8:  DCD off_114C2C - 0x724CA
726AC:  DCD off_114B48 - 0x724CC
726B0:  DCD off_114C30 - 0x724DC
726B4:  DCD off_114BA8 - 0x724FC
726B8:  DCD off_114B10 - 0x72506
726BC:  DCD byte_1A4498 - 0x72510
726C0:  DCD dword_1A4490 - 0x7251A
726C4:  DCD byte_1A44A4 - 0x72524
726C8:  DCD dword_1A449C - 0x7252E
726CC:  DCD unk_1A44A8 - 0x72548
726D0:  DCD byte_1A44B4 - 0x7259E
726D4:  DCD dword_1A44AE - 0x725AC
726D8:  DCD dword_1A44AE - 0x725E2
726DC:  DCFS 0.0
726E0:  DCD dword_1A44A0 - 0x72658
726E4:  DCD dword_1A44A0 - 0x72670
726E8:  VLDR            S4, [R0]
726EC:  VLDR            S6, [R4]
726F0:  VADD.F32        S2, S4, S2
726F4:  MOVS            R0, #0
726F6:  MOVS            R4, #0
726F8:  VADD.F32        S0, S6, S0
726FC:  VSTR            S2, [R5,#4]
72700:  VSTR            S0, [R5]
72704:  BL              sub_96B68
72708:  ADD             R2, SP, #0x60+var_54
7270A:  MOV             R0, R5
7270C:  MOVS            R1, #0
7270E:  STRD.W          R4, R4, [SP,#0x60+var_54]
72712:  BL              sub_976E0
72716:  ADD             R1, SP, #0x60+var_4C
72718:  MOVS            R0, #0
7271A:  BL              sub_95E08
7271E:  LDR             R0, =(byte_1A44BC - 0x72724)
72720:  ADD             R0, PC; byte_1A44BC
72722:  LDRB            R0, [R0]
72724:  DMB.W           ISH
72728:  LDR             R5, =(dword_1A44B8 - 0x7272E)
7272A:  ADD             R5, PC; dword_1A44B8
7272C:  LSLS            R0, R0, #0x1F
7272E:  BEQ.W           loc_729FC
72732:  LDRB            R0, [R5,#(dword_1A44B8+3 - 0x1A44B8)]
72734:  MOV             R4, R10
72736:  CBZ             R0, loc_72756
72738:  LDRB            R1, [R5]
7273A:  EOR.W           R0, R0, #0x5A ; 'Z'
7273E:  LDRB            R2, [R5,#(dword_1A44B8+1 - 0x1A44B8)]
72740:  STRB            R0, [R5,#(dword_1A44B8+3 - 0x1A44B8)]
72742:  EOR.W           R0, R1, #0x5A ; 'Z'
72746:  LDRB            R3, [R5,#(dword_1A44B8+2 - 0x1A44B8)]
72748:  STRB            R0, [R5]
7274A:  EOR.W           R0, R2, #0x5A ; 'Z'
7274E:  STRB            R0, [R5,#(dword_1A44B8+1 - 0x1A44B8)]
72750:  EOR.W           R0, R3, #0x5A ; 'Z'
72754:  STRB            R0, [R5,#(dword_1A44B8+2 - 0x1A44B8)]
72756:  LDR             R0, =(dword_1A44B8 - 0x72766)
72758:  MOV             R2, #0xC116B
72760:  MOVS            R1, #0
72762:  ADD             R0, PC; dword_1A44B8
72764:  BL              sub_8FD20
72768:  MOVS            R0, #0x41200000
7276E:  BL              sub_978D0
72772:  LDR             R0, =(byte_1A44C4 - 0x72778)
72774:  ADD             R0, PC; byte_1A44C4
72776:  LDRB            R0, [R0]
72778:  DMB.W           ISH
7277C:  LDR             R5, =(dword_1A44C0 - 0x72782)
7277E:  ADD             R5, PC; dword_1A44C0
72780:  LSLS            R0, R0, #0x1F
72782:  BEQ.W           loc_72A2C
72786:  LDRB            R0, [R5,#(dword_1A44C0+3 - 0x1A44C0)]
72788:  CBZ             R0, loc_727A8
7278A:  LDRB            R1, [R5]
7278C:  EOR.W           R0, R0, #0x5A ; 'Z'
72790:  LDRB            R2, [R5,#(dword_1A44C0+1 - 0x1A44C0)]
72792:  STRB            R0, [R5,#(dword_1A44C0+3 - 0x1A44C0)]
72794:  EOR.W           R0, R1, #0x5A ; 'Z'
72798:  LDRB            R3, [R5,#(dword_1A44C0+2 - 0x1A44C0)]
7279A:  STRB            R0, [R5]
7279C:  EOR.W           R0, R2, #0x5A ; 'Z'
727A0:  STRB            R0, [R5,#(dword_1A44C0+1 - 0x1A44C0)]
727A2:  EOR.W           R0, R3, #0x5A ; 'Z'
727A6:  STRB            R0, [R5,#(dword_1A44C0+2 - 0x1A44C0)]
727A8:  LDR             R0, =(dword_1A44C0 - 0x727AE)
727AA:  ADD             R0, PC; dword_1A44C0
727AC:  BL              sub_A61F0
727B0:  MOV.W           R0, #0x3F800000
727B4:  BL              sub_978D0
727B8:  BL              sub_94DC0
727BC:  MOVS            R0, #1
727BE:  MOV.W           R9, #1
727C2:  BL              sub_96230
727C6:  LDR             R0, =(off_114B48 - 0x727D0)
727C8:  MOVS            R1, #0
727CA:  MOVS            R5, #0
727CC:  ADD             R0, PC; off_114B48
727CE:  LDR             R0, [R0]; dword_1A41D8
727D0:  LDR             R0, [R0]
727D2:  BL              sub_68F78
727D6:  LDR             R0, [R4]; dword_1A442C
727D8:  LDR             R0, [R0]
727DA:  LDR.W           R0, [R0,#0x88]
727DE:  STRB            R5, [R0,#8]
727E0:  BL              sub_6C808
727E4:  LDR             R0, [R0,#0x60]
727E6:  MOVS            R1, #0
727E8:  BL              sub_6C90C
727EC:  LDR             R0, =(unk_51958 - 0x727F4)
727EE:  MOVS            R1, #0
727F0:  ADD             R0, PC; unk_51958
727F2:  BL              sub_682E8
727F6:  LDR             R0, =(byte_1A44AC - 0x727FC)
727F8:  ADD             R0, PC; byte_1A44AC
727FA:  LDRB            R1, [R0]
727FC:  CBNZ            R1, loc_7283A
727FE:  LDR             R1, =(off_114B6C - 0x72808)
72800:  LDR             R2, =(off_114AB0 - 0x7280C)
72802:  LDR             R3, =(off_114B68 - 0x72810)
72804:  ADD             R1, PC; off_114B6C
72806:  LDR             R5, =(off_114B64 - 0x72812)
72808:  ADD             R2, PC; off_114AB0
7280A:  LDR             R6, =(off_114B60 - 0x72816)
7280C:  ADD             R3, PC; off_114B68
7280E:  ADD             R5, PC; off_114B64
72810:  LDR             R4, [R1]; dword_116D04
72812:  ADD             R6, PC; off_114B60
72814:  LDR             R2, [R2]; dword_1A4408
72816:  LDR             R1, [R5]; dword_1A3A68
72818:  MOVW            R5, #:lower16:(loc_F57EC+1)
7281C:  LDR             R6, [R6]; dword_1A3A6C
7281E:  MOVT            R5, #:upper16:(loc_F57EC+1)
72822:  LDR             R3, [R3]; dword_1A3A70
72824:  STRB.W          R9, [R0]
72828:  LDR             R0, [R1]
7282A:  LDR             R1, [R6]
7282C:  MOVS            R6, #0xA
7282E:  STR             R6, [R4]
72830:  MOV             R4, R10
72832:  LDR             R6, [R2]
72834:  LDR             R2, [R3]
72836:  ADDS            R3, R6, R5
72838:  BLX             R3
7283A:  BL              sub_6C844
7283E:  LDR             R5, [R0,#8]
72840:  CBNZ            R5, loc_7286E
72842:  MOV             R6, R0
72844:  MOV.W           R0, #0x2F0; unsigned int
72848:  BLX             j__Znwj; operator new(uint)
7284C:  MOV             R5, R0
7284E:  LDR             R0, =(off_114AB0 - 0x72856)
72850:  LDR             R1, =(_ZTV10CPlayerPed - 0x72858); `vtable for'CPlayerPed ...
72852:  ADD             R0, PC; off_114AB0
72854:  ADD             R1, PC; `vtable for'CPlayerPed
72856:  LDR             R0, [R0]; dword_1A4408
72858:  ADDS            R1, #8
7285A:  STR             R1, [R5]
7285C:  MOV             R1, #0x103B89
72864:  LDR             R0, [R0]
72866:  ADD             R1, R0
72868:  MOV             R0, R5
7286A:  BLX             R1
7286C:  STR             R5, [R6,#8]
7286E:  LDR             R0, [R5,#4]
72870:  VLDR            S16, =0.05
72874:  VLDR            S18, =0.0
72878:  CBZ             R0, loc_728A6
7287A:  VMOV.F32        S20, S18
7287E:  LDR             R0, [R0,#0x14]
72880:  CBZ             R0, loc_728AA
72882:  LDR             R1, [R0,#0x30]
72884:  LDR             R2, [R0,#0x34]
72886:  LDR             R0, [R0,#0x38]
72888:  VLDR            D17, =0.05
7288C:  VMOV            S18, R1
72890:  VMOV            S20, R2
72894:  VMOV            S0, R0
72898:  VCVT.F64.F32    D16, S0
7289C:  VADD.F64        D16, D16, D17
728A0:  VCVT.F32.F64    S16, D16
728A4:  B               loc_728AA
728A6:  VMOV.F32        S20, S18
728AA:  BL              sub_6C844
728AE:  LDR             R5, [R0,#8]
728B0:  CBNZ            R5, loc_728DE
728B2:  MOV             R6, R0
728B4:  MOV.W           R0, #0x2F0; unsigned int
728B8:  BLX             j__Znwj; operator new(uint)
728BC:  MOV             R5, R0
728BE:  LDR             R0, =(off_114AB0 - 0x728C6)
728C0:  LDR             R1, =(_ZTV10CPlayerPed - 0x728C8); `vtable for'CPlayerPed ...
728C2:  ADD             R0, PC; off_114AB0
728C4:  ADD             R1, PC; `vtable for'CPlayerPed
728C6:  LDR             R0, [R0]; dword_1A4408
728C8:  ADDS            R1, #8
728CA:  STR             R1, [R5]
728CC:  MOV             R1, #0x103B89
728D4:  LDR             R0, [R0]
728D6:  ADD             R1, R0
728D8:  MOV             R0, R5
728DA:  BLX             R1
728DC:  STR             R5, [R6,#8]
728DE:  VMOV            R1, S18
728E2:  MOV             R0, R5
728E4:  VMOV            R2, S20
728E8:  VMOV            R3, S16
728EC:  BL              sub_66064
728F0:  LDR             R0, =(byte_1A44AD - 0x728F6)
728F2:  ADD             R0, PC; byte_1A44AD
728F4:  LDRB            R0, [R0]
728F6:  CMP             R0, #0
728F8:  IT NE
728FA:  BLNE            sub_7A410
728FE:  LDR.W           R0, [R8]
72902:  LDR             R1, [R0,#0x14]
72904:  MOV             R0, R8
72906:  BLX             R1
72908:  BL              sub_72230
7290C:  BL              sub_75EC8
72910:  BL              sub_74100
72914:  BL              sub_7A9C8
72918:  LDR             R4, [R4]; dword_1A442C
7291A:  LDR             R0, [R4]
7291C:  CBZ             R0, loc_7293C
7291E:  BL              sub_6C808
72922:  LDR             R0, [R0,#0x64]
72924:  BL              sub_6C8B8
72928:  CBZ             R0, loc_7293C
7292A:  LDR             R0, [R4]
7292C:  LDR.W           R4, [R0,#0x8C]
72930:  BL              sub_6C808
72934:  LDR             R0, [R0,#0x64]
72936:  BL              sub_6C8B8
7293A:  STRB            R0, [R4,#8]
7293C:  BL              sub_6C808
72940:  LDR             R0, [R0,#0x64]
72942:  BL              sub_6C8B8
72946:  CBZ             R0, loc_72954
72948:  BL              sub_6C808
7294C:  LDR             R0, [R0,#0x64]
7294E:  MOVS            R1, #0
72950:  BL              sub_6C90C
72954:  BL              sub_94700
72958:  BL              sub_95020
7295C:  BL              sub_8C538
72960:  MOV             R1, R0
72962:  MOV             R0, R8
72964:  BL              sub_72B10
72968:  LDR             R0, [SP,#0x60+var_34]
7296A:  LDR             R1, =(__stack_chk_guard_ptr - 0x72970)
7296C:  ADD             R1, PC; __stack_chk_guard_ptr
7296E:  LDR             R1, [R1]; __stack_chk_guard
72970:  LDR             R1, [R1]
72972:  CMP             R1, R0
72974:  ITTTT EQ
72976:  ADDEQ           SP, SP, #0x30 ; '0'
72978:  VPOPEQ          {D8-D10}
7297C:  POPEQ.W         {R8-R10}
72980:  POPEQ           {R4-R7,PC}
72982:  BLX             __stack_chk_fail
72986:  LDR             R0, =(byte_1A4498 - 0x7298C)
72988:  ADD             R0, PC; byte_1A4498 ; __guard *
7298A:  BLX             j___cxa_guard_acquire
7298E:  CMP             R0, #0
72990:  BEQ.W           loc_7251E
72994:  LDR             R0, =(byte_1A4498 - 0x729A0)
72996:  MOVS            R1, #0x42C80000
7299C:  ADD             R0, PC; byte_1A4498 ; __guard *
7299E:  STRD.W          R1, R1, [R5]
729A2:  BLX             j___cxa_guard_release
729A6:  B               loc_7251E
729A8:  LDR             R0, =(byte_1A44A4 - 0x729AE)
729AA:  ADD             R0, PC; byte_1A44A4 ; __guard *
729AC:  BLX             j___cxa_guard_acquire
729B0:  CMP             R0, #0
729B2:  BEQ.W           loc_72532
729B6:  LDR             R1, =(dword_1A44A0 - 0x729C2)
729B8:  MOV.W           R2, #0x40000000
729BC:  LDR             R0, =(byte_1A44A4 - 0x729C6)
729BE:  ADD             R1, PC; dword_1A44A0
729C0:  STR             R2, [R4]
729C2:  ADD             R0, PC; byte_1A44A4 ; __guard *
729C4:  STR             R2, [R1]
729C6:  BLX             j___cxa_guard_release
729CA:  B               loc_72532
729CC:  LDR             R0, =(byte_1A44B4 - 0x729D2)
729CE:  ADD             R0, PC; byte_1A44B4 ; __guard *
729D0:  BLX             j___cxa_guard_acquire
729D4:  CMP             R0, #0
729D6:  BEQ.W           loc_725B0
729DA:  LDR             R0, =(sub_72DFE+1 - 0x729EA)
729DC:  MOVW            R1, #0xC1E
729E0:  LDR             R2, =(off_110560 - 0x729EE)
729E2:  MOVT            R1, #0x5A1E
729E6:  ADD             R0, PC; sub_72DFE ; lpfunc
729E8:  STR             R1, [R6]
729EA:  ADD             R2, PC; off_110560 ; lpdso_handle
729EC:  MOV             R1, R6; obj
729EE:  BLX             __cxa_atexit
729F2:  LDR             R0, =(byte_1A44B4 - 0x729F8)
729F4:  ADD             R0, PC; byte_1A44B4 ; __guard *
729F6:  BLX             j___cxa_guard_release
729FA:  B               loc_725B0
729FC:  LDR             R0, =(byte_1A44BC - 0x72A02)
729FE:  ADD             R0, PC; byte_1A44BC ; __guard *
72A00:  BLX             j___cxa_guard_acquire
72A04:  CMP             R0, #0
72A06:  BEQ.W           loc_72732
72A0A:  LDR             R0, =(sub_72DFE+1 - 0x72A1A)
72A0C:  MOVW            R1, #0xC1E
72A10:  LDR             R2, =(off_110560 - 0x72A1E)
72A12:  MOVT            R1, #0x5A1E
72A16:  ADD             R0, PC; sub_72DFE ; lpfunc
72A18:  STR             R1, [R5]
72A1A:  ADD             R2, PC; off_110560 ; lpdso_handle
72A1C:  MOV             R1, R5; obj
72A1E:  BLX             __cxa_atexit
72A22:  LDR             R0, =(byte_1A44BC - 0x72A28)
72A24:  ADD             R0, PC; byte_1A44BC ; __guard *
72A26:  BLX             j___cxa_guard_release
72A2A:  B               loc_72732
72A2C:  LDR             R0, =(byte_1A44C4 - 0x72A32)
72A2E:  ADD             R0, PC; byte_1A44C4 ; __guard *
72A30:  BLX             j___cxa_guard_acquire
72A34:  CMP             R0, #0
72A36:  BEQ.W           loc_72786
72A3A:  LDR             R0, =(sub_72DFE+1 - 0x72A4A)
72A3C:  MOVW            R1, #0xC1E
72A40:  LDR             R2, =(off_110560 - 0x72A4E)
72A42:  MOVT            R1, #0x5A1E
72A46:  ADD             R0, PC; sub_72DFE ; lpfunc
72A48:  STR             R1, [R5]
72A4A:  ADD             R2, PC; off_110560 ; lpdso_handle
72A4C:  MOV             R1, R5; obj
72A4E:  BLX             __cxa_atexit
72A52:  LDR             R0, =(byte_1A44C4 - 0x72A58)
72A54:  ADD             R0, PC; byte_1A44C4 ; __guard *
72A56:  BLX             j___cxa_guard_release
72A5A:  B               loc_72786
