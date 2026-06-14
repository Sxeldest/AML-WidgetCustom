; =========================================================
; Game Engine Function: sub_12DAE8
; Address            : 0x12DAE8 - 0x12DB48
; =========================================================

12DAE8:  PUSH            {R4,R5,R7,LR}
12DAEA:  ADD             R7, SP, #8
12DAEC:  VPUSH           {D8}
12DAF0:  ADDW            R5, R0, #0x8DC
12DAF4:  MOV             R4, R1
12DAF6:  VLDR            S16, [R5]
12DAFA:  BL              sub_E4F28
12DAFE:  VMOV            S0, R0
12DB02:  VLDR            S2, [R4,#4]
12DB06:  VMOV.F32        S4, #1.0
12DB0A:  VCVT.F32.U32    S0, S0
12DB0E:  VMUL.F32        S0, S16, S0
12DB12:  VDIV.F32        S0, S2, S0
12DB16:  VLDR            S2, [R5,#4]
12DB1A:  VSUB.F32        S0, S2, S0
12DB1E:  VLDR            S2, =0.0
12DB22:  VCMP.F32        S0, S4
12DB26:  VMRS            APSR_nzcv, FPSCR
12DB2A:  VCMP.F32        S0, #0.0
12DB2E:  IT GT
12DB30:  VMOVGT.F32      S0, S4
12DB34:  VMRS            APSR_nzcv, FPSCR
12DB38:  IT MI
12DB3A:  VMOVMI.F32      S0, S2
12DB3E:  VSTR            S0, [R5,#4]
12DB42:  VPOP            {D8}
12DB46:  POP             {R4,R5,R7,PC}
