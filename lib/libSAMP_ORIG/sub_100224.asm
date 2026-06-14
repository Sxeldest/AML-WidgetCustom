; =========================================================
; Game Engine Function: sub_100224
; Address            : 0x100224 - 0x100298
; =========================================================

100224:  PUSH            {R2-R4,R6,R7,LR}
100226:  ADD             R7, SP, #0x10
100228:  MOV             R4, R0
10022A:  LDR             R0, =(__stack_chk_guard_ptr - 0x100230)
10022C:  ADD             R0, PC; __stack_chk_guard_ptr
10022E:  LDR             R0, [R0]; __stack_chk_guard
100230:  LDR             R0, [R0]
100232:  STR             R0, [SP,#0x10+var_C]
100234:  LDRD.W          R0, R1, [R4]
100238:  CMP             R0, R1
10023A:  BEQ             loc_100282
10023C:  LDRB            R2, [R0]
10023E:  CMP             R2, #0x44 ; 'D'
100240:  BNE             loc_100282
100242:  ADDS            R2, R0, #1
100244:  STR             R2, [R4]
100246:  CMP             R2, R1
100248:  BEQ             loc_100282
10024A:  LDRB            R1, [R2]
10024C:  ORR.W           R1, R1, #0x20 ; ' '
100250:  CMP             R1, #0x74 ; 't'
100252:  BNE             loc_100282
100254:  ADDS            R0, #2
100256:  STR             R0, [R4]
100258:  MOV             R0, R4
10025A:  BL              sub_1006E0
10025E:  STR             R0, [SP,#0x10+var_10]
100260:  CBZ             R0, loc_100282
100262:  LDRD.W          R0, R1, [R4]
100266:  CMP             R0, R1
100268:  BEQ             loc_100282
10026A:  LDRB            R1, [R0]
10026C:  CMP             R1, #0x45 ; 'E'
10026E:  BNE             loc_100282
100270:  ADDS            R0, #1
100272:  STR             R0, [R4]
100274:  LDR             R1, =(aDecltype - 0x10027E); "decltype(" ...
100276:  MOV             R2, SP
100278:  MOV             R0, R4
10027A:  ADD             R1, PC; "decltype("
10027C:  BL              sub_101EF4
100280:  B               loc_100284
100282:  MOVS            R0, #0
100284:  LDR             R1, [SP,#0x10+var_C]
100286:  LDR             R2, =(__stack_chk_guard_ptr - 0x10028C)
100288:  ADD             R2, PC; __stack_chk_guard_ptr
10028A:  LDR             R2, [R2]; __stack_chk_guard
10028C:  LDR             R2, [R2]
10028E:  CMP             R2, R1
100290:  IT EQ
100292:  POPEQ           {R2-R4,R6,R7,PC}
100294:  BLX             __stack_chk_fail
