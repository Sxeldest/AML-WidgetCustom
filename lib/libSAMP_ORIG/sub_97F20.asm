; =========================================================
; Game Engine Function: sub_97F20
; Address            : 0x97F20 - 0x9823E
; =========================================================

97F20:  PUSH            {R4-R7,LR}
97F22:  ADD             R7, SP, #0xC
97F24:  PUSH.W          {R8-R10}
97F28:  VPUSH           {D8-D11}
97F2C:  SUB             SP, SP, #0x10
97F2E:  LDR             R5, =(dword_1ACF68 - 0x97F3A)
97F30:  MOVW            R12, #0x19AC
97F34:  MOVS            R3, #0x2C ; ','
97F36:  ADD             R5, PC; dword_1ACF68
97F38:  LDR             R0, [R5]
97F3A:  LDR             R1, =(__stack_chk_guard_ptr - 0x97F40)
97F3C:  ADD             R1, PC; __stack_chk_guard_ptr
97F3E:  LDR             R1, [R1]; __stack_chk_guard
97F40:  LDR             R1, [R1]
97F42:  STR             R1, [SP,#0x48+var_3C]
97F44:  MOVS            R1, #1
97F46:  LDR.W           R4, [R0,R12]
97F4A:  LDR.W           R2, [R4,#0x19C]
97F4E:  LDR.W           R9, [R4,#0x1A4]
97F52:  SUB.W           R10, R2, #1
97F56:  STRB.W          R1, [R4,#0x7C]
97F5A:  VLDR            S0, [R4,#0xE0]
97F5E:  MLA.W           R2, R10, R3, R9
97F62:  VLDR            S2, [R4,#0xE4]
97F66:  VMOV.F32        S8, S0
97F6A:  MUL.W           R3, R10, R3
97F6E:  VLDR            S18, [R2]
97F72:  VLDR            S16, [R2,#4]
97F76:  LDR.W           R1, [R9,R3]
97F7A:  VMOV.F32        S22, S18
97F7E:  LDR             R3, [R2,#4]
97F80:  VMOV.F32        S20, S16
97F84:  STRD.W          R1, R3, [R4,#0xC8]
97F88:  VLDR            S4, [R2,#8]
97F8C:  VLDR            S6, [R2,#0xC]
97F90:  VCMP.F32        S4, S0
97F94:  VMRS            APSR_nzcv, FPSCR
97F98:  IT GE
97F9A:  VMOVGE.F32      S8, S4
97F9E:  VCMP.F32        S6, S2
97FA2:  VMOV.F32        S4, S2
97FA6:  VMRS            APSR_nzcv, FPSCR
97FAA:  IT GE
97FAC:  VMOVGE.F32      S4, S6
97FB0:  VSTR            S8, [R4,#0xE0]
97FB4:  VSTR            S4, [R4,#0xE4]
97FB8:  VCMP.F32        S2, S16
97FBC:  LDR             R1, [R2,#0x10]
97FBE:  VMRS            APSR_nzcv, FPSCR
97FC2:  STR.W           R1, [R4,#0x1B4]
97FC6:  VCMP.F32        S0, S18
97FCA:  LDR             R1, [R2,#0x14]
97FCC:  IT GE
97FCE:  VMOVGE.F32      S20, S2
97FD2:  STR.W           R1, [R4,#0x1B8]
97FD6:  VMRS            APSR_nzcv, FPSCR
97FDA:  LDRD.W          R1, R3, [R2,#0x18]
97FDE:  IT GE
97FE0:  VMOVGE.F32      S22, S0
97FE4:  STRD.W          R1, R3, [R4,#0xE8]
97FE8:  MOVW            R3, #0x2D20
97FEC:  LDRB            R1, [R0,R3]
97FEE:  VLDR            S0, [R2,#0x20]
97FF2:  VSTR            S0, [R4,#0xF8]
97FF6:  CMP             R1, #0
97FF8:  ITTT NE
97FFA:  ADDNE           R1, R0, R3
97FFC:  MOVNE           R3, #0xFF7FFFFF
98000:  STRNE           R3, [R1,#0x18]
98002:  LDRB.W          R1, [R2,#0x29]
98006:  CMP             R1, #0
98008:  BEQ.W           loc_98210
9800C:  VLDR            S2, [R4,#0xFC]
98010:  VSUB.F32        S4, S22, S18
98014:  ADD.W           R8, R0, R12
98018:  ADD             R0, SP, #0x48+var_44
9801A:  VCMP.F32        S2, S0
9801E:  MOVS            R1, #0
98020:  VMRS            APSR_nzcv, FPSCR
98024:  IT GE
98026:  VMOVGE.F32      S0, S2
9802A:  VSUB.F32        S2, S20, S16
9802E:  VSTR            S0, [R4,#0xF8]
98032:  MOVS            R6, #0
98034:  VSTR            S4, [SP,#0x48+var_44]
98038:  VSTR            S2, [SP,#0x48+var_40]
9803C:  BL              sub_8B104
98040:  LDR             R1, [R5]
98042:  MOVW            R2, #0x19AC
98046:  MOVW            R3, #0x1A68
9804A:  LDR             R0, [R1,R2]
9804C:  VSTR            S18, [R0,#0x110]
98050:  VSTR            S16, [R0,#0x114]
98054:  VSTR            S22, [R0,#0x118]
98058:  VSTR            S20, [R0,#0x11C]
9805C:  LDR             R2, [R1,R2]
9805E:  STR             R6, [R1,R3]
98060:  STRD.W          R6, R6, [R0,#0x108]
98064:  VLDR            S0, [R2,#0x214]
98068:  VCMP.F32        S0, S20
9806C:  VMRS            APSR_nzcv, FPSCR
98070:  BPL             loc_9809C
98072:  VLDR            S2, [R2,#0x21C]
98076:  VCMP.F32        S2, S16
9807A:  VMRS            APSR_nzcv, FPSCR
9807E:  BLE             loc_9809C
98080:  VLDR            S6, [R2,#0x210]
98084:  VCMP.F32        S6, S22
98088:  VMRS            APSR_nzcv, FPSCR
9808C:  BPL             loc_9809C
9808E:  VLDR            S4, [R2,#0x218]
98092:  VCMP.F32        S4, S18
98096:  VMRS            APSR_nzcv, FPSCR
9809A:  BGT             loc_980B4
9809C:  MOVW            R3, #0x2D20
980A0:  ADD             R3, R1
980A2:  LDRB            R3, [R3]
980A4:  CMP             R3, #0
980A6:  BEQ             loc_98140
980A8:  VLDR            S6, [R2,#0x210]
980AC:  VLDR            S4, [R2,#0x218]
980B0:  VLDR            S2, [R2,#0x21C]
980B4:  MOVW            R2, #0x1570
980B8:  VCMP.F32        S18, S6
980BC:  ADD             R2, R1
980BE:  VMRS            APSR_nzcv, FPSCR
980C2:  IT GE
980C4:  VMOVGE.F32      S6, S18
980C8:  VLDR            S8, [R2]
980CC:  VSUB.F32        S10, S6, S8
980D0:  VLDR            S6, [R1,#0xE0]
980D4:  VCMP.F32        S6, S10
980D8:  VMRS            APSR_nzcv, FPSCR
980DC:  BLT             loc_98140
980DE:  VLDR            S10, [R2,#4]
980E2:  VCMP.F32        S16, S0
980E6:  VMRS            APSR_nzcv, FPSCR
980EA:  IT GE
980EC:  VMOVGE.F32      S0, S16
980F0:  VSUB.F32        S12, S0, S10
980F4:  VCMP.F32        S20, S2
980F8:  VMRS            APSR_nzcv, FPSCR
980FC:  VCMP.F32        S22, S4
98100:  IT MI
98102:  VMOVMI.F32      S2, S20
98106:  VMRS            APSR_nzcv, FPSCR
9810A:  IT MI
9810C:  VMOVMI.F32      S4, S22
98110:  VLDR            S0, [R1,#0xE4]
98114:  VCMP.F32        S0, S12
98118:  VMRS            APSR_nzcv, FPSCR
9811C:  BLT             loc_98140
9811E:  VADD.F32        S4, S4, S8
98122:  VCMP.F32        S6, S4
98126:  VMRS            APSR_nzcv, FPSCR
9812A:  ITTTT MI
9812C:  VADDMI.F32      S2, S2, S10
98130:  VCMPMI.F32      S0, S2
98134:  VMRSMI          APSR_nzcv, FPSCR
98138:  MOVMI           R1, #1
9813A:  IT MI
9813C:  STRMI.W         R1, [R0,#0x10C]
98140:  MOVS            R0, #0x2C ; ','
98142:  LDR.W           R1, [R8,#0x24]
98146:  MLA.W           R0, R10, R0, R9
9814A:  LDR             R2, [R0,#0x24]
9814C:  CMP             R2, R1
9814E:  BNE             loc_9815A
98150:  LDRB.W          R0, [R0,#0x28]
98154:  CBZ             R0, loc_98180
98156:  MOVS            R0, #0
98158:  B               loc_981D4
9815A:  LDR.W           R2, [R8,#0x28]
9815E:  MOV             R3, R1
98160:  CMP             R1, #0
98162:  IT NE
98164:  MOVNE           R3, #1
98166:  SUBS            R2, R2, R1
98168:  LDRB.W          R0, [R0,#0x28]
9816C:  CLZ.W           R2, R2
98170:  MOV.W           R2, R2,LSR#5
98174:  AND.W           R2, R2, R3
98178:  CBZ             R0, loc_98188
9817A:  MOVS            R0, #0
9817C:  CBNZ            R2, loc_98196
9817E:  B               loc_981D4
98180:  LDRB.W          R0, [R8,#0x54]
98184:  CBNZ            R0, loc_981CA
98186:  B               loc_98156
98188:  LDRB.W          R3, [R8,#0x54]
9818C:  CMP             R3, #0
9818E:  MOV             R0, R3
98190:  IT NE
98192:  MOVNE           R0, #1
98194:  CBZ             R2, loc_981C6
98196:  VSTR            S18, [R4,#0x110]
9819A:  ADD.W           R2, R4, #0x10C
9819E:  VSTR            S16, [R4,#0x114]
981A2:  VSTR            S22, [R4,#0x118]
981A6:  VSTR            S20, [R4,#0x11C]
981AA:  STR.W           R1, [R4,#0x108]
981AE:  LDRB.W          R3, [R8,#0x34]
981B2:  LDR.W           R1, [R4,#0x10C]
981B6:  CBZ             R3, loc_98232
981B8:  ORR.W           R3, R1, #0x14
981BC:  STR             R3, [R2]
981BE:  CBZ             R0, loc_98208
981C0:  ORR.W           R1, R1, #4
981C4:  B               loc_981F6
981C6:  CMP             R3, #0
981C8:  BEQ             loc_98156
981CA:  LDR.W           R0, [R8,#0x50]
981CE:  STR.W           R0, [R4,#0x108]
981D2:  MOVS            R0, #1
981D4:  LDR.W           R1, [R4,#0x10C]
981D8:  VSTR            S18, [R4,#0x110]
981DC:  ORR.W           R2, R1, #0x10
981E0:  VSTR            S16, [R4,#0x114]
981E4:  VSTR            S22, [R4,#0x118]
981E8:  VSTR            S20, [R4,#0x11C]
981EC:  STR.W           R2, [R4,#0x10C]
981F0:  CBZ             R0, loc_98208
981F2:  ADD.W           R2, R4, #0x10C
981F6:  LDR.W           R0, [R8,#0x24]
981FA:  LDR.W           R3, [R8,#0x50]
981FE:  CMP             R0, R3
98200:  ITT NE
98202:  ORRNE.W         R0, R1, #0x30 ; '0'
98206:  STRNE           R0, [R2]
98208:  LDR.W           R0, [R4,#0x19C]
9820C:  SUB.W           R10, R0, #1
98210:  STR.W           R10, [R4,#0x19C]
98214:  LDR             R0, [SP,#0x48+var_3C]
98216:  LDR             R1, =(__stack_chk_guard_ptr - 0x9821C)
98218:  ADD             R1, PC; __stack_chk_guard_ptr
9821A:  LDR             R1, [R1]; __stack_chk_guard
9821C:  LDR             R1, [R1]
9821E:  CMP             R1, R0
98220:  ITTTT EQ
98222:  ADDEQ           SP, SP, #0x10
98224:  VPOPEQ          {D8-D11}
98228:  POPEQ.W         {R8-R10}
9822C:  POPEQ           {R4-R7,PC}
9822E:  BLX             __stack_chk_fail
98232:  CMP             R0, #0
98234:  ORR.W           R3, R1, #0x10
98238:  STR             R3, [R2]
9823A:  BNE             loc_981F6
9823C:  B               loc_98208
