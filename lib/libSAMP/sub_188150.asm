; =========================================================
; Game Engine Function: sub_188150
; Address            : 0x188150 - 0x18829C
; =========================================================

188150:  PUSH            {R4-R7,LR}
188152:  ADD             R7, SP, #0xC
188154:  PUSH.W          {R8,R9,R11}
188158:  SUB             SP, SP, #8
18815A:  MOV             R6, R1
18815C:  MOV             R4, R2
18815E:  LDR             R1, [R1]
188160:  LDR             R2, [R6,#8]
188162:  SUBS            R1, R1, R2
188164:  CMP             R1, #0x10
188166:  BLT.W           loc_18828E
18816A:  ADD.W           R8, R0, #0x6A0
18816E:  MOV             R5, R3
188170:  MOV             R0, R8
188172:  BL              sub_1889FC
188176:  MOV             R9, R0
188178:  MOV             R0, R6; int
18817A:  MOV             R1, R9; int
18817C:  MOVS            R2, #0x10
18817E:  MOVS            R3, #1
188180:  STRD.W          R4, R5, [R9,#0x20]
188184:  BL              sub_17D786
188188:  CMP             R0, #0
18818A:  BEQ             loc_188286
18818C:  SUB.W           R1, R7, #-var_19; int
188190:  MOV             R0, R6; int
188192:  MOVS            R2, #4
188194:  MOVS            R3, #1
188196:  BL              sub_17D786
18819A:  LDRB.W          R1, [R7,#var_19]
18819E:  CMP             R0, #0
1881A0:  STR.W           R1, [R9,#0xC]
1881A4:  BEQ             loc_188286
1881A6:  CMP             R1, #0xA
1881A8:  BHI             loc_1881D8
1881AA:  MOVS            R0, #1
1881AC:  LSLS            R0, R1
1881AE:  TST.W           R0, #0x680
1881B2:  BEQ             loc_1881D8
1881B4:  ADD.W           R1, R9, #0x10; int
1881B8:  MOV             R0, R6; int
1881BA:  MOVS            R2, #5
1881BC:  MOVS            R3, #1
1881BE:  BL              sub_17D786
1881C2:  CMP             R0, #0
1881C4:  BEQ             loc_188286
1881C6:  ADD.W           R1, R9, #0x12; int
1881CA:  MOV             R0, R6; int
1881CC:  MOVS            R2, #0x10
1881CE:  MOVS            R3, #1
1881D0:  BL              sub_17D786
1881D4:  CMP             R0, #0
1881D6:  BEQ             loc_188286
1881D8:  LDR             R1, [R6]
1881DA:  LDR             R0, [R6,#8]
1881DC:  CMP             R0, R1
1881DE:  BGE             loc_188286
1881E0:  LDR             R1, [R6,#0xC]
1881E2:  ASRS            R2, R0, #3
1881E4:  LDRB            R1, [R1,R2]
1881E6:  ADDS            R2, R0, #1
1881E8:  AND.W           R0, R0, #7
1881EC:  STR             R2, [R6,#8]
1881EE:  LSL.W           R0, R1, R0
1881F2:  LSLS            R0, R0, #0x18
1881F4:  BPL             loc_18822A
1881F6:  ADD.W           R1, R9, #0x14; int
1881FA:  MOV             R0, R6; int
1881FC:  MOVS            R2, #0x10
1881FE:  MOVS            R3, #1
188200:  BL              sub_17D786
188204:  CMP             R0, #0
188206:  BEQ             loc_188286
188208:  ADD.W           R1, R9, #0x18
18820C:  MOV             R0, R6
18820E:  MOVS            R2, #0x20 ; ' '
188210:  MOVS            R3, #1
188212:  BL              sub_17D9C0
188216:  CBZ             R0, loc_188286
188218:  ADD.W           R1, R9, #0x1C
18821C:  MOV             R0, R6
18821E:  MOVS            R2, #0x20 ; ' '
188220:  MOVS            R3, #1
188222:  BL              sub_17D9C0
188226:  CBNZ            R0, loc_188230
188228:  B               loc_188286
18822A:  MOVS            R0, #0
18822C:  STRD.W          R0, R0, [R9,#0x18]
188230:  ADD             R1, SP, #0x20+var_1C
188232:  MOV             R0, R6
188234:  MOVS            R2, #0x10
188236:  MOVS            R3, #1
188238:  BL              sub_17D9C0
18823C:  CBZ             R0, loc_188286
18823E:  LDRH.W          R0, [SP,#0x20+var_1C]
188242:  MOVW            R2, #0x1177
188246:  STR.W           R0, [R9,#0x30]
18824A:  SUBS            R1, R0, #1
18824C:  CMP             R1, R2
18824E:  BHI             loc_188286
188250:  ADDS            R0, #7
188252:  LSRS            R0, R0, #3; unsigned int
188254:  BLX             j__Znaj; operator new[](uint)
188258:  LDR.W           R1, [R9,#0x30]
18825C:  STR.W           R0, [R9,#0x34]
188260:  ADDS            R1, #7
188262:  ADD.W           R0, R0, R1,LSR#3
188266:  MOVS            R1, #0
188268:  STRB.W          R1, [R0,#-1]
18826C:  LDRD.W          R0, R1, [R9,#0x30]; dest
188270:  ADDS            R0, #7
188272:  LSRS            R2, R0, #3
188274:  MOV             R0, R6; int
188276:  BL              sub_17D8B8
18827A:  CBNZ            R0, loc_188292
18827C:  LDR.W           R0, [R9,#0x34]; void *
188280:  CBZ             R0, loc_188286
188282:  BLX             j__ZdaPv; operator delete[](void *)
188286:  MOV             R0, R8
188288:  MOV             R1, R9
18828A:  BL              sub_17E56C
18828E:  MOV.W           R9, #0
188292:  MOV             R0, R9
188294:  ADD             SP, SP, #8
188296:  POP.W           {R8,R9,R11}
18829A:  POP             {R4-R7,PC}
