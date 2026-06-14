; =========================================================
; Game Engine Function: sub_165EC8
; Address            : 0x165EC8 - 0x16609A
; =========================================================

165EC8:  PUSH            {R4-R7,LR}
165ECA:  ADD             R7, SP, #0xC
165ECC:  PUSH.W          {R8-R11}
165ED0:  SUB             SP, SP, #4
165ED2:  VPUSH           {D8}
165ED6:  SUB             SP, SP, #0x48
165ED8:  MOV             R6, R1
165EDA:  LDR             R1, [R1]
165EDC:  MOV             R9, R0
165EDE:  LDR             R4, [R6,#4]
165EE0:  LDRD.W          R8, R0, [R7,#arg_0]
165EE4:  MOV             R10, R3
165EE6:  LDR             R5, [R7,#arg_C]
165EE8:  VMOV            S16, R1
165EEC:  MOV             R11, R2
165EEE:  STR             R4, [SP,#0x70+var_3C]
165EF0:  STR             R1, [SP,#0x70+var_40]
165EF2:  CBZ             R0, loc_165F02
165EF4:  LDRD.W          R1, R0, [R0]
165EF8:  STRD.W          R1, R0, [SP,#0x70+var_48]
165EFC:  VMOV            S4, R1
165F00:  B               loc_165F16
165F02:  MOVS            R0, #0
165F04:  MOV             R1, R10; int
165F06:  STR             R0, [SP,#0x70+var_70]; float
165F08:  ADD             R0, SP, #0x70+var_48; int
165F0A:  MOV             R2, R8; int
165F0C:  MOVS            R3, #0; int
165F0E:  BL              sub_1660A4
165F12:  VLDR            S4, [SP,#0x70+var_48]
165F16:  VADD.F32        S6, S4, S16
165F1A:  MOV             R0, R11
165F1C:  CMP             R5, #0
165F1E:  ITT NE
165F20:  ADDNE.W         R0, R5, #8
165F24:  MOVNE           R6, R5
165F26:  VLDR            S0, [R0]
165F2A:  VMOV            S2, R4
165F2E:  VCMP.F32        S6, S0
165F32:  VMRS            APSR_nzcv, FPSCR
165F36:  BGE             loc_165F54
165F38:  VLDR            S6, [SP,#0x70+var_44]
165F3C:  MOVS            R1, #0
165F3E:  VLDR            S8, [R0,#4]
165F42:  VADD.F32        S6, S6, S2
165F46:  VCMP.F32        S6, S8
165F4A:  VMRS            APSR_nzcv, FPSCR
165F4E:  IT GE
165F50:  MOVGE           R1, #1
165F52:  B               loc_165F56
165F54:  MOVS            R1, #1
165F56:  LDR             R2, [R7,#arg_8]
165F58:  CBZ             R5, loc_165F84
165F5A:  VLDR            S6, [R6]
165F5E:  VCMP.F32        S6, S16
165F62:  VMRS            APSR_nzcv, FPSCR
165F66:  BLE             loc_165F6C
165F68:  MOVS            R3, #1
165F6A:  B               loc_165F7E
165F6C:  VLDR            S6, [R6,#4]
165F70:  MOVS            R3, #0
165F72:  VCMP.F32        S6, S2
165F76:  VMRS            APSR_nzcv, FPSCR
165F7A:  IT GT
165F7C:  MOVGT           R3, #1
165F7E:  ORRS            R1, R3
165F80:  IT NE
165F82:  MOVNE           R1, #1
165F84:  VLDR            S6, [R2]
165F88:  VCMP.F32        S6, #0.0
165F8C:  VMRS            APSR_nzcv, FPSCR
165F90:  BLE             loc_165FB8
165F92:  VLDR            S8, [R11]
165F96:  VSUB.F32        S8, S8, S16
165F9A:  VSUB.F32        S4, S8, S4
165F9E:  VMOV.F32        S8, S16
165FA2:  VMLA.F32        S8, S4, S6
165FA6:  VCMP.F32        S8, S16
165FAA:  VMRS            APSR_nzcv, FPSCR
165FAE:  IT LS
165FB0:  VMOVLS.F32      S8, S16
165FB4:  VSTR            S8, [SP,#0x70+var_40]
165FB8:  VLDR            S4, [R2,#4]
165FBC:  VCMP.F32        S4, #0.0
165FC0:  VMRS            APSR_nzcv, FPSCR
165FC4:  BLE             loc_165FF0
165FC6:  VLDR            S6, [R11,#4]
165FCA:  VLDR            S8, [SP,#0x70+var_44]
165FCE:  VSUB.F32        S6, S6, S2
165FD2:  VSUB.F32        S6, S6, S8
165FD6:  VMOV.F32        S8, S2
165FDA:  VMLA.F32        S8, S6, S4
165FDE:  VCMP.F32        S8, S2
165FE2:  VMRS            APSR_nzcv, FPSCR
165FE6:  IT LS
165FE8:  VMOVLS.F32      S8, S2
165FEC:  VSTR            S8, [SP,#0x70+var_3C]
165FF0:  CBZ             R1, loc_166042
165FF2:  LDR             R1, =(dword_381B58 - 0x165FFA)
165FF4:  LDR             R0, [R0,#4]
165FF6:  ADD             R1, PC; dword_381B58
165FF8:  STR             R0, [SP,#0x70+var_4C]
165FFA:  MOVW            R0, #0x1518
165FFE:  VSTR            S0, [SP,#0x70+var_50]
166002:  LDR             R1, [R1]
166004:  LDRD.W          R2, R3, [R6]
166008:  ADD             R0, R1
16600A:  STRD.W          R2, R3, [SP,#0x70+var_58]
16600E:  ADD.W           R1, R0, #0xAC
166012:  VLDR            S0, [R0]
166016:  ADD             R0, SP, #0x70+var_38
166018:  VLD1.32         {D16-D17}, [R1]
16601C:  MOVS            R1, #0xC
16601E:  MOV             R2, R0
166020:  VST1.64         {D16-D17}, [R2],R1
166024:  VLDR            S2, [R2]
166028:  VMUL.F32        S0, S0, S2
16602C:  VSTR            S0, [R2]
166030:  BL              sub_165778
166034:  MOVS            R2, #0
166036:  ADD             R1, SP, #0x70+var_58
166038:  STRD.W          R0, R10, [SP,#0x70+var_70]
16603C:  STRD.W          R8, R2, [SP,#0x70+var_68]
166040:  B               loc_16607E
166042:  LDR             R0, =(dword_381B58 - 0x16604C)
166044:  MOVW            R1, #0x1518
166048:  ADD             R0, PC; dword_381B58
16604A:  LDR             R0, [R0]
16604C:  ADD             R0, R1
16604E:  ADD.W           R1, R0, #0xAC
166052:  VLDR            S0, [R0]
166056:  ADD             R0, SP, #0x70+var_38
166058:  VLD1.32         {D16-D17}, [R1]
16605C:  MOVS            R1, #0xC
16605E:  MOV             R2, R0
166060:  VST1.64         {D16-D17}, [R2],R1
166064:  VLDR            S2, [R2]
166068:  VMUL.F32        S0, S0, S2
16606C:  VSTR            S0, [R2]
166070:  BL              sub_165778
166074:  MOVS            R1, #0
166076:  STRD.W          R0, R10, [SP,#0x70+var_70]; int
16607A:  STRD.W          R8, R1, [SP,#0x70+var_68]; int
16607E:  ADD             R3, SP, #0x70+var_40; int
166080:  STR             R1, [SP,#0x70+var_60]; int
166082:  MOV             R0, R9; int
166084:  MOVS            R1, #0; int
166086:  MOVS            R2, #0; int
166088:  BL              sub_1745E0
16608C:  ADD             SP, SP, #0x48 ; 'H'
16608E:  VPOP            {D8}
166092:  ADD             SP, SP, #4
166094:  POP.W           {R8-R11}
166098:  POP             {R4-R7,PC}
