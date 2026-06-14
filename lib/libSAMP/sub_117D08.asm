; =========================================================
; Game Engine Function: sub_117D08
; Address            : 0x117D08 - 0x117EDA
; =========================================================

117D08:  PUSH            {R4-R7,LR}
117D0A:  ADD             R7, SP, #0xC
117D0C:  PUSH.W          {R8-R11}
117D10:  SUB             SP, SP, #4
117D12:  VPUSH           {D8-D14}
117D16:  SUB             SP, SP, #0x40
117D18:  MOV             R5, R0
117D1A:  LDR             R0, [R7,#arg_0]
117D1C:  STR             R0, [SP,#0x98+var_5C]
117D1E:  MOV             R6, R3
117D20:  LDR             R0, [R5]
117D22:  MOV             R9, R2
117D24:  ADD             R2, SP, #0x98+var_88
117D26:  MOV             R8, R1
117D28:  MOV             R1, R5
117D2A:  LDR             R3, [R0,#8]
117D2C:  MOVS            R0, #0x42A00000
117D32:  STRD.W          R0, R0, [SP,#0x98+var_88]
117D36:  ADD             R0, SP, #0x98+var_64
117D38:  BLX             R3
117D3A:  LDR             R0, [R5]
117D3C:  MOV             R1, R5
117D3E:  VLDR            S22, [SP,#0x98+var_64]
117D42:  VLDR            S24, [SP,#0x98+var_60]
117D46:  LDR             R2, [R0,#0x14]
117D48:  ADD             R0, SP, #0x98+var_88
117D4A:  BLX             R2
117D4C:  LDR             R0, [R5]
117D4E:  MOV             R1, R5
117D50:  VLDR            S18, [SP,#0x98+var_88]
117D54:  LDR             R2, [R0,#0x4C]
117D56:  ADD             R0, SP, #0x98+var_70
117D58:  BLX             R2
117D5A:  LDR             R0, [R5]
117D5C:  ADD.W           R10, SP, #0x98+var_88
117D60:  MOV             R1, R5
117D62:  VLDR            S20, [SP,#0x98+var_64]
117D66:  VLDR            S26, [SP,#0x98+var_70]
117D6A:  LDR             R2, [R0,#0x14]
117D6C:  MOV             R0, R10
117D6E:  BLX             R2
117D70:  LDR             R0, [R5]
117D72:  MOV             R1, R5
117D74:  VLDR            S28, [SP,#0x98+var_84]
117D78:  LDR             R2, [R0,#0x4C]
117D7A:  ADD             R0, SP, #0x98+var_70
117D7C:  BLX             R2
117D7E:  VLDR            S0, =-0.55
117D82:  VMOV.F32        S16, #0.5
117D86:  VLDR            S4, [SP,#0x98+var_6C]
117D8A:  VADD.F32        S6, S18, S26
117D8E:  VLDR            S2, =-3.3
117D92:  MOV.W           R1, #0xFFFFFFFF
117D96:  VMLA.F32        S28, S4, S0
117D9A:  LDRD.W          R3, R0, [SP,#0x98+var_64]
117D9E:  VMUL.F32        S18, S20, S2
117DA2:  STR             R1, [SP,#0x98+var_88]
117DA4:  VMOV            S0, R6
117DA8:  STRD.W          R0, R10, [SP,#0x98+var_98]
117DAC:  ADD.W           R0, R5, #0x5C ; '\'
117DB0:  VMLA.F32        S18, S6, S16
117DB4:  VADD.F32        S20, S28, S0
117DB8:  VMOV            R6, S18
117DBC:  VMOV            R4, S20
117DC0:  MOV             R1, R6
117DC2:  MOV             R2, R4
117DC4:  BL              sub_163176
117DC8:  VMOV.F32        S0, #0.25
117DCC:  VLDR            S8, [SP,#0x98+var_64]
117DD0:  VMOV.F32        S4, S18
117DD4:  VLDR            S10, [SP,#0x98+var_60]
117DD8:  VMOV.F32        S6, S20
117DDC:  MOV             R0, R9
117DDE:  ADD.W           R11, SP, #0x98+var_5C
117DE2:  STR.W           R11, [SP,#0x98+var_98+4]; float
117DE6:  VMUL.F32        S2, S22, S0
117DEA:  VMUL.F32        S0, S24, S0
117DEE:  VMLA.F32        S4, S2, S16
117DF2:  VMLA.F32        S6, S0, S16
117DF6:  VSUB.F32        S2, S8, S2
117DFA:  VSUB.F32        S0, S10, S0
117DFE:  VMOV            R1, S4
117E02:  VMOV            R2, S6
117E06:  VMOV            R3, S2
117E0A:  VSTR            S0, [SP,#0x98+var_98]
117E0E:  BL              sub_163176
117E12:  VLDR            S0, =0.01
117E16:  VMOV            S22, R8
117E1A:  LDRD.W          R3, R0, [SP,#0x98+var_64]; int
117E1E:  MOV             R1, R6; int
117E20:  VMUL.F32        S0, S22, S0
117E24:  MOV             R2, R4; int
117E26:  STR             R0, [SP,#0x98+var_98]; float
117E28:  ADD.W           R0, R5, #0x60 ; '`'; int
117E2C:  STR.W           R11, [SP,#0x98+var_90]; int
117E30:  VSTR            S0, [SP,#0x98+var_98+4]
117E34:  BL              sub_163588
117E38:  VCVT.F64.F32    D16, S22
117E3C:  LDR             R3, =(a0f - 0x117E46); "%.0f%%" ...
117E3E:  ADD             R4, SP, #0x98+var_70
117E40:  MOVS            R0, #0
117E42:  ADD             R3, PC; "%.0f%%"
117E44:  STRD.W          R0, R0, [SP,#0x98+var_70]
117E48:  MOV             R0, R4
117E4A:  MOVS            R1, #8
117E4C:  MOVS            R2, #8
117E4E:  VSTR            D16, [SP,#0x98+var_98]
117E52:  BL              sub_117EEC
117E56:  LDR             R0, [R5]
117E58:  MOV             R1, #0x3F19999A
117E60:  LDR             R2, [R0,#0x18]
117E62:  MOV             R0, R5
117E64:  BLX             R2
117E66:  MOV             R6, R0
117E68:  LDR             R0, [R5]
117E6A:  MOV             R1, #0x3FCCCCCD
117E72:  LDR             R2, [R0,#0x18]
117E74:  MOV             R0, R5
117E76:  BLX             R2
117E78:  MOV             R1, R0
117E7A:  MOV             R0, R6
117E7C:  BL              sub_163C58
117E80:  MOVS            R0, #0
117E82:  BL              sub_163CA4
117E86:  MOVS            R0, #1
117E88:  BL              sub_163D1C
117E8C:  MOVS            R0, #2
117E8E:  BL              sub_163D80
117E92:  MOV.W           R0, #0xFFFFFFFF
117E96:  STR             R0, [SP,#0x98+var_74]
117E98:  ADD             R0, SP, #0x98+var_74
117E9A:  BL              sub_163C74
117E9E:  VMOV.I32        Q8, #0
117EA2:  MOV             R0, R4
117EA4:  MOV             R1, R10
117EA6:  VST1.64         {D16-D17}, [R10]
117EAA:  BL              sub_163C40
117EAE:  VLDR            S0, [SP,#0x98+var_64]
117EB2:  MOV             R2, R10
117EB4:  VLDR            S2, [SP,#0x98+var_60]
117EB8:  VMLA.F32        S18, S0, S16
117EBC:  VADD.F32        S0, S20, S2
117EC0:  VMOV            R0, S18
117EC4:  VMOV            R1, S0
117EC8:  BL              sub_163D64
117ECC:  ADD             SP, SP, #0x40 ; '@'
117ECE:  VPOP            {D8-D14}
117ED2:  ADD             SP, SP, #4
117ED4:  POP.W           {R8-R11}
117ED8:  POP             {R4-R7,PC}
