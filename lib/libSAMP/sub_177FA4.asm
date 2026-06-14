; =========================================================
; Game Engine Function: sub_177FA4
; Address            : 0x177FA4 - 0x178280
; =========================================================

177FA4:  PUSH            {R4-R7,LR}
177FA6:  ADD             R7, SP, #0xC
177FA8:  PUSH.W          {R8-R11}
177FAC:  SUB             SP, SP, #0x34
177FAE:  MOV             R4, R2
177FB0:  MOV             R8, R1
177FB2:  CMP             R2, #1
177FB4:  BLT.W           loc_178218
177FB8:  MOV             R10, R0
177FBA:  ADD.W           R0, R8, #0xC
177FBE:  MOVS            R1, #0
177FC0:  STR.W           R1, [R0],#0x10
177FC4:  ADDS            R1, #1
177FC6:  CMP             R4, R1
177FC8:  BNE             loc_177FC0
177FCA:  LDR             R3, =(sub_179D84+1 - 0x177FD6)
177FCC:  MOV             R0, R8; base
177FCE:  MOV             R1, R4; nmemb
177FD0:  MOVS            R2, #0x10; size
177FD2:  ADD             R3, PC; sub_179D84 ; compar
177FD4:  BLX             qsort
177FD8:  CMP             R4, #1
177FDA:  BLT.W           loc_178226
177FDE:  ADD.W           R11, SP, #0x50+var_20
177FE2:  MOVW            R9, #0xFFFF
177FE6:  MOVS            R1, #0
177FE8:  ADD.W           R0, R10, #0x18
177FEC:  STR             R0, [SP,#0x50+var_44]
177FEE:  STRD.W          R8, R4, [SP,#0x50+var_50]
177FF2:  STR.W           R10, [SP,#0x50+var_34]
177FF6:  ADD.W           R2, R8, R1,LSL#4
177FFA:  LDRH            R0, [R2,#4]
177FFC:  CBZ             R0, loc_17804A
177FFE:  LDRH            R3, [R2,#6]
178000:  CBZ             R3, loc_17804A
178002:  STRD.W          R2, R1, [SP,#0x50+var_40]
178006:  MOV             R9, R3
178008:  LDR.W           R1, [R10,#8]
17800C:  STR             R0, [SP,#0x50+var_48]
17800E:  ADD             R0, R1
178010:  LDR.W           R6, [R10]
178014:  SUBS            R4, R0, #1
178016:  LDR.W           R5, [R10,#0x18]
17801A:  MOV             R0, R4
17801C:  BLX             sub_2211C4
178020:  MOV             R0, R1
178022:  LDRH            R1, [R5]
178024:  SUBS            R2, R4, R0
178026:  STR             R2, [SP,#0x50+var_28]
178028:  ADDS            R0, R2, R1
17802A:  CMP             R0, R6
17802C:  MOV.W           R0, #0
178030:  BLE             loc_178050
178032:  STR             R0, [SP,#0x50+var_2C]
178034:  MOVS            R0, #0
178036:  LDR.W           R12, [R10,#0x10]
17803A:  MOV.W           R1, #0x40000000
17803E:  MOV.W           R8, #0x40000000
178042:  STR             R0, [SP,#0x50+var_38]
178044:  ADD             R5, SP, #0x50+var_24
178046:  MOV             R6, R9
178048:  B               loc_1780D6
17804A:  MOVS            R0, #0
17804C:  STR             R0, [R2,#8]
17804E:  B               loc_1781F6
178050:  STR             R0, [SP,#0x50+var_2C]
178052:  MOV.W           R0, #0x40000000
178056:  STR             R0, [SP,#0x50+var_30]
178058:  MOV.W           R8, #0x40000000
17805C:  LDR             R4, [SP,#0x50+var_44]
17805E:  MOV             R0, R5
178060:  MOV             R3, R11
178062:  MOV             R6, R4
178064:  MOV             R4, R5
178066:  BL              sub_179DC0
17806A:  LDR.W           R12, [R10,#0x10]
17806E:  CMP.W           R12, #0
178072:  BEQ             loc_17808A
178074:  LDR.W           R1, [R10,#4]
178078:  ADD.W           R3, R0, R9
17807C:  CMP             R3, R1
17807E:  BGT             loc_178098
178080:  CMP             R0, R8
178082:  BGE             loc_17809C
178084:  LDR             R1, [SP,#0x50+var_20]
178086:  LDR             R2, [SP,#0x50+var_28]
178088:  B               loc_1780A8
17808A:  LDR             R1, [SP,#0x50+var_2C]
17808C:  CMP             R0, R8
17808E:  IT LT
178090:  MOVLT           R1, R6
178092:  STR             R1, [SP,#0x50+var_2C]
178094:  IT LT
178096:  MOVLT           R8, R0
178098:  LDR             R2, [SP,#0x50+var_28]
17809A:  B               loc_1780AE
17809C:  BNE             loc_178098
17809E:  LDR             R1, [SP,#0x50+var_20]
1780A0:  LDR             R2, [SP,#0x50+var_30]
1780A2:  CMP             R1, R2
1780A4:  LDR             R2, [SP,#0x50+var_28]
1780A6:  BGE             loc_1780AE
1780A8:  MOV             R8, R0
1780AA:  STRD.W          R1, R6, [SP,#0x50+var_30]
1780AE:  LDR.W           R5, [R4,#4]!
1780B2:  LDR.W           R0, [R10]
1780B6:  LDRH            R1, [R5]
1780B8:  ADDS            R3, R2, R1
1780BA:  CMP             R3, R0
1780BC:  BLE             loc_17805E
1780BE:  LDR             R0, [SP,#0x50+var_2C]
1780C0:  MOV             R6, R9
1780C2:  CBZ             R0, loc_1780CA
1780C4:  LDR             R0, [R0]
1780C6:  LDRH            R0, [R0]
1780C8:  B               loc_1780D0
1780CA:  MOVS            R0, #0
1780CC:  STR             R0, [SP,#0x50+var_2C]
1780CE:  MOVS            R0, #0
1780D0:  STR             R0, [SP,#0x50+var_38]
1780D2:  ADD             R5, SP, #0x50+var_24
1780D4:  LDR             R1, [SP,#0x50+var_30]
1780D6:  CMP.W           R12, #1
1780DA:  STR.W           R8, [SP,#0x50+var_30]
1780DE:  BNE             loc_17816E
1780E0:  LDR             R0, [SP,#0x50+var_44]
1780E2:  LDR             R4, [R0]
1780E4:  LDRH            R0, [R4]
1780E6:  MOV             R11, R4
1780E8:  CMP             R2, R0
1780EA:  BLE             loc_1780FA
1780EC:  MOV             R11, R4
1780EE:  LDR.W           R11, [R11,#4]
1780F2:  LDRH.W          R0, [R11]
1780F6:  CMP             R2, R0
1780F8:  BGT             loc_1780EE
1780FA:  LDR.W           R10, [SP,#0x50+var_44]
1780FE:  LDRH.W          R0, [R11]
178102:  MOV             R9, R1
178104:  MOV             R1, R4
178106:  SUB.W           R8, R0, R2
17810A:  MOV             R0, R10
17810C:  MOV             R10, R0
17810E:  MOV             R0, R1
178110:  MOV             R4, R1
178112:  LDR.W           R1, [R0,#4]!
178116:  LDRH            R3, [R1]
178118:  CMP             R8, R3
17811A:  BGE             loc_17810C
17811C:  MOV             R0, R4
17811E:  MOV             R1, R8
178120:  MOV             R3, R5
178122:  BL              sub_179DC0
178126:  LDR             R1, [SP,#0x50+var_34]
178128:  ADDS            R2, R0, R6
17812A:  LDR             R1, [R1,#4]
17812C:  CMP             R2, R1
17812E:  BGE             loc_17814E
178130:  LDR             R1, [SP,#0x50+var_30]
178132:  CMP             R0, R1
178134:  BGT             loc_17814E
178136:  LDRD.W          R2, R1, [SP,#0x50+var_28]
17813A:  IT GE
17813C:  CMPGE           R1, R9
17813E:  BGE             loc_17815E
178140:  STR             R0, [SP,#0x50+var_30]
178142:  MOV             R0, R10
178144:  STR.W           R10, [SP,#0x50+var_2C]
178148:  STR.W           R8, [SP,#0x50+var_38]
17814C:  B               loc_178152
17814E:  MOV             R1, R9
178150:  LDR             R2, [SP,#0x50+var_28]
178152:  LDR.W           R11, [R11,#4]
178156:  CMP.W           R11, #0
17815A:  BNE             loc_1780FE
17815C:  B               loc_17816E
17815E:  BNE             loc_17816A
178160:  LDR             R1, [SP,#0x50+var_38]
178162:  CMP             R8, R1
178164:  MOV             R1, R9
178166:  BLT             loc_178140
178168:  B               loc_178152
17816A:  MOV             R1, R9
17816C:  B               loc_178152
17816E:  LDR             R5, [SP,#0x50+var_2C]
178170:  LDRD.W          R10, R1, [SP,#0x50+var_34]
178174:  CBZ             R5, loc_1781DE
178176:  LDR.W           R0, [R10,#4]
17817A:  ADD             R1, R6
17817C:  CMP             R1, R0
17817E:  BGT             loc_1781DE
178180:  LDR.W           R0, [R10,#0x1C]
178184:  CBZ             R0, loc_1781DE
178186:  LDR             R2, [R0,#4]
178188:  ADD.W           R11, SP, #0x50+var_20
17818C:  STR.W           R2, [R10,#0x1C]
178190:  MOVW            R9, #0xFFFF
178194:  LDR             R2, [R5]
178196:  LDR             R6, [SP,#0x50+var_38]
178198:  STRH            R6, [R0]
17819A:  LDRH            R3, [R2]
17819C:  STRH            R1, [R0,#2]
17819E:  CMP             R6, R3
1781A0:  LDRD.W          R8, R4, [SP,#0x50+var_50]
1781A4:  ITTE GT
1781A6:  LDRGT.W         R6, [R2,#4]!
1781AA:  MOVGT           R5, R2
1781AC:  MOVLE           R6, R2
1781AE:  STR             R0, [R5]
1781B0:  MOV             R3, R6
1781B2:  LDR             R1, [SP,#0x50+var_48]
1781B4:  LDR             R2, [SP,#0x50+var_38]
1781B6:  LDR.W           R5, [R3,#4]!
1781BA:  ADD             R1, R2
1781BC:  CBZ             R5, loc_178200
1781BE:  MOV             R2, R5
1781C0:  LDRH            R5, [R5]
1781C2:  CMP             R1, R5
1781C4:  BLT             loc_178200
1781C6:  LDR.W           R5, [R10,#0x1C]
1781CA:  STR             R5, [R3]
1781CC:  MOV             R3, R2
1781CE:  LDR.W           R5, [R3,#4]!
1781D2:  STR.W           R6, [R10,#0x1C]
1781D6:  MOV             R6, R2
1781D8:  CMP             R5, #0
1781DA:  BNE             loc_1781BE
1781DC:  B               loc_178202
1781DE:  LDR             R0, [SP,#0x50+var_40]
1781E0:  ADD.W           R11, SP, #0x50+var_20
1781E4:  LDRD.W          R8, R4, [SP,#0x50+var_50]
1781E8:  MOVW            R9, #0xFFFF
1781EC:  STRH.W          R9, [R0,#8]
1781F0:  STRH.W          R9, [R0,#0xA]
1781F4:  LDR             R1, [SP,#0x50+var_3C]
1781F6:  ADDS            R1, #1
1781F8:  CMP             R1, R4
1781FA:  BNE.W           loc_177FF6
1781FE:  B               loc_17823E
178200:  MOV             R2, R6
178202:  LDRH            R3, [R2]
178204:  STR             R2, [R0,#4]
178206:  CMP             R1, R3
178208:  IT GT
17820A:  STRHGT          R1, [R2]
17820C:  LDR             R0, [SP,#0x50+var_40]
17820E:  LDR             R1, [SP,#0x50+var_30]
178210:  STRH            R1, [R0,#0xA]
178212:  LDR             R1, [SP,#0x50+var_38]
178214:  STRH            R1, [R0,#8]
178216:  B               loc_1781F4
178218:  LDR             R3, =(sub_179D84+1 - 0x178224)
17821A:  MOV             R0, R8; base
17821C:  MOV             R1, R4; nmemb
17821E:  MOVS            R2, #0x10; size
178220:  ADD             R3, PC; sub_179D84 ; compar
178222:  BLX             qsort
178226:  LDR             R3, =(sub_179DAC+1 - 0x178232)
178228:  MOV             R0, R8
17822A:  MOV             R1, R4
17822C:  MOVS            R2, #0x10
17822E:  ADD             R3, PC; sub_179DAC
178230:  ADD             SP, SP, #0x34 ; '4'
178232:  POP.W           {R8-R11}
178236:  POP.W           {R4-R7,LR}
17823A:  B.W             sub_2243AC
17823E:  LDR             R3, =(sub_179DAC+1 - 0x17824A)
178240:  MOV             R0, R8; base
178242:  MOV             R1, R4; nmemb
178244:  MOVS            R2, #0x10; size
178246:  ADD             R3, PC; sub_179DAC ; compar
178248:  BLX             qsort
17824C:  CMP             R4, #1
17824E:  BLT             loc_178278
178250:  ADD.W           R0, R8, #8
178254:  LDRH            R1, [R0]
178256:  CMP             R1, R9
178258:  BNE             loc_178268
17825A:  LDRH            R1, [R0,#2]
17825C:  SUB.W           R1, R1, R9
178260:  CLZ.W           R1, R1
178264:  LSRS            R1, R1, #5
178266:  B               loc_17826A
178268:  MOVS            R1, #0
17826A:  EOR.W           R1, R1, #1
17826E:  STR             R1, [R0,#4]
178270:  SUBS            R4, #1
178272:  ADD.W           R0, R0, #0x10
178276:  BNE             loc_178254
178278:  ADD             SP, SP, #0x34 ; '4'
17827A:  POP.W           {R8-R11}
17827E:  POP             {R4-R7,PC}
