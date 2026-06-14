; =========================================================
; Game Engine Function: sub_163176
; Address            : 0x163176 - 0x1631DC
; =========================================================

163176:  PUSH            {R7,LR}
163178:  MOV             R7, SP
16317A:  SUB             SP, SP, #8; float
16317C:  VMOV            S2, R3
163180:  LDR             R3, [R0]
163182:  VLDR            S0, [R7,#8]
163186:  CBZ             R3, loc_1631B0
163188:  LDR             R3, [R3]
16318A:  CBZ             R3, loc_1631B0
16318C:  VCMP.F32        S2, #0.0
163190:  VMRS            APSR_nzcv, FPSCR
163194:  VCMP.F32        S0, #0.0
163198:  ITT EQ
16319A:  VLDREQ          S2, [R3,#0xC]
16319E:  VCVTEQ.F32.S32  S2, S2
1631A2:  VMRS            APSR_nzcv, FPSCR
1631A6:  ITT EQ
1631A8:  VLDREQ          S0, [R3,#0x10]
1631AC:  VCVTEQ.F32.S32  S0, S0
1631B0:  VCMP.F32        S2, #0.0
1631B4:  VMRS            APSR_nzcv, FPSCR
1631B8:  ITT NE
1631BA:  VCMPNE.F32      S0, #0.0
1631BE:  VMRSNE          APSR_nzcv, FPSCR
1631C2:  BEQ             loc_1631D8
1631C4:  VMOV            R3, S2; int
1631C8:  LDR.W           R12, [R7,#0xC]
1631CC:  STR.W           R12, [SP,#0x10+var_C]; int
1631D0:  VSTR            S0, [SP,#0x10+var_10]
1631D4:  BL              sub_1631DC
1631D8:  ADD             SP, SP, #8
1631DA:  POP             {R7,PC}
