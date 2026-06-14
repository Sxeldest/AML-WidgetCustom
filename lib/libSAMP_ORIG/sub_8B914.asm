; =========================================================
; Game Engine Function: sub_8B914
; Address            : 0x8B914 - 0x8BA66
; =========================================================

8B914:  PUSH            {R4,R6,R7,LR}
8B916:  ADD             R7, SP, #8
8B918:  LDR             R2, =(dword_1ACF68 - 0x8B922)
8B91A:  MOVW            R4, #0x1570
8B91E:  ADD             R2, PC; dword_1ACF68
8B920:  LDR             R3, [R2]
8B922:  MOVW            R2, #0x19BC
8B926:  ADD             R4, R3
8B928:  LDR             R2, [R3,R2]
8B92A:  CMP             R2, #0
8B92C:  IT NE
8B92E:  CMPNE           R2, R1
8B930:  BNE             loc_8B9F6
8B932:  LDR.W           LR, [R4,#0x43C]
8B936:  LDR.W           R2, [R4,#0x440]
8B93A:  CMP             R2, LR
8B93C:  BNE             loc_8BA10
8B93E:  MOVW            R2, #0x19C8
8B942:  ADD.W           R12, R3, R2
8B946:  LDR.W           R2, [R12,#8]
8B94A:  CMP             R2, #0
8B94C:  IT NE
8B94E:  CMPNE           R2, R1
8B950:  BNE             loc_8BA00
8B952:  VLDR            S0, [R0]
8B956:  VLDR            S2, [LR,#0x210]
8B95A:  VCMP.F32        S0, S2
8B95E:  VMRS            APSR_nzcv, FPSCR
8B962:  IT GE
8B964:  VMOVGE.F32      S2, S0
8B968:  VLDR            S0, [R4]
8B96C:  VSUB.F32        S4, S2, S0
8B970:  VLDR            S2, [R3,#0xE0]
8B974:  VCMP.F32        S2, S4
8B978:  VMRS            APSR_nzcv, FPSCR
8B97C:  BLT             loc_8BA10
8B97E:  VLDR            S10, [R0,#4]
8B982:  VLDR            S1, [LR,#0x214]
8B986:  VLDR            S14, [R0,#0xC]
8B98A:  VLDR            S4, [LR,#0x21C]
8B98E:  VCMP.F32        S10, S1
8B992:  VLDR            S12, [R0,#8]
8B996:  MOVS            R0, #0
8B998:  VLDR            S8, [LR,#0x218]
8B99C:  VMRS            APSR_nzcv, FPSCR
8B9A0:  VCMP.F32        S14, S4
8B9A4:  VLDR            S6, [R4,#4]
8B9A8:  IT GE
8B9AA:  VMOVGE.F32      S1, S10
8B9AE:  VMRS            APSR_nzcv, FPSCR
8B9B2:  VCMP.F32        S12, S8
8B9B6:  IT MI
8B9B8:  VMOVMI.F32      S4, S14
8B9BC:  VMRS            APSR_nzcv, FPSCR
8B9C0:  IT MI
8B9C2:  VMOVMI.F32      S8, S12
8B9C6:  VSUB.F32        S12, S1, S6
8B9CA:  VLDR            S10, [R3,#0xE4]
8B9CE:  VCMP.F32        S10, S12
8B9D2:  VMRS            APSR_nzcv, FPSCR
8B9D6:  BLT             locret_8B9F4
8B9D8:  VADD.F32        S0, S8, S0
8B9DC:  VCMP.F32        S2, S0
8B9E0:  VMRS            APSR_nzcv, FPSCR
8B9E4:  ITTT MI
8B9E6:  VADDMI.F32      S0, S4, S6
8B9EA:  VCMPMI.F32      S10, S0
8B9EE:  VMRSMI          APSR_nzcv, FPSCR
8B9F2:  BMI             loc_8BA0A
8B9F4:  POP             {R4,R6,R7,PC}
8B9F6:  LDRB.W          R2, [R4,#0x450]
8B9FA:  CMP             R2, #0
8B9FC:  BNE             loc_8B932
8B9FE:  B               loc_8BA10
8BA00:  LDRB.W          R2, [R12,#0x15]
8BA04:  CMP             R2, #0
8BA06:  BNE             loc_8B952
8BA08:  B               loc_8BA10
8BA0A:  LDRB.W          R0, [R12,#0x14F]
8BA0E:  CBZ             R0, loc_8BA14
8BA10:  MOVS            R0, #0
8BA12:  POP             {R4,R6,R7,PC}
8BA14:  LDR.W           R0, [R12,#0xEC]
8BA18:  CMP             R0, #0
8BA1A:  ITT NE
8BA1C:  LDRNE.W         R0, [R0,#0x2FC]
8BA20:  CMPNE           R0, #0
8BA22:  BEQ             loc_8BA34
8BA24:  LDRB.W          R2, [R0,#0x7B]
8BA28:  CMP             R2, #0
8BA2A:  ITT NE
8BA2C:  LDRNE.W         R2, [LR,#0x2FC]
8BA30:  CMPNE           R0, R2
8BA32:  BNE             loc_8BA5C
8BA34:  LDRB.W          R0, [LR,#0x16C]
8BA38:  LSLS            R0, R0, #0x1D
8BA3A:  MOV.W           R0, #0
8BA3E:  BMI             locret_8B9F4
8BA40:  STRB.W          R0, [R4,#0x450]
8BA44:  CMP             R1, #0
8BA46:  STR.W           R1, [R4,#0x44C]
8BA4A:  ITTTT NE
8BA4C:  LDRNE.W         R0, [R4,#0x454]
8BA50:  CMPNE           R0, R1
8BA52:  MOVNE           R0, #0
8BA54:  STRDNE.W        R0, R0, [R12]
8BA58:  MOVS            R0, #1
8BA5A:  POP             {R4,R6,R7,PC}
8BA5C:  LDRB            R0, [R0,#0xB]
8BA5E:  TST.W           R0, #0xC
8BA62:  BNE             loc_8BA10
8BA64:  B               loc_8BA34
