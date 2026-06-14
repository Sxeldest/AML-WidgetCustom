; =========================================================
; Game Engine Function: sub_7D7D0
; Address            : 0x7D7D0 - 0x7D966
; =========================================================

7D7D0:  PUSH            {R4-R7,LR}
7D7D2:  ADD             R7, SP, #0xC
7D7D4:  PUSH.W          {R8,R9,R11}
7D7D8:  VPUSH           {D8-D9}
7D7DC:  SUB             SP, SP, #0x10
7D7DE:  MOV             R9, R0
7D7E0:  LDR             R0, =(__stack_chk_guard_ptr - 0x7D7E6)
7D7E2:  ADD             R0, PC; __stack_chk_guard_ptr
7D7E4:  LDR             R0, [R0]; __stack_chk_guard
7D7E6:  LDR             R0, [R0]
7D7E8:  STR             R0, [SP,#0x38+var_2C]
7D7EA:  LDRD.W          R5, R4, [R9,#0x48]
7D7EE:  CMP             R5, R4
7D7F0:  BEQ.W           loc_7D948
7D7F4:  VLDR            S0, [R9,#0x58]
7D7F8:  SUBS            R0, R4, R5
7D7FA:  VLDR            S4, [R9,#0x5C]
7D7FE:  MOV             R3, R5
7D800:  VLDR            S2, [R9,#0x60]
7D804:  ASRS            R1, R0, #2
7D806:  VLDR            S6, [R9,#0x64]
7D80A:  VADD.F32        S4, S0, S4
7D80E:  VLDR            S8, [R9,#0x14]
7D812:  MOV             R0, R1
7D814:  VADD.F32        S6, S2, S6
7D818:  VLDR            S10, [R9,#0x18]
7D81C:  LDR.W           R2, [R9,#0x54]
7D820:  VSUB.F32        S18, S8, S4
7D824:  VSUB.F32        S16, S10, S6
7D828:  B               loc_7D832
7D82A:  SUBS            R0, #1
7D82C:  ADDS            R3, #4
7D82E:  CMP             R3, R4
7D830:  BEQ             loc_7D864
7D832:  LDR             R6, [R3]
7D834:  CMP             R2, #1
7D836:  BEQ             loc_7D850
7D838:  CMP             R2, #0
7D83A:  BNE             loc_7D82C
7D83C:  VLDR            S4, [R6,#0x14]
7D840:  VCMP.F32        S4, #0.0
7D844:  VMRS            APSR_nzcv, FPSCR
7D848:  BEQ             loc_7D82C
7D84A:  VSUB.F32        S18, S18, S4
7D84E:  B               loc_7D82A
7D850:  VLDR            S4, [R6,#0x18]
7D854:  VCMP.F32        S4, #0.0
7D858:  VMRS            APSR_nzcv, FPSCR
7D85C:  BEQ             loc_7D82C
7D85E:  VSUB.F32        S16, S16, S4
7D862:  B               loc_7D82A
7D864:  CBZ             R2, loc_7D88A
7D866:  CMP             R2, #1
7D868:  BNE             loc_7D8A8
7D86A:  SUBS            R1, #1
7D86C:  VMOV            S8, R0
7D870:  VLDR            S6, [R9,#0x68]
7D874:  VMOV            S4, R1
7D878:  VCVT.F32.S32    S8, S8
7D87C:  VCVT.F32.U32    S4, S4
7D880:  VMLS.F32        S16, S6, S4
7D884:  VDIV.F32        S16, S16, S8
7D888:  B               loc_7D8A8
7D88A:  SUBS            R1, #1
7D88C:  VMOV            S8, R0
7D890:  VLDR            S6, [R9,#0x68]
7D894:  VMOV            S4, R1
7D898:  VCVT.F32.S32    S8, S8
7D89C:  VCVT.F32.U32    S4, S4
7D8A0:  VMLS.F32        S18, S6, S4
7D8A4:  VDIV.F32        S18, S18, S8
7D8A8:  ADD.W           R8, SP, #0x38+var_34
7D8AC:  VSTR            S2, [SP,#0x38+var_30]
7D8B0:  VSTR            S0, [SP,#0x38+var_34]
7D8B4:  B               loc_7D8D4
7D8B6:  VLDR            S0, [R6,#0x18]
7D8BA:  VLDR            S2, [R9,#0x68]
7D8BE:  VADD.F32        S0, S2, S0
7D8C2:  VLDR            S2, [SP,#0x38+var_30]
7D8C6:  VADD.F32        S0, S2, S0
7D8CA:  VSTR            S0, [SP,#0x38+var_30]
7D8CE:  ADDS            R5, #4
7D8D0:  CMP             R5, R4
7D8D2:  BEQ             loc_7D948
7D8D4:  LDR             R6, [R5]
7D8D6:  VLDR            S2, [R6,#0x18]
7D8DA:  VLDR            S0, [R6,#0x14]
7D8DE:  VCMP.F32        S2, #0.0
7D8E2:  VMRS            APSR_nzcv, FPSCR
7D8E6:  VCMP.F32        S0, #0.0
7D8EA:  IT EQ
7D8EC:  VMOVEQ.F32      S2, S16
7D8F0:  VMRS            APSR_nzcv, FPSCR
7D8F4:  IT EQ
7D8F6:  VMOVEQ.F32      S0, S18
7D8FA:  LDR             R0, [R6]
7D8FC:  VSTR            S0, [R6,#0x14]
7D900:  VSTR            S2, [R6,#0x18]
7D904:  VSTR            S0, [R6,#0x1C]
7D908:  VSTR            S2, [R6,#0x20]
7D90C:  VSTR            S0, [R6,#0x24]
7D910:  VSTR            S2, [R6,#0x28]
7D914:  LDR             R1, [R0,#8]
7D916:  MOV             R0, R6
7D918:  BLX             R1
7D91A:  MOV             R0, R6
7D91C:  MOV             R1, R8
7D91E:  BL              sub_7C4A6
7D922:  LDR.W           R0, [R9,#0x54]
7D926:  CMP             R0, #1
7D928:  BEQ             loc_7D8B6
7D92A:  CMP             R0, #0
7D92C:  BNE             loc_7D8CE
7D92E:  VLDR            S0, [R6,#0x14]
7D932:  VLDR            S2, [R9,#0x68]
7D936:  VADD.F32        S0, S2, S0
7D93A:  VLDR            S2, [SP,#0x38+var_34]
7D93E:  VADD.F32        S0, S2, S0
7D942:  VSTR            S0, [SP,#0x38+var_34]
7D946:  B               loc_7D8CE
7D948:  LDR             R0, [SP,#0x38+var_2C]
7D94A:  LDR             R1, =(__stack_chk_guard_ptr - 0x7D950)
7D94C:  ADD             R1, PC; __stack_chk_guard_ptr
7D94E:  LDR             R1, [R1]; __stack_chk_guard
7D950:  LDR             R1, [R1]
7D952:  CMP             R1, R0
7D954:  ITTTT EQ
7D956:  ADDEQ           SP, SP, #0x10
7D958:  VPOPEQ          {D8-D9}
7D95C:  POPEQ.W         {R8,R9,R11}
7D960:  POPEQ           {R4-R7,PC}
7D962:  BLX             __stack_chk_fail
