; =========================================================
; Game Engine Function: sub_68790
; Address            : 0x68790 - 0x68856
; =========================================================

68790:  PUSH            {R4,R6,R7,LR}
68792:  ADD             R7, SP, #8
68794:  LDR             R2, [R0]
68796:  LDR             R4, [R1]
68798:  LDR             R3, [R0,#4]
6879A:  VMOV            S0, R2
6879E:  LDR.W           R12, [R0,#8]
687A2:  VMOV            S2, R4
687A6:  LDR.W           LR, [R0,#0x10]
687AA:  VMUL.F32        S0, S2, S0
687AE:  VMOV            S6, LR
687B2:  VMOV            R2, S0
687B6:  VMOV            S0, R3
687BA:  LDR             R3, [R0,#0x14]
687BC:  STR             R2, [R0]
687BE:  LDR             R2, [R1]
687C0:  VMOV            S2, R2
687C4:  VMUL.F32        S0, S2, S0
687C8:  VMOV            R2, S0
687CC:  VMOV            S0, R3
687D0:  LDR             R3, [R0,#0x18]
687D2:  VMOV            S8, R3
687D6:  STR             R2, [R0,#4]
687D8:  LDR             R2, [R1,#4]
687DA:  VMOV            S4, R2
687DE:  VMUL.F32        S0, S4, S0
687E2:  VMUL.F32        S4, S4, S6
687E6:  VMOV            R2, S0
687EA:  VMOV            S0, R12
687EE:  VMOV            R3, S4
687F2:  VMUL.F32        S0, S2, S0
687F6:  STR             R2, [R0,#0x14]
687F8:  LDR             R2, [R1,#4]
687FA:  STR             R3, [R0,#0x10]
687FC:  VMOV            S2, R2
68800:  VMOV            R2, S0
68804:  VMUL.F32        S2, S2, S8
68808:  VMOV            R4, S2
6880C:  STR             R2, [R0,#8]
6880E:  LDR             R2, [R0,#0x20]
68810:  VMOV            S0, R2
68814:  MOV             R2, #0xFFFDFFFC
6881C:  STR             R4, [R0,#0x18]
6881E:  LDR             R1, [R1,#8]
68820:  VMOV            S2, R1
68824:  VMUL.F32        S0, S2, S0
68828:  VMOV            R1, S0
6882C:  STR             R1, [R0,#0x20]
6882E:  LDR             R1, [R0,#0x24]
68830:  VMOV            S0, R1
68834:  VMUL.F32        S0, S2, S0
68838:  VMOV            R1, S0
6883C:  STR             R1, [R0,#0x24]
6883E:  LDR             R1, [R0,#0x28]
68840:  VMOV            S0, R1
68844:  VMUL.F32        S0, S2, S0
68848:  VMOV            R1, S0
6884C:  STR             R1, [R0,#0x28]
6884E:  LDR             R1, [R0,#0xC]
68850:  ANDS            R1, R2
68852:  STR             R1, [R0,#0xC]
68854:  POP             {R4,R6,R7,PC}
