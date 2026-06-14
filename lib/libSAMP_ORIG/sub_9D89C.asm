; =========================================================
; Game Engine Function: sub_9D89C
; Address            : 0x9D89C - 0x9D9C0
; =========================================================

9D89C:  PUSH            {R4-R7,LR}
9D89E:  ADD             R7, SP, #0xC
9D8A0:  PUSH.W          {R8-R10}
9D8A4:  SUB             SP, SP, #0x38
9D8A6:  MOV             R4, R0
9D8A8:  LDR             R0, =(__stack_chk_guard_ptr - 0x9D8B2)
9D8AA:  LDR.W           R10, [R7,#arg_0]
9D8AE:  ADD             R0, PC; __stack_chk_guard_ptr
9D8B0:  CMP.W           R10, #0x1000000
9D8B4:  LDR             R0, [R0]; __stack_chk_guard
9D8B6:  LDR             R0, [R0]
9D8B8:  STR             R0, [SP,#0x50+var_1C]
9D8BA:  BCC             loc_9D9A6
9D8BC:  LDRD.W          R8, R0, [R7,#arg_4]
9D8C0:  MOV             R6, R3
9D8C2:  MOV             R5, R2
9D8C4:  MOV             R9, R1
9D8C6:  CBZ             R0, loc_9D8CE
9D8C8:  CMP             R0, R8
9D8CA:  BNE             loc_9D8DA
9D8CC:  B               loc_9D9A6
9D8CE:  MOV             R0, R8; s
9D8D0:  BLX             strlen
9D8D4:  ADD             R0, R8
9D8D6:  CMP             R0, R8
9D8D8:  BEQ             loc_9D9A6
9D8DA:  VMOV            S0, R5
9D8DE:  CMP.W           R9, #0
9D8E2:  ITT EQ
9D8E4:  LDREQ           R1, [R4,#0x28]
9D8E6:  LDREQ.W         R9, [R1,#8]
9D8EA:  VLDR            S2, [R7,#arg_C]
9D8EE:  VCMP.F32        S0, #0.0
9D8F2:  LDR             R1, [R7,#arg_10]
9D8F4:  VMRS            APSR_nzcv, FPSCR
9D8F8:  ITT EQ
9D8FA:  LDREQ           R2, [R4,#0x28]
9D8FC:  VLDREQ          S0, [R2,#0xC]
9D900:  LDR             R2, [R4,#0x40]
9D902:  ADD             R5, SP, #0x50+var_30
9D904:  LDR             R3, [R4,#0x48]
9D906:  ADD.W           R2, R3, R2,LSL#4
9D90A:  SUB.W           R2, R2, #0x10
9D90E:  VLD1.32         {D16-D17}, [R2]
9D912:  VST1.64         {D16-D17}, [R5]
9D916:  CBZ             R1, loc_9D980
9D918:  VLDR            S4, [SP,#0x50+var_30]
9D91C:  VLDR            S12, [R1]
9D920:  VLDR            S6, [SP,#0x50+var_2C]
9D924:  VLDR            S14, [R1,#4]
9D928:  VCMP.F32        S4, S12
9D92C:  VLDR            S8, [SP,#0x50+var_28]
9D930:  VLDR            S1, [R1,#8]
9D934:  VMRS            APSR_nzcv, FPSCR
9D938:  VCMP.F32        S6, S14
9D93C:  VLDR            S10, [SP,#0x50+var_24]
9D940:  VLDR            S3, [R1,#0xC]
9D944:  IT GE
9D946:  VMOVGE.F32      S12, S4
9D94A:  VMRS            APSR_nzcv, FPSCR
9D94E:  VCMP.F32        S8, S1
9D952:  IT GE
9D954:  VMOVGE.F32      S14, S6
9D958:  VMRS            APSR_nzcv, FPSCR
9D95C:  VCMP.F32        S10, S3
9D960:  IT MI
9D962:  VMOVMI.F32      S1, S8
9D966:  VMRS            APSR_nzcv, FPSCR
9D96A:  IT MI
9D96C:  VMOVMI.F32      S3, S10
9D970:  VSTR            S12, [SP,#0x50+var_30]
9D974:  VSTR            S14, [SP,#0x50+var_2C]
9D978:  VSTR            S1, [SP,#0x50+var_28]
9D97C:  VSTR            S3, [SP,#0x50+var_24]
9D980:  VMOV            R2, S0; int
9D984:  LDRD.W          R3, R6, [R6]; int
9D988:  CMP             R1, #0
9D98A:  IT NE
9D98C:  MOVNE           R1, #1
9D98E:  STR             R1, [SP,#0x50+var_38]; int
9D990:  MOV             R1, R4; int
9D992:  STR             R0, [SP,#0x50+var_40]; int
9D994:  MOV             R0, R9; int
9D996:  VSTR            S2, [SP,#0x50+var_3C]
9D99A:  STRD.W          R6, R10, [SP,#0x50+var_50]; float
9D99E:  STRD.W          R5, R8, [SP,#0x50+var_48]; int
9D9A2:  BL              sub_9D9C8
9D9A6:  LDR             R0, [SP,#0x50+var_1C]
9D9A8:  LDR             R1, =(__stack_chk_guard_ptr - 0x9D9AE)
9D9AA:  ADD             R1, PC; __stack_chk_guard_ptr
9D9AC:  LDR             R1, [R1]; __stack_chk_guard
9D9AE:  LDR             R1, [R1]
9D9B0:  CMP             R1, R0
9D9B2:  ITTT EQ
9D9B4:  ADDEQ           SP, SP, #0x38 ; '8'
9D9B6:  POPEQ.W         {R8-R10}
9D9BA:  POPEQ           {R4-R7,PC}
9D9BC:  BLX             __stack_chk_fail
