; =========================================================
; Game Engine Function: sub_1EF314
; Address            : 0x1EF314 - 0x1EF3E2
; =========================================================

1EF314:  PUSH            {R4-R7,LR}
1EF316:  ADD             R7, SP, #0xC
1EF318:  PUSH.W          {R8}
1EF31C:  SUB             SP, SP, #0x18
1EF31E:  MOV             R4, R0
1EF320:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF328)
1EF322:  MOV             R5, R1
1EF324:  ADD             R0, PC; __stack_chk_guard_ptr
1EF326:  LDR             R0, [R0]; __stack_chk_guard
1EF328:  LDR             R0, [R0]
1EF32A:  STR             R0, [SP,#0x28+var_14]
1EF32C:  LDRD.W          R1, R0, [R4]; src
1EF330:  CMP             R0, R1
1EF332:  BNE             loc_1EF3BC
1EF334:  LDRD.W          R1, R2, [R4,#8]
1EF338:  CMP             R1, R2
1EF33A:  BCS             loc_1EF360
1EF33C:  SUBS            R2, R2, R1
1EF33E:  MOVS            R3, #1
1EF340:  ADD.W           R2, R3, R2,ASR#2
1EF344:  MOV             R3, #0xFFFFFFFD
1EF348:  ADD.W           R2, R2, R2,LSR#31
1EF34C:  AND.W           R6, R3, R2,LSL#1
1EF350:  ADDS            R2, R1, R6
1EF352:  BL              sub_1EF60C
1EF356:  LDR             R1, [R4,#8]
1EF358:  STR             R0, [R4,#4]
1EF35A:  ADD             R1, R6
1EF35C:  STR             R1, [R4,#8]
1EF35E:  B               loc_1EF3BC
1EF360:  SUBS            R0, R2, R0
1EF362:  MOV.W           R6, R0,ASR#1
1EF366:  ADD.W           R0, R4, #0xC
1EF36A:  IT EQ
1EF36C:  MOVEQ           R6, #1
1EF36E:  MOV             R1, R6
1EF370:  STR             R0, [SP,#0x28+var_18]
1EF372:  BL              sub_1EF628
1EF376:  ADD.W           R1, R0, R6,LSL#2
1EF37A:  STR             R1, [SP,#0x28+var_1C]
1EF37C:  ADDS            R1, R6, #3
1EF37E:  STR             R0, [SP,#0x28+var_28]
1EF380:  BIC.W           R1, R1, #3
1EF384:  ADD             R0, R1
1EF386:  LDRD.W          R1, R2, [R4,#4]
1EF38A:  STRD.W          R0, R0, [SP,#0x28+var_24]
1EF38E:  MOV             R0, SP
1EF390:  BL              sub_1EF5D6
1EF394:  LDRD.W          R6, R0, [SP,#0x28+var_28]
1EF398:  LDRD.W          R12, LR, [R4]
1EF39C:  STRD.W          R6, R0, [R4]
1EF3A0:  MOV             R0, SP
1EF3A2:  LDRD.W          R8, R3, [R4,#8]
1EF3A6:  LDRD.W          R1, R2, [SP,#0x28+var_20]
1EF3AA:  STRD.W          R1, R2, [R4,#8]
1EF3AE:  STRD.W          R12, LR, [SP,#0x28+var_28]
1EF3B2:  STRD.W          R8, R3, [SP,#0x28+var_20]
1EF3B6:  BL              sub_1EF5C0
1EF3BA:  LDR             R0, [R4,#4]
1EF3BC:  LDR             R1, [R5]
1EF3BE:  STR.W           R1, [R0,#-4]
1EF3C2:  LDR             R0, [R4,#4]
1EF3C4:  SUBS            R0, #4
1EF3C6:  STR             R0, [R4,#4]
1EF3C8:  LDR             R0, [SP,#0x28+var_14]
1EF3CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EF3D0)
1EF3CC:  ADD             R1, PC; __stack_chk_guard_ptr
1EF3CE:  LDR             R1, [R1]; __stack_chk_guard
1EF3D0:  LDR             R1, [R1]
1EF3D2:  CMP             R1, R0
1EF3D4:  ITTT EQ
1EF3D6:  ADDEQ           SP, SP, #0x18
1EF3D8:  POPEQ.W         {R8}
1EF3DC:  POPEQ           {R4-R7,PC}
1EF3DE:  BLX             __stack_chk_fail
