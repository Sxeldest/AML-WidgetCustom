; =========================================================
; Game Engine Function: _ZN13CMonsterTruck14ProcessControlEv
; Address            : 0x5747F4 - 0x574AE0
; =========================================================

5747F4:  PUSH            {R4-R7,LR}
5747F6:  ADD             R7, SP, #0xC
5747F8:  PUSH.W          {R8,R9,R11}
5747FC:  VMOV.F32        S2, #1.0
574800:  MOV             R4, R0
574802:  ADD.W           R8, R4, #0x7E8
574806:  VLDR            S0, [R8]
57480A:  VCMPE.F32       S0, S2
57480E:  VMRS            APSR_nzcv, FPSCR
574812:  BGE             loc_57484A
574814:  ADDW            R0, R4, #0x84C
574818:  VLDR            S0, [R0]
57481C:  ADDW            R0, R4, #0x88C
574820:  VLDR            S2, [R0]
574824:  ADDW            R0, R4, #0x89C
574828:  VSUB.F32        S0, S2, S0
57482C:  VSTR            S0, [R8]
574830:  VLDR            S4, [R0]
574834:  VSUB.F32        S2, S2, S4
574838:  VDIV.F32        S2, S0, S2
57483C:  VCMPE.F32       S2, #0.0
574840:  VMRS            APSR_nzcv, FPSCR
574844:  IT LT
574846:  VLDRLT          S2, =0.0
57484A:  VMOV.F32        S0, #1.0
57484E:  ADDW            R9, R4, #0x7EC
574852:  VSTR            S2, [R8]
574856:  VLDR            S2, [R9]
57485A:  VCMPE.F32       S2, S0
57485E:  VMRS            APSR_nzcv, FPSCR
574862:  BGE             loc_57489A
574864:  ADD.W           R0, R4, #0x850
574868:  VLDR            S0, [R0]
57486C:  ADD.W           R0, R4, #0x890
574870:  VLDR            S2, [R0]
574874:  ADD.W           R0, R4, #0x8A0
574878:  VSUB.F32        S0, S2, S0
57487C:  VSTR            S0, [R9]
574880:  VLDR            S4, [R0]
574884:  VSUB.F32        S2, S2, S4
574888:  VDIV.F32        S0, S0, S2
57488C:  VCMPE.F32       S0, #0.0
574890:  VMRS            APSR_nzcv, FPSCR
574894:  IT LT
574896:  VLDRLT          S0, =0.0
57489A:  VMOV.F32        S2, #1.0
57489E:  ADD.W           R5, R4, #0x7F0
5748A2:  VSTR            S0, [R9]
5748A6:  VLDR            S0, [R5]
5748AA:  VCMPE.F32       S0, S2
5748AE:  VMRS            APSR_nzcv, FPSCR
5748B2:  BGE             loc_5748EA
5748B4:  ADDW            R0, R4, #0x854
5748B8:  VLDR            S0, [R0]
5748BC:  ADDW            R0, R4, #0x894
5748C0:  VLDR            S2, [R0]
5748C4:  ADDW            R0, R4, #0x8A4
5748C8:  VSUB.F32        S0, S2, S0
5748CC:  VSTR            S0, [R5]
5748D0:  VLDR            S4, [R0]
5748D4:  VSUB.F32        S2, S2, S4
5748D8:  VDIV.F32        S2, S0, S2
5748DC:  VCMPE.F32       S2, #0.0
5748E0:  VMRS            APSR_nzcv, FPSCR
5748E4:  IT LT
5748E6:  VLDRLT          S2, =0.0
5748EA:  VMOV.F32        S0, #1.0
5748EE:  ADDW            R6, R4, #0x7F4
5748F2:  VSTR            S2, [R5]
5748F6:  VLDR            S2, [R6]
5748FA:  VCMPE.F32       S2, S0
5748FE:  VMRS            APSR_nzcv, FPSCR
574902:  BGE             loc_57493A
574904:  ADDW            R0, R4, #0x858
574908:  VLDR            S0, [R0]
57490C:  ADDW            R0, R4, #0x898
574910:  VLDR            S2, [R0]
574914:  ADDW            R0, R4, #0x8A8
574918:  VSUB.F32        S0, S2, S0
57491C:  VSTR            S0, [R6]
574920:  VLDR            S4, [R0]
574924:  VSUB.F32        S2, S2, S4
574928:  VDIV.F32        S0, S0, S2
57492C:  VCMPE.F32       S0, #0.0
574930:  VMRS            APSR_nzcv, FPSCR
574934:  IT LT
574936:  VLDRLT          S0, =0.0
57493A:  MOV             R0, R4; this
57493C:  VSTR            S0, [R6]
574940:  BLX             j__ZN11CAutomobile14ProcessControlEv; CAutomobile::ProcessControl(void)
574944:  LDRB            R0, [R4,#0x1C]
574946:  LSLS            R0, R0, #0x19
574948:  BMI.W           loc_574ADA
57494C:  VLDR            S0, [R4,#0x48]
574950:  VCMP.F32        S0, #0.0
574954:  VMRS            APSR_nzcv, FPSCR
574958:  BNE             loc_5749A2
57495A:  VLDR            S0, [R4,#0x4C]
57495E:  VCMP.F32        S0, #0.0
574962:  VMRS            APSR_nzcv, FPSCR
574966:  BNE             loc_5749A2
574968:  VLDR            S0, [R4,#0x50]
57496C:  VCMP.F32        S0, #0.0
574970:  VMRS            APSR_nzcv, FPSCR
574974:  BNE             loc_5749A2
574976:  VLDR            S0, [R4,#0x54]
57497A:  VCMP.F32        S0, #0.0
57497E:  VMRS            APSR_nzcv, FPSCR
574982:  BNE             loc_5749A2
574984:  VLDR            S0, [R4,#0x58]
574988:  VCMP.F32        S0, #0.0
57498C:  VMRS            APSR_nzcv, FPSCR
574990:  BNE             loc_5749A2
574992:  VLDR            S0, [R4,#0x5C]
574996:  VCMP.F32        S0, #0.0
57499A:  VMRS            APSR_nzcv, FPSCR
57499E:  BEQ.W           loc_574ADA
5749A2:  LDR             R0, =(fWheelExtensionRate_ptr - 0x5749AE)
5749A4:  ADDW            R2, R4, #0x9AC
5749A8:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5749B4)
5749AA:  ADD             R0, PC; fWheelExtensionRate_ptr
5749AC:  VLDR            S0, [R2]
5749B0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5749B2:  LDR             R0, [R0]; fWheelExtensionRate
5749B4:  VLDR            S2, [R0]
5749B8:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
5749BA:  ADDW            R1, R4, #0x89C
5749BE:  VMUL.F32        S0, S2, S0
5749C2:  VLDR            S2, [R0]
5749C6:  ADDW            R0, R4, #0x84C
5749CA:  VMUL.F32        S0, S2, S0
5749CE:  VLDR            S2, [R0]
5749D2:  VSUB.F32        S4, S2, S0
5749D6:  VLDR            S2, [R1]
5749DA:  VCMPE.F32       S4, S2
5749DE:  VSTR            S4, [R0]
5749E2:  VMRS            APSR_nzcv, FPSCR
5749E6:  BGE             loc_5749EE
5749E8:  VSTR            S2, [R0]
5749EC:  B               loc_574A04
5749EE:  ADDW            R1, R4, #0x88C
5749F2:  VLDR            S2, [R1]
5749F6:  VCMPE.F32       S4, S2
5749FA:  VMRS            APSR_nzcv, FPSCR
5749FE:  IT GT
574A00:  VSTRGT          S2, [R0]
574A04:  MOV.W           R0, #0x3F800000
574A08:  ADD.W           R1, R4, #0x8A0
574A0C:  STR.W           R0, [R8]
574A10:  ADD.W           R0, R4, #0x850
574A14:  VLDR            S2, [R0]
574A18:  VSUB.F32        S4, S2, S0
574A1C:  VLDR            S2, [R1]
574A20:  VCMPE.F32       S4, S2
574A24:  VSTR            S4, [R0]
574A28:  VMRS            APSR_nzcv, FPSCR
574A2C:  BGE             loc_574A34
574A2E:  VSTR            S2, [R0]
574A32:  B               loc_574A4A
574A34:  ADD.W           R1, R4, #0x890
574A38:  VLDR            S2, [R1]
574A3C:  VCMPE.F32       S4, S2
574A40:  VMRS            APSR_nzcv, FPSCR
574A44:  IT GT
574A46:  VSTRGT          S2, [R0]
574A4A:  MOV.W           R0, #0x3F800000
574A4E:  ADDW            R1, R4, #0x8A4
574A52:  STR.W           R0, [R9]
574A56:  ADDW            R0, R4, #0x854
574A5A:  VLDR            S2, [R0]
574A5E:  VSUB.F32        S4, S2, S0
574A62:  VLDR            S2, [R1]
574A66:  VCMPE.F32       S4, S2
574A6A:  VSTR            S4, [R0]
574A6E:  VMRS            APSR_nzcv, FPSCR
574A72:  BGE             loc_574A7A
574A74:  VSTR            S2, [R0]
574A78:  B               loc_574A90
574A7A:  ADDW            R1, R4, #0x894
574A7E:  VLDR            S2, [R1]
574A82:  VCMPE.F32       S4, S2
574A86:  VMRS            APSR_nzcv, FPSCR
574A8A:  IT GT
574A8C:  VSTRGT          S2, [R0]
574A90:  MOV.W           R0, #0x3F800000
574A94:  ADDW            R1, R4, #0x8A8
574A98:  STR             R0, [R5]
574A9A:  ADDW            R0, R4, #0x858
574A9E:  VLDR            S2, [R0]
574AA2:  VSUB.F32        S2, S2, S0
574AA6:  VLDR            S0, [R1]
574AAA:  VCMPE.F32       S2, S0
574AAE:  VSTR            S2, [R0]
574AB2:  VMRS            APSR_nzcv, FPSCR
574AB6:  BGE             loc_574ABE
574AB8:  VSTR            S0, [R0]
574ABC:  B               loc_574AD4
574ABE:  ADDW            R1, R4, #0x898
574AC2:  VLDR            S0, [R1]
574AC6:  VCMPE.F32       S2, S0
574ACA:  VMRS            APSR_nzcv, FPSCR
574ACE:  IT GT
574AD0:  VSTRGT          S0, [R0]
574AD4:  MOV.W           R0, #0x3F800000
574AD8:  STR             R0, [R6]
574ADA:  POP.W           {R8,R9,R11}
574ADE:  POP             {R4-R7,PC}
