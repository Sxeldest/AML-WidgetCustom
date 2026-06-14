; =========================================================
; Game Engine Function: sub_17194C
; Address            : 0x17194C - 0x171A1A
; =========================================================

17194C:  PUSH            {R4-R7,LR}
17194E:  ADD             R7, SP, #0xC
171950:  PUSH.W          {R11}
171954:  VPUSH           {D8-D11}
171958:  SUB             SP, SP, #8
17195A:  VLDR            S0, [R0,#0xC]
17195E:  MOV             R6, R3
171960:  VLDR            S4, [R0,#0x14]
171964:  MOV             R5, R2
171966:  VLDR            S2, [R0,#0x10]
17196A:  MOV             R4, R0
17196C:  VLDR            S6, [R0,#0x18]
171970:  VADD.F32        S4, S0, S4
171974:  VLDR            S18, [R1]
171978:  MOV             R0, SP
17197A:  VADD.F32        S6, S2, S6
17197E:  VLDR            S16, [R1,#4]
171982:  VSUB.F32        S0, S0, S18
171986:  VLDR            S12, [R2]
17198A:  VSUB.F32        S2, S2, S16
17198E:  VLDR            S14, [R2,#4]
171992:  MOV             R1, R4
171994:  VSUB.F32        S8, S18, S4
171998:  VSUB.F32        S10, S16, S6
17199C:  VMLA.F32        S18, S0, S12
1719A0:  VMLA.F32        S16, S2, S14
1719A4:  VMLA.F32        S4, S8, S12
1719A8:  VMLA.F32        S6, S10, S14
1719AC:  VSUB.F32        S22, S4, S18
1719B0:  VSUB.F32        S20, S6, S16
1719B4:  VMOV            R2, S22
1719B8:  VMOV            R3, S20
1719BC:  BL              sub_16EF60
1719C0:  VSTR            S18, [R6]
1719C4:  VSTR            S16, [R6,#4]
1719C8:  VLDR            S0, [R5]
1719CC:  LDR             R0, [R7,#arg_0]
1719CE:  VCMP.F32        S0, #0.0
1719D2:  VMRS            APSR_nzcv, FPSCR
1719D6:  ITTTT EQ
1719D8:  VLDREQ          S0, [SP,#0x38+var_38]
1719DC:  VSUBEQ.F32      S0, S0, S22
1719E0:  VSUBEQ.F32      S0, S18, S0
1719E4:  VSTREQ          S0, [R6]
1719E8:  VLDR            S0, [R5,#4]
1719EC:  VCMP.F32        S0, #0.0
1719F0:  VMRS            APSR_nzcv, FPSCR
1719F4:  ITTTT EQ
1719F6:  VLDREQ          S0, [SP,#0x38+var_34]
1719FA:  VSUBEQ.F32      S0, S0, S20
1719FE:  VSUBEQ.F32      S0, S16, S0
171A02:  VSTREQ          S0, [R6,#4]
171A06:  LDRD.W          R1, R2, [SP,#0x38+var_38]
171A0A:  STRD.W          R1, R2, [R0]
171A0E:  ADD             SP, SP, #8
171A10:  VPOP            {D8-D11}
171A14:  POP.W           {R11}
171A18:  POP             {R4-R7,PC}
