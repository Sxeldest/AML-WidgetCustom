; =========================================================
; Game Engine Function: sub_164106
; Address            : 0x164106 - 0x164190
; =========================================================

164106:  PUSH            {R4-R7,LR}
164108:  ADD             R7, SP, #0xC
16410A:  PUSH.W          {R8-R11}
16410E:  SUB             SP, SP, #4
164110:  MOV             R9, R0
164112:  MOV             R0, R1
164114:  MOV             R10, R2
164116:  MOV             R6, R1
164118:  BL              sub_163FF8
16411C:  MOV             R8, R0
16411E:  MOV             R0, R6
164120:  BL              sub_163FF8
164124:  MOV             R4, R0
164126:  MOV             R0, R6
164128:  MOVS            R1, #6
16412A:  BL              sub_1640DA
16412E:  ADDS            R5, R0, R4
164130:  MOV             R0, R6
164132:  BL              sub_163FF8
164136:  MOV             R4, R0
164138:  MOV             R0, R6
16413A:  MOVS            R1, #5
16413C:  BL              sub_1640DA
164140:  ADD.W           R11, R0, R4
164144:  CMP             R5, R11
164146:  BEQ             loc_16416A
164148:  SUB.W           R4, R11, R5
16414C:  ADDS            R5, #4
16414E:  MOVS            R6, #0
164150:  LDR.W           R0, [R5,#-4]
164154:  MOV             R1, R10; s2
164156:  ADD             R0, R11; s1
164158:  BLX             strcmp
16415C:  CBZ             R0, loc_16417A
16415E:  SUBS            R4, #0x10
164160:  ADD.W           R5, R5, #0x10
164164:  ADD.W           R6, R6, #1
164168:  BNE             loc_164150
16416A:  MOVS            R0, #0
16416C:  MOV.W           R1, #0xFFFFFFFF
164170:  STRD.W          R1, R0, [R9]
164174:  STR.W           R0, [R9,#8]
164178:  B               loc_164188
16417A:  LDRD.W          R0, R1, [R5]
16417E:  ADD             R0, R8
164180:  STR.W           R1, [R9,#8]
164184:  STRD.W          R6, R0, [R9]
164188:  ADD             SP, SP, #4
16418A:  POP.W           {R8-R11}
16418E:  POP             {R4-R7,PC}
