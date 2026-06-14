; =========================================================
; Game Engine Function: sub_13DE18
; Address            : 0x13DE18 - 0x13DEC4
; =========================================================

13DE18:  PUSH            {R7,LR}
13DE1A:  MOV             R7, SP
13DE1C:  SUB             SP, SP, #8
13DE1E:  MOV             R2, R0
13DE20:  LDR             R0, [R0,#0x44]
13DE22:  LDR             R3, [R2,#0x48]
13DE24:  CMP             R0, R3
13DE26:  BEQ             loc_13DEC0
13DE28:  LDR             R0, [R0]
13DE2A:  VLDR            S2, [R2,#0x14]
13DE2E:  LDRD.W          R3, R12, [R0,#0xC]
13DE32:  VLDR            S8, [R0,#0x14]
13DE36:  LDRB.W          LR, [R2,#0x5C]
13DE3A:  VSUB.F32        S8, S2, S8
13DE3E:  STRD.W          R3, R12, [SP,#0x10+var_10]
13DE42:  VMOV            S0, R3
13DE46:  VLDR            S4, [R2,#0x18]
13DE4A:  VLDR            S6, [R0,#0x18]
13DE4E:  CMP.W           LR, #0
13DE52:  ITTT NE
13DE54:  VLDRNE          S10, [R1]
13DE58:  VADDNE.F32      S0, S10, S0
13DE5C:  VSTRNE          S0, [SP,#0x10+var_10]
13DE60:  VMOV            S2, R12
13DE64:  LDRB.W          R2, [R2,#0x5D]
13DE68:  CBZ             R2, loc_13DE76
13DE6A:  VLDR            S10, [R1,#4]
13DE6E:  VADD.F32        S2, S10, S2
13DE72:  VSTR            S2, [SP,#0x10+var_C]
13DE76:  VSUB.F32        S4, S4, S6
13DE7A:  VCMP.F32        S0, S8
13DE7E:  VMRS            APSR_nzcv, FPSCR
13DE82:  ITT MI
13DE84:  VSTRMI          S8, [SP,#0x10+var_10]
13DE88:  VMOVMI.F32      S0, S8
13DE8C:  VCMP.F32        S2, S4
13DE90:  VMRS            APSR_nzcv, FPSCR
13DE94:  VCMP.F32        S0, #0.0
13DE98:  ITT MI
13DE9A:  VSTRMI          S4, [SP,#0x10+var_C]
13DE9E:  VMOVMI.F32      S2, S4
13DEA2:  VMRS            APSR_nzcv, FPSCR
13DEA6:  VCMP.F32        S2, #0.0
13DEAA:  ITT GT
13DEAC:  MOVGT           R1, #0
13DEAE:  STRGT           R1, [SP,#0x10+var_10]
13DEB0:  VMRS            APSR_nzcv, FPSCR
13DEB4:  ITT GT
13DEB6:  MOVGT           R1, #0
13DEB8:  STRGT           R1, [SP,#0x10+var_C]
13DEBA:  MOV             R1, SP
13DEBC:  BL              sub_12BD92
13DEC0:  ADD             SP, SP, #8
13DEC2:  POP             {R7,PC}
