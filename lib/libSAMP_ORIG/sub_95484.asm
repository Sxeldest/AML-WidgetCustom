; =========================================================
; Game Engine Function: sub_95484
; Address            : 0x95484 - 0x9550C
; =========================================================

95484:  MOV             R2, R0
95486:  MOVS            R0, #0
95488:  CMP             R2, #0
9548A:  BMI             locret_954AE
9548C:  LDR             R3, =(dword_1ACF68 - 0x95492)
9548E:  ADD             R3, PC; dword_1ACF68
95490:  LDR             R3, [R3]
95492:  ADD.W           R2, R3, R2,LSL#2
95496:  ADD.W           R2, R2, #0x458
9549A:  VLDR            S0, [R2]
9549E:  VCMP.F32        S0, #0.0
954A2:  VMRS            APSR_nzcv, FPSCR
954A6:  ITE EQ
954A8:  MOVEQ           R0, #1
954AA:  CMPNE           R1, #0
954AC:  BNE             loc_954B0
954AE:  BX              LR
954B0:  VLDR            S2, [R3,#0x88]
954B4:  MOVS            R0, #0
954B6:  VCMP.F32        S0, S2
954BA:  VMRS            APSR_nzcv, FPSCR
954BE:  IT LE
954C0:  BXLE            LR
954C2:  VCMP.F32        S0, S2
954C6:  VMRS            APSR_nzcv, FPSCR
954CA:  ITTT HI
954CC:  VLDRHI          S4, [R3,#0x8C]
954D0:  VCMPHI.F32      S4, #0.0
954D4:  VMRSHI          APSR_nzcv, FPSCR
954D8:  BLS             locret_954AE
954DA:  VLDR            S6, [R3,#0x18]
954DE:  MOVS            R0, #0
954E0:  VSUB.F32        S6, S0, S6
954E4:  VSUB.F32        S0, S0, S2
954E8:  VSUB.F32        S2, S6, S2
954EC:  VDIV.F32        S0, S0, S4
954F0:  VDIV.F32        S2, S2, S4
954F4:  VCVT.S32.F32    S0, S0
954F8:  VCVT.S32.F32    S2, S2
954FC:  VMOV            R1, S0
95500:  VMOV            R2, S2
95504:  CMP             R1, R2
95506:  IT GT
95508:  MOVGT           R0, #1
9550A:  BX              LR
