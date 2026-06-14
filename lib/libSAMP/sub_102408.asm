; =========================================================
; Game Engine Function: sub_102408
; Address            : 0x102408 - 0x1024BC
; =========================================================

102408:  CMP             R1, #0xF
10240A:  IT GT
10240C:  BXGT            LR
10240E:  PUSH            {R4-R7,LR}
102410:  ADD             R7, SP, #0x14+var_8
102412:  PUSH.W          {R8-R11}
102416:  SUB             SP, SP, #0xC
102418:  ADD.W           R10, R0, R1,LSL#2
10241C:  MOV             R8, R3
10241E:  MOV             R5, R2
102420:  MOV             R4, R10
102422:  LDR.W           R0, [R4,#0x2C]!
102426:  CBZ             R0, loc_102430
102428:  BL              sub_108CB8
10242C:  MOVS            R0, #0
10242E:  STR             R0, [R4]
102430:  MOV             R4, R10
102432:  MOVS            R1, #2
102434:  LDR.W           R0, [R4,#0xF0]!; void *
102438:  MOVS            R6, #0
10243A:  STR.W           R1, [R4,#-0x44]
10243E:  STR.W           R6, [R4,#-0x84]
102442:  CBZ             R0, loc_10244A
102444:  BLX             j__ZdaPv; operator delete[](void *)
102448:  STR             R6, [R4]
10244A:  MOV             R0, R5; s
10244C:  LDR.W           R11, [R7,#0xC]
102450:  BLX             strlen
102454:  ADD.W           R0, R0, R0,LSL#1
102458:  ADDS            R0, #1; unsigned int
10245A:  BLX             j__Znaj; operator new[](uint)
10245E:  MOV             R6, R0
102460:  STR             R0, [R4]
102462:  MOV             R0, R5; s
102464:  BLX             strlen
102468:  MOV             R9, SP
10246A:  MOV             R2, R0
10246C:  MOV             R0, R9
10246E:  MOV             R1, R5
102470:  BL              sub_164D04
102474:  LDRB.W          R0, [SP,#0x30+var_30]
102478:  LDR             R1, [SP,#0x30+var_28]
10247A:  LSLS            R0, R0, #0x1F
10247C:  IT EQ
10247E:  ADDEQ.W         R1, R9, #1; src
102482:  MOV             R0, R6; dest
102484:  BLX             strcpy
102488:  LDRB.W          R0, [SP,#0x30+var_30]
10248C:  LSLS            R0, R0, #0x1F
10248E:  ITT NE
102490:  LDRNE           R0, [SP,#0x30+var_28]; void *
102492:  BLXNE           j__ZdlPv; operator delete(void *)
102496:  LDR             R0, [R7,#0x14]
102498:  STR.W           R0, [R10,#0x1B0]
10249C:  LDR             R0, [R7,#0x18]
10249E:  STR.W           R0, [R10,#0x1F0]
1024A2:  LDR             R0, [R7,#0x1C]
1024A4:  STR.W           R11, [R10,#0x170]
1024A8:  STR.W           R8, [R10,#0x130]
1024AC:  STR.W           R0, [R10,#0x230]
1024B0:  ADD             SP, SP, #0xC
1024B2:  POP.W           {R8-R11}
1024B6:  POP.W           {R4-R7,LR}
1024BA:  BX              LR
