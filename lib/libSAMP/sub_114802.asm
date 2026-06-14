; =========================================================
; Game Engine Function: sub_114802
; Address            : 0x114802 - 0x114874
; =========================================================

114802:  PUSH            {R4,R5,R7,LR}
114804:  ADD             R7, SP, #8
114806:  VPUSH           {D8}
11480A:  SUB             SP, SP, #8
11480C:  MOV             R4, R0
11480E:  LDR             R0, [R1]
114810:  MOV             R5, R1
114812:  LDR             R3, [R0,#4]
114814:  MOV             R0, SP
114816:  BLX             R3
114818:  VLDR            S16, [SP,#0x18+var_18]
11481C:  VCMP.F32        S16, #0.0
114820:  VMRS            APSR_nzcv, FPSCR
114824:  ITTT EQ
114826:  VLDREQ          S0, [SP,#0x18+var_14]
11482A:  VCMPEQ.F32      S0, #0.0
11482E:  VMRSEQ          APSR_nzcv, FPSCR
114832:  BEQ             loc_114864
114834:  LDR.W           R0, [R5,#-0x10]!
114838:  LDR             R1, [R0,#4]
11483A:  MOV             R0, R5
11483C:  BLX             R1
11483E:  VMOV            S0, R0
114842:  LDR             R0, [R5]
114844:  VMUL.F32        S0, S16, S0
114848:  VLDR            S16, [SP,#0x18+var_14]
11484C:  LDR             R1, [R0,#4]
11484E:  MOV             R0, R5
114850:  VSTR            S0, [R4]
114854:  BLX             R1
114856:  VMOV            S0, R0
11485A:  VMUL.F32        S0, S16, S0
11485E:  VSTR            S0, [R4,#4]
114862:  B               loc_11486C
114864:  LDRD.W          R0, R1, [SP,#0x18+var_18]
114868:  STRD.W          R0, R1, [R4]
11486C:  ADD             SP, SP, #8
11486E:  VPOP            {D8}
114872:  POP             {R4,R5,R7,PC}
