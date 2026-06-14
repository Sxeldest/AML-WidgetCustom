; =========================================================
; Game Engine Function: sub_116ED8
; Address            : 0x116ED8 - 0x117036
; =========================================================

116ED8:  PUSH            {R4-R7,LR}
116EDA:  ADD             R7, SP, #0xC
116EDC:  PUSH.W          {R8}
116EE0:  VPUSH           {D8-D11}
116EE4:  SUB             SP, SP, #0x38
116EE6:  MOV             R4, R0
116EE8:  BL              sub_117684
116EEC:  LDR             R0, =(off_234988 - 0x116EF6)
116EEE:  ADD             R6, SP, #0x68+var_34
116EF0:  MOVS            R1, #0
116EF2:  ADD             R0, PC; off_234988
116EF4:  STR             R1, [SP,#0x68+var_34]
116EF6:  STRD.W          R1, R1, [SP,#0x68+var_40]
116EFA:  LDR             R0, [R0]; dword_23DEE8
116EFC:  LDR             R3, [R0]
116EFE:  MOV             R0, R6
116F00:  BL              sub_117044
116F04:  ADD             R5, SP, #0x68+var_40
116F06:  MOV             R0, R6
116F08:  MOV             R1, R5
116F0A:  BL              sub_163C40
116F0E:  LDR             R0, [R4]
116F10:  MOV.W           R1, #0x3FC00000
116F14:  LDR             R2, [R0,#0x60]
116F16:  MOV             R0, R4
116F18:  BLX             R2
116F1A:  MOV             R6, R0
116F1C:  LDR             R0, [R4]
116F1E:  MOV             R1, #0x404CCCCD
116F26:  LDR             R2, [R0,#0x60]
116F28:  MOV             R0, R4
116F2A:  BLX             R2
116F2C:  MOV             R1, R0
116F2E:  MOV             R0, R6
116F30:  BL              sub_163C58
116F34:  LDR             R0, [R4]
116F36:  MOV             R1, R4
116F38:  LDR             R2, [R0,#0x5C]
116F3A:  ADD             R0, SP, #0x68+var_48
116F3C:  BLX             R2
116F3E:  LDR             R0, [R4]
116F40:  MOV             R1, R4
116F42:  VLDR            S16, [SP,#0x68+var_48]
116F46:  LDR             R2, [R0,#0x58]
116F48:  ADD             R0, SP, #0x68+var_50
116F4A:  BLX             R2
116F4C:  LDR             R0, [R4]
116F4E:  MOV             R1, R4
116F50:  VLDR            S18, [SP,#0x68+var_50]
116F54:  LDR             R2, [R0,#0x5C]
116F56:  ADD             R0, SP, #0x68+var_58
116F58:  BLX             R2
116F5A:  LDR             R0, [R4]
116F5C:  MOV             R1, R4
116F5E:  VLDR            S20, [SP,#0x68+var_54]
116F62:  LDR             R2, [R0,#0x58]
116F64:  ADD             R0, SP, #0x68+var_60
116F66:  BLX             R2
116F68:  VMOV.F32        S0, #0.25
116F6C:  VLDR            S2, =0.89062
116F70:  VLDR            S4, [SP,#0x68+var_5C]
116F74:  MOV             R2, R5
116F76:  VMLA.F32        S16, S18, S2
116F7A:  VMLA.F32        S20, S4, S0
116F7E:  VMOV            R0, S16
116F82:  VMOV            R1, S20
116F86:  BL              sub_163D64
116F8A:  LDR             R0, [R4]
116F8C:  LDR             R1, [R0,#0x18]
116F8E:  MOV             R0, R4
116F90:  BLX             R1
116F92:  MOV             R5, R0
116F94:  LDR             R0, [R4]
116F96:  LDR             R1, [R0,#0x18]
116F98:  MOV             R0, R4
116F9A:  BLX             R1
116F9C:  MOV             R6, R0
116F9E:  LDR             R0, [R4]
116FA0:  ADD.W           R8, SP, #0x68+var_48
116FA4:  MOV             R1, R4
116FA6:  LDR             R2, [R0,#0x5C]
116FA8:  MOV             R0, R8
116FAA:  BLX             R2
116FAC:  LDR             R0, [R4]
116FAE:  MOV             R1, R4
116FB0:  VLDR            S16, [SP,#0x68+var_48]
116FB4:  LDR             R2, [R0,#0x58]
116FB6:  ADD             R0, SP, #0x68+var_50
116FB8:  BLX             R2
116FBA:  LDR             R0, [R4]
116FBC:  MOV             R1, R4
116FBE:  VLDR            S18, [SP,#0x68+var_50]
116FC2:  LDR             R2, [R0,#0x58]
116FC4:  ADD             R0, SP, #0x68+var_58
116FC6:  BLX             R2
116FC8:  VMOV.F32        S0, #15.0
116FCC:  VLDR            S4, =200.0
116FD0:  VADD.F32        S2, S16, S18
116FD4:  VLDR            S20, [SP,#0x68+var_54]
116FD8:  VMOV            S6, R5
116FDC:  MOV             R0, #0xE0FFFFFF
116FE0:  VMOV            R2, S20
116FE4:  STR             R0, [SP,#0x68+var_48]
116FE6:  VMUL.F32        S16, S6, S4
116FEA:  ADD.W           R0, R4, #0x24 ; '$'
116FEE:  STR.W           R8, [SP,#0x68+var_64]
116FF2:  VADD.F32        S0, S2, S0
116FF6:  VMOV            R3, S16
116FFA:  VSUB.F32        S18, S0, S16
116FFE:  VMOV            S0, R6
117002:  VMUL.F32        S22, S0, S4
117006:  VMOV            R1, S18
11700A:  VSTR            S22, [SP,#0x68+var_68]
11700E:  BL              sub_163176
117012:  VADD.F32        S0, S16, S18
117016:  VSTR            S18, [R4,#0x48]
11701A:  VADD.F32        S2, S22, S20
11701E:  VSTR            S20, [R4,#0x54]
117022:  VSTR            S0, [R4,#0x50]
117026:  VSTR            S2, [R4,#0x4C]
11702A:  ADD             SP, SP, #0x38 ; '8'
11702C:  VPOP            {D8-D11}
117030:  POP.W           {R8}
117034:  POP             {R4-R7,PC}
