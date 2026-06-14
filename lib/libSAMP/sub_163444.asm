; =========================================================
; Game Engine Function: sub_163444
; Address            : 0x163444 - 0x163502
; =========================================================

163444:  PUSH            {R7,LR}
163446:  MOV             R7, SP
163448:  SUB             SP, SP, #0x30; float
16344A:  VMOV            S0, R3
16344E:  LDR             R3, [R0]
163450:  VLDR            S2, [R7,#8]
163454:  CBZ             R3, loc_16347E
163456:  LDR             R3, [R3]
163458:  CBZ             R3, loc_16347E
16345A:  VCMP.F32        S0, #0.0
16345E:  VMRS            APSR_nzcv, FPSCR
163462:  VCMP.F32        S2, #0.0
163466:  ITT EQ
163468:  VLDREQ          S0, [R3,#0xC]
16346C:  VCVTEQ.F32.S32  S0, S0
163470:  VMRS            APSR_nzcv, FPSCR
163474:  ITT EQ
163476:  VLDREQ          S2, [R3,#0x10]
16347A:  VCVTEQ.F32.S32  S2, S2
16347E:  VCMP.F32        S0, #0.0
163482:  VMRS            APSR_nzcv, FPSCR
163486:  ITT NE
163488:  VCMPNE.F32      S2, #0.0
16348C:  VMRSNE          APSR_nzcv, FPSCR
163490:  BEQ             loc_1634FE
163492:  VLDR            S3, [R7,#0x10]
163496:  VMOV            S7, R1
16349A:  VMOV            S5, R2
16349E:  LDR.W           R12, [R7,#0xC]
1634A2:  VMOV            R3, S3; int
1634A6:  VLDR            S4, [R7,#0x2C]
1634AA:  VADD.F32        S2, S2, S5
1634AE:  VLDR            S6, [R7,#0x28]
1634B2:  VADD.F32        S0, S0, S7
1634B6:  VLDR            S8, [R7,#0x24]
1634BA:  VLDR            S10, [R7,#0x20]
1634BE:  ADD             R1, SP, #0x38+var_18; int
1634C0:  VLDR            S12, [R7,#0x1C]
1634C4:  MOV             R2, R12; int
1634C6:  VLDR            S14, [R7,#0x18]
1634CA:  VLDR            S1, [R7,#0x14]
1634CE:  VSTR            S5, [SP,#0x38+var_14]
1634D2:  VSTR            S7, [SP,#0x38+var_18]
1634D6:  VSTR            S2, [SP,#0x38+var_C]
1634DA:  VSTR            S0, [SP,#0x38+var_10]
1634DE:  VSTR            S1, [SP,#0x38+var_38]
1634E2:  VSTR            S14, [SP,#0x38+var_34]
1634E6:  VSTR            S12, [SP,#0x38+var_30]
1634EA:  VSTR            S10, [SP,#0x38+var_2C]
1634EE:  VSTR            S8, [SP,#0x38+var_28]
1634F2:  VSTR            S6, [SP,#0x38+var_24]
1634F6:  VSTR            S4, [SP,#0x38+var_20]
1634FA:  BL              sub_163504
1634FE:  ADD             SP, SP, #0x30 ; '0'
163500:  POP             {R7,PC}
