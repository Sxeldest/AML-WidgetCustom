; =========================================================
; Game Engine Function: INT123_synth_1to1_real
; Address            : 0x237D90 - 0x238192
; =========================================================

237D90:  PUSH            {R4-R7,LR}
237D92:  ADD             R7, SP, #0xC
237D94:  PUSH.W          {R8-R11}
237D98:  SUB             SP, SP, #4
237D9A:  MOV             R5, R2
237D9C:  MOV             R2, R0
237D9E:  MOVW            R12, #0xB2A8
237DA2:  MOVW            R0, #0xB2A0
237DA6:  LDR             R6, [R5,R0]
237DA8:  MOVW            R0, #0x4848
237DAC:  LDR.W           LR, [R5,R12]
237DB0:  LDR             R0, [R5,R0]
237DB2:  MOV             R8, R3
237DB4:  CBZ             R0, loc_237DDE
237DB6:  ADD.W           R0, R5, R1,LSL#8
237DBA:  MOVW            R4, #0x4850
237DBE:  ADD             R4, R0
237DC0:  MOVS            R0, #0
237DC2:  ADDS            R3, R4, R0
237DC4:  VLDR            D16, [R3]
237DC8:  ADDS            R3, R2, R0
237DCA:  ADDS            R0, #8
237DCC:  VLDR            D17, [R3]
237DD0:  CMP.W           R0, #0x100
237DD4:  VMUL.F64        D16, D17, D16
237DD8:  VSTR            D16, [R3]
237DDC:  BNE             loc_237DC2
237DDE:  ADD.W           R4, R6, LR
237DE2:  MOVW            R0, #0x4838
237DE6:  CBZ             R1, loc_237DF2
237DE8:  LDR.W           R10, [R5,R0]
237DEC:  ADDS            R4, #8
237DEE:  MOVS            R1, #1
237DF0:  B               loc_237E00
237DF2:  LDR             R1, [R5,R0]
237DF4:  ADDS            R1, #0xF
237DF6:  AND.W           R10, R1, #0xF
237DFA:  STR.W           R10, [R5,R0]
237DFE:  MOVS            R1, #0
237E00:  ADD.W           R0, R5, R1,LSL#3
237E04:  MOVW            R1, #0x4820
237E08:  ADD.W           R9, R5, R12
237E0C:  ADD             R1, R0
237E0E:  MOVS.W          R3, R10,LSL#31
237E12:  BNE             loc_237E32
237E14:  MOVW            R3, #0x4824
237E18:  LDR             R1, [R1]
237E1A:  LDR.W           R11, [R0,R3]
237E1E:  ADD.W           R0, R1, R10,LSL#3
237E22:  ADD.W           R1, R11, R10,LSL#3
237E26:  ADDS            R1, #8
237E28:  BLX             j_INT123_dct64
237E2C:  ADD.W           R10, R10, #1
237E30:  B               loc_237E50
237E32:  ADD.W           R3, R10, #1
237E36:  LDR.W           R11, [R1]
237E3A:  MOVW            R1, #0x4824
237E3E:  AND.W           R3, R3, #0xF
237E42:  LDR             R0, [R0,R1]
237E44:  ADD.W           R1, R11, R10,LSL#3
237E48:  ADD.W           R0, R0, R3,LSL#3
237E4C:  BLX             j_INT123_dct64
237E50:  MOVW            R0, #0x4844
237E54:  RSB.W           R1, R10, #0x1F0
237E58:  LDR             R0, [R5,R0]
237E5A:  RSB.W           R12, R10, #0x210
237E5E:  VLDR            D16, =0.0000305175781
237E62:  SUB.W           R2, R0, R10,LSL#3
237E66:  ADD.W           R1, R0, R1,LSL#3
237E6A:  ADD.W           R3, R2, #0x80
237E6E:  MOVS            R5, #0
237E70:  MOV             R6, R11
237E72:  VLDM            R6, {D17-D20}
237E76:  ADDS            R2, R4, R5
237E78:  ADDS            R5, #0x10
237E7A:  VLDM            R3, {D21-D24}
237E7E:  CMP.W           R5, #0x100
237E82:  VMUL.F64        D18, D22, D18
237E86:  VMUL.F64        D17, D21, D17
237E8A:  VMUL.F64        D19, D23, D19
237E8E:  VSUB.F64        D17, D17, D18
237E92:  VMUL.F64        D20, D24, D20
237E96:  VADD.F64        D17, D17, D19
237E9A:  VLDR            D18, [R6,#0x20]
237E9E:  VLDR            D21, [R3,#0x20]
237EA2:  VSUB.F64        D17, D17, D20
237EA6:  VMUL.F64        D18, D21, D18
237EAA:  VLDR            D19, [R6,#0x28]
237EAE:  VLDR            D22, [R3,#0x28]
237EB2:  VADD.F64        D17, D17, D18
237EB6:  VMUL.F64        D19, D22, D19
237EBA:  VLDR            D20, [R6,#0x30]
237EBE:  VLDR            D21, [R3,#0x30]
237EC2:  VSUB.F64        D17, D17, D19
237EC6:  VMUL.F64        D20, D21, D20
237ECA:  VLDR            D18, [R6,#0x38]
237ECE:  VLDR            D22, [R3,#0x38]
237ED2:  VADD.F64        D17, D17, D20
237ED6:  VMUL.F64        D18, D22, D18
237EDA:  VLDR            D19, [R6,#0x40]
237EDE:  VLDR            D21, [R3,#0x40]
237EE2:  VSUB.F64        D17, D17, D18
237EE6:  VMUL.F64        D19, D21, D19
237EEA:  VLDR            D20, [R6,#0x48]
237EEE:  VLDR            D22, [R3,#0x48]
237EF2:  VADD.F64        D17, D17, D19
237EF6:  VMUL.F64        D20, D22, D20
237EFA:  VLDR            D18, [R6,#0x50]
237EFE:  VLDR            D21, [R3,#0x50]
237F02:  VSUB.F64        D17, D17, D20
237F06:  VMUL.F64        D18, D21, D18
237F0A:  VLDR            D19, [R6,#0x58]
237F0E:  VLDR            D22, [R3,#0x58]
237F12:  VADD.F64        D17, D17, D18
237F16:  VMUL.F64        D19, D22, D19
237F1A:  VLDR            D20, [R6,#0x60]
237F1E:  VLDR            D21, [R3,#0x60]
237F22:  VSUB.F64        D17, D17, D19
237F26:  VMUL.F64        D20, D21, D20
237F2A:  VLDR            D18, [R6,#0x68]
237F2E:  VLDR            D22, [R3,#0x68]
237F32:  VADD.F64        D17, D17, D20
237F36:  VMUL.F64        D18, D22, D18
237F3A:  VLDR            D19, [R6,#0x70]
237F3E:  VLDR            D21, [R3,#0x70]
237F42:  VSUB.F64        D17, D17, D18
237F46:  VMUL.F64        D19, D21, D19
237F4A:  VLDR            D20, [R6,#0x78]
237F4E:  ADD.W           R6, R6, #0x80
237F52:  VLDR            D22, [R3,#0x78]
237F56:  ADD.W           R3, R3, #0x100
237F5A:  VADD.F64        D17, D17, D19
237F5E:  VMUL.F64        D18, D22, D20
237F62:  VSUB.F64        D17, D17, D18
237F66:  VMUL.F64        D17, D17, D16
237F6A:  VSTR            D17, [R2]
237F6E:  BNE.W           loc_237E72
237F72:  ADD.W           R2, R0, R12,LSL#3
237F76:  ADD.W           R3, R11, #0x810
237F7A:  VLDR            D17, [R1,#0x110]
237F7E:  ADD.W           R0, R0, R10,LSL#3
237F82:  VLDR            D21, [R2]
237F86:  ADD.W           R2, R11, #0x800
237F8A:  VLDR            D22, [R3]
237F8E:  MOVS            R3, #0
237F90:  VLDR            D23, [R2]
237F94:  ADD.W           R2, R11, #0x820
237F98:  VMUL.F64        D17, D17, D22
237F9C:  VMUL.F64        D21, D21, D23
237FA0:  VLDR            D22, [R2]
237FA4:  ADD.W           R2, R11, #0x830
237FA8:  VLDR            D18, [R1,#0x120]
237FAC:  VADD.F64        D17, D21, D17
237FB0:  VMUL.F64        D18, D18, D22
237FB4:  VLDR            D23, [R2]
237FB8:  ADD.W           R2, R11, #0x840
237FBC:  VLDR            D19, [R1,#0x130]
237FC0:  VADD.F64        D17, D17, D18
237FC4:  VMUL.F64        D19, D19, D23
237FC8:  VLDR            D21, [R2]
237FCC:  ADD.W           R2, R11, #0x850
237FD0:  VLDR            D20, [R1,#0x140]
237FD4:  VADD.F64        D17, D17, D19
237FD8:  VMUL.F64        D20, D20, D21
237FDC:  VLDR            D22, [R2]
237FE0:  ADD.W           R2, R11, #0x780
237FE4:  VLDR            D18, [R1,#0x150]
237FE8:  VADD.F64        D17, D17, D20
237FEC:  VMUL.F64        D18, D18, D22
237FF0:  VLDR            D19, [R1,#0x170]
237FF4:  VLDR            D20, [R1,#0x160]
237FF8:  ADD.W           R1, R11, #0x860
237FFC:  VADD.F64        D17, D17, D18
238000:  VLDR            D21, [R1]
238004:  ADD.W           R1, R11, #0x870
238008:  VMUL.F64        D20, D20, D21
23800C:  VLDR            D22, [R1]
238010:  ADD.W           R1, R4, #0x110
238014:  VADD.F64        D17, D17, D20
238018:  VMUL.F64        D18, D19, D22
23801C:  VADD.F64        D17, D17, D18
238020:  VMUL.F64        D17, D17, D16
238024:  VSTR            D17, [R4,#0x100]
238028:  ADDS            R6, R0, R3
23802A:  VLDM            R2, {D17-D20}
23802E:  ADD.W           R5, R6, #0xF70
238032:  SUB.W           R3, R3, #0x100
238036:  CMN.W           R3, #0xF00
23803A:  VLDR            D21, [R5]
23803E:  ADDW            R5, R6, #0xF78
238042:  VLDR            D22, [R5]
238046:  ADDW            R5, R6, #0xF68
23804A:  VMUL.F64        D18, D21, D18
23804E:  VNMUL.F64       D17, D22, D17
238052:  VLDR            D21, [R5]
238056:  ADD.W           R5, R6, #0xF60
23805A:  VSUB.F64        D17, D17, D18
23805E:  VMUL.F64        D19, D21, D19
238062:  VLDR            D22, [R5]
238066:  ADDW            R5, R6, #0xF58
23806A:  VSUB.F64        D17, D17, D19
23806E:  VMUL.F64        D18, D22, D20
238072:  VLDR            D21, [R5]
238076:  ADD.W           R5, R6, #0xF50
23807A:  VLDR            D20, [R2,#0x20]
23807E:  VSUB.F64        D17, D17, D18
238082:  VMUL.F64        D20, D21, D20
238086:  VLDR            D22, [R5]
23808A:  ADDW            R5, R6, #0xF48
23808E:  VLDR            D19, [R2,#0x28]
238092:  VSUB.F64        D17, D17, D20
238096:  VMUL.F64        D18, D22, D19
23809A:  VLDR            D21, [R5]
23809E:  ADD.W           R5, R6, #0xF40
2380A2:  VLDR            D20, [R2,#0x30]
2380A6:  VSUB.F64        D17, D17, D18
2380AA:  VMUL.F64        D20, D21, D20
2380AE:  VLDR            D22, [R5]
2380B2:  ADDW            R5, R6, #0xF38
2380B6:  VLDR            D19, [R2,#0x38]
2380BA:  VSUB.F64        D17, D17, D20
2380BE:  VMUL.F64        D18, D22, D19
2380C2:  VLDR            D21, [R5]
2380C6:  ADD.W           R5, R6, #0xF30
2380CA:  VLDR            D20, [R2,#0x40]
2380CE:  VSUB.F64        D17, D17, D18
2380D2:  VMUL.F64        D20, D21, D20
2380D6:  VLDR            D22, [R5]
2380DA:  ADDW            R5, R6, #0xF28
2380DE:  VLDR            D19, [R2,#0x48]
2380E2:  VSUB.F64        D17, D17, D20
2380E6:  VMUL.F64        D18, D22, D19
2380EA:  VLDR            D21, [R5]
2380EE:  ADD.W           R5, R6, #0xF20
2380F2:  VLDR            D20, [R2,#0x50]
2380F6:  VSUB.F64        D17, D17, D18
2380FA:  VMUL.F64        D20, D21, D20
2380FE:  VLDR            D22, [R5]
238102:  ADDW            R5, R6, #0xF18
238106:  VLDR            D19, [R2,#0x58]
23810A:  VSUB.F64        D17, D17, D20
23810E:  VMUL.F64        D18, D22, D19
238112:  VLDR            D21, [R5]
238116:  ADD.W           R5, R6, #0xF10
23811A:  VLDR            D20, [R2,#0x60]
23811E:  VSUB.F64        D17, D17, D18
238122:  VMUL.F64        D20, D21, D20
238126:  VLDR            D22, [R5]
23812A:  ADDW            R5, R6, #0xF08
23812E:  VLDR            D19, [R2,#0x68]
238132:  ADD.W           R6, R6, #0xF00
238136:  VSUB.F64        D17, D17, D20
23813A:  VMUL.F64        D18, D22, D19
23813E:  VLDR            D20, [R2,#0x70]
238142:  VLDR            D21, [R5]
238146:  VSUB.F64        D17, D17, D18
23814A:  VMUL.F64        D20, D21, D20
23814E:  VLDR            D19, [R2,#0x78]
238152:  SUB.W           R2, R2, #0x80
238156:  VLDR            D22, [R6]
23815A:  VSUB.F64        D17, D17, D20
23815E:  VMUL.F64        D18, D22, D19
238162:  VSUB.F64        D17, D17, D18
238166:  VMUL.F64        D17, D17, D16
23816A:  VSTR            D17, [R1]
23816E:  ADD.W           R1, R1, #0x10
238172:  BNE.W           loc_238028
238176:  CMP.W           R8, #0
23817A:  ITTT NE
23817C:  LDRNE.W         R0, [R9]
238180:  ADDNE.W         R0, R0, #0x200
238184:  STRNE.W         R0, [R9]
238188:  MOVS            R0, #0
23818A:  ADD             SP, SP, #4
23818C:  POP.W           {R8-R11}
238190:  POP             {R4-R7,PC}
