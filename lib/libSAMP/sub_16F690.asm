; =========================================================
; Game Engine Function: sub_16F690
; Address            : 0x16F690 - 0x16F83C
; =========================================================

16F690:  VLDR            S4, =3.4028e38
16F694:  VLDR            S0, [R1,#0x60]
16F698:  VCMP.F32        S0, S4
16F69C:  VMRS            APSR_nzcv, FPSCR
16F6A0:  BPL             loc_16F6B8
16F6A2:  VLDR            S2, [R1,#0x1C]
16F6A6:  VLDR            S8, [R1,#0x70]
16F6AA:  VLDR            S6, [R1,#0x68]
16F6AE:  VSUB.F32        S2, S2, S8
16F6B2:  VMLS.F32        S0, S6, S2
16F6B6:  B               loc_16F6BC
16F6B8:  VLDR            S0, [R1,#0x58]
16F6BC:  VLDR            S2, [R1,#0x64]
16F6C0:  VCMP.F32        S2, S4
16F6C4:  VMRS            APSR_nzcv, FPSCR
16F6C8:  BPL             loc_16F78E
16F6CA:  LDR             R3, =(dword_381B58 - 0x16F6D4)
16F6CC:  VLDR            S4, [R1,#0x6C]
16F6D0:  ADD             R3, PC; dword_381B58
16F6D2:  LDR.W           R12, [R3]
16F6D6:  MOVW            R3, #0x1554
16F6DA:  ADD             R12, R3
16F6DC:  CBZ             R2, loc_16F6F8
16F6DE:  VCMP.F32        S4, #0.0
16F6E2:  VMRS            APSR_nzcv, FPSCR
16F6E6:  ITTTT LS
16F6E8:  VLDRLS          S6, [R1,#0x40]
16F6EC:  VCMPLS.F32      S2, S6
16F6F0:  VMRSLS          APSR_nzcv, FPSCR
16F6F4:  VLDRLS          S2, =0.0
16F6F8:  CBZ             R2, loc_16F72A
16F6FA:  VMOV.F32        S6, #1.0
16F6FE:  VCMP.F32        S4, S6
16F702:  VMRS            APSR_nzcv, FPSCR
16F706:  BLT             loc_16F72A
16F708:  VLDR            S6, [R1,#0x30]
16F70C:  VLDR            S8, [R1,#0x40]
16F710:  VLDR            S10, [R12,#0x10]
16F714:  VSUB.F32        S8, S6, S8
16F718:  VADD.F32        S8, S8, S10
16F71C:  VCMP.F32        S2, S8
16F720:  VMRS            APSR_nzcv, FPSCR
16F724:  IT GE
16F726:  VMOVGE.F32      S2, S6
16F72A:  VLDR            S8, =0.0
16F72E:  VMOV.F32        S10, #1.0
16F732:  LDR             R2, [R1,#8]
16F734:  VMOV.F32        S6, S8
16F738:  LSLS            R3, R2, #0x1F
16F73A:  BNE             loc_16F750
16F73C:  VLDR            S6, [R12]
16F740:  VLDR            S12, [R12,#0x378]
16F744:  VADD.F32        S6, S6, S6
16F748:  VLDR            S14, [R1,#0x274]
16F74C:  VMLA.F32        S6, S12, S14
16F750:  VSUB.F32        S10, S10, S4
16F754:  LSLS            R2, R2, #0x15
16F756:  BPL             loc_16F774
16F758:  VLDR            S8, [R12]
16F75C:  VLDR            S12, [R12,#0x378]
16F760:  VLDR            S1, [R1,#0x274]
16F764:  VADD.F32        S8, S8, S8
16F768:  VLDR            S14, [R1,#0x148]
16F76C:  VMLA.F32        S14, S12, S1
16F770:  VADD.F32        S8, S8, S14
16F774:  VADD.F32        S6, S6, S8
16F778:  VLDR            S8, [R1,#0x20]
16F77C:  VLDR            S12, [R1,#0x74]
16F780:  VSUB.F32        S8, S8, S12
16F784:  VMLS.F32        S2, S10, S6
16F788:  VMLS.F32        S2, S4, S8
16F78C:  B               loc_16F792
16F78E:  VLDR            S2, [R1,#0x5C]
16F792:  VLDR            S6, =0.0
16F796:  VCMP.F32        S2, #0.0
16F79A:  VMRS            APSR_nzcv, FPSCR
16F79E:  VCMP.F32        S0, #0.0
16F7A2:  VMOV.F32        S4, S6
16F7A6:  IT GE
16F7A8:  VMOVGE.F32      S4, S2
16F7AC:  VMOV.F32        S2, S6
16F7B0:  VMRS            APSR_nzcv, FPSCR
16F7B4:  IT GE
16F7B6:  VMOVGE.F32      S2, S0
16F7BA:  LDRB.W          R2, [R1,#0x7D]
16F7BE:  VSTR            S2, [R0]
16F7C2:  VSTR            S4, [R0,#4]
16F7C6:  CBZ             R2, loc_16F7CA
16F7C8:  BX              LR
16F7CA:  LDRB.W          R2, [R1,#0x7F]
16F7CE:  CMP             R2, #0
16F7D0:  BNE             locret_16F7C8
16F7D2:  VLDR            S0, [R1,#0x1C]
16F7D6:  VLDR            S14, [R1,#0x70]
16F7DA:  VLDR            S8, [R1,#0x20]
16F7DE:  VLDR            S1, [R1,#0x74]
16F7E2:  VSUB.F32        S0, S0, S14
16F7E6:  VLDR            S10, [R1,#0x2C]
16F7EA:  VSUB.F32        S8, S8, S1
16F7EE:  VLDR            S12, [R1,#0x30]
16F7F2:  VSUB.F32        S0, S10, S0
16F7F6:  VSUB.F32        S8, S12, S8
16F7FA:  VCMP.F32        S0, #0.0
16F7FE:  VMRS            APSR_nzcv, FPSCR
16F802:  IT LS
16F804:  VMOVLS.F32      S0, S6
16F808:  VCMP.F32        S8, #0.0
16F80C:  VMRS            APSR_nzcv, FPSCR
16F810:  VCMP.F32        S2, S0
16F814:  IT LS
16F816:  VMOVLS.F32      S8, S6
16F81A:  VMRS            APSR_nzcv, FPSCR
16F81E:  VCMP.F32        S4, S8
16F822:  IT MI
16F824:  VMOVMI.F32      S0, S2
16F828:  VMRS            APSR_nzcv, FPSCR
16F82C:  IT MI
16F82E:  VMOVMI.F32      S8, S4
16F832:  VSTR            S0, [R0]
16F836:  VSTR            S8, [R0,#4]
16F83A:  BX              LR
