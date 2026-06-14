; =========================================================
; Game Engine Function: sub_107E7A
; Address            : 0x107E7A - 0x108196
; =========================================================

107E7A:  LDR.W           R1, [R0,#0x9A8]
107E7E:  ADDS            R1, #1
107E80:  IT EQ
107E82:  BEQ.W           loc_107EA0
107E86:  LDR.W           R1, [R0,#0x98C]
107E8A:  BIC.W           R1, R1, #1
107E8E:  CMP             R1, #4
107E90:  IT EQ
107E92:  BEQ.W           loc_10808C
107E96:  B.W             loc_107EA0
107E9A:  BMI             loc_107E46
107E9C:  BMI             loc_107E48
107E9E:  BMI             loc_107E4A
107EA0:  PUSH            {R4-R7,LR}
107EA2:  ADD             R7, SP, #0x14+var_8
107EA4:  PUSH.W          {R8,R9,R11}
107EA8:  VPUSH           {D8-D12}
107EAC:  MOV             R4, R0
107EAE:  LDRB            R0, [R0]
107EB0:  CMP             R0, #0
107EB2:  BEQ.W           loc_108066
107EB6:  ADDW            R8, R4, #0x322
107EBA:  MOV             R0, R4
107EBC:  ADDW            R6, R4, #0x964
107EC0:  MOV             R1, R8
107EC2:  BL              sub_163C40
107EC6:  LDR             R0, =(off_234A34 - 0x107ED0)
107EC8:  VLDR            S2, =0.0022321
107ECC:  ADD             R0, PC; off_234A34
107ECE:  VLDR            S24, =0.0015625
107ED2:  LDR             R0, [R0]; dword_2636B4
107ED4:  LDR             R0, [R0]
107ED6:  LDRD.W          R5, R9, [R0,#4]
107EDA:  VMOV            S0, R9
107EDE:  VCVT.F32.S32    S0, S0
107EE2:  VMOV            S4, R5
107EE6:  VCVT.F32.S32    S16, S4
107EEA:  VMOV.F32        S4, #0.5
107EEE:  VMUL.F32        S18, S0, S2
107EF2:  VLDR            S2, [R6,#4]
107EF6:  VLDR            S0, [R6]
107EFA:  VMUL.F32        S22, S16, S24
107EFE:  VMUL.F32        S2, S2, S18
107F02:  VMUL.F32        S0, S22, S0
107F06:  VMUL.F32        S2, S2, S4
107F0A:  VMOV            R0, S0
107F0E:  VMOV            R1, S2
107F12:  BL              sub_163C58
107F16:  LDRB.W          R1, [R4,#0x9D8]
107F1A:  ADDW            R0, R4, #0x9DC
107F1E:  CMP             R1, #0
107F20:  IT EQ
107F22:  ADDWEQ          R0, R4, #0x96C
107F26:  BL              sub_163C74
107F2A:  MOVS            R0, #0
107F2C:  BL              sub_163C8C
107F30:  LDRB.W          R0, [R4,#0x971]
107F34:  LDRB.W          R1, [R4,#0x98B]
107F38:  CLZ.W           R2, R0
107F3C:  MOVS            R0, #2
107F3E:  CMP             R1, #0
107F40:  IT EQ
107F42:  LSREQ           R0, R2, #5
107F44:  BL              sub_163CA4
107F48:  VLDR            S0, [R6,#0x10]
107F4C:  VMUL.F32        S0, S0, S16
107F50:  VMUL.F32        S20, S0, S24
107F54:  VMOV            R0, S20
107F58:  BL              sub_163CBC
107F5C:  VLDR            S0, [R6,#0x14]
107F60:  VMUL.F32        S0, S0, S16
107F64:  VMUL.F32        S16, S0, S24
107F68:  VMOV            R0, S16
107F6C:  BL              sub_163CD4
107F70:  LDRB.W          R0, [R4,#0x972]
107F74:  MOVS            R1, #0
107F76:  BL              sub_163CEC
107F7A:  ADDW            R0, R4, #0x97C
107F7E:  BL              sub_163D04
107F82:  LDRB.W          R0, [R4,#0x980]
107F86:  BL              sub_163D1C
107F8A:  ADDW            R0, R4, #0x984
107F8E:  BL              sub_163D34
107F92:  LDRB.W          R0, [R4,#0x989]
107F96:  CBZ             R0, loc_107F9E
107F98:  BL              sub_163D98
107F9C:  B               loc_107FA6
107F9E:  LDRB.W          R0, [R4,#0x988]
107FA2:  BL              sub_163D4C
107FA6:  LDRB.W          R0, [R4,#0x98C]
107FAA:  BL              sub_163D80
107FAE:  VLDR            S0, [R6,#0x2C]
107FB2:  VLDR            S2, [R6,#0x30]
107FB6:  VCVT.F64.F32    D16, S0
107FBA:  LDRB.W          R0, [R4,#0x9E0]
107FBE:  VCVT.F64.F32    D18, S2
107FC2:  VLDR            D17, =640.0
107FC6:  VMOV            S0, R5
107FCA:  VCVT.F64.F32    D20, S22
107FCE:  VSUB.F64        D16, D17, D16
107FD2:  VLDR            D17, =448.0
107FD6:  VCVT.F64.S32    D19, S0
107FDA:  VSUB.F64        D17, D17, D18
107FDE:  VMOV            S0, R9
107FE2:  VCVT.F64.F32    D21, S18
107FE6:  VCVT.F64.S32    D18, S0
107FEA:  VMLS.F64        D19, D16, D20
107FEE:  VMLS.F64        D18, D17, D21
107FF2:  VCVT.F32.F64    S22, D19
107FF6:  VCVT.F32.F64    S18, D18
107FFA:  CBZ             R0, loc_108004
107FFC:  MOVS            R0, #0
107FFE:  STRB.W          R0, [R4,#0x9E0]
108002:  B               loc_108012
108004:  VMOV            R0, S22
108008:  MOV             R2, R8
10800A:  VMOV            R1, S18
10800E:  BL              sub_163D64
108012:  MOVS            R0, #0
108014:  BL              sub_163D98
108018:  LDRB.W          R0, [R4,#0x98B]
10801C:  CBZ             R0, loc_10802C
10801E:  VSUB.F32        S0, S20, S22
108022:  VSUB.F32        S0, S22, S0
108026:  VSTR            S0, [R6,#0x64]
10802A:  B               loc_108050
10802C:  LDRB.W          R0, [R4,#0x971]
108030:  CBZ             R0, loc_108040
108032:  VMOV.F32        S0, #-0.5
108036:  VMLA.F32        S22, S16, S0
10803A:  VADD.F32        S0, S16, S22
10803E:  B               loc_108048
108040:  VSUB.F32        S0, S20, S22
108044:  VADD.F32        S0, S0, S22
108048:  VSTR            S22, [R6,#0x64]
10804C:  VMOV.F32        S22, S0
108050:  VADD.F32        S0, S16, S18
108054:  MOVS            R0, #1
108056:  STRB.W          R0, [R4,#0x9C4]
10805A:  VSTR            S22, [R6,#0x6C]
10805E:  VSTR            S18, [R6,#0x70]
108062:  VSTR            S0, [R6,#0x68]
108066:  VPOP            {D8-D12}
10806A:  POP.W           {R8,R9,R11}
10806E:  POP             {R4-R7,PC}
108070:  DCFD 640.0
108078:  DCFD 448.0
108080:  DCFS 0.0022321
108084:  DCFS 0.0015625
108088:  DCD off_234A34 - 0x107ED0
10808C:  PUSH            {R4-R7,LR}
10808E:  ADD             R7, SP, #0x14+var_8
108090:  PUSH.W          {R11}
108094:  SUB             SP, SP, #0x10
108096:  MOV             R4, R0
108098:  LDR.W           R0, [R0,#0x9A8]
10809C:  CMP             R0, #0xC8
10809E:  BHI             loc_10818E
1080A0:  LDR             R1, =(off_234B04 - 0x1080A6)
1080A2:  ADD             R1, PC; off_234B04
1080A4:  LDR             R1, [R1]; unk_262908
1080A6:  LDRB            R0, [R1,R0]
1080A8:  CMP             R0, #0
1080AA:  BEQ             loc_10818E
1080AC:  LDR             R0, =(dword_25DAD8 - 0x1080B8)
1080AE:  MOV             R1, R4; s
1080B0:  ADDW            R5, R4, #0x974
1080B4:  ADD             R0, PC; dword_25DAD8 ; int
1080B6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
1080BA:  LDR             R0, =(off_234A34 - 0x1080C4)
1080BC:  VLDR            S4, =0.0015625
1080C0:  ADD             R0, PC; off_234A34
1080C2:  VLDR            S6, =0.0022321
1080C6:  VLDR            S8, [R5]
1080CA:  LDR             R0, [R0]; dword_2636B4
1080CC:  VLDR            S10, [R5,#4]
1080D0:  VLDR            S12, [R5,#0x1C]
1080D4:  LDR             R0, [R0]
1080D6:  VLDR            S14, [R5,#0x20]
1080DA:  VLDR            S0, [R0,#4]
1080DE:  VLDR            S2, [R0,#8]
1080E2:  VCVT.F32.S32    S0, S0
1080E6:  LDR             R0, =(off_234B00 - 0x1080F4)
1080E8:  VCVT.F32.S32    S2, S2
1080EC:  LDR.W           R1, [R4,#0x9A8]
1080F0:  ADD             R0, PC; off_234B00
1080F2:  LDR             R0, [R0]; unk_2629D0
1080F4:  VMUL.F32        S0, S0, S4
1080F8:  LDR.W           R0, [R0,R1,LSL#2]
1080FC:  VMUL.F32        S2, S2, S6
108100:  VADD.F32        S4, S12, S8
108104:  VADD.F32        S6, S14, S10
108108:  VMUL.F32        S8, S0, S12
10810C:  VMUL.F32        S10, S2, S14
108110:  VMUL.F32        S0, S0, S4
108114:  VMUL.F32        S2, S2, S6
108118:  VSTR            S8, [SP,#0x28+var_28]
10811C:  VSTR            S10, [SP,#0x28+var_1C]
108120:  VSTR            S0, [SP,#0x28+var_20]
108124:  VSTR            S2, [SP,#0x28+var_24]
108128:  CBZ             R0, loc_10814C
10812A:  LDR             R1, [R0]
10812C:  CBZ             R1, loc_10814C
10812E:  LDRB.W          R1, [R4,#0x9D8]
108132:  CBZ             R1, loc_10815E
108134:  LDR             R6, =(unk_238E40 - 0x108140)
108136:  LDR             R3, =(unk_238E20 - 0x108146)
108138:  LDR.W           R2, [R4,#0x9DC]
10813C:  ADD             R6, PC; unk_238E40
10813E:  LDR.W           R1, [R4,#0x98C]
108142:  ADD             R3, PC; unk_238E20
108144:  CMP             R1, #5
108146:  IT NE
108148:  MOVNE           R3, R6
10814A:  B               loc_108174
10814C:  LDR             R1, =(aAxl - 0x108158); "AXL" ...
10814E:  MOVS            R0, #6; prio
108150:  LDR             R2, =(aTextdrawSDoesN - 0x10815A); "Textdraw \"%s\" does not contain textur"... ...
108152:  MOV             R3, R4
108154:  ADD             R1, PC; "AXL"
108156:  ADD             R2, PC; "Textdraw \"%s\" does not contain textur"...
108158:  BLX             __android_log_print
10815C:  B               loc_10817A
10815E:  LDR             R1, =(unk_238E40 - 0x10816A)
108160:  LDR             R3, =(unk_238E20 - 0x10816C)
108162:  LDR.W           R6, [R4,#0x98C]
108166:  ADD             R1, PC; unk_238E40
108168:  ADD             R3, PC; unk_238E20
10816A:  LDR.W           R2, [R4,#0x96C]
10816E:  CMP             R6, #5
108170:  IT NE
108172:  MOVNE           R3, R1
108174:  MOV             R1, SP
108176:  BL              sub_108CD0
10817A:  MOV             R0, SP
10817C:  VLD1.64         {D16-D17}, [R0,#0x28+var_28]
108180:  MOVS            R0, #1
108182:  STRB.W          R0, [R4,#0x9C4]
108186:  ADD.W           R0, R5, #0x54 ; 'T'
10818A:  VST1.32         {D16-D17}, [R0]
10818E:  ADD             SP, SP, #0x10
108190:  POP.W           {R11}
108194:  POP             {R4-R7,PC}
