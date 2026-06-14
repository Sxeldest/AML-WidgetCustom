; =========================================================
; Game Engine Function: sub_A5E84
; Address            : 0xA5E84 - 0xA61DA
; =========================================================

A5E84:  PUSH            {R4-R7,LR}
A5E86:  ADD             R7, SP, #0xC
A5E88:  PUSH.W          {R8-R11}
A5E8C:  SUB             SP, SP, #4
A5E8E:  VPUSH           {D8-D13}
A5E92:  SUB             SP, SP, #0x30; float
A5E94:  MOV             R5, R0
A5E96:  LDR             R0, =(off_114D5C - 0xA5E9C)
A5E98:  ADD             R0, PC; off_114D5C
A5E9A:  LDR             R0, [R0]; dword_1ACF68
A5E9C:  LDR             R6, [R0]
A5E9E:  LDR             R0, =(__stack_chk_guard_ptr - 0xA5EA4)
A5EA0:  ADD             R0, PC; __stack_chk_guard_ptr
A5EA2:  LDR             R0, [R0]; __stack_chk_guard
A5EA4:  LDR             R0, [R0]
A5EA6:  STR             R0, [SP,#0x80+var_54]
A5EA8:  MOVW            R0, #0x19AC
A5EAC:  LDR             R4, [R6,R0]
A5EAE:  MOVS            R0, #1
A5EB0:  STRB.W          R0, [R4,#0x7C]
A5EB4:  LDRB.W          R0, [R4,#0x7F]
A5EB8:  CMP             R0, #0
A5EBA:  BNE.W           loc_A61B8
A5EBE:  MOV             R10, R2
A5EC0:  MOV             R9, R1
A5EC2:  CBNZ            R1, loc_A5ECE
A5EC4:  MOV             R0, R5; s
A5EC6:  BLX             strlen
A5ECA:  ADD.W           R9, R5, R0
A5ECE:  VLDR            S2, [R4,#0xCC]
A5ED2:  SUB.W           R0, R9, R5
A5ED6:  VLDR            S4, [R4,#0xF8]
A5EDA:  CMP.W           R0, #0x7D0
A5EDE:  VLDR            S16, [R4,#0xC8]
A5EE2:  VADD.F32        S18, S2, S4
A5EE6:  VLDR            S0, [R4,#0x174]
A5EEA:  BLE.W           loc_A603E
A5EEE:  VCMP.F32        S0, #0.0
A5EF2:  VMRS            APSR_nzcv, FPSCR
A5EF6:  BGE.W           loc_A603E
A5EFA:  MOVW            R0, #0x2D20
A5EFE:  ADD             R6, R0
A5F00:  BL              sub_97894
A5F04:  VMOV            S20, R0
A5F08:  LDRB            R0, [R6]
A5F0A:  VLDR            S24, =0.0
A5F0E:  MOVS            R1, #0
A5F10:  CMP             R0, #0
A5F12:  STR             R1, [SP,#0x80+var_5C]
A5F14:  BEQ.W           loc_A60BA
A5F18:  VMOV.F32        S22, S18
A5F1C:  CMP             R5, R9
A5F1E:  BCS.W           loc_A6182
A5F22:  VMOV            R11, S16
A5F26:  VLDR            S0, =3.4028e38
A5F2A:  VADD.F32        S2, S20, S22
A5F2E:  STR.W           R10, [SP,#0x80+var_78]
A5F32:  VADD.F32        S0, S16, S0
A5F36:  ADD             R4, SP, #0x80+var_6C
A5F38:  ADD.W           R10, SP, #0x80+var_74
A5F3C:  MOV.W           R8, #0
A5F40:  VSTR            S22, [SP,#0x80+var_68]
A5F44:  VSTR            S16, [SP,#0x80+var_6C]
A5F48:  VSTR            S2, [SP,#0x80+var_60]
A5F4C:  VSTR            S0, [SP,#0x80+var_64]
A5F50:  MOV             R0, R4
A5F52:  MOVS            R1, #0
A5F54:  MOVS            R2, #0
A5F56:  BL              sub_8B6F0
A5F5A:  CMP             R0, #0
A5F5C:  BNE.W           loc_A614E
A5F60:  SUB.W           R2, R9, R5; n
A5F64:  MOV             R0, R5; s
A5F66:  MOVS            R1, #0xA; c
A5F68:  BLX             memchr
A5F6C:  MOV             R6, R0
A5F6E:  MOVS            R0, #0xBF800000
A5F74:  CMP             R6, #0
A5F76:  STR             R0, [SP,#0x80+var_80]; float
A5F78:  IT EQ
A5F7A:  MOVEQ           R6, R9
A5F7C:  MOV             R0, R10; int
A5F7E:  MOV             R1, R5; int
A5F80:  MOV             R2, R6; int
A5F82:  MOVS            R3, #0; int
A5F84:  BL              sub_899BC
A5F88:  VMOV            R1, S22; int
A5F8C:  VLDR            S26, [SP,#0x80+var_74]
A5F90:  MOV             R0, R11; int
A5F92:  MOV             R2, R5; s
A5F94:  VCMP.F32        S24, S26
A5F98:  MOV             R3, R6; int
A5F9A:  VMRS            APSR_nzcv, FPSCR
A5F9E:  IT GE
A5FA0:  VMOVGE.F32      S26, S24
A5FA4:  VSTR            S26, [SP,#0x80+var_5C]
A5FA8:  STR.W           R8, [SP,#0x80+var_80]; int
A5FAC:  BL              sub_89110
A5FB0:  VLDR            S0, [SP,#0x80+var_68]
A5FB4:  VADD.F32        S22, S20, S22
A5FB8:  VLDR            S2, [SP,#0x80+var_60]
A5FBC:  VMOV.F32        S24, S26
A5FC0:  VADD.F32        S0, S20, S0
A5FC4:  ADDS            R5, R6, #1
A5FC6:  VADD.F32        S2, S20, S2
A5FCA:  CMP             R5, R9
A5FCC:  VSTR            S0, [SP,#0x80+var_68]
A5FD0:  VSTR            S2, [SP,#0x80+var_60]
A5FD4:  BCC             loc_A5F50
A5FD6:  CMP             R5, R9
A5FD8:  BCS.W           loc_A6158
A5FDC:  LDR             R0, [SP,#0x80+var_78]
A5FDE:  ADD.W           R8, SP, #0x80+var_74
A5FE2:  MOVS            R4, #0
A5FE4:  AND.W           R10, R0, #1
A5FE8:  B               loc_A5FF4
A5FEA:  ADDS            R5, R6, #1
A5FEC:  ADDS            R4, #1
A5FEE:  CMP             R5, R9
A5FF0:  BCS.W           loc_A615E
A5FF4:  SUB.W           R2, R9, R5; n
A5FF8:  MOV             R0, R5; s
A5FFA:  MOVS            R1, #0xA; c
A5FFC:  BLX             memchr
A6000:  MOV             R6, R0
A6002:  CMP             R0, #0
A6004:  IT EQ
A6006:  MOVEQ           R6, R9
A6008:  CMP.W           R10, #0
A600C:  BNE             loc_A5FEA
A600E:  MOVS            R0, #0
A6010:  MOV             R1, R5; int
A6012:  MOVT            R0, #0xBF80
A6016:  MOV             R2, R6; int
A6018:  STR             R0, [SP,#0x80+var_80]; float
A601A:  MOV             R0, R8; int
A601C:  MOVS            R3, #0; int
A601E:  BL              sub_899BC
A6022:  VLDR            S0, [SP,#0x80+var_74]
A6026:  VCMP.F32        S26, S0
A602A:  VMRS            APSR_nzcv, FPSCR
A602E:  IT GE
A6030:  VMOVGE.F32      S0, S26
A6034:  VMOV.F32        S26, S0
A6038:  VSTR            S0, [SP,#0x80+var_5C]
A603C:  B               loc_A5FEA
A603E:  VCMP.F32        S0, #0.0
A6042:  VMRS            APSR_nzcv, FPSCR
A6046:  BLT             loc_A605A
A6048:  VMOV            R1, S0
A604C:  ADD.W           R0, R4, #0xC8
A6050:  BL              sub_8BB50
A6054:  VMOV            S20, R0
A6058:  B               loc_A605E
A605A:  VLDR            S20, =0.0
A605E:  ADD             R6, SP, #0x80+var_5C
A6060:  MOV             R1, R5; int
A6062:  MOV             R2, R9; int
A6064:  MOVS            R3, #0; int
A6066:  MOV             R0, R6; int
A6068:  VSTR            S20, [SP,#0x80+var_80]
A606C:  BL              sub_899BC
A6070:  VLDR            S0, [SP,#0x80+var_5C]
A6074:  MOV             R0, R6
A6076:  VLDR            S2, [SP,#0x80+var_58]
A607A:  MOVS            R1, #0
A607C:  VADD.F32        S0, S16, S0
A6080:  VSTR            S18, [SP,#0x80+var_68]
A6084:  VADD.F32        S2, S18, S2
A6088:  VSTR            S16, [SP,#0x80+var_6C]
A608C:  VSTR            S0, [SP,#0x80+var_64]
A6090:  VSTR            S2, [SP,#0x80+var_60]
A6094:  BL              sub_8B104
A6098:  ADD             R0, SP, #0x80+var_6C
A609A:  MOVS            R1, #0
A609C:  MOVS            R2, #0
A609E:  BL              sub_8B314
A60A2:  CMP             R0, #0
A60A4:  BEQ.W           loc_A61B8
A60A8:  LDRD.W          R0, R1, [SP,#0x80+var_6C]; int
A60AC:  MOV             R2, R5; s
A60AE:  MOV             R3, R9; int
A60B0:  VSTR            S20, [SP,#0x80+var_80]
A60B4:  BL              sub_8942C
A60B8:  B               loc_A61B8
A60BA:  VLDR            S0, [R4,#0x214]
A60BE:  VSUB.F32        S0, S0, S18
A60C2:  VDIV.F32        S0, S0, S20
A60C6:  VCVT.S32.F32    S0, S0
A60CA:  VMOV            R8, S0
A60CE:  CMP.W           R8, #1
A60D2:  BLT.W           loc_A5F18
A60D6:  CMP             R9, R5
A60D8:  BLS             loc_A616C
A60DA:  STR.W           R10, [SP,#0x80+var_78]
A60DE:  AND.W           R10, R10, #1
A60E2:  VLDR            S24, =0.0
A60E6:  ADD.W           R11, SP, #0x80+var_6C
A60EA:  MOVS            R4, #0
A60EC:  SUB.W           R2, R9, R5; n
A60F0:  MOV             R0, R5; s
A60F2:  MOVS            R1, #0xA; c
A60F4:  BLX             memchr
A60F8:  MOV             R6, R0
A60FA:  CMP             R0, #0
A60FC:  IT EQ
A60FE:  MOVEQ           R6, R9
A6100:  CMP.W           R10, #0
A6104:  BNE             loc_A6134
A6106:  MOVS            R0, #0
A6108:  MOV             R1, R5; int
A610A:  MOVT            R0, #0xBF80
A610E:  MOV             R2, R6; int
A6110:  STR             R0, [SP,#0x80+var_80]; float
A6112:  MOV             R0, R11; int
A6114:  MOVS            R3, #0; int
A6116:  BL              sub_899BC
A611A:  VLDR            S0, [SP,#0x80+var_6C]
A611E:  VCMP.F32        S24, S0
A6122:  VMRS            APSR_nzcv, FPSCR
A6126:  IT GE
A6128:  VMOVGE.F32      S0, S24
A612C:  VMOV.F32        S24, S0
A6130:  VSTR            S0, [SP,#0x80+var_5C]
A6134:  ADDS            R5, R6, #1
A6136:  ADDS            R4, #1
A6138:  CMP             R5, R9
A613A:  BCS             loc_A6140
A613C:  CMP             R4, R8
A613E:  BLT             loc_A60EC
A6140:  VMOV            S0, R4
A6144:  LDR.W           R10, [SP,#0x80+var_78]
A6148:  VCVT.F32.S32    S0, S0
A614C:  B               loc_A6174
A614E:  VMOV.F32        S26, S24
A6152:  CMP             R5, R9
A6154:  BCC.W           loc_A5FDC
A6158:  VLDR            S0, =0.0
A615C:  B               loc_A6166
A615E:  VMOV            S0, R4
A6162:  VCVT.F32.S32    S0, S0
A6166:  VMLA.F32        S22, S0, S20
A616A:  B               loc_A6186
A616C:  VLDR            S24, =0.0
A6170:  VMOV.F32        S0, S24
A6174:  VMOV.F32        S22, S18
A6178:  VMLA.F32        S22, S0, S20
A617C:  CMP             R5, R9
A617E:  BCC.W           loc_A5F22
A6182:  VMOV.F32        S26, S24
A6186:  VSUB.F32        S0, S22, S18
A618A:  ADD             R0, SP, #0x80+var_5C
A618C:  VADD.F32        S2, S16, S26
A6190:  MOVS            R1, #0
A6192:  VSTR            S18, [SP,#0x80+var_68]
A6196:  VSTR            S16, [SP,#0x80+var_6C]
A619A:  VADD.F32        S4, S18, S0
A619E:  VSTR            S0, [SP,#0x80+var_58]
A61A2:  VSTR            S2, [SP,#0x80+var_64]
A61A6:  VSTR            S4, [SP,#0x80+var_60]
A61AA:  BL              sub_8B104
A61AE:  ADD             R0, SP, #0x80+var_6C
A61B0:  MOVS            R1, #0
A61B2:  MOVS            R2, #0
A61B4:  BL              sub_8B314
A61B8:  LDR             R0, [SP,#0x80+var_54]
A61BA:  LDR             R1, =(__stack_chk_guard_ptr - 0xA61C0)
A61BC:  ADD             R1, PC; __stack_chk_guard_ptr
A61BE:  LDR             R1, [R1]; __stack_chk_guard
A61C0:  LDR             R1, [R1]
A61C2:  CMP             R1, R0
A61C4:  ITTTT EQ
A61C6:  ADDEQ           SP, SP, #0x30 ; '0'
A61C8:  VPOPEQ          {D8-D13}
A61CC:  ADDEQ           SP, SP, #4
A61CE:  POPEQ.W         {R8-R11}
A61D2:  IT EQ
A61D4:  POPEQ           {R4-R7,PC}
A61D6:  BLX             __stack_chk_fail
