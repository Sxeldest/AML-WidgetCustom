; =========================================================
; Game Engine Function: sub_895D4
; Address            : 0x895D4 - 0x8999A
; =========================================================

895D4:  PUSH            {R4-R7,LR}
895D6:  ADD             R7, SP, #0xC
895D8:  PUSH.W          {R8-R11}
895DC:  SUB             SP, SP, #4
895DE:  VPUSH           {D8}
895E2:  SUB             SP, SP, #0x38
895E4:  MOV             R8, R0
895E6:  LDR             R0, =(__stack_chk_guard_ptr - 0x895F0)
895E8:  MOV             R6, R1
895EA:  LDR             R5, [R7,#arg_C]
895EC:  ADD             R0, PC; __stack_chk_guard_ptr
895EE:  MOV             R10, R3
895F0:  MOV             R11, R2
895F2:  LDR             R0, [R0]; __stack_chk_guard
895F4:  LDR             R0, [R0]
895F6:  STR             R0, [SP,#0x60+var_2C]
895F8:  LDR             R1, [R1]
895FA:  LDR             R4, [R6,#4]
895FC:  LDRD.W          R9, R0, [R7,#arg_0]
89600:  VMOV            S16, R1
89604:  STRD.W          R1, R4, [SP,#0x60+var_38]
89608:  CBZ             R0, loc_89614
8960A:  VLDR            S6, [R0]
8960E:  VLDR            S0, [R0,#4]
89612:  B               loc_8966A
89614:  LDR             R0, =(dword_1ACF68 - 0x89620)
89616:  MOVW            R1, #0x18C8
8961A:  CMP             R9, R10
8961C:  ADD             R0, PC; dword_1ACF68
8961E:  LDR             R0, [R0]
89620:  ADD             R1, R0
89622:  VLDR            S0, [R1]
89626:  BEQ             loc_89666
89628:  VMOV            R2, S0; int
8962C:  MOVW            R1, #0x18C4
89630:  ADD             R0, R1
89632:  MOV             R3, #0x7F7FFFFF; int
8963A:  LDR             R1, [R0]; int
8963C:  MOVS            R0, #0
8963E:  STRD.W          R0, R10, [SP,#0x60+var_60]; float
89642:  STRD.W          R9, R0, [SP,#0x60+var_58]; int
89646:  ADD             R0, SP, #0x60+var_48; int
89648:  BL              sub_A3980
8964C:  VLDR            S2, =0.95
89650:  VLDR            S4, [SP,#0x60+var_48]
89654:  VLDR            S0, [SP,#0x60+var_44]
89658:  VADD.F32        S2, S4, S2
8965C:  VCVT.S32.F32    S2, S2
89660:  VCVT.F32.S32    S6, S2
89664:  B               loc_8966A
89666:  VLDR            S6, =0.0
8966A:  VADD.F32        S8, S6, S16
8966E:  MOV             R0, R11
89670:  CMP             R5, #0
89672:  ITT NE
89674:  ADDNE.W         R0, R5, #8
89678:  MOVNE           R6, R5
8967A:  VLDR            S2, [R0]
8967E:  VMOV            S4, R4
89682:  VCMP.F32        S8, S2
89686:  VMRS            APSR_nzcv, FPSCR
8968A:  BGE             loc_896A4
8968C:  VADD.F32        S8, S0, S4
89690:  VLDR            S10, [R0,#4]
89694:  MOVS            R1, #0
89696:  VCMP.F32        S8, S10
8969A:  VMRS            APSR_nzcv, FPSCR
8969E:  IT GE
896A0:  MOVGE           R1, #1
896A2:  B               loc_896A6
896A4:  MOVS            R1, #1
896A6:  LDR             R2, [R7,#arg_8]
896A8:  CBZ             R5, loc_896D4
896AA:  VLDR            S8, [R6]
896AE:  VCMP.F32        S8, S16
896B2:  VMRS            APSR_nzcv, FPSCR
896B6:  BLE             loc_896BC
896B8:  MOVS            R3, #1
896BA:  B               loc_896CE
896BC:  VLDR            S8, [R6,#4]
896C0:  MOVS            R3, #0
896C2:  VCMP.F32        S8, S4
896C6:  VMRS            APSR_nzcv, FPSCR
896CA:  IT GT
896CC:  MOVGT           R3, #1
896CE:  ORRS            R1, R3
896D0:  IT NE
896D2:  MOVNE           R1, #1
896D4:  VLDR            S8, [R2]
896D8:  VCMP.F32        S8, #0.0
896DC:  VMRS            APSR_nzcv, FPSCR
896E0:  BLE             loc_89708
896E2:  VLDR            S10, [R11]
896E6:  VSUB.F32        S10, S10, S16
896EA:  VSUB.F32        S6, S10, S6
896EE:  VMOV.F32        S10, S16
896F2:  VMLA.F32        S10, S6, S8
896F6:  VCMP.F32        S10, S16
896FA:  VMRS            APSR_nzcv, FPSCR
896FE:  IT LS
89700:  VMOVLS.F32      S10, S16
89704:  VSTR            S10, [SP,#0x60+var_38]
89708:  VLDR            S6, [R2,#4]
8970C:  VCMP.F32        S6, #0.0
89710:  VMRS            APSR_nzcv, FPSCR
89714:  BLE             loc_8973C
89716:  VLDR            S8, [R11,#4]
8971A:  VSUB.F32        S8, S8, S4
8971E:  VSUB.F32        S0, S8, S0
89722:  VMOV.F32        S8, S4
89726:  VMLA.F32        S8, S0, S6
8972A:  VCMP.F32        S8, S4
8972E:  VMRS            APSR_nzcv, FPSCR
89732:  IT LS
89734:  VMOVLS.F32      S8, S4
89738:  VSTR            S8, [SP,#0x60+var_34]
8973C:  CMP             R1, #0
8973E:  BEQ.W           loc_89862
89742:  LDR             R1, =(dword_1ACF68 - 0x8974E)
89744:  VMOV.F32        S0, #1.0
89748:  LDR             R0, [R0,#4]
8974A:  ADD             R1, PC; dword_1ACF68
8974C:  STR             R0, [SP,#0x60+var_3C]
8974E:  MOVW            R0, #0x1518
89752:  LDRD.W          R2, R3, [R6]
89756:  LDR             R1, [R1]
89758:  VSTR            S2, [SP,#0x60+var_40]
8975C:  ADD             R0, R1
8975E:  STRD.W          R2, R3, [SP,#0x60+var_48]
89762:  VLDR            S8, [R0,#0xB8]
89766:  VLDR            S10, [R0]
8976A:  VLDR            S4, [R0,#0xB0]
8976E:  VMUL.F32        S8, S8, S10
89772:  VLDR            S2, [R0,#0xAC]
89776:  VLDR            S6, [R0,#0xB4]
8977A:  VCMP.F32        S4, S0
8977E:  VMRS            APSR_nzcv, FPSCR
89782:  VMOV.F32        S10, S4
89786:  VCMP.F32        S2, S0
8978A:  IT GT
8978C:  VMOVGT.F32      S10, S0
89790:  VMRS            APSR_nzcv, FPSCR
89794:  VMOV.F32        S12, S2
89798:  VCMP.F32        S6, S0
8979C:  IT GT
8979E:  VMOVGT.F32      S12, S0
897A2:  VMRS            APSR_nzcv, FPSCR
897A6:  VMOV.F32        S14, S6
897AA:  VCMP.F32        S8, S0
897AE:  IT GT
897B0:  VMOVGT.F32      S14, S0
897B4:  VMRS            APSR_nzcv, FPSCR
897B8:  VCMP.F32        S4, #0.0
897BC:  VMOV.F32        S4, #0.5
897C0:  ADD             R0, SP, #0x60+var_48
897C2:  VMOV.F32        S1, S8
897C6:  IT GT
897C8:  VMOVGT.F32      S1, S0
897CC:  VMRS            APSR_nzcv, FPSCR
897D0:  VCMP.F32        S2, #0.0
897D4:  VLDR            S0, =0.0
897D8:  IT MI
897DA:  VMOVMI.F32      S10, S0
897DE:  VMRS            APSR_nzcv, FPSCR
897E2:  VCMP.F32        S6, #0.0
897E6:  IT MI
897E8:  VMOVMI.F32      S12, S0
897EC:  VMRS            APSR_nzcv, FPSCR
897F0:  VCMP.F32        S8, #0.0
897F4:  VMOV.F32        S2, S4
897F8:  IT MI
897FA:  VMOVMI.F32      S14, S0
897FE:  VMOV.F32        S6, S4
89802:  VMRS            APSR_nzcv, FPSCR
89806:  IT MI
89808:  VMOVMI.F32      S1, S0
8980C:  VLDR            S0, =255.0
89810:  VMOV.F32        S8, S4
89814:  STR             R0, [SP,#0x60+var_50]
89816:  VMLA.F32        S4, S1, S0
8981A:  MOVS            R0, #0
8981C:  STR             R0, [SP,#0x60+var_54]
8981E:  VMLA.F32        S2, S10, S0
89822:  STR.W           R9, [SP,#0x60+var_58]
89826:  VMLA.F32        S6, S12, S0
8982A:  STR.W           R10, [SP,#0x60+var_5C]
8982E:  VMLA.F32        S8, S14, S0
89832:  VCVT.S32.F32    S0, S2
89836:  VCVT.S32.F32    S2, S6
8983A:  VCVT.S32.F32    S6, S8
8983E:  VMOV            R0, S0
89842:  VMOV            R1, S2
89846:  VCVT.S32.F32    S0, S4
8984A:  ORR.W           R0, R1, R0,LSL#8
8984E:  VMOV            R1, S6
89852:  ORR.W           R0, R0, R1,LSL#16
89856:  VMOV            R1, S0
8985A:  ORR.W           R0, R0, R1,LSL#24
8985E:  STR             R0, [SP,#0x60+var_60]
89860:  B               loc_8996C
89862:  LDR             R0, =(dword_1ACF68 - 0x89870)
89864:  MOVW            R1, #0x1518
89868:  VMOV.F32        S0, #1.0
8986C:  ADD             R0, PC; dword_1ACF68
8986E:  LDR             R0, [R0]
89870:  ADD             R0, R1
89872:  VLDR            S2, [R0]
89876:  VLDR            S10, [R0,#0xB8]
8987A:  VLDR            S6, [R0,#0xB0]
8987E:  VMUL.F32        S2, S10, S2
89882:  VLDR            S4, [R0,#0xAC]
89886:  VLDR            S8, [R0,#0xB4]
8988A:  VCMP.F32        S6, S0
8988E:  VMRS            APSR_nzcv, FPSCR
89892:  VMOV.F32        S10, S6
89896:  VCMP.F32        S4, S0
8989A:  IT GT
8989C:  VMOVGT.F32      S10, S0
898A0:  VMRS            APSR_nzcv, FPSCR
898A4:  VMOV.F32        S12, S4
898A8:  VCMP.F32        S8, S0
898AC:  IT GT
898AE:  VMOVGT.F32      S12, S0
898B2:  VMRS            APSR_nzcv, FPSCR
898B6:  VMOV.F32        S14, S8
898BA:  VCMP.F32        S2, S0
898BE:  IT GT
898C0:  VMOVGT.F32      S14, S0
898C4:  VMRS            APSR_nzcv, FPSCR
898C8:  VCMP.F32        S6, #0.0
898CC:  VMOV.F32        S6, #0.5
898D0:  MOV.W           R0, #0
898D4:  VMOV.F32        S1, S2
898D8:  IT GT
898DA:  VMOVGT.F32      S1, S0
898DE:  VMRS            APSR_nzcv, FPSCR
898E2:  VCMP.F32        S4, #0.0
898E6:  VLDR            S0, =0.0
898EA:  IT MI
898EC:  VMOVMI.F32      S10, S0
898F0:  VMRS            APSR_nzcv, FPSCR
898F4:  VCMP.F32        S8, #0.0
898F8:  IT MI
898FA:  VMOVMI.F32      S12, S0
898FE:  VMRS            APSR_nzcv, FPSCR
89902:  VCMP.F32        S2, #0.0
89906:  VMOV.F32        S2, S6
8990A:  IT MI
8990C:  VMOVMI.F32      S14, S0
89910:  VMOV.F32        S4, S6
89914:  VMRS            APSR_nzcv, FPSCR
89918:  IT MI
8991A:  VMOVMI.F32      S1, S0
8991E:  VLDR            S0, =255.0
89922:  VMOV.F32        S8, S6
89926:  STRD.W          R9, R0, [SP,#0x60+var_58]; int
8992A:  VMLA.F32        S6, S1, S0
8992E:  STR             R0, [SP,#0x60+var_50]; int
89930:  VMLA.F32        S2, S10, S0
89934:  VMLA.F32        S4, S12, S0
89938:  VMLA.F32        S8, S14, S0
8993C:  VCVT.S32.F32    S0, S2
89940:  VCVT.S32.F32    S2, S4
89944:  VCVT.S32.F32    S4, S8
89948:  VMOV            R1, S0
8994C:  VMOV            R2, S2
89950:  VCVT.S32.F32    S0, S6
89954:  ORR.W           R1, R2, R1,LSL#8
89958:  VMOV            R2, S4
8995C:  ORR.W           R1, R1, R2,LSL#16
89960:  VMOV            R2, S0
89964:  ORR.W           R1, R1, R2,LSL#24
89968:  STRD.W          R1, R10, [SP,#0x60+var_60]; int
8996C:  ADD             R3, SP, #0x60+var_38; int
8996E:  MOV             R0, R8; int
89970:  MOVS            R1, #0; int
89972:  MOVS            R2, #0; int
89974:  BL              sub_9D89C
89978:  LDR             R0, [SP,#0x60+var_2C]
8997A:  LDR             R1, =(__stack_chk_guard_ptr - 0x89980)
8997C:  ADD             R1, PC; __stack_chk_guard_ptr
8997E:  LDR             R1, [R1]; __stack_chk_guard
89980:  LDR             R1, [R1]
89982:  CMP             R1, R0
89984:  ITTTT EQ
89986:  ADDEQ           SP, SP, #0x38 ; '8'
89988:  VPOPEQ          {D8}
8998C:  ADDEQ           SP, SP, #4
8998E:  POPEQ.W         {R8-R11}
89992:  IT EQ
89994:  POPEQ           {R4-R7,PC}
89996:  BLX             __stack_chk_fail
