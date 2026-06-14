; =========================================================
; Game Engine Function: sub_A6D44
; Address            : 0xA6D44 - 0xA71A0
; =========================================================

A6D44:  PUSH            {R4-R7,LR}
A6D46:  ADD             R7, SP, #0xC
A6D48:  PUSH.W          {R8-R11}
A6D4C:  SUB             SP, SP, #4
A6D4E:  VPUSH           {D8-D15}
A6D52:  SUB             SP, SP, #0x40
A6D54:  MOV             R5, R0
A6D56:  LDR             R0, =(off_114D5C - 0xA6D5C)
A6D58:  ADD             R0, PC; off_114D5C
A6D5A:  LDR             R0, [R0]; dword_1ACF68
A6D5C:  LDR.W           R11, [R0]
A6D60:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xA6D68)
A6D64:  ADD             R0, PC; __stack_chk_guard_ptr
A6D66:  LDR             R0, [R0]; __stack_chk_guard
A6D68:  LDR             R0, [R0]
A6D6A:  STR             R0, [SP,#0xA0+var_64]
A6D6C:  MOVW            R0, #0x19AC
A6D70:  LDR.W           R8, [R11,R0]
A6D74:  LDRB.W          R0, [R8,#0x7F]
A6D78:  CBZ             R0, loc_A6D7E
A6D7A:  MOVS            R0, #0
A6D7C:  B               loc_A717E
A6D7E:  VLDR            S0, [R5]
A6D82:  MOVS            R0, #0
A6D84:  VLDR            S2, [R5,#8]
A6D88:  VSUB.F32        S0, S2, S0
A6D8C:  VCMP.F32        S0, #0.0
A6D90:  VMRS            APSR_nzcv, FPSCR
A6D94:  ITTTT HI
A6D96:  VLDRHI          S2, [R5,#4]
A6D9A:  VLDRHI          S4, [R5,#0xC]
A6D9E:  VSUBHI.F32      S2, S4, S2
A6DA2:  VCMPHI.F32      S2, #0.0
A6DA6:  IT HI
A6DA8:  VMRSHI          APSR_nzcv, FPSCR
A6DAC:  BLS.W           loc_A717E
A6DB0:  VMOV.F32        S28, #1.0
A6DB4:  MOV             R9, R2
A6DB6:  MOVW            R0, #0x1554
A6DBA:  ADD.W           R2, R11, R0
A6DBE:  MOV             R6, R3
A6DC0:  MOV             R10, R1
A6DC2:  CMP.W           R9, #1
A6DC6:  VMOV.F32        S16, S28
A6DCA:  BNE             loc_A6E1E
A6DCC:  VLDR            S6, [R2]
A6DD0:  VMOV.F32        S16, S28
A6DD4:  VLDR            S4, [R2,#0x374]
A6DD8:  VADD.F32        S6, S6, S6
A6DDC:  VADD.F32        S8, S6, S4
A6DE0:  VCMP.F32        S2, S8
A6DE4:  VMRS            APSR_nzcv, FPSCR
A6DE8:  BPL             loc_A6E1E
A6DEA:  VSUB.F32        S4, S2, S4
A6DEE:  MOVS            R0, #0
A6DF0:  VDIV.F32        S16, S4, S6
A6DF4:  VMOV.F32        S4, #1.0
A6DF8:  VCMP.F32        S16, S4
A6DFC:  VMRS            APSR_nzcv, FPSCR
A6E00:  VCMP.F32        S16, #0.0
A6E04:  IT GT
A6E06:  VMOVGT.F32      S16, S4
A6E0A:  VMRS            APSR_nzcv, FPSCR
A6E0E:  BMI.W           loc_A717E
A6E12:  VCMP.F32        S16, #0.0
A6E16:  VMRS            APSR_nzcv, FPSCR
A6E1A:  BLS.W           loc_A717E
A6E1E:  VMOV.F32        S4, #-2.0
A6E22:  ADD             R4, SP, #0xA0+var_78
A6E24:  VMOV.F32        S18, #0.5
A6E28:  VLDR            S22, =0.0
A6E2C:  SUB.W           R3, R7, #-var_79
A6E30:  VLDR            S24, [R7,#arg_4]
A6E34:  VLDR            S20, [R7,#arg_0]
A6E38:  VADD.F32        S2, S2, S4
A6E3C:  VADD.F32        S0, S0, S4
A6E40:  VMOV.F32        S4, #3.0
A6E44:  VMUL.F32        S2, S2, S18
A6E48:  VMUL.F32        S0, S0, S18
A6E4C:  VCVT.S32.F32    S2, S2
A6E50:  VCVT.S32.F32    S0, S0
A6E54:  VMOV            R0, S2
A6E58:  VMOV            R1, S0
A6E5C:  VCVT.F32.S32    S2, S2
A6E60:  VCVT.F32.S32    S0, S0
A6E64:  VCMP.F32        S2, S4
A6E68:  VMRS            APSR_nzcv, FPSCR
A6E6C:  VCMP.F32        S0, S4
A6E70:  IT GT
A6E72:  VMOVGT.F32      S2, S4
A6E76:  VMRS            APSR_nzcv, FPSCR
A6E7A:  IT GT
A6E7C:  VMOVGT.F32      S0, S4
A6E80:  CMP             R0, #0
A6E82:  IT MI
A6E84:  VMOVMI.F32      S2, S22
A6E88:  VLD1.32         {D16-D17}, [R5]
A6E8C:  CMP             R1, #0
A6E8E:  MOV.W           R0, #4
A6E92:  MOV             R1, R4
A6E94:  IT MI
A6E96:  VMOVMI.F32      S0, S22
A6E9A:  VST1.64         {D16-D17}, [R1],R0
A6E9E:  MOVS            R0, #0
A6EA0:  VLDR            S4, [R1]
A6EA4:  VLDR            S6, [SP,#0xA0+var_78]
A6EA8:  VLDR            S8, [SP,#0xA0+var_70]
A6EAC:  VADD.F32        S30, S2, S4
A6EB0:  VLDR            S10, [SP,#0xA0+var_6C]
A6EB4:  VADD.F32        S17, S0, S6
A6EB8:  VSUB.F32        S19, S8, S0
A6EBC:  VLDR            S23, [R2,#0x34]
A6EC0:  VSUB.F32        S21, S10, S2
A6EC4:  STR             R2, [SP,#0xA0+var_90]
A6EC6:  STRB.W          R0, [R7,#var_79]
A6ECA:  SUB.W           R2, R7, #-var_7A
A6ECE:  STRB.W          R0, [R7,#var_7A]
A6ED2:  MOV.W           R0, #0x2000
A6ED6:  STR             R0, [SP,#0xA0+var_A0]
A6ED8:  MOV             R0, R4
A6EDA:  VSTR            S30, [R1]
A6EDE:  MOV             R1, R10
A6EE0:  VSTR            S17, [SP,#0xA0+var_78]
A6EE4:  VSTR            S19, [SP,#0xA0+var_70]
A6EE8:  VSTR            S21, [SP,#0xA0+var_6C]
A6EEC:  BL              sub_A634C
A6EF0:  VCMP.F32        S24, S20
A6EF4:  VMOV.F32        S0, S20
A6EF8:  VMRS            APSR_nzcv, FPSCR
A6EFC:  IT GE
A6EFE:  VMOVGE.F32      S0, S24
A6F02:  VCMP.F32        S0, S28
A6F06:  VMOV.F32        S2, S28
A6F0A:  VMRS            APSR_nzcv, FPSCR
A6F0E:  IT GE
A6F10:  VMOVGE.F32      S2, S0
A6F14:  VDIV.F32        S0, S20, S2
A6F18:  VSUB.F32        S26, S24, S20
A6F1C:  VSUB.F32        S24, S21, S30
A6F20:  VSUB.F32        S2, S19, S17
A6F24:  VCMP.F32        S26, S28
A6F28:  VMRS            APSR_nzcv, FPSCR
A6F2C:  IT LS
A6F2E:  VMOVLS.F32      S26, S28
A6F32:  VLDR            S4, [R6]
A6F36:  CMP.W           R9, #0
A6F3A:  IT EQ
A6F3C:  VMOVEQ.F32      S24, S2
A6F40:  VMUL.F32        S20, S0, S24
A6F44:  VDIV.F32        S2, S4, S26
A6F48:  VCMP.F32        S20, S24
A6F4C:  VMRS            APSR_nzcv, FPSCR
A6F50:  VCMP.F32        S20, S23
A6F54:  IT GT
A6F56:  VMOVGT.F32      S20, S24
A6F5A:  VMRS            APSR_nzcv, FPSCR
A6F5E:  IT MI
A6F60:  VMOVMI.F32      S20, S23
A6F64:  VSUB.F32        S30, S24, S20
A6F68:  VCMP.F32        S2, S28
A6F6C:  VMRS            APSR_nzcv, FPSCR
A6F70:  VCMP.F32        S2, #0.0
A6F74:  IT GT
A6F76:  VMOVGT.F32      S2, S28
A6F7A:  VMRS            APSR_nzcv, FPSCR
A6F7E:  IT MI
A6F80:  VMOVMI.F32      S2, S22
A6F84:  LDRB.W          R0, [R7,#var_79]
A6F88:  CMP             R0, #0
A6F8A:  VMUL.F32        S0, S30, S2
A6F8E:  VDIV.F32        S28, S0, S24
A6F92:  BEQ.W           loc_A70C6
A6F96:  VMOV.F32        S19, #1.0
A6F9A:  VCMP.F32        S16, S19
A6F9E:  VMRS            APSR_nzcv, FPSCR
A6FA2:  BLT.W           loc_A70C6
A6FA6:  VDIV.F32        S17, S20, S24
A6FAA:  VCMP.F32        S17, S19
A6FAE:  VMRS            APSR_nzcv, FPSCR
A6FB2:  BPL.W           loc_A70C6
A6FB6:  MOVW            R0, #0x2CCC
A6FBA:  CMP.W           R9, #0
A6FBE:  ADD             R0, R11
A6FC0:  STR             R0, [SP,#0xA0+var_94]
A6FC2:  MOV.W           R0, #0xE4
A6FC6:  IT EQ
A6FC8:  MOVEQ           R0, #0xE0
A6FCA:  ADD             R0, R11
A6FCC:  VLDR            S21, [R0]
A6FD0:  MOV             R0, R10
A6FD2:  IT NE
A6FD4:  ADDNE           R4, #4
A6FD6:  VLDR            S23, [R4]
A6FDA:  BL              sub_8B0B4
A6FDE:  VSUB.F32        S0, S21, S23
A6FE2:  VDIV.F32        S0, S0, S24
A6FE6:  VCMP.F32        S0, S19
A6FEA:  VMRS            APSR_nzcv, FPSCR
A6FEE:  VCMP.F32        S0, #0.0
A6FF2:  IT GT
A6FF4:  VMOVGT.F32      S0, S19
A6FF8:  VMRS            APSR_nzcv, FPSCR
A6FFC:  IT MI
A6FFE:  VMOVMI.F32      S0, S22
A7002:  LDR             R0, [SP,#0xA0+var_90]
A7004:  LDRB.W          R0, [R0,#0x488]
A7008:  CBZ             R0, loc_A7036
A700A:  LDR             R1, [SP,#0xA0+var_94]
A700C:  VCMP.F32        S0, S28
A7010:  VMRS            APSR_nzcv, FPSCR
A7014:  BMI             loc_A7040
A7016:  VADD.F32        S2, S17, S28
A701A:  VCMP.F32        S0, S2
A701E:  VMRS            APSR_nzcv, FPSCR
A7022:  BGT             loc_A7040
A7024:  VMOV.F32        S4, #-0.5
A7028:  VSUB.F32        S2, S0, S28
A702C:  VMLA.F32        S2, S17, S4
A7030:  VSTR            S2, [R1]
A7034:  B               loc_A703C
A7036:  LDR             R1, [SP,#0xA0+var_94]
A7038:  VLDR            S2, [R1]
A703C:  MOVS            R0, #0
A703E:  B               loc_A704A
A7040:  MOVS            R0, #0
A7042:  VMOV.F32        S2, S22
A7046:  STR             R0, [R1]
A7048:  MOVS            R0, #1
A704A:  VSUB.F32        S2, S0, S2
A704E:  VSUB.F32        S4, S19, S17
A7052:  VMLS.F32        S2, S17, S18
A7056:  VDIV.F32        S2, S2, S4
A705A:  VMOV.F32        S4, S18
A705E:  VCMP.F32        S2, S19
A7062:  VMRS            APSR_nzcv, FPSCR
A7066:  VCMP.F32        S2, #0.0
A706A:  IT GT
A706C:  VMOVGT.F32      S2, S19
A7070:  VMRS            APSR_nzcv, FPSCR
A7074:  IT MI
A7076:  VMOVMI.F32      S2, S22
A707A:  VMLA.F32        S4, S2, S26
A707E:  VCVT.S32.F32    S2, S4
A7082:  VCVT.F32.S32    S2, S2
A7086:  VDIV.F32        S4, S2, S26
A708A:  VCMP.F32        S4, S19
A708E:  VMRS            APSR_nzcv, FPSCR
A7092:  VCMP.F32        S4, #0.0
A7096:  IT GT
A7098:  VMOVGT.F32      S4, S19
A709C:  VMRS            APSR_nzcv, FPSCR
A70A0:  IT MI
A70A2:  VMOVMI.F32      S4, S22
A70A6:  VSTR            S2, [R6]
A70AA:  VMUL.F32        S4, S30, S4
A70AE:  CMP             R0, #0
A70B0:  VDIV.F32        S28, S4, S24
A70B4:  ITTTT NE
A70B6:  VNEGNE.F32      S2, S17
A70BA:  VSUBNE.F32      S0, S0, S28
A70BE:  VMLANE.F32      S0, S2, S18
A70C2:  VSTRNE          S0, [R1]
A70C6:  MOVS            R0, #0xE
A70C8:  MOV.W           R1, #0x3F800000
A70CC:  LDR             R6, [R7,#arg_8]
A70CE:  LDR.W           R4, [R8,#0x27C]
A70D2:  BL              sub_88C10
A70D6:  MOV             R3, R0; int
A70D8:  LDR.W           R0, [R8,#0x3C]
A70DC:  ADD.W           R2, R5, #8; int
A70E0:  STRD.W          R0, R6, [SP,#0xA0+var_A0]; float
A70E4:  MOV             R0, R4; int
A70E6:  MOV             R1, R5; int
A70E8:  BL              sub_9D624
A70EC:  VMOV            R1, S16
A70F0:  LDRB.W          R2, [R7,#var_7A]
A70F4:  MOVS            R0, #0x10
A70F6:  LDRB.W          R3, [R7,#var_79]
A70FA:  CMP             R2, #0
A70FC:  IT EQ
A70FE:  MOVEQ           R0, #0xF
A7100:  CMP             R3, #0
A7102:  IT NE
A7104:  MOVNE           R0, #0x11
A7106:  BL              sub_88C10
A710A:  VLDR            S0, [SP,#0xA0+var_78]
A710E:  MOV             R3, R0; int
A7110:  CMP.W           R9, #0
A7114:  BEQ             loc_A7134
A7116:  VLDR            S2, [SP,#0xA0+var_74]
A711A:  VLDR            S6, [SP,#0xA0+var_6C]
A711E:  VLDR            S4, [SP,#0xA0+var_70]
A7122:  VSUB.F32        S6, S6, S2
A7126:  VMLA.F32        S2, S6, S28
A712A:  VADD.F32        S6, S20, S2
A712E:  B               loc_A714C
A7130:  DCD off_114D5C - 0xA6D5C
A7134:  VLDR            S4, [SP,#0xA0+var_70]
A7138:  VLDR            S2, [SP,#0xA0+var_74]
A713C:  VSUB.F32        S4, S4, S0
A7140:  VLDR            S6, [SP,#0xA0+var_6C]
A7144:  VMLA.F32        S0, S4, S28
A7148:  VADD.F32        S4, S20, S0
A714C:  LDR             R1, [SP,#0xA0+var_90]
A714E:  MOVS            R2, #0xF
A7150:  VSTR            S6, [SP,#0xA0+var_80]
A7154:  VSTR            S4, [SP,#0xA0+var_84]
A7158:  VSTR            S2, [SP,#0xA0+var_88]
A715C:  VSTR            S0, [SP,#0xA0+var_8C]
A7160:  LDR             R1, [R1,#0x30]
A7162:  LDR.W           R0, [R8,#0x27C]; int
A7166:  STRD.W          R1, R2, [SP,#0xA0+var_A0]; float
A716A:  ADD             R1, SP, #0xA0+var_8C; int
A716C:  ADD.W           R2, R1, #8; int
A7170:  BL              sub_9D624
A7174:  LDRB.W          R0, [R7,#var_79]
A7178:  CMP             R0, #0
A717A:  IT NE
A717C:  MOVNE           R0, #1
A717E:  LDR             R1, [SP,#0xA0+var_64]
A7180:  LDR             R2, =(__stack_chk_guard_ptr - 0xA7186)
A7182:  ADD             R2, PC; __stack_chk_guard_ptr
A7184:  LDR             R2, [R2]; __stack_chk_guard
A7186:  LDR             R2, [R2]
A7188:  CMP             R2, R1
A718A:  ITTTT EQ
A718C:  ADDEQ           SP, SP, #0x40 ; '@'
A718E:  VPOPEQ          {D8-D15}
A7192:  ADDEQ           SP, SP, #4
A7194:  POPEQ.W         {R8-R11}
A7198:  IT EQ
A719A:  POPEQ           {R4-R7,PC}
A719C:  BLX             __stack_chk_fail
