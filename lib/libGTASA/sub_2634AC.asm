; =========================================================
; Game Engine Function: sub_2634AC
; Address            : 0x2634AC - 0x263952
; =========================================================

2634AC:  PUSH            {R4,R6,R7,LR}
2634AE:  ADD             R7, SP, #8
2634B0:  MOV             R4, R1
2634B2:  SUBS            R1, R2, #1; switch 12 cases
2634B4:  CMP             R1, #0xB
2634B6:  BHI             def_2634BC; jumptable 002634BC default case
2634B8:  VMOV            S0, R3
2634BC:  TBH.W           [PC,R1,LSL#1]; switch jump
2634C0:  DCW 0xC; jump table for switch statement
2634C2:  DCW 0x59
2634C4:  DCW 0x87
2634C6:  DCW 0xB4
2634C8:  DCW 0xE1
2634CA:  DCW 0x110
2634CC:  DCW 0x13F
2634CE:  DCW 0x16C
2634D0:  DCW 0x199
2634D2:  DCW 0x1C6
2634D4:  DCW 0x1F1
2634D6:  DCW 0x21C
2634D8:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 1
2634DC:  VMRS            APSR_nzcv, FPSCR
2634E0:  BLT             loc_2634F6
2634E2:  VMOV.F32        S2, #1.0
2634E6:  VCMPE.F32       S0, S2
2634EA:  VMRS            APSR_nzcv, FPSCR
2634EE:  ITT LE
2634F0:  VSTRLE          S0, [R0,#4]
2634F4:  POPLE           {R4,R6,R7,PC}
2634F6:  LDR.W           R0, =(TrapALError_ptr - 0x2634FE)
2634FA:  ADD             R0, PC; TrapALError_ptr
2634FC:  LDR             R0, [R0]; TrapALError
2634FE:  LDRB            R0, [R0]
263500:  CMP             R0, #0
263502:  ITT NE
263504:  MOVNE           R0, #5; sig
263506:  BLXNE           raise
26350A:  LDREX.W         R0, [R4,#0x50]
26350E:  CMP             R0, #0
263510:  BNE.W           loc_263948
263514:  ADD.W           R0, R4, #0x50 ; 'P'
263518:  MOVW            R1, #0xA003
26351C:  DMB.W           ISH
263520:  STREX.W         R2, R1, [R0]
263524:  CMP             R2, #0
263526:  BEQ.W           loc_26394C
26352A:  LDREX.W         R2, [R0]
26352E:  CMP             R2, #0
263530:  BEQ             loc_263520
263532:  B               loc_263948
263534:  LDR.W           R0, =(TrapALError_ptr - 0x26353C); jumptable 002634BC default case
263538:  ADD             R0, PC; TrapALError_ptr
26353A:  LDR             R0, [R0]; TrapALError
26353C:  LDRB            R0, [R0]
26353E:  CMP             R0, #0
263540:  ITT NE
263542:  MOVNE           R0, #5; sig
263544:  BLXNE           raise
263548:  LDREX.W         R0, [R4,#0x50]
26354C:  CMP             R0, #0
26354E:  BNE.W           loc_263948
263552:  ADD.W           R0, R4, #0x50 ; 'P'
263556:  MOVW            R1, #0xA002
26355A:  DMB.W           ISH
26355E:  STREX.W         R2, R1, [R0]
263562:  CMP             R2, #0
263564:  BEQ.W           loc_26394C
263568:  LDREX.W         R2, [R0]
26356C:  CMP             R2, #0
26356E:  BEQ             loc_26355E
263570:  B               loc_263948
263572:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 2
263576:  VMRS            APSR_nzcv, FPSCR
26357A:  BLT             loc_263590
26357C:  VMOV.F32        S2, #1.0
263580:  VCMPE.F32       S0, S2
263584:  VMRS            APSR_nzcv, FPSCR
263588:  ITT LE
26358A:  VSTRLE          S0, [R0,#8]
26358E:  POPLE           {R4,R6,R7,PC}
263590:  LDR.W           R0, =(TrapALError_ptr - 0x263598)
263594:  ADD             R0, PC; TrapALError_ptr
263596:  LDR             R0, [R0]; TrapALError
263598:  LDRB            R0, [R0]
26359A:  CMP             R0, #0
26359C:  ITT NE
26359E:  MOVNE           R0, #5; sig
2635A0:  BLXNE           raise
2635A4:  LDREX.W         R0, [R4,#0x50]
2635A8:  CMP             R0, #0
2635AA:  BNE.W           loc_263948
2635AE:  ADD.W           R0, R4, #0x50 ; 'P'
2635B2:  MOVW            R1, #0xA003
2635B6:  DMB.W           ISH
2635BA:  STREX.W         R2, R1, [R0]
2635BE:  CMP             R2, #0
2635C0:  BEQ.W           loc_26394C
2635C4:  LDREX.W         R2, [R0]
2635C8:  CMP             R2, #0
2635CA:  BEQ             loc_2635BA
2635CC:  B               loc_263948
2635CE:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 3
2635D2:  VMRS            APSR_nzcv, FPSCR
2635D6:  BLT             loc_2635EC
2635D8:  VMOV.F32        S2, #1.0
2635DC:  VCMPE.F32       S0, S2
2635E0:  VMRS            APSR_nzcv, FPSCR
2635E4:  ITT LE
2635E6:  VSTRLE          S0, [R0,#0xC]
2635EA:  POPLE           {R4,R6,R7,PC}
2635EC:  LDR             R0, =(TrapALError_ptr - 0x2635F2)
2635EE:  ADD             R0, PC; TrapALError_ptr
2635F0:  LDR             R0, [R0]; TrapALError
2635F2:  LDRB            R0, [R0]
2635F4:  CMP             R0, #0
2635F6:  ITT NE
2635F8:  MOVNE           R0, #5; sig
2635FA:  BLXNE           raise
2635FE:  LDREX.W         R0, [R4,#0x50]
263602:  CMP             R0, #0
263604:  BNE.W           loc_263948
263608:  ADD.W           R0, R4, #0x50 ; 'P'
26360C:  MOVW            R1, #0xA003
263610:  DMB.W           ISH
263614:  STREX.W         R2, R1, [R0]
263618:  CMP             R2, #0
26361A:  BEQ.W           loc_26394C
26361E:  LDREX.W         R2, [R0]
263622:  CMP             R2, #0
263624:  BEQ             loc_263614
263626:  B               loc_263948
263628:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 4
26362C:  VMRS            APSR_nzcv, FPSCR
263630:  BLT             loc_263646
263632:  VMOV.F32        S2, #1.0
263636:  VCMPE.F32       S0, S2
26363A:  VMRS            APSR_nzcv, FPSCR
26363E:  ITT LE
263640:  VSTRLE          S0, [R0,#0x10]
263644:  POPLE           {R4,R6,R7,PC}
263646:  LDR             R0, =(TrapALError_ptr - 0x26364C)
263648:  ADD             R0, PC; TrapALError_ptr
26364A:  LDR             R0, [R0]; TrapALError
26364C:  LDRB            R0, [R0]
26364E:  CMP             R0, #0
263650:  ITT NE
263652:  MOVNE           R0, #5; sig
263654:  BLXNE           raise
263658:  LDREX.W         R0, [R4,#0x50]
26365C:  CMP             R0, #0
26365E:  BNE.W           loc_263948
263662:  ADD.W           R0, R4, #0x50 ; 'P'
263666:  MOVW            R1, #0xA003
26366A:  DMB.W           ISH
26366E:  STREX.W         R2, R1, [R0]
263672:  CMP             R2, #0
263674:  BEQ.W           loc_26394C
263678:  LDREX.W         R2, [R0]
26367C:  CMP             R2, #0
26367E:  BEQ             loc_26366E
263680:  B               loc_263948
263682:  VLDR            S2, =0.1; jumptable 002634BC case 5
263686:  VCMPE.F32       S0, S2
26368A:  VMRS            APSR_nzcv, FPSCR
26368E:  BLT             loc_2636A4
263690:  VMOV.F32        S2, #20.0
263694:  VCMPE.F32       S0, S2
263698:  VMRS            APSR_nzcv, FPSCR
26369C:  ITT LE
26369E:  VSTRLE          S0, [R0,#0x14]
2636A2:  POPLE           {R4,R6,R7,PC}
2636A4:  LDR             R0, =(TrapALError_ptr - 0x2636AA)
2636A6:  ADD             R0, PC; TrapALError_ptr
2636A8:  LDR             R0, [R0]; TrapALError
2636AA:  LDRB            R0, [R0]
2636AC:  CMP             R0, #0
2636AE:  ITT NE
2636B0:  MOVNE           R0, #5; sig
2636B2:  BLXNE           raise
2636B6:  LDREX.W         R0, [R4,#0x50]
2636BA:  CMP             R0, #0
2636BC:  BNE.W           loc_263948
2636C0:  ADD.W           R0, R4, #0x50 ; 'P'
2636C4:  MOVW            R1, #0xA003
2636C8:  DMB.W           ISH
2636CC:  STREX.W         R2, R1, [R0]
2636D0:  CMP             R2, #0
2636D2:  BEQ.W           loc_26394C
2636D6:  LDREX.W         R2, [R0]
2636DA:  CMP             R2, #0
2636DC:  BEQ             loc_2636CC
2636DE:  B               loc_263948
2636E0:  VLDR            S2, =0.1; jumptable 002634BC case 6
2636E4:  VCMPE.F32       S0, S2
2636E8:  VMRS            APSR_nzcv, FPSCR
2636EC:  BLT             loc_263702
2636EE:  VMOV.F32        S2, #2.0
2636F2:  VCMPE.F32       S0, S2
2636F6:  VMRS            APSR_nzcv, FPSCR
2636FA:  ITT LE
2636FC:  VSTRLE          S0, [R0,#0x18]
263700:  POPLE           {R4,R6,R7,PC}
263702:  LDR             R0, =(TrapALError_ptr - 0x263708)
263704:  ADD             R0, PC; TrapALError_ptr
263706:  LDR             R0, [R0]; TrapALError
263708:  LDRB            R0, [R0]
26370A:  CMP             R0, #0
26370C:  ITT NE
26370E:  MOVNE           R0, #5; sig
263710:  BLXNE           raise
263714:  LDREX.W         R0, [R4,#0x50]
263718:  CMP             R0, #0
26371A:  BNE.W           loc_263948
26371E:  ADD.W           R0, R4, #0x50 ; 'P'
263722:  MOVW            R1, #0xA003
263726:  DMB.W           ISH
26372A:  STREX.W         R2, R1, [R0]
26372E:  CMP             R2, #0
263730:  BEQ.W           loc_26394C
263734:  LDREX.W         R2, [R0]
263738:  CMP             R2, #0
26373A:  BEQ             loc_26372A
26373C:  B               loc_263948
26373E:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 7
263742:  VMRS            APSR_nzcv, FPSCR
263746:  BLT             loc_26375C
263748:  VLDR            S2, =3.16
26374C:  VCMPE.F32       S0, S2
263750:  VMRS            APSR_nzcv, FPSCR
263754:  ITT LE
263756:  VSTRLE          S0, [R0,#0x1C]
26375A:  POPLE           {R4,R6,R7,PC}
26375C:  LDR             R0, =(TrapALError_ptr - 0x263762)
26375E:  ADD             R0, PC; TrapALError_ptr
263760:  LDR             R0, [R0]; TrapALError
263762:  LDRB            R0, [R0]
263764:  CMP             R0, #0
263766:  ITT NE
263768:  MOVNE           R0, #5; sig
26376A:  BLXNE           raise
26376E:  LDREX.W         R0, [R4,#0x50]
263772:  CMP             R0, #0
263774:  BNE.W           loc_263948
263778:  ADD.W           R0, R4, #0x50 ; 'P'
26377C:  MOVW            R1, #0xA003
263780:  DMB.W           ISH
263784:  STREX.W         R2, R1, [R0]
263788:  CMP             R2, #0
26378A:  BEQ.W           loc_26394C
26378E:  LDREX.W         R2, [R0]
263792:  CMP             R2, #0
263794:  BEQ             loc_263784
263796:  B               loc_263948
263798:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 8
26379C:  VMRS            APSR_nzcv, FPSCR
2637A0:  BLT             loc_2637B6
2637A2:  VLDR            S2, =0.3
2637A6:  VCMPE.F32       S0, S2
2637AA:  VMRS            APSR_nzcv, FPSCR
2637AE:  ITT LE
2637B0:  VSTRLE          S0, [R0,#0x20]
2637B4:  POPLE           {R4,R6,R7,PC}
2637B6:  LDR             R0, =(TrapALError_ptr - 0x2637BC)
2637B8:  ADD             R0, PC; TrapALError_ptr
2637BA:  LDR             R0, [R0]; TrapALError
2637BC:  LDRB            R0, [R0]
2637BE:  CMP             R0, #0
2637C0:  ITT NE
2637C2:  MOVNE           R0, #5; sig
2637C4:  BLXNE           raise
2637C8:  LDREX.W         R0, [R4,#0x50]
2637CC:  CMP             R0, #0
2637CE:  BNE.W           loc_263948
2637D2:  ADD.W           R0, R4, #0x50 ; 'P'
2637D6:  MOVW            R1, #0xA003
2637DA:  DMB.W           ISH
2637DE:  STREX.W         R2, R1, [R0]
2637E2:  CMP             R2, #0
2637E4:  BEQ.W           loc_26394C
2637E8:  LDREX.W         R2, [R0]
2637EC:  CMP             R2, #0
2637EE:  BEQ             loc_2637DE
2637F0:  B               loc_263948
2637F2:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 9
2637F6:  VMRS            APSR_nzcv, FPSCR
2637FA:  BLT             loc_263810
2637FC:  VMOV.F32        S2, #10.0
263800:  VCMPE.F32       S0, S2
263804:  VMRS            APSR_nzcv, FPSCR
263808:  ITT LE
26380A:  VSTRLE          S0, [R0,#0x24]
26380E:  POPLE           {R4,R6,R7,PC}
263810:  LDR             R0, =(TrapALError_ptr - 0x263816)
263812:  ADD             R0, PC; TrapALError_ptr
263814:  LDR             R0, [R0]; TrapALError
263816:  LDRB            R0, [R0]
263818:  CMP             R0, #0
26381A:  ITT NE
26381C:  MOVNE           R0, #5; sig
26381E:  BLXNE           raise
263822:  LDREX.W         R0, [R4,#0x50]
263826:  CMP             R0, #0
263828:  BNE.W           loc_263948
26382C:  ADD.W           R0, R4, #0x50 ; 'P'
263830:  MOVW            R1, #0xA003
263834:  DMB.W           ISH
263838:  STREX.W         R2, R1, [R0]
26383C:  CMP             R2, #0
26383E:  BEQ.W           loc_26394C
263842:  LDREX.W         R2, [R0]
263846:  CMP             R2, #0
263848:  BEQ             loc_263838
26384A:  B               loc_263948
26384C:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 10
263850:  VMRS            APSR_nzcv, FPSCR
263854:  BLT             loc_26386A
263856:  VLDR            S2, =0.1
26385A:  VCMPE.F32       S0, S2
26385E:  VMRS            APSR_nzcv, FPSCR
263862:  ITT LE
263864:  VSTRLE          S0, [R0,#0x28]
263868:  POPLE           {R4,R6,R7,PC}
26386A:  LDR             R0, =(TrapALError_ptr - 0x263870)
26386C:  ADD             R0, PC; TrapALError_ptr
26386E:  LDR             R0, [R0]; TrapALError
263870:  LDRB            R0, [R0]
263872:  CMP             R0, #0
263874:  ITT NE
263876:  MOVNE           R0, #5; sig
263878:  BLXNE           raise
26387C:  LDREX.W         R0, [R4,#0x50]
263880:  CMP             R0, #0
263882:  BNE             loc_263948
263884:  ADD.W           R0, R4, #0x50 ; 'P'
263888:  MOVW            R1, #0xA003
26388C:  DMB.W           ISH
263890:  STREX.W         R2, R1, [R0]
263894:  CMP             R2, #0
263896:  BEQ             loc_26394C
263898:  LDREX.W         R2, [R0]
26389C:  CMP             R2, #0
26389E:  BEQ             loc_263890
2638A0:  B               loc_263948
2638A2:  VLDR            S2, =0.892; jumptable 002634BC case 11
2638A6:  VCMPE.F32       S0, S2
2638AA:  VMRS            APSR_nzcv, FPSCR
2638AE:  BLT             loc_2638C4
2638B0:  VMOV.F32        S2, #1.0
2638B4:  VCMPE.F32       S0, S2
2638B8:  VMRS            APSR_nzcv, FPSCR
2638BC:  ITT LE
2638BE:  VSTRLE          S0, [R0,#0x2C]
2638C2:  POPLE           {R4,R6,R7,PC}
2638C4:  LDR             R0, =(TrapALError_ptr - 0x2638CA)
2638C6:  ADD             R0, PC; TrapALError_ptr
2638C8:  LDR             R0, [R0]; TrapALError
2638CA:  LDRB            R0, [R0]
2638CC:  CMP             R0, #0
2638CE:  ITT NE
2638D0:  MOVNE           R0, #5; sig
2638D2:  BLXNE           raise
2638D6:  LDREX.W         R0, [R4,#0x50]
2638DA:  CBNZ            R0, loc_263948
2638DC:  ADD.W           R0, R4, #0x50 ; 'P'
2638E0:  MOVW            R1, #0xA003
2638E4:  DMB.W           ISH
2638E8:  STREX.W         R2, R1, [R0]
2638EC:  CBZ             R2, loc_26394C
2638EE:  LDREX.W         R2, [R0]
2638F2:  CMP             R2, #0
2638F4:  BEQ             loc_2638E8
2638F6:  B               loc_263948
2638F8:  VCMPE.F32       S0, #0.0; jumptable 002634BC case 12
2638FC:  VMRS            APSR_nzcv, FPSCR
263900:  BLT             loc_263916
263902:  VMOV.F32        S2, #10.0
263906:  VCMPE.F32       S0, S2
26390A:  VMRS            APSR_nzcv, FPSCR
26390E:  ITT LE
263910:  VSTRLE          S0, [R0,#0x30]
263914:  POPLE           {R4,R6,R7,PC}
263916:  LDR             R0, =(TrapALError_ptr - 0x26391C)
263918:  ADD             R0, PC; TrapALError_ptr
26391A:  LDR             R0, [R0]; TrapALError
26391C:  LDRB            R0, [R0]
26391E:  CMP             R0, #0
263920:  ITT NE
263922:  MOVNE           R0, #5; sig
263924:  BLXNE           raise
263928:  LDREX.W         R0, [R4,#0x50]
26392C:  CBNZ            R0, loc_263948
26392E:  ADD.W           R0, R4, #0x50 ; 'P'
263932:  MOVW            R1, #0xA003
263936:  DMB.W           ISH
26393A:  STREX.W         R2, R1, [R0]
26393E:  CBZ             R2, loc_26394C
263940:  LDREX.W         R2, [R0]
263944:  CMP             R2, #0
263946:  BEQ             loc_26393A
263948:  CLREX.W
26394C:  DMB.W           ISH
263950:  POP             {R4,R6,R7,PC}
