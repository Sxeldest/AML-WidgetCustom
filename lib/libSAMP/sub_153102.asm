; =========================================================
; Game Engine Function: sub_153102
; Address            : 0x153102 - 0x1531A8
; =========================================================

153102:  PUSH            {R4-R7,LR}
153104:  ADD             R7, SP, #0xC
153106:  PUSH.W          {R8-R10}
15310A:  LDR             R4, [R0,#4]
15310C:  CMP             R4, #0
15310E:  BEQ             loc_15319E
153110:  MOV             R6, R0
153112:  MOV.W           R0, #0x55555555
153116:  AND.W           R0, R0, R4,LSR#1
15311A:  LDRH            R5, [R1]
15311C:  SUBS            R0, R4, R0
15311E:  MOV.W           R1, #0x33333333
153122:  AND.W           R1, R1, R0,LSR#2
153126:  BIC.W           R0, R0, #0xCCCCCCCC
15312A:  ADD             R0, R1
15312C:  MOV.W           R1, #0x1010101
153130:  ADD.W           R0, R0, R0,LSR#4
153134:  BIC.W           R0, R0, #0xF0F0F0F0
153138:  MULS            R0, R1
15313A:  MOV.W           R9, R0,LSR#24
15313E:  CMP.W           R9, #1
153142:  BHI             loc_15314C
153144:  SUBS            R0, R4, #1
153146:  AND.W           R8, R0, R5
15314A:  B               loc_15315E
15314C:  CMP             R4, R5
15314E:  BLS             loc_153154
153150:  MOV             R8, R5
153152:  B               loc_15315E
153154:  MOV             R0, R5
153156:  MOV             R1, R4
153158:  BLX             sub_221798
15315C:  MOV             R8, R1
15315E:  LDR             R0, [R6]
153160:  LDR.W           R0, [R0,R8,LSL#2]
153164:  CBZ             R0, loc_15319E
153166:  LDR             R6, [R0]
153168:  CBZ             R6, loc_15319E
15316A:  SUB.W           R10, R4, #1
15316E:  LDR             R0, [R6,#4]
153170:  CMP             R0, R5
153172:  BNE             loc_15317C
153174:  LDRH            R0, [R6,#8]
153176:  CMP             R0, R5
153178:  BNE             loc_153198
15317A:  B               loc_1531A0
15317C:  CMP.W           R9, #1
153180:  BHI             loc_153188
153182:  AND.W           R0, R0, R10
153186:  B               loc_153194
153188:  CMP             R0, R4
15318A:  BCC             loc_153194
15318C:  MOV             R1, R4
15318E:  BLX             sub_221798
153192:  MOV             R0, R1
153194:  CMP             R0, R8
153196:  BNE             loc_15319E
153198:  LDR             R6, [R6]
15319A:  CMP             R6, #0
15319C:  BNE             loc_15316E
15319E:  MOVS            R6, #0
1531A0:  MOV             R0, R6
1531A2:  POP.W           {R8-R10}
1531A6:  POP             {R4-R7,PC}
