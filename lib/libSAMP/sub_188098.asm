; =========================================================
; Game Engine Function: sub_188098
; Address            : 0x188098 - 0x188150
; =========================================================

188098:  PUSH            {R4-R7,LR}
18809A:  ADD             R7, SP, #0xC
18809C:  PUSH.W          {R8-R11}
1880A0:  SUB             SP, SP, #0xC
1880A2:  MOV             R4, R1
1880A4:  MOVS            R1, #0
1880A6:  MOV             R11, R0
1880A8:  BL              sub_18A188
1880AC:  SUB.W           R1, R7, #-var_22
1880B0:  MOV             R0, R4
1880B2:  MOVS            R2, #0x10
1880B4:  MOVS            R3, #1
1880B6:  MOVS            R6, #1
1880B8:  BL              sub_17D9C0
1880BC:  LDRH.W          R0, [R7,#var_22]
1880C0:  CMP             R0, #0
1880C2:  BEQ             loc_188146
1880C4:  ADD.W           R10, SP, #0x28+var_24
1880C8:  SUB.W           R8, R7, #-var_26
1880CC:  ADD.W           R9, SP, #0x28+var_20
1880D0:  MOVS            R6, #0
1880D2:  LDR             R1, [R4]
1880D4:  LDR             R0, [R4,#8]
1880D6:  CMP             R0, R1
1880D8:  BGE             loc_1880F0
1880DA:  LDR             R1, [R4,#0xC]
1880DC:  ASRS            R2, R0, #3
1880DE:  LDRB            R1, [R1,R2]
1880E0:  ADDS            R2, R0, #1
1880E2:  AND.W           R0, R0, #7
1880E6:  STR             R2, [R4,#8]
1880E8:  LSL.W           R0, R1, R0
1880EC:  UXTB            R0, R0
1880EE:  LSRS            R5, R0, #7
1880F0:  MOV             R0, R4; int
1880F2:  MOV             R1, R10; int
1880F4:  MOVS            R2, #0x10
1880F6:  MOVS            R3, #1
1880F8:  BL              sub_17D786
1880FC:  CBZ             R0, loc_188144
1880FE:  LSLS            R0, R5, #0x18
188100:  BEQ             loc_18810E
188102:  LDRH.W          R0, [SP,#0x28+var_24]
188106:  STRH.W          R0, [R7,#var_26]
18810A:  MOV             R1, R0
18810C:  B               loc_188128
18810E:  MOV             R0, R4; int
188110:  MOV             R1, R8; int
188112:  MOVS            R2, #0x10
188114:  MOVS            R3, #1
188116:  BL              sub_17D786
18811A:  CBZ             R0, loc_188144
18811C:  LDRH.W          R1, [SP,#0x28+var_24]
188120:  LDRH.W          R0, [R7,#var_26]
188124:  CMP             R0, R1
188126:  BCC             loc_188144
188128:  ORR.W           R0, R1, R0,LSL#16
18812C:  STR             R0, [SP,#0x28+var_20]
18812E:  MOV             R0, R11
188130:  MOV             R1, R9
188132:  BL              sub_18A49E
188136:  LDRH.W          R0, [R7,#var_22]
18813A:  ADDS            R6, #1
18813C:  CMP             R6, R0
18813E:  BCC             loc_1880D2
188140:  MOVS            R6, #1
188142:  B               loc_188146
188144:  MOVS            R6, #0
188146:  MOV             R0, R6
188148:  ADD             SP, SP, #0xC
18814A:  POP.W           {R8-R11}
18814E:  POP             {R4-R7,PC}
