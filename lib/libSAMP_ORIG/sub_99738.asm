; =========================================================
; Game Engine Function: sub_99738
; Address            : 0x99738 - 0x99780
; =========================================================

99738:  LDR             R2, =(dword_1ACF68 - 0x9974A)
9973A:  MOVW            R3, #0x19AC
9973E:  VMOV            S0, R1
99742:  CMP.W           R0, #0xFFFFFFFF
99746:  ADD             R2, PC; dword_1ACF68
99748:  LDR             R2, [R2]
9974A:  LDR             R2, [R2,R3]
9974C:  LDR.W           R1, [R2,#0x1C0]
99750:  IT LE
99752:  LDRLE           R0, [R1,#0xC]
99754:  RSB.W           R2, R0, R0,LSL#3
99758:  ADDS            R0, #1
9975A:  VLDR            S2, [R1,#0x14]
9975E:  VLDR            S4, [R1,#0x18]
99762:  LDR             R1, [R1,#0x44]
99764:  VSUB.F32        S4, S4, S2
99768:  ADD.W           R1, R1, R2,LSL#2
9976C:  VLDR            S6, [R1]
99770:  VMLA.F32        S2, S4, S6
99774:  VADD.F32        S0, S2, S0
99778:  VMOV            R1, S0
9977C:  B.W             sub_9962C
