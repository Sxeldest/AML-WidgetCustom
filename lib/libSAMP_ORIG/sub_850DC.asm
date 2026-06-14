; =========================================================
; Game Engine Function: sub_850DC
; Address            : 0x850DC - 0x851A2
; =========================================================

850DC:  PUSH            {R4-R7,LR}
850DE:  ADD             R7, SP, #0xC
850E0:  PUSH.W          {R8}
850E4:  MOV             R4, R0
850E6:  MOV             R8, R0
850E8:  LDR.W           R2, [R4,#0x28]!
850EC:  LDR             R6, [R4,#4]
850EE:  SUBS            R0, R6, R2
850F0:  BEQ             loc_8511A
850F2:  MOVW            R3, #0xAAAB
850F6:  ADDS            R2, #0x10
850F8:  MOVT            R3, #0x2AAA
850FC:  MOVS            R5, #0
850FE:  SMMUL.W         R0, R0, R3
85102:  ASRS            R3, R0, #2
85104:  ADD.W           R0, R3, R0,LSR#31
85108:  CMP             R0, #1
8510A:  IT LS
8510C:  MOVLS           R0, #1
8510E:  LDR             R3, [R2]
85110:  CBZ             R3, loc_8513E
85112:  ADDS            R5, #1
85114:  ADDS            R2, #0x18
85116:  CMP             R0, R5
85118:  BNE             loc_8510E
8511A:  LDR.W           R0, [R8,#0x30]
8511E:  CMP             R6, R0
85120:  BCS             loc_85132
85122:  MOV             R0, R1
85124:  LDR.W           R2, [R0,#0x10]!
85128:  CBZ             R2, loc_8515A
8512A:  CMP             R1, R2
8512C:  BEQ             loc_85164
8512E:  STR             R2, [R6,#0x10]
85130:  B               loc_8515E
85132:  MOV             R0, R4
85134:  BL              sub_85478
85138:  LDR.W           R0, [R8,#0x2C]
8513C:  B               loc_85178
8513E:  MOVS            R0, #0
85140:  MOV             R6, R2
85142:  STR.W           R0, [R6],#-0x10
85146:  MOV             R3, R1
85148:  LDR.W           R4, [R3,#0x10]!
8514C:  CBZ             R4, loc_85156
8514E:  CMP             R1, R4
85150:  BEQ             loc_85192
85152:  STR             R4, [R2]
85154:  MOV             R2, R3
85156:  STR             R0, [R2]
85158:  B               loc_8518A
8515A:  ADD.W           R0, R6, #0x10
8515E:  MOVS            R1, #0
85160:  STR             R1, [R0]
85162:  B               loc_85170
85164:  STR             R6, [R6,#0x10]
85166:  LDR             R0, [R0]
85168:  LDR             R1, [R0]
8516A:  LDR             R2, [R1,#0xC]
8516C:  MOV             R1, R6
8516E:  BLX             R2
85170:  ADD.W           R0, R6, #0x18
85174:  STR.W           R0, [R8,#0x2C]
85178:  LDR             R1, [R4]
8517A:  SUBS            R0, R0, R1
8517C:  MOV             R1, #0xAAAAAAAB
85184:  ASRS            R0, R0, #3
85186:  MULS            R0, R1
85188:  SUBS            R5, R0, #1
8518A:  MOV             R0, R5
8518C:  POP.W           {R8}
85190:  POP             {R4-R7,PC}
85192:  STR.W           R6, [R2],#-0x10
85196:  LDR             R0, [R3]
85198:  LDR             R1, [R0]
8519A:  LDR             R3, [R1,#0xC]
8519C:  MOV             R1, R2
8519E:  BLX             R3
851A0:  B               loc_8518A
