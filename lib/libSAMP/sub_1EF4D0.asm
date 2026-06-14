; =========================================================
; Game Engine Function: sub_1EF4D0
; Address            : 0x1EF4D0 - 0x1EF59E
; =========================================================

1EF4D0:  PUSH            {R4-R7,LR}
1EF4D2:  ADD             R7, SP, #0xC
1EF4D4:  PUSH.W          {R8}
1EF4D8:  SUB             SP, SP, #0x18
1EF4DA:  MOV             R4, R0
1EF4DC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF4E4)
1EF4DE:  MOV             R5, R1
1EF4E0:  ADD             R0, PC; __stack_chk_guard_ptr
1EF4E2:  LDR             R0, [R0]; __stack_chk_guard
1EF4E4:  LDR             R0, [R0]
1EF4E6:  STR             R0, [SP,#0x28+var_14]
1EF4E8:  LDRD.W          R1, R0, [R4]; src
1EF4EC:  CMP             R0, R1
1EF4EE:  BNE             loc_1EF578
1EF4F0:  LDRD.W          R1, R2, [R4,#8]
1EF4F4:  CMP             R1, R2
1EF4F6:  BCS             loc_1EF51C
1EF4F8:  SUBS            R2, R2, R1
1EF4FA:  MOVS            R3, #1
1EF4FC:  ADD.W           R2, R3, R2,ASR#2
1EF500:  MOV             R3, #0xFFFFFFFD
1EF504:  ADD.W           R2, R2, R2,LSR#31
1EF508:  AND.W           R6, R3, R2,LSL#1
1EF50C:  ADDS            R2, R1, R6
1EF50E:  BL              sub_1EF60C
1EF512:  LDR             R1, [R4,#8]
1EF514:  STR             R0, [R4,#4]
1EF516:  ADD             R1, R6
1EF518:  STR             R1, [R4,#8]
1EF51A:  B               loc_1EF578
1EF51C:  LDR             R1, [R4,#0x10]
1EF51E:  SUBS            R0, R2, R0
1EF520:  STR             R1, [SP,#0x28+var_18]
1EF522:  MOV.W           R6, R0,ASR#1
1EF526:  IT EQ
1EF528:  MOVEQ           R6, #1
1EF52A:  MOV             R0, R1
1EF52C:  MOV             R1, R6
1EF52E:  BL              sub_1EF628
1EF532:  ADD.W           R1, R0, R6,LSL#2
1EF536:  STR             R1, [SP,#0x28+var_1C]
1EF538:  ADDS            R1, R6, #3
1EF53A:  STR             R0, [SP,#0x28+var_28]
1EF53C:  BIC.W           R1, R1, #3
1EF540:  ADD             R0, R1
1EF542:  LDRD.W          R1, R2, [R4,#4]
1EF546:  STRD.W          R0, R0, [SP,#0x28+var_24]
1EF54A:  MOV             R0, SP
1EF54C:  BL              sub_1EF5D6
1EF550:  LDRD.W          R6, R0, [SP,#0x28+var_28]
1EF554:  LDRD.W          R12, LR, [R4]
1EF558:  STRD.W          R6, R0, [R4]
1EF55C:  MOV             R0, SP
1EF55E:  LDRD.W          R8, R3, [R4,#8]
1EF562:  LDRD.W          R1, R2, [SP,#0x28+var_20]
1EF566:  STRD.W          R1, R2, [R4,#8]
1EF56A:  STRD.W          R12, LR, [SP,#0x28+var_28]
1EF56E:  STRD.W          R8, R3, [SP,#0x28+var_20]
1EF572:  BL              sub_1EF5C0
1EF576:  LDR             R0, [R4,#4]
1EF578:  LDR             R1, [R5]
1EF57A:  STR.W           R1, [R0,#-4]
1EF57E:  LDR             R0, [R4,#4]
1EF580:  SUBS            R0, #4
1EF582:  STR             R0, [R4,#4]
1EF584:  LDR             R0, [SP,#0x28+var_14]
1EF586:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EF58C)
1EF588:  ADD             R1, PC; __stack_chk_guard_ptr
1EF58A:  LDR             R1, [R1]; __stack_chk_guard
1EF58C:  LDR             R1, [R1]
1EF58E:  CMP             R1, R0
1EF590:  ITTT EQ
1EF592:  ADDEQ           SP, SP, #0x18
1EF594:  POPEQ.W         {R8}
1EF598:  POPEQ           {R4-R7,PC}
1EF59A:  BLX             __stack_chk_fail
