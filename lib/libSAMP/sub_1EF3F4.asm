; =========================================================
; Game Engine Function: sub_1EF3F4
; Address            : 0x1EF3F4 - 0x1EF4BC
; =========================================================

1EF3F4:  PUSH            {R4-R7,LR}
1EF3F6:  ADD             R7, SP, #0xC
1EF3F8:  PUSH.W          {R8}
1EF3FC:  SUB             SP, SP, #0x18
1EF3FE:  MOV             R4, R0
1EF400:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF408)
1EF402:  MOV             R5, R1
1EF404:  ADD             R0, PC; __stack_chk_guard_ptr
1EF406:  LDR             R0, [R0]; __stack_chk_guard
1EF408:  LDR             R0, [R0]
1EF40A:  STR             R0, [SP,#0x28+var_14]
1EF40C:  LDRD.W          R1, R0, [R4,#8]; int
1EF410:  CMP             R1, R0
1EF412:  BNE             loc_1EF498
1EF414:  LDRD.W          R2, R0, [R4]; src
1EF418:  CMP             R0, R2
1EF41A:  BLS             loc_1EF440
1EF41C:  SUBS            R2, R0, R2
1EF41E:  MOVS            R3, #1
1EF420:  ADD.W           R2, R3, R2,ASR#2
1EF424:  ADD.W           R2, R2, R2,LSR#31
1EF428:  LSRS            R6, R2, #1
1EF42A:  SUB.W           R2, R0, R6,LSL#2; dest
1EF42E:  BL              sub_1EF5F2
1EF432:  MOV             R1, R0
1EF434:  STR             R0, [R4,#8]
1EF436:  LDR             R0, [R4,#4]
1EF438:  SUB.W           R0, R0, R6,LSL#2
1EF43C:  STR             R0, [R4,#4]
1EF43E:  B               loc_1EF498
1EF440:  SUBS            R1, R1, R2
1EF442:  LDR             R0, [R4,#0x10]
1EF444:  STR             R0, [SP,#0x28+var_18]
1EF446:  MOV.W           R6, R1,ASR#1
1EF44A:  IT EQ
1EF44C:  MOVEQ           R6, #1
1EF44E:  MOV             R1, R6
1EF450:  BL              sub_1EF628
1EF454:  BIC.W           R1, R6, #3
1EF458:  STR             R0, [SP,#0x28+var_28]
1EF45A:  ADD             R1, R0
1EF45C:  STR             R1, [SP,#0x28+var_20]
1EF45E:  STR             R1, [SP,#0x28+var_24]
1EF460:  ADD.W           R0, R0, R6,LSL#2
1EF464:  LDRD.W          R1, R2, [R4,#4]
1EF468:  STR             R0, [SP,#0x28+var_1C]
1EF46A:  MOV             R0, SP
1EF46C:  BL              sub_1EF5D6
1EF470:  LDRD.W          R6, R0, [SP,#0x28+var_28]
1EF474:  LDRD.W          R12, LR, [R4]
1EF478:  STRD.W          R6, R0, [R4]
1EF47C:  MOV             R0, SP
1EF47E:  LDRD.W          R8, R3, [R4,#8]
1EF482:  LDRD.W          R1, R2, [SP,#0x28+var_20]
1EF486:  STRD.W          R1, R2, [R4,#8]
1EF48A:  STRD.W          R12, LR, [SP,#0x28+var_28]
1EF48E:  STRD.W          R8, R3, [SP,#0x28+var_20]
1EF492:  BL              sub_1EF5C0
1EF496:  LDR             R1, [R4,#8]
1EF498:  LDR             R0, [R5]
1EF49A:  STR             R0, [R1]
1EF49C:  LDR             R0, [R4,#8]
1EF49E:  ADDS            R0, #4
1EF4A0:  STR             R0, [R4,#8]
1EF4A2:  LDR             R0, [SP,#0x28+var_14]
1EF4A4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EF4AA)
1EF4A6:  ADD             R1, PC; __stack_chk_guard_ptr
1EF4A8:  LDR             R1, [R1]; __stack_chk_guard
1EF4AA:  LDR             R1, [R1]
1EF4AC:  CMP             R1, R0
1EF4AE:  ITTT EQ
1EF4B0:  ADDEQ           SP, SP, #0x18
1EF4B2:  POPEQ.W         {R8}
1EF4B6:  POPEQ           {R4-R7,PC}
1EF4B8:  BLX             __stack_chk_fail
