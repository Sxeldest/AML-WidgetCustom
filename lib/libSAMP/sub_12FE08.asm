; =========================================================
; Game Engine Function: sub_12FE08
; Address            : 0x12FE08 - 0x12FED4
; =========================================================

12FE08:  PUSH            {R4-R7,LR}
12FE0A:  ADD             R7, SP, #0xC
12FE0C:  PUSH.W          {R8}
12FE10:  VPUSH           {D8-D10}
12FE14:  SUB             SP, SP, #0x28
12FE16:  MOV             R5, R0
12FE18:  LDR             R0, =(off_234980 - 0x12FE22)
12FE1A:  MOV             R4, R1
12FE1C:  LDR             R1, =(off_234A5C - 0x12FE36)
12FE1E:  ADD             R0, PC; off_234980
12FE20:  LDR             R2, =(off_234B7C - 0x12FE30)
12FE22:  VLDR            S16, [R5,#0x18]
12FE26:  VMOV.F32        S4, #0.5
12FE2A:  LDR             R0, [R0]; dword_238EC0
12FE2C:  ADD             R2, PC; off_234B7C
12FE2E:  VLDR            S0, [R5,#0x2C]
12FE32:  ADD             R1, PC; off_234A5C
12FE34:  VLDR            S18, [R5,#0x30]
12FE38:  VMOV.F32        Q8, #1.0
12FE3C:  VLDR            S2, [R0]
12FE40:  ADD.W           R8, SP, #0x50+var_40
12FE44:  LDR             R0, [R2]; dword_238EC8
12FE46:  ADD.W           R3, R5, #0x58 ; 'X'; int
12FE4A:  VSUB.F32        S6, S16, S2
12FE4E:  LDR             R6, [R1]; dword_238EC4
12FE50:  ADD             R1, SP, #0x50+var_30; int
12FE52:  MOV             R2, R8; int
12FE54:  VLDR            S8, [R0]
12FE58:  MOVS            R0, #0
12FE5A:  STR             R0, [SP,#0x50+var_50]; int
12FE5C:  MOV             R0, R4; int
12FE5E:  VADD.F32        S0, S8, S0
12FE62:  VLDR            S20, [R6]
12FE66:  VMOV.F32        S8, S18
12FE6A:  VST1.64         {D16-D17}, [R8]
12FE6E:  VSTR            S2, [SP,#0x50+var_4C]
12FE72:  VMLA.F32        S8, S6, S4
12FE76:  VSTR            S0, [SP,#0x50+var_30]
12FE7A:  VSTR            S8, [SP,#0x50+var_2C]
12FE7E:  BL              sub_12AE34
12FE82:  VADD.F32        S0, S18, S16
12FE86:  VLDR            S2, [R5,#0x2C]
12FE8A:  VLDR            S4, [R5,#0x14]
12FE8E:  ADR             R0, dword_12FED8
12FE90:  VSTR            S2, [SP,#0x50+var_30]
12FE94:  ADD             R1, SP, #0x50+var_30
12FE96:  VADD.F32        S2, S2, S4
12FE9A:  VLD1.64         {D16-D17}, [R0]
12FE9E:  ADD             R2, SP, #0x50+var_48
12FEA0:  MOV             R3, R8
12FEA2:  LDR             R0, [R6]
12FEA4:  STR             R0, [SP,#0x50+var_50]
12FEA6:  MOV             R0, R4
12FEA8:  VSUB.F32        S0, S0, S20
12FEAC:  VST1.64         {D16-D17}, [R8]
12FEB0:  VSTR            S2, [SP,#0x50+var_48]
12FEB4:  VSTR            S0, [SP,#0x50+var_2C]
12FEB8:  VSTR            S0, [SP,#0x50+var_44]
12FEBC:  BL              sub_12AB6C
12FEC0:  MOV             R0, R5
12FEC2:  MOV             R1, R4
12FEC4:  BL              sub_12C0B6
12FEC8:  ADD             SP, SP, #0x28 ; '('
12FECA:  VPOP            {D8-D10}
12FECE:  POP.W           {R8}
12FED2:  POP             {R4-R7,PC}
