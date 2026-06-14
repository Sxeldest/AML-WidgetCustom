; =========================================================
; Game Engine Function: _Z15ChooseComponentii
; Address            : 0x388734 - 0x388860
; =========================================================

388734:  PUSH            {R4,R6,R7,LR}
388736:  ADD             R7, SP, #8
388738:  VPUSH           {D8}
38873C:  SUBS            R0, #1; switch 4 cases
38873E:  MOV             R4, R1
388740:  CMP             R0, #3
388742:  BHI.W           def_388746; jumptable 00388746 default case
388746:  TBB.W           [PC,R0]; switch jump
38874A:  DCB 2; jump table for switch statement
38874B:  DCB 0x13
38874C:  DCB 0x27
38874D:  DCB 0x3C
38874E:  CMP             R4, #0; jumptable 00388746 case 1
388750:  BEQ             loc_3887EE
388752:  MOVS            R0, #0
388754:  MOVS            R1, #0
388756:  MOV             R2, R4
388758:  AND.W           R3, R2, #0xF
38875C:  CMP             R3, #0xF
38875E:  MOV.W           R3, R2,ASR#4
388762:  IT NE
388764:  ADDNE           R1, #1
388766:  CMP.W           R0, R2,ASR#4
38876A:  MOV             R2, R3
38876C:  BNE             loc_388758
38876E:  B               loc_38878E
388770:  CBZ             R4, loc_3887EE; jumptable 00388746 case 2
388772:  MOVS            R0, #0
388774:  MOVS            R1, #0
388776:  MOV             R2, R4
388778:  AND.W           R3, R2, #0xF
38877C:  CMP             R3, #0xF
38877E:  MOV.W           R3, R2,ASR#4
388782:  IT NE
388784:  ADDNE           R1, #1
388786:  CMP.W           R0, R2,ASR#4
38878A:  MOV             R2, R3
38878C:  BNE             loc_388778
38878E:  VMOV            S0, R1
388792:  VCVT.F32.S32    S16, S0
388796:  B               loc_3887F2
388798:  CBZ             R4, loc_388818; jumptable 00388746 case 3
38879A:  MOVS            R0, #0
38879C:  MOVS            R1, #0
38879E:  MOV             R2, R4
3887A0:  AND.W           R3, R2, #0xF
3887A4:  CMP             R3, #0xF
3887A6:  MOV.W           R3, R2,ASR#4
3887AA:  IT NE
3887AC:  ADDNE           R1, #1
3887AE:  CMP.W           R0, R2,ASR#4
3887B2:  MOV             R2, R3
3887B4:  BNE             loc_3887A0
3887B6:  ADDS            R0, R1, #1
3887B8:  VMOV            S0, R0
3887BC:  VCVT.F32.S32    S16, S0
3887C0:  B               loc_38881C
3887C2:  BLX             rand; jumptable 00388746 case 4
3887C6:  UXTH            R0, R0
3887C8:  VLDR            S2, =0.000015259
3887CC:  VMOV            S0, R0
3887D0:  VMOV.F32        S4, #5.0
3887D4:  VCVT.F32.S32    S0, S0
3887D8:  VMUL.F32        S0, S0, S2
3887DC:  VMUL.F32        S0, S0, S4
3887E0:  VCVT.S32.F32    S0, S0
3887E4:  VMOV            R0, S0
3887E8:  VPOP            {D8}
3887EC:  POP             {R4,R6,R7,PC}
3887EE:  VLDR            S16, =0.0
3887F2:  BLX             rand
3887F6:  UXTH            R0, R0
3887F8:  VLDR            S2, =0.000015259
3887FC:  VMOV            S0, R0
388800:  VCVT.F32.S32    S0, S0
388804:  VMUL.F32        S0, S0, S2
388808:  VMUL.F32        S0, S0, S16
38880C:  VCVT.S32.F32    S0, S0
388810:  VMOV            R0, S0
388814:  LSLS            R0, R0, #2
388816:  B               loc_388848
388818:  VMOV.F32        S16, #1.0
38881C:  BLX             rand
388820:  UXTH            R0, R0
388822:  VLDR            S2, =0.000015259
388826:  VMOV            S0, R0
38882A:  VCVT.F32.S32    S0, S0
38882E:  VMUL.F32        S0, S0, S2
388832:  VMUL.F32        S0, S0, S16
388836:  VCVT.S32.F32    S0, S0
38883A:  VMOV            R0, S0
38883E:  CBZ             R0, def_388746; jumptable 00388746 default case
388840:  MOV             R1, #0xFFFFFFFC
388844:  ADD.W           R0, R1, R0,LSL#2
388848:  ASR.W           R0, R4, R0
38884C:  AND.W           R0, R0, #0xF
388850:  VPOP            {D8}
388854:  POP             {R4,R6,R7,PC}
388856:  MOV.W           R0, #0xFFFFFFFF; jumptable 00388746 default case
38885A:  VPOP            {D8}
38885E:  POP             {R4,R6,R7,PC}
