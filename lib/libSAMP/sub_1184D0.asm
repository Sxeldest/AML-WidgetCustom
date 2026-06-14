; =========================================================
; Game Engine Function: sub_1184D0
; Address            : 0x1184D0 - 0x118534
; =========================================================

1184D0:  PUSH            {R4,R5,R7,LR}
1184D2:  ADD             R7, SP, #8
1184D4:  MOV             R5, R1
1184D6:  MOV             R4, R0
1184D8:  LDR.W           R0, [R1,#0x10]!
1184DC:  ADDS            R2, R1, #4
1184DE:  LDR             R3, [R0,#8]
1184E0:  MOV             R0, R4
1184E2:  BLX             R3
1184E4:  VLDR            S0, [R4]
1184E8:  VCMP.F32        S0, #0.0
1184EC:  VMRS            APSR_nzcv, FPSCR
1184F0:  ITTT EQ
1184F2:  VLDREQ          S0, [R4,#4]
1184F6:  VCMPEQ.F32      S0, #0.0
1184FA:  VMRSEQ          APSR_nzcv, FPSCR
1184FE:  BEQ             loc_118502
118500:  POP             {R4,R5,R7,PC}
118502:  LDR             R0, [R5]
118504:  LDR             R1, [R0,#4]
118506:  MOV             R0, R5
118508:  BLX             R1
11850A:  VMOV            S2, R0
11850E:  VLDR            S0, =1024.0
118512:  LDR             R0, [R5]
118514:  VMUL.F32        S0, S2, S0
118518:  VSTR            S0, [R4]
11851C:  LDR             R1, [R0,#4]
11851E:  MOV             R0, R5
118520:  BLX             R1
118522:  VLDR            S0, =512.0
118526:  VMOV            S2, R0
11852A:  VMUL.F32        S0, S2, S0
11852E:  VSTR            S0, [R4,#4]
118532:  POP             {R4,R5,R7,PC}
