; =========================================================
; Game Engine Function: sub_98718
; Address            : 0x98718 - 0x98846
; =========================================================

98718:  PUSH            {R7,LR}
9871A:  MOV             R7, SP
9871C:  LDR             R1, =(dword_1ACF68 - 0x98726)
9871E:  MOVW            R2, #0x1B16
98722:  ADD             R1, PC; dword_1ACF68
98724:  LDR             R1, [R1]
98726:  LDRB            R2, [R1,R2]
98728:  CBNZ            R2, loc_98742
9872A:  MOVW            R2, #0x1550
9872E:  ADDS            R3, R1, R2
98730:  LDRB.W          R2, [R3,#0x5C7]
98734:  CMP             R2, #0
98736:  ITT NE
98738:  LDRNE.W         LR, [R3,#0x564]
9873C:  CMPNE.W         LR, #0
98740:  BNE             loc_9877C
98742:  VLDR            S0, =-256000.0
98746:  VLDR            S2, [R1,#0xE0]
9874A:  VCMP.F32        S2, S0
9874E:  VMRS            APSR_nzcv, FPSCR
98752:  ITTTT GE
98754:  VLDRGE          S2, [R1,#0xE4]
98758:  VCMPGE.F32      S2, S0
9875C:  VMRSGE          APSR_nzcv, FPSCR
98760:  LDRDGE.W        R1, R2, [R1,#0xE0]
98764:  ITT GE
98766:  STRDGE.W        R1, R2, [R0]
9876A:  POPGE           {R7,PC}
9876C:  MOVW            R2, #0x1DD4
98770:  ADD             R1, R2
98772:  LDRD.W          R2, R1, [R1]
98776:  STRD.W          R2, R1, [R0]
9877A:  POP             {R7,PC}
9877C:  LDR.W           R12, [R3,#0x5BC]
98780:  VMOV.F32        S0, #4.0
98784:  VLDR            S10, [R3]
98788:  VLDR            S12, [R3,#4]
9878C:  ADD.W           R2, LR, R12,LSL#4
98790:  VLDR            S4, [R2,#0x318]
98794:  VLDR            S8, [R2,#0x320]
98798:  VLDR            S2, [R2,#0x314]
9879C:  VMUL.F32        S0, S10, S0
987A0:  VLDR            S6, [R2,#0x31C]
987A4:  VSUB.F32        S4, S8, S4
987A8:  VSUB.F32        S6, S6, S2
987AC:  VCMP.F32        S12, S4
987B0:  VMRS            APSR_nzcv, FPSCR
987B4:  IT MI
987B6:  VMOVMI.F32      S4, S12
987BA:  VCMP.F32        S0, S6
987BE:  VMRS            APSR_nzcv, FPSCR
987C2:  IT MI
987C4:  VMOVMI.F32      S6, S0
987C8:  VSUB.F32        S0, S8, S4
987CC:  VLDR            S4, [LR,#0xC]
987D0:  VADD.F32        S2, S2, S6
987D4:  VLDR            S6, [LR,#0x10]
987D8:  VADD.F32        S0, S6, S0
987DC:  VLDR            S6, [R1,#0x14]
987E0:  VADD.F32        S2, S4, S2
987E4:  VLDR            S4, [R1,#0x10]
987E8:  VCMP.F32        S0, S6
987EC:  VMRS            APSR_nzcv, FPSCR
987F0:  VMOV.F32        S8, S0
987F4:  VCMP.F32        S2, S4
987F8:  IT GT
987FA:  VMOVGT.F32      S8, S6
987FE:  VMRS            APSR_nzcv, FPSCR
98802:  VMOV.F32        S6, S2
98806:  VCMP.F32        S0, #0.0
9880A:  IT GT
9880C:  VMOVGT.F32      S6, S4
98810:  VMRS            APSR_nzcv, FPSCR
98814:  VCMP.F32        S2, #0.0
98818:  VLDR            S4, =0.0
9881C:  IT MI
9881E:  VMOVMI.F32      S8, S4
98822:  VCVT.S32.F32    S0, S8
98826:  VMRS            APSR_nzcv, FPSCR
9882A:  IT MI
9882C:  VMOVMI.F32      S6, S4
98830:  VCVT.S32.F32    S2, S6
98834:  VCVT.F32.S32    S0, S0
98838:  VCVT.F32.S32    S2, S2
9883C:  VSTR            S0, [R0,#4]
98840:  VSTR            S2, [R0]
98844:  POP             {R7,PC}
