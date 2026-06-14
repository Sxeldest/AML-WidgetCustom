; =========================================================
; Game Engine Function: sub_11778C
; Address            : 0x11778C - 0x1177F2
; =========================================================

11778C:  PUSH            {R4,R5,R7,LR}
11778E:  ADD             R7, SP, #8
117790:  VPUSH           {D8-D9}
117794:  SUB             SP, SP, #0x18
117796:  MOV             R4, R0
117798:  LDR             R0, [R0]
11779A:  MOV             R5, R1
11779C:  MOV             R1, R4
11779E:  LDR             R2, [R0,#0x24]
1177A0:  ADD             R0, SP, #0x30+var_20
1177A2:  BLX             R2
1177A4:  LDR             R0, [R4]
1177A6:  MOV             R1, R4
1177A8:  VLDR            S18, [SP,#0x30+var_20]
1177AC:  LDR             R2, [R0,#0x24]
1177AE:  ADD             R0, SP, #0x30+var_28
1177B0:  BLX             R2
1177B2:  LDR             R0, [R4]
1177B4:  VMOV            S16, R5
1177B8:  VLDR            S0, [SP,#0x30+var_24]
1177BC:  MOV             R1, R4
1177BE:  LDR             R2, [R0,#0x24]
1177C0:  VCMP.F32        S18, S0
1177C4:  MOV             R0, SP
1177C6:  VMRS            APSR_nzcv, FPSCR
1177CA:  BLE             loc_1177D4
1177CC:  BLX             R2
1177CE:  VLDR            S0, [SP,#0x30+var_2C]
1177D2:  B               loc_1177DA
1177D4:  BLX             R2
1177D6:  VLDR            S0, [SP,#0x30+var_30]
1177DA:  VMUL.F32        S0, S0, S16
1177DE:  VLDR            S2, =1620.0
1177E2:  VDIV.F32        S0, S0, S2
1177E6:  VMOV            R0, S0
1177EA:  ADD             SP, SP, #0x18
1177EC:  VPOP            {D8-D9}
1177F0:  POP             {R4,R5,R7,PC}
