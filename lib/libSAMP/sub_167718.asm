; =========================================================
; Game Engine Function: sub_167718
; Address            : 0x167718 - 0x167792
; =========================================================

167718:  PUSH            {R4,R6,R7,LR}
16771A:  ADD             R7, SP, #8
16771C:  SUB             SP, SP, #8
16771E:  VMOV            S0, R1
167722:  VCMP.F32        S0, #0.0
167726:  VMRS            APSR_nzcv, FPSCR
16772A:  BPL             loc_167732
16772C:  VLDR            S2, =0.0
167730:  B               loc_16778A
167732:  VCMP.F32        S0, #0.0
167736:  MOV             R4, R0
167738:  VMRS            APSR_nzcv, FPSCR
16773C:  BNE             loc_16774A
16773E:  MOV             R0, SP
167740:  BL              sub_16779C
167744:  VLDR            S0, [SP,#0x10+var_10]
167748:  B               loc_167770
16774A:  VCMP.F32        S0, #0.0
16774E:  VMRS            APSR_nzcv, FPSCR
167752:  BLE             loc_167770
167754:  LDR             R0, =(dword_381B58 - 0x16775E)
167756:  MOVW            R1, #0x19AC
16775A:  ADD             R0, PC; dword_381B58
16775C:  LDR             R0, [R0]
16775E:  LDR             R0, [R0,R1]
167760:  VLDR            S2, [R0,#0xC]
167764:  VLDR            S4, [R0,#0x58]
167768:  VSUB.F32        S2, S2, S4
16776C:  VADD.F32        S0, S2, S0
167770:  VLDR            S4, [R4]
167774:  VMOV.F32        S2, #1.0
167778:  VSUB.F32        S0, S0, S4
16777C:  VCMP.F32        S0, S2
167780:  VMRS            APSR_nzcv, FPSCR
167784:  IT GE
167786:  VMOVGE.F32      S2, S0
16778A:  VMOV            R0, S2
16778E:  ADD             SP, SP, #8
167790:  POP             {R4,R6,R7,PC}
