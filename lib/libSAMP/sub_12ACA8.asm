; =========================================================
; Game Engine Function: sub_12ACA8
; Address            : 0x12ACA8 - 0x12AE1E
; =========================================================

12ACA8:  PUSH            {R4-R7,LR}
12ACAA:  ADD             R7, SP, #0xC
12ACAC:  PUSH.W          {R8-R11}
12ACB0:  SUB             SP, SP, #4
12ACB2:  VPUSH           {D8-D11}
12ACB6:  SUB             SP, SP, #0x38
12ACB8:  VLDR            S16, [R7,#arg_8]
12ACBC:  MOV             R11, R0
12ACBE:  LDR             R0, [R7,#arg_4]
12ACC0:  MOV             R8, R3
12ACC2:  VCMP.F32        S16, #0.0
12ACC6:  LDR             R6, [R7,#arg_0]
12ACC8:  VMRS            APSR_nzcv, FPSCR
12ACCC:  MOV             R9, R1
12ACCE:  ITT EQ
12ACD0:  LDREQ.W         R1, [R11,#8]
12ACD4:  VLDREQ          S16, [R1,#0x10]
12ACD8:  CMP             R0, #0
12ACDA:  BEQ.W           loc_12ADEC
12ACDE:  LDR             R0, =(off_234A5C - 0x12ACEE)
12ACE0:  ADR             R1, dword_12AE20
12ACE2:  VLDR            S0, [R9]
12ACE6:  ADD.W           R10, SP, #0x78+var_58
12ACEA:  ADD             R0, PC; off_234A5C
12ACEC:  VLD1.64         {D10-D11}, [R1]
12ACF0:  LDR             R0, [R0]; dword_238EC4
12ACF2:  LDRD.W          R5, R4, [R11,#4]
12ACF6:  VST1.64         {D10-D11}, [R10]
12ACFA:  VLDR            S18, [R0]
12ACFE:  LDR.W           R0, [R9,#4]
12AD02:  VADD.F32        S0, S18, S0
12AD06:  STR             R0, [SP,#0x78+var_44]
12AD08:  MOV             R0, R10
12AD0A:  STR             R2, [SP,#0x78+var_60]
12AD0C:  VSTR            S0, [SP,#0x78+var_48]
12AD10:  BL              sub_165778
12AD14:  STR.W           R9, [SP,#0x78+var_5C]
12AD18:  VMOV            R9, S16
12AD1C:  MOVS            R6, #0
12AD1E:  STRD.W          R0, R8, [SP,#0x78+var_78]; int
12AD22:  LDR             R0, [R7,#arg_0]
12AD24:  ADD             R3, SP, #0x78+var_48; int
12AD26:  STRD.W          R0, R6, [SP,#0x78+var_70]; int
12AD2A:  MOV             R0, R5; int
12AD2C:  MOV             R1, R4; int
12AD2E:  STR             R6, [SP,#0x78+var_68]; int
12AD30:  MOV             R2, R9; int
12AD32:  BL              sub_1745E0
12AD36:  VLDR            S0, [SP,#0x78+var_48]
12AD3A:  MOV             R0, R10
12AD3C:  LDRD.W          R4, R5, [R11,#4]
12AD40:  VSUB.F32        S0, S0, S18
12AD44:  VST1.64         {D10-D11}, [R10]
12AD48:  VSUB.F32        S0, S0, S18
12AD4C:  VSTR            S0, [SP,#0x78+var_48]
12AD50:  BL              sub_165778
12AD54:  STRD.W          R0, R8, [SP,#0x78+var_78]; int
12AD58:  ADD             R3, SP, #0x78+var_48; int
12AD5A:  LDR             R0, [R7,#arg_0]
12AD5C:  MOV             R1, R5; int
12AD5E:  STRD.W          R0, R6, [SP,#0x78+var_70]; int
12AD62:  MOV             R0, R4; int
12AD64:  MOV             R2, R9; int
12AD66:  STR             R6, [SP,#0x78+var_68]; int
12AD68:  MOV             R6, R3
12AD6A:  BL              sub_1745E0
12AD6E:  VLDR            S0, [SP,#0x78+var_48]
12AD72:  MOV             R0, R10
12AD74:  VLDR            S2, [SP,#0x78+var_44]
12AD78:  VADD.F32        S0, S18, S0
12AD7C:  LDRD.W          R4, R5, [R11,#4]
12AD80:  VADD.F32        S2, S18, S2
12AD84:  VST1.64         {D10-D11}, [R10]
12AD88:  VSTR            S0, [SP,#0x78+var_48]
12AD8C:  VSTR            S2, [SP,#0x78+var_44]
12AD90:  BL              sub_165778
12AD94:  STRD.W          R0, R8, [SP,#0x78+var_78]; int
12AD98:  MOV             R1, R5; int
12AD9A:  LDR             R0, [R7,#arg_0]
12AD9C:  MOV             R2, R9; int
12AD9E:  STR             R0, [SP,#0x78+var_70]; int
12ADA0:  MOVS            R0, #0
12ADA2:  STRD.W          R0, R0, [SP,#0x78+var_6C]; float
12ADA6:  MOV             R0, R4; int
12ADA8:  MOV             R3, R6; int
12ADAA:  BL              sub_1745E0
12ADAE:  VLDR            S0, [SP,#0x78+var_44]
12ADB2:  MOV             R0, R10
12ADB4:  LDRD.W          R4, R5, [R11,#4]
12ADB8:  VSUB.F32        S0, S0, S18
12ADBC:  VST1.64         {D10-D11}, [R10]
12ADC0:  LDR             R6, [R7,#arg_0]
12ADC2:  VSUB.F32        S0, S0, S18
12ADC6:  VSTR            S0, [SP,#0x78+var_44]
12ADCA:  BL              sub_165778
12ADCE:  STRD.W          R0, R8, [SP,#0x78+var_78]; int
12ADD2:  MOVS            R0, #0
12ADD4:  ADD             R3, SP, #0x78+var_48; int
12ADD6:  STRD.W          R0, R0, [SP,#0x78+var_6C]; float
12ADDA:  MOV             R2, R9; int
12ADDC:  MOV             R0, R4; int
12ADDE:  MOV             R1, R5; int
12ADE0:  STR             R6, [SP,#0x78+var_70]; int
12ADE2:  LDR.W           R9, [SP,#0x78+var_5C]
12ADE6:  BL              sub_1745E0
12ADEA:  LDR             R2, [SP,#0x78+var_60]
12ADEC:  MOV             R0, R2
12ADEE:  LDRD.W          R4, R5, [R11,#4]
12ADF2:  BL              sub_165778
12ADF6:  VMOV            R2, S16; int
12ADFA:  MOVS            R1, #0
12ADFC:  STRD.W          R0, R8, [SP,#0x78+var_78]; int
12AE00:  MOV             R0, R4; int
12AE02:  STRD.W          R6, R1, [SP,#0x78+var_70]; int
12AE06:  MOV             R3, R9; int
12AE08:  STR             R1, [SP,#0x78+var_68]; int
12AE0A:  MOV             R1, R5; int
12AE0C:  BL              sub_1745E0
12AE10:  ADD             SP, SP, #0x38 ; '8'
12AE12:  VPOP            {D8-D11}
12AE16:  ADD             SP, SP, #4
12AE18:  POP.W           {R8-R11}
12AE1C:  POP             {R4-R7,PC}
