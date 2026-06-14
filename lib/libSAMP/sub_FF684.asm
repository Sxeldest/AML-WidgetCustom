; =========================================================
; Game Engine Function: sub_FF684
; Address            : 0xFF684 - 0xFF838
; =========================================================

FF684:  PUSH            {R4-R7,LR}
FF686:  ADD             R7, SP, #0xC
FF688:  PUSH.W          {R8-R11}
FF68C:  SUB             SP, SP, #4
FF68E:  VPUSH           {D8}
FF692:  SUB             SP, SP, #0x48
FF694:  MOV             R4, R0
FF696:  LDR             R0, =(off_234970 - 0xFF6A2)
FF698:  LDR.W           R10, [R7,#arg_4]
FF69C:  MOV             R8, R3
FF69E:  ADD             R0, PC; off_234970
FF6A0:  VLDR            S16, [R7,#arg_0]
FF6A4:  MOV             R11, R2
FF6A6:  MOV             R6, R1
FF6A8:  LDR             R5, [R0]; dword_23DEF0
FF6AA:  LDR             R0, [R5]
FF6AC:  CBZ             R0, loc_FF6C8
FF6AE:  LDR             R0, [R0,#4]
FF6B0:  CBZ             R0, loc_FF6C8
FF6B2:  BL              sub_F88F4
FF6B6:  CBZ             R0, loc_FF6C8
FF6B8:  LDR             R0, [R5]
FF6BA:  BL              sub_E35A0
FF6BE:  LDR.W           R1, [R4,#0x1F4]
FF6C2:  LDR             R0, [R0,#0x5C]
FF6C4:  CMP             R0, R1
FF6C6:  BEQ             loc_FF6FA
FF6C8:  LDR             R0, =(dword_25B1B8 - 0xFF6D0)
FF6CA:  MOVS            R1, #0
FF6CC:  ADD             R0, PC; dword_25B1B8
FF6CE:  STRD.W          R1, R1, [R0]
FF6D2:  STR             R1, [R0,#(dword_25B1C0 - 0x25B1B8)]
FF6D4:  LDR             R0, =(off_25B1B4 - 0xFF6E0)
FF6D6:  MOV             R1, R6
FF6D8:  MOV             R2, R11
FF6DA:  MOV             R3, R8
FF6DC:  ADD             R0, PC; off_25B1B4
FF6DE:  STR.W           R10, [SP,#0x70+var_6C]
FF6E2:  VSTR            S16, [SP,#0x70+var_70]
FF6E6:  LDR             R5, [R0]
FF6E8:  MOV             R0, R4
FF6EA:  BLX             R5
FF6EC:  ADD             SP, SP, #0x48 ; 'H'
FF6EE:  VPOP            {D8}
FF6F2:  ADD             SP, SP, #4
FF6F4:  POP.W           {R8-R11}
FF6F8:  POP             {R4-R7,PC}
FF6FA:  LDR             R0, [R5]
FF6FC:  LDR             R0, [R0,#4]
FF6FE:  BL              sub_F88F4
FF702:  ADD.W           R9, SP, #0x70+var_68
FF706:  MOV             R1, R9
FF708:  BL              sub_F8910
FF70C:  LDR             R0, [R5]
FF70E:  BL              sub_E35A0
FF712:  VMOV.F32        S0, #20.0
FF716:  VLDR            S2, [SP,#0x70+var_30]
FF71A:  LDR             R5, [R0]
FF71C:  LDRD.W          R1, R2, [SP,#0x70+var_38]
FF720:  LDR             R5, [R5,#0x10]
FF722:  VADD.F32        S0, S2, S0
FF726:  VMOV            R3, S0
FF72A:  BLX             R5
FF72C:  LDR             R0, =(dword_25B1B8 - 0xFF736)
FF72E:  ADD.W           R1, R9, #0x30 ; '0'
FF732:  ADD             R0, PC; dword_25B1B8
FF734:  VLDR            S2, [R0]
FF738:  VCMP.F32        S2, #0.0
FF73C:  VMRS            APSR_nzcv, FPSCR
FF740:  BEQ             loc_FF82A
FF742:  VLDR            S4, [R0,#4]
FF746:  VCMP.F32        S4, #0.0
FF74A:  VMRS            APSR_nzcv, FPSCR
FF74E:  ITTT NE
FF750:  VLDRNE          S0, [R0,#8]
FF754:  VCMPNE.F32      S0, #0.0
FF758:  VMRSNE          APSR_nzcv, FPSCR
FF75C:  BEQ             loc_FF82A
FF75E:  VLDR            S6, [SP,#0x70+var_38]
FF762:  VLDR            S8, [SP,#0x70+var_34]
FF766:  VSUB.F32        S2, S6, S2
FF76A:  VLDR            S6, [R4,#0x1B0]
FF76E:  VLDR            S10, [R4,#0x120]
FF772:  VSUB.F32        S4, S8, S4
FF776:  VLDR            S8, [R4,#0x1BC]
FF77A:  VLDR            S14, [R4,#0x174]
FF77E:  VLDR            S1, [R4,#0x180]
FF782:  VLDR            S12, [R4,#0x124]
FF786:  VLDR            S3, [R4,#0x1B4]
FF78A:  VADD.F32        S6, S6, S2
FF78E:  VLDR            S5, [R4,#0x1C0]
FF792:  VADD.F32        S8, S2, S8
FF796:  VADD.F32        S10, S2, S10
FF79A:  VADD.F32        S14, S2, S14
FF79E:  VADD.F32        S2, S2, S1
FF7A2:  VADD.F32        S1, S3, S4
FF7A6:  VADD.F32        S3, S4, S5
FF7AA:  VADD.F32        S12, S4, S12
FF7AE:  VSTR            S6, [R4,#0x1B0]
FF7B2:  VSTR            S8, [R4,#0x1BC]
FF7B6:  VSTR            S10, [R4,#0x120]
FF7BA:  VSTR            S14, [R4,#0x174]
FF7BE:  VSTR            S2, [R4,#0x180]
FF7C2:  VLDR            S2, [R4,#0x178]
FF7C6:  VSTR            S1, [R4,#0x1B4]
FF7CA:  VADD.F32        S2, S4, S2
FF7CE:  VSTR            S3, [R4,#0x1C0]
FF7D2:  VSTR            S12, [R4,#0x124]
FF7D6:  VSTR            S2, [R4,#0x178]
FF7DA:  VLDR            S2, [R4,#0x184]
FF7DE:  VADD.F32        S2, S4, S2
FF7E2:  VSTR            S2, [R4,#0x184]
FF7E6:  VLDR            S2, [SP,#0x70+var_30]
FF7EA:  VSUB.F32        S0, S2, S0
FF7EE:  VLDR            S2, [R4,#0x1B8]
FF7F2:  VADD.F32        S2, S2, S0
FF7F6:  VSTR            S2, [R4,#0x1B8]
FF7FA:  VLDR            S2, [R4,#0x1C4]
FF7FE:  VADD.F32        S2, S0, S2
FF802:  VSTR            S2, [R4,#0x1C4]
FF806:  VLDR            S2, [R4,#0x128]
FF80A:  VADD.F32        S2, S0, S2
FF80E:  VSTR            S2, [R4,#0x128]
FF812:  VLDR            S2, [R4,#0x17C]
FF816:  VADD.F32        S2, S0, S2
FF81A:  VSTR            S2, [R4,#0x17C]
FF81E:  VLDR            S2, [R4,#0x188]
FF822:  VADD.F32        S0, S0, S2
FF826:  VSTR            S0, [R4,#0x188]
FF82A:  VLDR            D16, [R1]
FF82E:  LDR             R1, [R1,#8]
FF830:  STR             R1, [R0,#(dword_25B1C0 - 0x25B1B8)]
FF832:  VSTR            D16, [R0]
FF836:  B               loc_FF6D4
