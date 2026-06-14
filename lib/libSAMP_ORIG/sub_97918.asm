; =========================================================
; Game Engine Function: sub_97918
; Address            : 0x97918 - 0x97A4A
; =========================================================

97918:  PUSH            {R7,LR}
9791A:  MOV             R7, SP
9791C:  LDR             R0, =(dword_1ACF68 - 0x97922)
9791E:  ADD             R0, PC; dword_1ACF68
97920:  LDR             R3, [R0]
97922:  MOVW            R0, #0x19AC
97926:  LDR             R0, [R3,R0]
97928:  LDRB.W          R1, [R0,#0x80]
9792C:  CBZ             R1, locret_97942
9792E:  MOVW            R1, #0x1564
97932:  ADD.W           R12, R3, R1
97936:  LDR.W           R1, [R0,#0x304]
9793A:  LDR.W           R2, [R12,#0x550]
9793E:  CMP             R2, R1
97940:  BEQ             loc_97944
97942:  POP             {R7,PC}
97944:  LDRB.W          R1, [R12,#0x5B5]
97948:  CMP             R1, #0
9794A:  ITT EQ
9794C:  LDREQ.W         R1, [R12,#0x5B8]
97950:  CMPEQ           R1, #0
97952:  BEQ             locret_97942
97954:  LDR.W           LR, [R2,#0x130]
97958:  LDR.W           R1, [R12,#0x5A8]
9795C:  CMP             R1, LR
9795E:  BNE             locret_97942
97960:  VLDR            S0, [R2,#0xC]
97964:  ADD.W           R1, R3, #0x1B20
97968:  VLDR            S8, [R2,#0x118]
9796C:  MOV.W           LR, #0
97970:  VLDR            S2, [R2,#0x10]
97974:  VLDR            S10, [R2,#0x11C]
97978:  VSUB.F32        S8, S8, S0
9797C:  VLDR            S4, [R2,#0x110]
97980:  VLDR            S6, [R2,#0x114]
97984:  VSUB.F32        S10, S10, S2
97988:  VSUB.F32        S0, S4, S0
9798C:  LDR.W           R2, [R2,#0x108]
97990:  VSUB.F32        S2, S6, S2
97994:  LDRB            R3, [R1,#0x11]
97996:  STRB.W          LR, [R12,#0x5B5]
9799A:  STR.W           R2, [R12,#0x5B8]
9799E:  VSTR            S8, [R1,#8]
979A2:  STRB.W          R3, [R12,#0x5B4]
979A6:  VSTR            S10, [R1,#0xC]
979AA:  VSTR            S0, [R1]
979AE:  VSTR            S2, [R1,#4]
979B2:  VLDR            S0, [R0,#0x114]
979B6:  VLDR            S2, [R0,#0x21C]
979BA:  VCMP.F32        S0, S2
979BE:  VMRS            APSR_nzcv, FPSCR
979C2:  BPL             loc_979FC
979C4:  VLDR            S0, [R0,#0x11C]
979C8:  VLDR            S2, [R0,#0x214]
979CC:  VCMP.F32        S0, S2
979D0:  VMRS            APSR_nzcv, FPSCR
979D4:  BLE             loc_979FC
979D6:  VLDR            S0, [R0,#0x110]
979DA:  VLDR            S2, [R0,#0x218]
979DE:  VCMP.F32        S0, S2
979E2:  VMRS            APSR_nzcv, FPSCR
979E6:  BPL             loc_979FC
979E8:  VLDR            S0, [R0,#0x118]
979EC:  VLDR            S2, [R0,#0x210]
979F0:  VCMP.F32        S0, S2
979F4:  VMRS            APSR_nzcv, FPSCR
979F8:  IT GT
979FA:  POPGT           {R7,PC}
979FC:  VLDR            S0, =0.0
97A00:  MOVS            R1, #1
97A02:  VLDR            S2, [R12]
97A06:  VLDR            S4, [R0,#0x10]
97A0A:  VMUL.F32        S0, S2, S0
97A0E:  VLDR            S8, [R0,#0xD4]
97A12:  VMOV.F32        S2, #0.5
97A16:  VLDR            S10, [R0,#0xF4]
97A1A:  VSUB.F32        S4, S8, S4
97A1E:  VLDR            S6, [R0,#0x54]
97A22:  STRB.W          R1, [R0,#0x7C]
97A26:  MOV.W           R1, #0x3F000000
97A2A:  STR             R1, [R0,#0x6C]
97A2C:  VADD.F32        S0, S0, S0
97A30:  VMLA.F32        S0, S10, S2
97A34:  VADD.F32        S0, S4, S0
97A38:  VADD.F32        S0, S6, S0
97A3C:  VCVT.S32.F32    S0, S0
97A40:  VCVT.F32.S32    S0, S0
97A44:  VSTR            S0, [R0,#0x64]
97A48:  POP             {R7,PC}
