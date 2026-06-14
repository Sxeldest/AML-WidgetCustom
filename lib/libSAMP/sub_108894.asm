; =========================================================
; Game Engine Function: sub_108894
; Address            : 0x108894 - 0x108932
; =========================================================

108894:  PUSH            {R4,R6,R7,LR}
108896:  ADD             R7, SP, #8
108898:  LDR             R4, =(off_23494C - 0x1088A6)
10889A:  MOV             R12, #0xA45790
1088A2:  ADD             R4, PC; off_23494C
1088A4:  LDR             R4, [R4]; dword_23DF24
1088A6:  LDR.W           LR, [R4]
1088AA:  LDR.W           R12, [LR,R12]
1088AE:  CMP.W           R12, #0
1088B2:  BEQ             locret_108930
1088B4:  VMOV.F32        S8, #0.25
1088B8:  VMOV            S6, R0
1088BC:  ADD.W           R0, LR, #0xA40000
1088C0:  VMOV            S4, R1
1088C4:  ADD.W           R0, R0, #0x1140
1088C8:  VMOV            S0, R3
1088CC:  MOVS            R1, #0
1088CE:  VMOV            S2, R2
1088D2:  LDRH            R2, [R0,#2]
1088D4:  VMOV.F32        S14, S4
1088D8:  VMOV.F32        S1, S2
1088DC:  VMOV            S10, R2
1088E0:  LDRH            R2, [R0,#4]
1088E2:  VCVT.F32.U32    S10, S10
1088E6:  VMOV            S12, R2
1088EA:  LDRH            R2, [R0]
1088EC:  VCVT.F32.U32    S12, S12
1088F0:  VNMLS.F32       S14, S10, S8
1088F4:  VMOV            S10, R2
1088F8:  VCVT.F32.U32    S10, S10
1088FC:  VNMLS.F32       S1, S12, S8
108900:  VMUL.F32        S12, S14, S14
108904:  VMOV.F32        S14, S6
108908:  VMLA.F32        S12, S1, S1
10890C:  VNMLS.F32       S14, S10, S8
108910:  VMLA.F32        S12, S14, S14
108914:  VSQRT.F32       S10, S12
108918:  VCMP.F32        S10, S0
10891C:  VMRS            APSR_nzcv, FPSCR
108920:  ITTT MI
108922:  STRMI           R1, [R0,#4]
108924:  STRMI           R1, [R0]
108926:  STRMI           R1, [R0,#8]
108928:  ADDS            R0, #0x12
10892A:  SUBS.W          R12, R12, #1
10892E:  BNE             loc_1088D2
108930:  POP             {R4,R6,R7,PC}
