; =========================================================
; Game Engine Function: sub_16206C
; Address            : 0x16206C - 0x16220E
; =========================================================

16206C:  LDR             R0, [R0]
16206E:  CMP             R0, #0
162070:  IT NE
162072:  BNE.W           loc_162078
162076:  BX              LR
162078:  PUSH            {R4-R7,LR}
16207A:  ADD             R7, SP, #0x14+var_8
16207C:  PUSH.W          {R8,R9,R11}
162080:  SUB.W           SP, SP, #0x1220
162084:  SUB             SP, SP, #0x10
162086:  CMP             R1, #0
162088:  BEQ.W           loc_162202
16208C:  CMP             R2, #0
16208E:  BEQ.W           loc_162202
162092:  MOV             R4, R0
162094:  LDRB            R0, [R1]
162096:  MOV             R5, R3
162098:  CMP             R2, #6
16209A:  BCC             loc_1620A2
16209C:  CMP             R0, #0x28 ; '('
16209E:  IT EQ
1620A0:  LDRBEQ          R0, [R1,#5]
1620A2:  CMP             R2, #2
1620A4:  BCC             loc_1620FA
1620A6:  CMP             R0, #0x14
1620A8:  BNE             loc_1620FA
1620AA:  LDRB            R0, [R1,#1]
1620AC:  CMP             R2, #3
1620AE:  STRB.W          R0, [R7,#-0x19]
1620B2:  BCC             loc_16211E
1620B4:  CMP             R0, #0xFC
1620B6:  BNE             loc_16211E
1620B8:  ADD.W           LR, SP, #0x1250+var_1238
1620BC:  ADDS            R1, #2; src
1620BE:  SUBS            R2, #2; size
1620C0:  ADD.W           R0, LR, #0x1100; int
1620C4:  MOVS            R3, #0
1620C6:  BL              sub_17D4F2
1620CA:  ADD.W           LR, SP, #0x1250+var_123C
1620CE:  MOVS            R2, #0x20 ; ' '
1620D0:  ADD.W           R1, LR, #0x1100
1620D4:  MOVS            R3, #1
1620D6:  BL              sub_17D9C0
1620DA:  CBZ             R0, loc_16214A
1620DC:  ADD.W           LR, SP, #0x1250+var_123C
1620E0:  MOVW            R0, #0x8008
1620E4:  ADD.W           R9, LR, #0x1100
1620E8:  LDR.W           R6, [R9]
1620EC:  CMP             R6, R0
1620EE:  BCC             loc_162164
1620F0:  LSRS            R0, R6, #3; unsigned int
1620F2:  BLX             j__Znaj; operator new[](uint)
1620F6:  MOV             R8, R0
1620F8:  B               loc_162168
1620FA:  CMP             R2, #2
1620FC:  BCC             loc_162130
1620FE:  CMP             R0, #0xDC
162100:  BNE             loc_162130
162102:  LDR.W           R0, [R4,#0x130]
162106:  LDRB            R1, [R1,#1]
162108:  ADDS            R2, R0, #1
16210A:  STR.W           R2, [R4,#0x130]
16210E:  ADD.W           R0, R0, R0,LSL#1
162112:  MOVS            R2, #2
162114:  ADD             R0, R4
162116:  STRB            R5, [R0,#6]
162118:  STRB            R2, [R0,#5]
16211A:  STRB            R1, [R0,#4]
16211C:  B               loc_1621F4
16211E:  LDR.W           R1, [R4,#0x130]
162122:  ADDS            R2, R1, #1
162124:  STR.W           R2, [R4,#0x130]
162128:  ADD.W           R1, R1, R1,LSL#1
16212C:  MOVS            R2, #1
16212E:  B               loc_162140
162130:  LDR.W           R1, [R4,#0x130]
162134:  ADDS            R2, R1, #1
162136:  STR.W           R2, [R4,#0x130]
16213A:  ADD.W           R1, R1, R1,LSL#1
16213E:  MOVS            R2, #0
162140:  ADD             R1, R4
162142:  STRB            R5, [R1,#6]
162144:  STRB            R2, [R1,#5]
162146:  STRB            R0, [R1,#4]
162148:  B               loc_1621F4
16214A:  LDR.W           R0, [R4,#0x130]
16214E:  ADDS            R1, R0, #1
162150:  STR.W           R1, [R4,#0x130]
162154:  ADD.W           R0, R0, R0,LSL#1
162158:  MOV.W           R1, #0x1FC
16215C:  ADD             R0, R4
16215E:  STRB            R5, [R0,#6]
162160:  STRH            R1, [R0,#4]
162162:  B               loc_1621E8
162164:  ADD.W           R8, SP, #0x1250+var_113C
162168:  ADD.W           LR, SP, #0x1250+var_1238
16216C:  MOV             R1, R8; int
16216E:  ADD.W           R0, LR, #0x1100; int
162172:  MOV             R2, R6
162174:  MOVS            R3, #0
162176:  BL              sub_17D786
16217A:  CBZ             R0, loc_1621BE
16217C:  LDR.W           R0, [R9]
162180:  LSRS            R2, R0, #3; size
162182:  MOV             R0, SP; int
162184:  MOV             R1, R8; src
162186:  MOVS            R3, #0
162188:  BL              sub_17D4F2
16218C:  SUB.W           R1, R7, #0x19; int
162190:  MOV             R0, SP; int
162192:  MOVS            R2, #8
162194:  MOVS            R3, #1
162196:  BL              sub_17D786
16219A:  LDR.W           R0, [R4,#0x130]
16219E:  LDRB.W          R1, [R7,#-0x19]
1621A2:  ADDS            R2, R0, #1
1621A4:  STR.W           R2, [R4,#0x130]
1621A8:  ADD.W           R0, R0, R0,LSL#1
1621AC:  MOVS            R2, #3
1621AE:  ADD             R0, R4
1621B0:  STRB            R5, [R0,#6]
1621B2:  STRB            R2, [R0,#5]
1621B4:  STRB            R1, [R0,#4]
1621B6:  MOV             R0, SP
1621B8:  BL              sub_17D542
1621BC:  B               loc_1621D6
1621BE:  LDR.W           R0, [R4,#0x130]
1621C2:  ADDS            R1, R0, #1
1621C4:  STR.W           R1, [R4,#0x130]
1621C8:  ADD.W           R0, R0, R0,LSL#1
1621CC:  MOV.W           R1, #0x1FC
1621D0:  ADD             R0, R4
1621D2:  STRB            R5, [R0,#6]
1621D4:  STRH            R1, [R0,#4]
1621D6:  LDR.W           R0, [R9]
1621DA:  MOVW            R1, #0x8008
1621DE:  CMP             R0, R1
1621E0:  BCC             loc_1621E8
1621E2:  MOV             R0, R8; void *
1621E4:  BLX             j__ZdaPv; operator delete[](void *)
1621E8:  ADD.W           LR, SP, #0x1250+var_1238
1621EC:  ADD.W           R0, LR, #0x1100
1621F0:  BL              sub_17D542
1621F4:  LDR.W           R0, [R4,#0x130]
1621F8:  CMP             R0, #0x64 ; 'd'
1621FA:  ITT CS
1621FC:  MOVCS           R0, #0
1621FE:  STRCS.W         R0, [R4,#0x130]
162202:  ADD.W           SP, SP, #0x1220
162206:  ADD             SP, SP, #0x10
162208:  POP.W           {R8,R9,R11}
16220C:  POP             {R4-R7,PC}
