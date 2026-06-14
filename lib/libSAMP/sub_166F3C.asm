; =========================================================
; Game Engine Function: sub_166F3C
; Address            : 0x166F3C - 0x166FCC
; =========================================================

166F3C:  PUSH            {R7,LR}
166F3E:  MOV             R7, SP
166F40:  LDR             R2, =(dword_381B58 - 0x166F52)
166F42:  MOVW            R3, #0x1AB4
166F46:  LDR.W           R12, [R1,#0x130]
166F4A:  MOVW            LR, #0x19F8
166F4E:  ADD             R2, PC; dword_381B58
166F50:  LDR             R2, [R2]
166F52:  LDR             R3, [R2,R3]
166F54:  ADD             R2, LR
166F56:  CMP             R3, R1
166F58:  ITT NE
166F5A:  MOVNE           R3, #0
166F5C:  STRBNE.W        R3, [R2,#0x121]
166F60:  ADD.W           R3, R1, R12,LSL#2
166F64:  STR.W           R0, [R2,#0xC0]
166F68:  STR.W           R12, [R2,#0x114]
166F6C:  STR.W           R0, [R3,#0x30C]
166F70:  LDR.W           R3, [R1,#0x108]
166F74:  STR.W           R1, [R2,#0xBC]
166F78:  CMP             R3, R0
166F7A:  BNE             loc_166FB8
166F7C:  VLDR            S0, [R1,#0xC]
166F80:  ADD.W           R0, R1, R12,LSL#4
166F84:  VLDR            S8, [R1,#0x118]
166F88:  VLDR            S2, [R1,#0x10]
166F8C:  VLDR            S10, [R1,#0x11C]
166F90:  VSUB.F32        S8, S8, S0
166F94:  VLDR            S4, [R1,#0x110]
166F98:  VLDR            S6, [R1,#0x114]
166F9C:  VSUB.F32        S10, S10, S2
166FA0:  VSUB.F32        S0, S4, S0
166FA4:  VSUB.F32        S2, S6, S2
166FA8:  VSTR            S8, [R0,#0x31C]
166FAC:  VSTR            S10, [R0,#0x320]
166FB0:  VSTR            S0, [R0,#0x314]
166FB4:  VSTR            S2, [R0,#0x318]
166FB8:  LDR             R0, [R2]
166FBA:  CMP             R0, #2
166FBC:  MOV.W           R0, #1
166FC0:  ITE NE
166FC2:  STRBNE.W        R0, [R2,#0x11E]
166FC6:  STRBEQ.W        R0, [R2,#0x11F]
166FCA:  POP             {R7,PC}
