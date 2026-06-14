; =========================================================
; Game Engine Function: sub_8C7A8
; Address            : 0x8C7A8 - 0x8C958
; =========================================================

8C7A8:  PUSH            {R7,LR}
8C7AA:  MOV             R7, SP
8C7AC:  LDR             R0, =(dword_1ACF68 - 0x8C7B6)
8C7AE:  MOVW            R1, #0x19B8
8C7B2:  ADD             R0, PC; dword_1ACF68
8C7B4:  LDR.W           LR, [R0]
8C7B8:  LDR.W           R0, [LR,R1]
8C7BC:  ADD             R1, LR
8C7BE:  CBZ             R0, loc_8C81E
8C7C0:  LDR             R3, [R1,#0x18]
8C7C2:  LDR             R2, [R1,#0x44]
8C7C4:  STR             R3, [R1,#0x1C]
8C7C6:  CMP             R2, R3
8C7C8:  ITT EQ
8C7CA:  MOVEQ           R2, #1
8C7CC:  STRBEQ.W        R2, [R1,#0x48]
8C7D0:  LDRB.W          R2, [LR,#0xE8]
8C7D4:  CBZ             R2, loc_8C7F6
8C7D6:  VLDR            S4, =-256000.0
8C7DA:  VLDR            S0, [LR,#0xE0]
8C7DE:  VCMP.F32        S0, S4
8C7E2:  VMRS            APSR_nzcv, FPSCR
8C7E6:  ITTT GE
8C7E8:  VLDRGE          S2, [LR,#0xE4]
8C7EC:  VCMPGE.F32      S2, S4
8C7F0:  VMRSGE          APSR_nzcv, FPSCR
8C7F4:  BGE             loc_8C846
8C7F6:  CMP             R3, #0
8C7F8:  IT NE
8C7FA:  MOVNE           R3, #1
8C7FC:  STRB.W          R3, [R1,#0x24]
8C800:  ITTT NE
8C802:  MOVNE           R0, #0
8C804:  STRHNE          R0, [R1,#0x26]
8C806:  STRNE           R0, [R1,#0x20]
8C808:  MOVS            R0, #0
8C80A:  STRD.W          R0, R0, [R1,#0x2C]
8C80E:  STR             R0, [R1,#0x18]
8C810:  STR             R0, [R1,#0x3C]
8C812:  STRB.W          R0, [R1,#0x25]
8C816:  STRB.W          R0, [R1,#0x28]
8C81A:  STR             R0, [R1]
8C81C:  POP             {R7,PC}
8C81E:  LDR             R0, [R1,#0x3C]
8C820:  CMP             R0, #0
8C822:  IT EQ
8C824:  POPEQ           {R7,PC}
8C826:  LDR             R0, [R0,#0x48]
8C828:  LDR             R2, [R1,#0x18]
8C82A:  CMP             R0, R2
8C82C:  BNE             locret_8C844
8C82E:  LDR             R2, [R1,#0x44]
8C830:  STR             R0, [R1,#0x1C]
8C832:  CMP             R2, R0
8C834:  ITT EQ
8C836:  MOVEQ           R2, #1
8C838:  STRBEQ.W        R2, [R1,#0x48]
8C83C:  LDRB.W          R2, [LR,#0xE8]
8C840:  CMP             R2, #0
8C842:  BEQ             loc_8C932
8C844:  POP             {R7,PC}
8C846:  VLDR            S4, [R1,#0x34]
8C84A:  VLDR            S6, [R1,#0x38]
8C84E:  VSUB.F32        S0, S0, S4
8C852:  LDR.W           R3, [R0,#0x2FC]
8C856:  VSUB.F32        S2, S2, S6
8C85A:  VLDR            S4, [R3,#0xC]
8C85E:  VCMP.F32        S4, S0
8C862:  VMRS            APSR_nzcv, FPSCR
8C866:  BNE             loc_8C876
8C868:  VLDR            S4, [R3,#0x10]
8C86C:  VCMP.F32        S4, S2
8C870:  VMRS            APSR_nzcv, FPSCR
8C874:  BEQ             loc_8C92A
8C876:  LDRB            R2, [R3,#9]
8C878:  LSLS            R2, R2, #0x1F
8C87A:  BNE             loc_8C89A
8C87C:  MOVW            R2, #0x2CF8
8C880:  ADD.W           R12, LR, R2
8C884:  VLDR            S4, [R12]
8C888:  VCMP.F32        S4, #0.0
8C88C:  VMRS            APSR_nzcv, FPSCR
8C890:  ITT LS
8C892:  LDRLS.W         R2, [LR,#0x1C]
8C896:  STRLS.W         R2, [R12]
8C89A:  LDR.W           R12, [R3,#0xAC]
8C89E:  MOVS.W          R2, R12,LSL#31
8C8A2:  BEQ             loc_8C92A
8C8A4:  VCVT.S32.F32    S0, S0
8C8A8:  VLDR            S4, [R3,#0xC]
8C8AC:  VCVT.S32.F32    S2, S2
8C8B0:  VLDR            S6, [R3,#0x10]
8C8B4:  VLDR            S8, [R3,#0xC8]
8C8B8:  MOVW            R0, #0xFFFF
8C8BC:  VLDR            S10, [R3,#0xCC]
8C8C0:  MOVT            R0, #0x7F7F
8C8C4:  VLDR            S12, [R3,#0xD8]
8C8C8:  VLDR            S14, [R3,#0xDC]
8C8CC:  VLDR            S1, [R3,#0xE0]
8C8D0:  VCVT.F32.S32    S0, S0
8C8D4:  VLDR            S3, [R3,#0xE4]
8C8D8:  VCVT.F32.S32    S2, S2
8C8DC:  STRD.W          R0, R0, [R3,#0xB8]
8C8E0:  VSUB.F32        S4, S0, S4
8C8E4:  VSTR            S0, [R3,#0xC]
8C8E8:  VSUB.F32        S6, S2, S6
8C8EC:  VSTR            S2, [R3,#0x10]
8C8F0:  LDR             R0, [R1]
8C8F2:  BIC.W           R1, R12, #0xE
8C8F6:  STR.W           R1, [R3,#0xAC]
8C8FA:  VADD.F32        S8, S4, S8
8C8FE:  VADD.F32        S10, S6, S10
8C902:  VADD.F32        S1, S4, S1
8C906:  VADD.F32        S3, S6, S3
8C90A:  VADD.F32        S0, S4, S12
8C90E:  VADD.F32        S2, S6, S14
8C912:  VSTR            S8, [R3,#0xC8]
8C916:  VSTR            S10, [R3,#0xCC]
8C91A:  VSTR            S1, [R3,#0xE0]
8C91E:  VSTR            S3, [R3,#0xE4]
8C922:  VSTR            S0, [R3,#0xD8]
8C926:  VSTR            S2, [R3,#0xDC]
8C92A:  POP.W           {R7,LR}
8C92E:  B.W             sub_8C628
8C932:  CMP             R0, #0
8C934:  IT NE
8C936:  MOVNE           R0, #1
8C938:  STRB.W          R0, [R1,#0x24]
8C93C:  ITTT NE
8C93E:  MOVNE           R0, #0
8C940:  STRHNE          R0, [R1,#0x26]
8C942:  STRNE           R0, [R1,#0x20]
8C944:  MOVS            R0, #0
8C946:  STRD.W          R0, R0, [R1,#0x2C]
8C94A:  STR             R0, [R1,#0x18]
8C94C:  STR             R0, [R1,#0x3C]
8C94E:  STRB.W          R0, [R1,#0x25]
8C952:  STRB.W          R0, [R1,#0x28]
8C956:  POP             {R7,PC}
