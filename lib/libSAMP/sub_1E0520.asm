; =========================================================
; Game Engine Function: sub_1E0520
; Address            : 0x1E0520 - 0x1E08C4
; =========================================================

1E0520:  PUSH            {R4-R9,R11,LR}
1E0524:  ADD             R11, SP, #0x18
1E0528:  VPUSH           {D8}
1E052C:  MOV             R4, R0
1E0530:  MOV             R5, R2
1E0534:  LDR             R0, [R4,#0x10]
1E0538:  MOV             R6, R1
1E053C:  CMP             R0, #2
1E0540:  BEQ             loc_1E067C
1E0544:  CMP             R0, #1
1E0548:  BEQ             loc_1E07A0
1E054C:  CMP             R0, #0
1E0550:  BNE             loc_1E0798
1E0554:  LDR             R9, [R4,#0x14]
1E0558:  CMP             R6, #0
1E055C:  BEQ             loc_1E0670
1E0560:  LDR             R8, [R4,#0x18]
1E0564:  ADD             R7, R3, #0x20 ; ' '
1E0568:  VLDR            S16, =0.000095874
1E056C:  ADD             R0, R9, R8
1E0570:  UXTH            R9, R0
1E0574:  VMOV            S0, R9
1E0578:  VCVT.F32.U32    S0, S0
1E057C:  VMUL.F32        S0, S0, S16
1E0580:  VMOV            R0, S0; x
1E0584:  BL              sinf
1E0588:  VLDR            S0, [R5]
1E058C:  VMOV            S2, R0
1E0590:  VLDR            S6, [R4,#0x44]
1E0594:  ADD             R5, R5, #4
1E0598:  VMUL.F32        S0, S2, S0
1E059C:  VLDR            S4, [R4,#0x40]
1E05A0:  VLDR            S2, [R4,#0x1C]
1E05A4:  SUBS            R6, R6, #1
1E05A8:  VSUB.F32        S6, S6, S0
1E05AC:  VMUL.F32        S4, S6, S4
1E05B0:  VADD.F32        S0, S4, S0
1E05B4:  VMUL.F32        S2, S2, S4
1E05B8:  VSTR            S0, [R4,#0x44]
1E05BC:  VLDR            S0, [R7,#-0x20]
1E05C0:  VSUB.F32        S0, S0, S2
1E05C4:  VSTR            S0, [R7,#-0x20]
1E05C8:  VLDR            S0, [R4,#0x20]
1E05CC:  VLDR            S10, [R7,#-0x1C]
1E05D0:  VMUL.F32        S0, S0, S4
1E05D4:  VLDR            S2, [R7,#-0x10]
1E05D8:  VLDR            S6, [R7,#-0x14]
1E05DC:  VLDR            S8, [R7,#-0x18]
1E05E0:  VSUB.F32        S0, S10, S0
1E05E4:  VSTR            S0, [R7,#-0x1C]
1E05E8:  VLDR            S0, [R4,#0x24]
1E05EC:  VMUL.F32        S0, S0, S4
1E05F0:  VSUB.F32        S0, S8, S0
1E05F4:  VSTR            S0, [R7,#-0x18]
1E05F8:  VLDR            S0, [R4,#0x28]
1E05FC:  VMUL.F32        S0, S0, S4
1E0600:  VSUB.F32        S0, S6, S0
1E0604:  VSTR            S0, [R7,#-0x14]
1E0608:  VLDR            S0, [R4,#0x2C]
1E060C:  VMUL.F32        S0, S0, S4
1E0610:  VSUB.F32        S0, S2, S0
1E0614:  VSTR            S0, [R7,#-0x10]
1E0618:  VLDR            S0, [R4,#0x30]
1E061C:  VLDR            S2, [R7,#-0xC]
1E0620:  VMUL.F32        S0, S0, S4
1E0624:  VSUB.F32        S0, S2, S0
1E0628:  VSTR            S0, [R7,#-0xC]
1E062C:  VLDR            S0, [R4,#0x34]
1E0630:  VLDR            S2, [R7,#-8]
1E0634:  VMUL.F32        S0, S0, S4
1E0638:  VSUB.F32        S0, S2, S0
1E063C:  VSTR            S0, [R7,#-8]
1E0640:  VLDR            S0, [R4,#0x38]
1E0644:  VLDR            S2, [R7,#-4]
1E0648:  VMUL.F32        S0, S0, S4
1E064C:  VSUB.F32        S0, S2, S0
1E0650:  VSTR            S0, [R7,#-4]
1E0654:  VLDR            S0, [R4,#0x3C]
1E0658:  VLDR            S2, [R7]
1E065C:  VMUL.F32        S0, S0, S4
1E0660:  VSUB.F32        S0, S2, S0
1E0664:  VSTR            S0, [R7]
1E0668:  ADD             R7, R7, #0x24 ; '$'
1E066C:  BNE             loc_1E056C
1E0670:  STR             R9, [R4,#0x14]
1E0674:  VPOP            {D8}
1E0678:  POP             {R4-R9,R11,PC}
1E067C:  LDR             R2, [R4,#0x14]
1E0680:  CMP             R6, #0
1E0684:  BEQ             loc_1E0794
1E0688:  VMOV.F32        S0, #-1.0
1E068C:  LDR             R0, [R4,#0x18]
1E0690:  ADD             R1, R3, #0x20 ; ' '
1E0694:  ADD             R2, R2, R0
1E0698:  SUBS            R6, R6, #1
1E069C:  UBFX            R3, R2, #0xF, #1
1E06A0:  UXTH            R2, R2
1E06A4:  VMOV            S2, R3
1E06A8:  VCVT.F32.U32    S2, S2
1E06AC:  VLDR            S4, [R5]
1E06B0:  VLDR            S8, [R4,#0x44]
1E06B4:  ADD             R5, R5, #4
1E06B8:  VLDR            S6, [R4,#0x40]
1E06BC:  VADD.F32        S2, S2, S2
1E06C0:  VADD.F32        S2, S2, S0
1E06C4:  VMUL.F32        S2, S2, S4
1E06C8:  VLDR            S4, [R4,#0x1C]
1E06CC:  VSUB.F32        S8, S8, S2
1E06D0:  VMUL.F32        S6, S8, S6
1E06D4:  VADD.F32        S2, S6, S2
1E06D8:  VMUL.F32        S4, S6, S4
1E06DC:  VSTR            S2, [R4,#0x44]
1E06E0:  VLDR            S2, [R1,#-0x20]
1E06E4:  VSUB.F32        S2, S2, S4
1E06E8:  VSTR            S2, [R1,#-0x20]
1E06EC:  VLDR            S2, [R4,#0x20]
1E06F0:  VLDR            S12, [R1,#-0x1C]
1E06F4:  VMUL.F32        S2, S6, S2
1E06F8:  VLDR            S4, [R1,#-0x10]
1E06FC:  VLDR            S8, [R1,#-0x14]
1E0700:  VLDR            S10, [R1,#-0x18]
1E0704:  VSUB.F32        S2, S12, S2
1E0708:  VSTR            S2, [R1,#-0x1C]
1E070C:  VLDR            S2, [R4,#0x24]
1E0710:  VMUL.F32        S2, S2, S6
1E0714:  VSUB.F32        S2, S10, S2
1E0718:  VSTR            S2, [R1,#-0x18]
1E071C:  VLDR            S2, [R4,#0x28]
1E0720:  VMUL.F32        S2, S2, S6
1E0724:  VSUB.F32        S2, S8, S2
1E0728:  VSTR            S2, [R1,#-0x14]
1E072C:  VLDR            S2, [R4,#0x2C]
1E0730:  VMUL.F32        S2, S2, S6
1E0734:  VSUB.F32        S2, S4, S2
1E0738:  VSTR            S2, [R1,#-0x10]
1E073C:  VLDR            S2, [R4,#0x30]
1E0740:  VLDR            S4, [R1,#-0xC]
1E0744:  VMUL.F32        S2, S2, S6
1E0748:  VSUB.F32        S2, S4, S2
1E074C:  VSTR            S2, [R1,#-0xC]
1E0750:  VLDR            S2, [R4,#0x34]
1E0754:  VLDR            S4, [R1,#-8]
1E0758:  VMUL.F32        S2, S2, S6
1E075C:  VSUB.F32        S2, S4, S2
1E0760:  VSTR            S2, [R1,#-8]
1E0764:  VLDR            S2, [R4,#0x38]
1E0768:  VLDR            S4, [R1,#-4]
1E076C:  VMUL.F32        S2, S2, S6
1E0770:  VSUB.F32        S2, S4, S2
1E0774:  VSTR            S2, [R1,#-4]
1E0778:  VLDR            S2, [R4,#0x3C]
1E077C:  VLDR            S4, [R1]
1E0780:  VMUL.F32        S2, S2, S6
1E0784:  VSUB.F32        S2, S4, S2
1E0788:  VSTR            S2, [R1]
1E078C:  ADD             R1, R1, #0x24 ; '$'
1E0790:  BNE             loc_1E0694
1E0794:  STR             R2, [R4,#0x14]
1E0798:  VPOP            {D8}
1E079C:  POP             {R4-R9,R11,PC}
1E07A0:  LDR             R0, [R4,#0x14]
1E07A4:  CMP             R6, #0
1E07A8:  BEQ             loc_1E08B8
1E07AC:  VMOV.F32        S2, #-1.0
1E07B0:  LDR             R1, [R4,#0x18]
1E07B4:  ADD             R2, R3, #0x20 ; ' '
1E07B8:  VLDR            S0, =0.000030518
1E07BC:  ADD             R0, R0, R1
1E07C0:  SUBS            R6, R6, #1
1E07C4:  UXTH            R0, R0
1E07C8:  VMOV            S4, R0
1E07CC:  VCVT.F32.U32    S4, S4
1E07D0:  VLDR            S6, [R5]
1E07D4:  VLDR            S10, [R4,#0x44]
1E07D8:  ADD             R5, R5, #4
1E07DC:  VLDR            S8, [R4,#0x40]
1E07E0:  VMUL.F32        S4, S4, S0
1E07E4:  VADD.F32        S4, S4, S2
1E07E8:  VMUL.F32        S4, S4, S6
1E07EC:  VLDR            S6, [R4,#0x1C]
1E07F0:  VSUB.F32        S10, S10, S4
1E07F4:  VMUL.F32        S8, S10, S8
1E07F8:  VADD.F32        S4, S8, S4
1E07FC:  VMUL.F32        S6, S8, S6
1E0800:  VSTR            S4, [R4,#0x44]
1E0804:  VLDR            S4, [R2,#-0x20]
1E0808:  VSUB.F32        S4, S4, S6
1E080C:  VSTR            S4, [R2,#-0x20]
1E0810:  VLDR            S4, [R4,#0x20]
1E0814:  VLDR            S14, [R2,#-0x1C]
1E0818:  VMUL.F32        S4, S4, S8
1E081C:  VLDR            S6, [R2,#-0x10]
1E0820:  VLDR            S10, [R2,#-0x14]
1E0824:  VLDR            S12, [R2,#-0x18]
1E0828:  VSUB.F32        S4, S14, S4
1E082C:  VSTR            S4, [R2,#-0x1C]
1E0830:  VLDR            S4, [R4,#0x24]
1E0834:  VMUL.F32        S4, S4, S8
1E0838:  VSUB.F32        S4, S12, S4
1E083C:  VSTR            S4, [R2,#-0x18]
1E0840:  VLDR            S4, [R4,#0x28]
1E0844:  VMUL.F32        S4, S4, S8
1E0848:  VSUB.F32        S4, S10, S4
1E084C:  VSTR            S4, [R2,#-0x14]
1E0850:  VLDR            S4, [R4,#0x2C]
1E0854:  VMUL.F32        S4, S4, S8
1E0858:  VSUB.F32        S4, S6, S4
1E085C:  VSTR            S4, [R2,#-0x10]
1E0860:  VLDR            S4, [R4,#0x30]
1E0864:  VLDR            S6, [R2,#-0xC]
1E0868:  VMUL.F32        S4, S4, S8
1E086C:  VSUB.F32        S4, S6, S4
1E0870:  VSTR            S4, [R2,#-0xC]
1E0874:  VLDR            S4, [R4,#0x34]
1E0878:  VLDR            S6, [R2,#-8]
1E087C:  VMUL.F32        S4, S4, S8
1E0880:  VSUB.F32        S4, S6, S4
1E0884:  VSTR            S4, [R2,#-8]
1E0888:  VLDR            S4, [R4,#0x38]
1E088C:  VLDR            S6, [R2,#-4]
1E0890:  VMUL.F32        S4, S4, S8
1E0894:  VSUB.F32        S4, S6, S4
1E0898:  VSTR            S4, [R2,#-4]
1E089C:  VLDR            S4, [R4,#0x3C]
1E08A0:  VLDR            S6, [R2]
1E08A4:  VMUL.F32        S4, S4, S8
1E08A8:  VSUB.F32        S4, S6, S4
1E08AC:  VSTR            S4, [R2]
1E08B0:  ADD             R2, R2, #0x24 ; '$'
1E08B4:  BNE             loc_1E07BC
1E08B8:  STR             R0, [R4,#0x14]
1E08BC:  VPOP            {D8}
1E08C0:  POP             {R4-R9,R11,PC}
