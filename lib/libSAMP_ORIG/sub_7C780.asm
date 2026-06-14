; =========================================================
; Game Engine Function: sub_7C780
; Address            : 0x7C780 - 0x7C958
; =========================================================

7C780:  PUSH            {R4-R7,LR}
7C782:  ADD             R7, SP, #0xC
7C784:  PUSH.W          {R8-R10}
7C788:  VPUSH           {D8-D9}
7C78C:  SUB             SP, SP, #0x10
7C78E:  MOV             R9, R0
7C790:  LDR             R0, =(__stack_chk_guard_ptr - 0x7C79A)
7C792:  MOV             R4, R2
7C794:  MOV             R10, R1
7C796:  ADD             R0, PC; __stack_chk_guard_ptr
7C798:  CMP             R2, #2
7C79A:  LDR             R0, [R0]; __stack_chk_guard
7C79C:  LDR             R0, [R0]
7C79E:  STR             R0, [SP,#0x38+var_2C]
7C7A0:  BEQ             loc_7C812
7C7A2:  CMP             R4, #1
7C7A4:  BEQ             loc_7C886
7C7A6:  CMP             R4, #0
7C7A8:  BNE.W           loc_7C8D0
7C7AC:  LDRB.W          R0, [R9,#8]
7C7B0:  CBZ             R0, loc_7C7FE
7C7B2:  VLDR            S0, [R9,#0x2C]
7C7B6:  VLDR            S2, [R10]
7C7BA:  VSUB.F32        S0, S2, S0
7C7BE:  VCMP.F32        S0, #0.0
7C7C2:  VMRS            APSR_nzcv, FPSCR
7C7C6:  ITTTT GE
7C7C8:  VLDRGE          S2, [R9,#0x30]
7C7CC:  VLDRGE          S4, [R10,#4]
7C7D0:  VSUBGE.F32      S2, S4, S2
7C7D4:  VCMPGE.F32      S2, #0.0
7C7D8:  IT GE
7C7DA:  VMRSGE          APSR_nzcv, FPSCR
7C7DE:  BLT             loc_7C7FE
7C7E0:  VLDR            S4, [R9,#0x14]
7C7E4:  VCMP.F32        S0, S4
7C7E8:  VMRS            APSR_nzcv, FPSCR
7C7EC:  ITTT MI
7C7EE:  VLDRMI          S0, [R9,#0x18]
7C7F2:  VCMPMI.F32      S2, S0
7C7F6:  VMRSMI          APSR_nzcv, FPSCR
7C7FA:  BMI.W           loc_7C90E
7C7FE:  LDR.W           R0, [R9]
7C802:  MOVS            R1, #0
7C804:  STRB.W          R1, [R9,#0x35]
7C808:  MOVS            R1, #0
7C80A:  LDR             R2, [R0,#0x18]
7C80C:  MOV             R0, R9
7C80E:  BLX             R2
7C810:  B               loc_7C8D0
7C812:  LDR.W           R0, [R9]
7C816:  MOVS            R1, #0
7C818:  LDRB.W          R8, [R9,#0x34]
7C81C:  STRB.W          R1, [R9,#0x34]
7C820:  MOVS            R1, #0
7C822:  LDR             R2, [R0,#0x1C]
7C824:  MOV             R0, R9
7C826:  BLX             R2
7C828:  LDRB.W          R0, [R9,#8]
7C82C:  CBZ             R0, loc_7C878
7C82E:  VLDR            S0, [R9,#0x2C]
7C832:  VLDR            S2, [R10]
7C836:  VSUB.F32        S0, S2, S0
7C83A:  VCMP.F32        S0, #0.0
7C83E:  VMRS            APSR_nzcv, FPSCR
7C842:  ITTTT GE
7C844:  VLDRGE          S2, [R9,#0x30]
7C848:  VLDRGE          S4, [R10,#4]
7C84C:  VSUBGE.F32      S2, S4, S2
7C850:  VCMPGE.F32      S2, #0.0
7C854:  IT GE
7C856:  VMRSGE          APSR_nzcv, FPSCR
7C85A:  BLT             loc_7C878
7C85C:  VLDR            S4, [R9,#0x14]
7C860:  VCMP.F32        S0, S4
7C864:  VMRS            APSR_nzcv, FPSCR
7C868:  ITTT MI
7C86A:  VLDRMI          S0, [R9,#0x18]
7C86E:  VCMPMI.F32      S2, S0
7C872:  VMRSMI          APSR_nzcv, FPSCR
7C876:  BMI             loc_7C934
7C878:  VMOV.I32        Q8, #0
7C87C:  ADD.W           R0, R9, #0x38 ; '8'
7C880:  VST1.32         {D16-D17}, [R0]
7C884:  B               loc_7C8D0
7C886:  VLDR            S0, [R9,#0x38]
7C88A:  VLDR            S4, [R10]
7C88E:  VLDR            S2, [R9,#0x3C]
7C892:  VLDR            S6, [R10,#4]
7C896:  VSUB.F32        S18, S4, S0
7C89A:  LDRB.W          R0, [R9,#0x34]
7C89E:  VSUB.F32        S16, S6, S2
7C8A2:  CBZ             R0, loc_7C8C8
7C8A4:  VLDR            S0, [R9,#0x40]
7C8A8:  ADD             R1, SP, #0x38+var_34
7C8AA:  VLDR            S2, [R9,#0x44]
7C8AE:  VSUB.F32        S0, S18, S0
7C8B2:  LDR.W           R0, [R9]
7C8B6:  VSUB.F32        S2, S16, S2
7C8BA:  LDR             R2, [R0,#0x10]
7C8BC:  MOV             R0, R9
7C8BE:  VSTR            S0, [SP,#0x38+var_34]
7C8C2:  VSTR            S2, [SP,#0x38+var_30]
7C8C6:  BLX             R2
7C8C8:  VSTR            S18, [R9,#0x40]
7C8CC:  VSTR            S16, [R9,#0x44]
7C8D0:  LDRD.W          R6, R5, [R9,#0x48]
7C8D4:  B               loc_7C8D8
7C8D6:  ADDS            R6, #4
7C8D8:  CMP             R6, R5
7C8DA:  BEQ             loc_7C8F0
7C8DC:  LDR             R0, [R6]
7C8DE:  LDRB            R1, [R0,#8]
7C8E0:  CMP             R1, #0
7C8E2:  BEQ             loc_7C8D6
7C8E4:  LDR             R1, [R0]
7C8E6:  MOV             R2, R4
7C8E8:  LDR             R3, [R1]
7C8EA:  MOV             R1, R10
7C8EC:  BLX             R3
7C8EE:  B               loc_7C8D6
7C8F0:  LDR             R0, [SP,#0x38+var_2C]
7C8F2:  LDR             R1, =(__stack_chk_guard_ptr - 0x7C8F8)
7C8F4:  ADD             R1, PC; __stack_chk_guard_ptr
7C8F6:  LDR             R1, [R1]; __stack_chk_guard
7C8F8:  LDR             R1, [R1]
7C8FA:  CMP             R1, R0
7C8FC:  ITTTT EQ
7C8FE:  ADDEQ           SP, SP, #0x10
7C900:  VPOPEQ          {D8-D9}
7C904:  POPEQ.W         {R8-R10}
7C908:  POPEQ           {R4-R7,PC}
7C90A:  BLX             __stack_chk_fail
7C90E:  LDR.W           R0, [R9]
7C912:  MOVS            R1, #1
7C914:  STRB.W          R1, [R9,#0x34]
7C918:  MOVS            R1, #1
7C91A:  LDR             R2, [R0,#0x1C]
7C91C:  MOV             R0, R9
7C91E:  BLX             R2
7C920:  LDR.W           R2, [R9]
7C924:  LDRD.W          R0, R1, [R10]
7C928:  STRD.W          R0, R1, [R9,#0x38]
7C92C:  MOV             R0, R9
7C92E:  LDR             R1, [R2,#0xC]
7C930:  BLX             R1
7C932:  B               loc_7C8D0
7C934:  CMP.W           R8, #0
7C938:  BEQ             loc_7C878
7C93A:  LDR.W           R0, [R9]
7C93E:  MOVS            R1, #1
7C940:  STRB.W          R1, [R9,#0x35]
7C944:  MOVS            R1, #1
7C946:  LDR             R2, [R0,#0x18]
7C948:  MOV             R0, R9
7C94A:  BLX             R2
7C94C:  LDR.W           R0, [R9]
7C950:  LDR             R1, [R0,#0x14]
7C952:  MOV             R0, R9
7C954:  BLX             R1
7C956:  B               loc_7C878
