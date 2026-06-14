; =========================================================
; Game Engine Function: sub_1706F8
; Address            : 0x1706F8 - 0x17083E
; =========================================================

1706F8:  LDR             R2, =(dword_381B58 - 0x1706FE)
1706FA:  ADD             R2, PC; dword_381B58
1706FC:  LDR             R2, [R2]
1706FE:  CBZ             R1, loc_17073E
170700:  ADD.W           R0, R2, R0,LSL#2
170704:  MOVW            R3, #0x1458
170708:  ADD             R3, R0
17070A:  CMP             R1, #2
17070C:  VLDR            S2, [R3]
170710:  BNE             loc_170748
170712:  VCMP.F32        S2, #0.0
170716:  VMRS            APSR_nzcv, FPSCR
17071A:  BPL             loc_170748
17071C:  MOVW            R1, #0x14B0
170720:  ADD             R0, R1
170722:  VLDR            S0, =0.0
170726:  VMOV.F32        S4, #1.0
17072A:  VLDR            S2, [R0]
17072E:  VCMP.F32        S2, #0.0
170732:  VMRS            APSR_nzcv, FPSCR
170736:  IT GE
170738:  VMOVGE.F32      S0, S4
17073C:  B               def_170760; jumptable 00170760 default case, case 2
17073E:  ADD.W           R0, R2, R0,LSL#2
170742:  VLDR            S0, [R0,#0x2FC]
170746:  B               def_170760; jumptable 00170760 default case, case 2
170748:  VCMP.F32        S2, #0.0
17074C:  VLDR            S0, =0.0
170750:  VMRS            APSR_nzcv, FPSCR
170754:  BMI             def_170760; jumptable 00170760 default case, case 2
170756:  SUBS            R0, R1, #1; switch 5 cases
170758:  CMP             R0, #4
17075A:  BHI             def_170760; jumptable 00170760 default case, case 2
17075C:  ADR.W           R1, jpt_170760
170760:  TBB.W           [PC,R0]; switch jump
170764:  DCB 3; jump table for switch statement
170765:  DCB 0x6A
170766:  DCB 0xF
170767:  DCB 0x20
170768:  DCB 0x31
170769:  ALIGN 2
17076A:  VCMP.F32        S2, #0.0; jumptable 00170760 case 1
17076E:  VLDR            S0, =0.0
170772:  VMOV.F32        S4, #1.0
170776:  VMRS            APSR_nzcv, FPSCR
17077A:  IT EQ
17077C:  VMOVEQ.F32      S0, S4
170780:  B               def_170760; jumptable 00170760 default case, case 2
170782:  VCMP.F32        S2, #0.0; jumptable 00170760 case 3
170786:  VMRS            APSR_nzcv, FPSCR
17078A:  BEQ             loc_1707D0
17078C:  VLDR            S6, =0.8
170790:  VLDR            S4, [R2,#0x88]
170794:  VMUL.F32        S4, S4, S6
170798:  VCMP.F32        S2, S4
17079C:  VMRS            APSR_nzcv, FPSCR
1707A0:  BHI             loc_1707F0
1707A2:  B               def_170760; jumptable 00170760 default case, case 2
1707A4:  VCMP.F32        S2, #0.0; jumptable 00170760 case 4
1707A8:  VMRS            APSR_nzcv, FPSCR
1707AC:  BEQ             loc_1707D0
1707AE:  VLDR            S4, [R2,#0x88]
1707B2:  VCMP.F32        S2, S4
1707B6:  VMRS            APSR_nzcv, FPSCR
1707BA:  BLS             def_170760; jumptable 00170760 default case, case 2
1707BC:  VLDR            S6, [R2,#0x8C]
1707C0:  VADD.F32        S6, S6, S6
1707C4:  B               loc_1707F8
1707C6:  VCMP.F32        S2, #0.0; jumptable 00170760 case 5
1707CA:  VMRS            APSR_nzcv, FPSCR
1707CE:  BNE             loc_1707D6
1707D0:  VMOV.F32        S0, #1.0
1707D4:  B               def_170760; jumptable 00170760 default case, case 2
1707D6:  VLDR            S4, [R2,#0x88]
1707DA:  VLDR            S6, =0.8
1707DE:  VMUL.F32        S4, S4, S6
1707E2:  VCMP.F32        S2, S4
1707E6:  VMRS            APSR_nzcv, FPSCR
1707EA:  BLS             def_170760; jumptable 00170760 default case, case 2
1707EC:  VLDR            S6, =0.3
1707F0:  VLDR            S8, [R2,#0x8C]
1707F4:  VMUL.F32        S6, S8, S6
1707F8:  VCMP.F32        S6, #0.0
1707FC:  VMRS            APSR_nzcv, FPSCR
170800:  BLS             def_170760; jumptable 00170760 default case, case 2
170802:  VLDR            S0, [R2,#0x18]
170806:  VSUB.F32        S0, S2, S0
17080A:  VSUB.F32        S2, S2, S4
17080E:  VSUB.F32        S0, S0, S4
170812:  VDIV.F32        S2, S2, S6
170816:  VDIV.F32        S0, S0, S6
17081A:  VCVT.S32.F32    S0, S0
17081E:  VCVT.S32.F32    S2, S2
170822:  VMOV            R0, S0
170826:  VMOV            R1, S2
17082A:  SUBS            R0, R1, R0
17082C:  BIC.W           R0, R0, R0,ASR#31
170830:  VMOV            S0, R0
170834:  VCVT.F32.S32    S0, S0
170838:  VMOV            R0, S0; jumptable 00170760 default case, case 2
17083C:  BX              LR
