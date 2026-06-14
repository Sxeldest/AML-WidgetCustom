; =========================================================
; Game Engine Function: sub_1882D2
; Address            : 0x1882D2 - 0x1883A0
; =========================================================

1882D2:  PUSH            {R4-R7,LR}
1882D4:  ADD             R7, SP, #0xC
1882D6:  PUSH.W          {R8-R11}
1882DA:  SUB             SP, SP, #4
1882DC:  LDR             R5, [R0,#0xC]
1882DE:  MOV             R8, R1
1882E0:  MOV             R9, R0
1882E2:  CMP             R5, #0
1882E4:  BEQ             loc_18837C
1882E6:  LDR.W           R0, [R9,#8]
1882EA:  LDR.W           R6, [R9]
1882EE:  LDRD.W          R1, R2, [R8]
1882F2:  ADD.W           R11, R0, #1
1882F6:  STR.W           R11, [R9,#8]
1882FA:  CMP             R11, R5
1882FC:  STR.W           R1, [R6,R0,LSL#3]
188300:  ADD.W           R0, R6, R0,LSL#3
188304:  STR             R2, [R0,#4]
188306:  ITT EQ
188308:  MOVEQ.W         R11, #0
18830C:  STREQ.W         R11, [R9,#8]
188310:  LDR.W           R0, [R9,#4]
188314:  CMP             R11, R0
188316:  BNE             loc_188398
188318:  MOV             R0, #0x1FFFFFFE
188320:  AND.W           R0, R0, R5,LSL#1
188324:  SUBS.W          R1, R0, R5,LSL#1
188328:  MOV.W           R0, R5,LSL#4
18832C:  IT NE
18832E:  MOVNE           R1, #1
188330:  CMP             R1, #0
188332:  IT NE
188334:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
188338:  BLX             j__Znaj; operator new[](uint)
18833C:  MOV             R10, R0
18833E:  LSLS            R0, R5, #1
188340:  MOVS            R4, #0
188342:  MOV             R8, R10
188344:  STR             R0, [SP,#0x20+var_20]
188346:  ADD.W           R0, R11, R4
18834A:  MOV             R1, R5
18834C:  BLX             sub_221798
188350:  LDR.W           R0, [R6,R1,LSL#3]
188354:  ADD.W           R1, R6, R1,LSL#3
188358:  ADDS            R4, #1
18835A:  LDR             R1, [R1,#4]
18835C:  CMP             R5, R4
18835E:  STRD.W          R0, R1, [R8],#8
188362:  BNE             loc_188346
188364:  MOVS            R0, #0
188366:  STRD.W          R0, R5, [R9,#4]
18836A:  LDR             R0, [SP,#0x20+var_20]
18836C:  STR.W           R0, [R9,#0xC]
188370:  MOV             R0, R6; void *
188372:  BLX             j__ZdaPv; operator delete[](void *)
188376:  STR.W           R10, [R9]
18837A:  B               loc_188398
18837C:  MOVS            R0, #0x80; unsigned int
18837E:  BLX             j__Znaj; operator new[](uint)
188382:  LDRD.W          R2, R3, [R8]
188386:  MOVS            R6, #0
188388:  MOVS            R1, #1
18838A:  MOVS            R5, #0x10
18838C:  STRD.W          R0, R6, [R9]
188390:  STRD.W          R1, R5, [R9,#8]
188394:  STRD.W          R2, R3, [R0]
188398:  ADD             SP, SP, #4
18839A:  POP.W           {R8-R11}
18839E:  POP             {R4-R7,PC}
