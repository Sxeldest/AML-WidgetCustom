; =========================================================
; Game Engine Function: check_control_input
; Address            : 0x1A8068 - 0x1A81A6
; =========================================================

1A8068:  PUSH            {R7,LR}
1A806A:  MOV             R7, SP
1A806C:  LDR             R2, [R0,#8]
1A806E:  MOVW            R1, #0x5DBF
1A8072:  MOV             R12, #0xFFFFFF9A
1A8076:  CMP             R2, R1
1A8078:  BLE             loc_1A8092
1A807A:  MOVW            R1, #0xAC43
1A807E:  CMP             R2, R1
1A8080:  BGT             loc_1A80A8
1A8082:  MOVW            R1, #0x5DC0
1A8086:  CMP             R2, R1
1A8088:  IT NE
1A808A:  CMPNE.W         R2, #0x7D00
1A808E:  BEQ             loc_1A80B8
1A8090:  B               loc_1A81A2
1A8092:  CMP.W           R2, #0x1F40
1A8096:  ITT NE
1A8098:  MOVWNE          R1, #0x2EE0
1A809C:  CMPNE           R2, R1
1A809E:  BEQ             loc_1A80B8
1A80A0:  CMP.W           R2, #0x3E80
1A80A4:  BEQ             loc_1A80B8
1A80A6:  B               loc_1A81A2
1A80A8:  MOVW            R1, #0xBB80
1A80AC:  CMP             R2, R1
1A80AE:  ITT NE
1A80B0:  MOVWNE          R1, #0xAC44
1A80B4:  CMPNE           R2, R1
1A80B6:  BNE             loc_1A81A2
1A80B8:  LDR             R2, [R0,#0x14]
1A80BA:  CMP.W           R2, #0x1F40
1A80BE:  IT NE
1A80C0:  CMPNE.W         R2, #0x3E80
1A80C4:  BEQ             loc_1A80CE
1A80C6:  MOVW            R1, #0x2EE0
1A80CA:  CMP             R2, R1
1A80CC:  BNE             loc_1A8150
1A80CE:  LDR.W           LR, [R0,#0xC]
1A80D2:  CMP.W           LR, #0x1F40
1A80D6:  IT NE
1A80D8:  CMPNE.W         LR, #0x3E80
1A80DC:  BEQ             loc_1A80E6
1A80DE:  MOVW            R1, #0x2EE0
1A80E2:  CMP             LR, R1
1A80E4:  BNE             loc_1A8150
1A80E6:  LDR             R1, [R0,#0x10]
1A80E8:  CMP.W           R1, #0x1F40
1A80EC:  IT NE
1A80EE:  CMPNE.W         R1, #0x3E80
1A80F2:  BEQ             loc_1A80FC
1A80F4:  MOVW            R3, #0x2EE0
1A80F8:  CMP             R1, R3
1A80FA:  BNE             loc_1A8150
1A80FC:  MOV             R12, #0xFFFFFF9A
1A8100:  CMP             R1, R2
1A8102:  BGT             loc_1A81A2
1A8104:  CMP             LR, R2
1A8106:  BLT             loc_1A81A2
1A8108:  CMP             R1, LR
1A810A:  BGT             loc_1A81A2
1A810C:  LDR             R1, [R0,#0x18]
1A810E:  SUB.W           R2, R1, #0xA
1A8112:  CMP             R2, #0x1E
1A8114:  BHI             loc_1A8128
1A8116:  MOVS            R3, #1
1A8118:  LSL.W           R2, R3, R2
1A811C:  MOV             R3, #0x40000401
1A8124:  TST             R2, R3
1A8126:  BNE             loc_1A8134
1A8128:  CMP             R1, #0x3C ; '<'
1A812A:  ITTT NE
1A812C:  MOVNE           R12, #0xFFFFFF99
1A8130:  MOVNE           R0, R12
1A8132:  POPNE           {R7,PC}
1A8134:  LDR             R1, [R0,#0x20]
1A8136:  CMP             R1, #0x64 ; 'd'
1A8138:  ITTT HI
1A813A:  MOVHI           R12, #0xFFFFFF97
1A813E:  MOVHI           R0, R12
1A8140:  POPHI           {R7,PC}
1A8142:  LDR             R1, [R0,#0x30]
1A8144:  CMP             R1, #1
1A8146:  BLS             loc_1A8158
1A8148:  MOV             R12, #0xFFFFFF94
1A814C:  MOV             R0, R12
1A814E:  POP             {R7,PC}
1A8150:  MOV             R12, #0xFFFFFF9A
1A8154:  MOV             R0, R12
1A8156:  POP             {R7,PC}
1A8158:  LDR             R1, [R0,#0x34]
1A815A:  CMP             R1, #1
1A815C:  ITTT HI
1A815E:  MOVHI           R12, #0xFFFFFF93
1A8162:  MOVHI           R0, R12
1A8164:  POPHI           {R7,PC}
1A8166:  LDR             R1, [R0,#0x28]
1A8168:  CMP             R1, #1
1A816A:  BLS             loc_1A8174
1A816C:  MOV             R12, #0xFFFFFF95
1A8170:  MOV             R0, R12
1A8172:  POP             {R7,PC}
1A8174:  LDR             R1, [R0]
1A8176:  SUBS            R2, R1, #1
1A8178:  CMP             R2, #1
1A817A:  ITTT HI
1A817C:  MOVHI           R12, #0xFFFFFF91
1A8180:  MOVHI           R0, R12
1A8182:  POPHI           {R7,PC}
1A8184:  LDR             R2, [R0,#4]
1A8186:  MOV             R12, #0xFFFFFF91
1A818A:  CMP             R2, R1
1A818C:  BGT             loc_1A81A2
1A818E:  SUBS            R1, R2, #1
1A8190:  CMP             R1, #1
1A8192:  BHI             loc_1A81A2
1A8194:  LDR             R1, [R0,#0x24]
1A8196:  MOVS            R0, #0
1A8198:  CMP             R1, #0xA
1A819A:  IT HI
1A819C:  MOVHI           R0, #0xFFFFFF96
1A81A0:  POP             {R7,PC}
1A81A2:  MOV             R0, R12
1A81A4:  POP             {R7,PC}
