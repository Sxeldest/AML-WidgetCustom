; =========================================================
; Game Engine Function: sub_20E494
; Address            : 0x20E494 - 0x20E550
; =========================================================

20E494:  PUSH            {R4-R7,LR}
20E496:  ADD             R7, SP, #0xC
20E498:  PUSH.W          {R2-R9,R11}
20E49C:  MOV             R4, R0
20E49E:  LDR             R0, =(__stack_chk_guard_ptr - 0x20E4A6)
20E4A0:  MOV             R5, R1
20E4A2:  ADD             R0, PC; __stack_chk_guard_ptr
20E4A4:  LDR             R0, [R0]; __stack_chk_guard
20E4A6:  LDR             R0, [R0]
20E4A8:  STR             R0, [SP,#0x30+var_1C]
20E4AA:  LDRD.W          R0, R1, [R4,#4]
20E4AE:  SUBS            R1, R1, R0
20E4B0:  CMP.W           R5, R1,ASR#2
20E4B4:  BLS             loc_20E502
20E4B6:  LDR             R1, [R4]
20E4B8:  SUBS            R0, R0, R1
20E4BA:  ADD.W           R1, R5, R0,ASR#2
20E4BE:  MOV             R0, R4
20E4C0:  BL              sub_20E3B4
20E4C4:  LDRD.W          R1, R2, [R4]
20E4C8:  MOV             R8, R0
20E4CA:  ADD.W           R0, R4, #0x10
20E4CE:  MOVS            R6, #0
20E4D0:  SUBS            R1, R2, R1
20E4D2:  STR             R0, [SP,#0x30+var_20]
20E4D4:  CMP.W           R8, #0
20E4D8:  MOV.W           R9, R1,ASR#2
20E4DC:  ITEE EQ
20E4DE:  MOVEQ           R0, #0
20E4E0:  MOVNE           R1, R8
20E4E2:  BLNE            sub_20E20C
20E4E6:  ADD.W           R1, R0, R8,LSL#2
20E4EA:  STR             R0, [SP,#0x30+var_30]
20E4EC:  ADD.W           R0, R0, R9,LSL#2
20E4F0:  STR             R1, [SP,#0x30+var_24]
20E4F2:  ADD.W           R1, R0, R5,LSL#2
20E4F6:  LSLS            R2, R5, #2
20E4F8:  STR             R0, [SP,#0x30+var_2C]
20E4FA:  CBZ             R2, loc_20E526
20E4FC:  STM             R0!, {R6}
20E4FE:  SUBS            R2, #4
20E500:  B               loc_20E4FA
20E502:  LDR             R0, [SP,#0x30+var_1C]
20E504:  LDR             R1, =(__stack_chk_guard_ptr - 0x20E50A)
20E506:  ADD             R1, PC; __stack_chk_guard_ptr
20E508:  LDR             R1, [R1]; __stack_chk_guard
20E50A:  LDR             R1, [R1]
20E50C:  CMP             R1, R0
20E50E:  ITTTT EQ
20E510:  MOVEQ           R0, R4
20E512:  MOVEQ           R1, R5
20E514:  ADDEQ           SP, SP, #0x18
20E516:  POPEQ.W         {R8,R9,R11}
20E51A:  ITT EQ
20E51C:  POPEQ.W         {R4-R7,LR}
20E520:  BEQ.W           sub_20E1D4
20E524:  B               loc_20E54C
20E526:  STR             R1, [SP,#0x30+var_28]
20E528:  MOV             R1, SP
20E52A:  MOV             R0, R4
20E52C:  BL              sub_20E568
20E530:  MOV             R0, SP
20E532:  BL              sub_20E598
20E536:  LDR             R0, [SP,#0x30+var_1C]
20E538:  LDR             R1, =(__stack_chk_guard_ptr - 0x20E53E)
20E53A:  ADD             R1, PC; __stack_chk_guard_ptr
20E53C:  LDR             R1, [R1]; __stack_chk_guard
20E53E:  LDR             R1, [R1]
20E540:  CMP             R1, R0
20E542:  ITTT EQ
20E544:  ADDEQ           SP, SP, #0x18
20E546:  POPEQ.W         {R8,R9,R11}
20E54A:  POPEQ           {R4-R7,PC}
20E54C:  BLX             __stack_chk_fail
