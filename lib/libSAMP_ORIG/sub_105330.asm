; =========================================================
; Game Engine Function: sub_105330
; Address            : 0x105330 - 0x10537A
; =========================================================

105330:  PUSH            {R0-R5,R7,LR}
105332:  ADD             R7, SP, #0x18
105334:  MOV             R5, R0
105336:  LDR             R0, =(__stack_chk_guard_ptr - 0x10533E)
105338:  MOV             R4, R1
10533A:  ADD             R0, PC; __stack_chk_guard_ptr
10533C:  LDR             R0, [R0]; __stack_chk_guard
10533E:  LDR             R0, [R0]
105340:  STR             R0, [SP,#0x18+var_C]
105342:  LDRB            R0, [R5,#0xC]
105344:  CBZ             R0, loc_105352
105346:  LDR             R1, =(asc_4FD56 - 0x10534E); "~" ...
105348:  MOV             R0, R4
10534A:  ADD             R1, PC; "~"
10534C:  ADDS            R2, R1, #1
10534E:  BL              sub_FFB40
105352:  LDR             R1, [R5,#8]
105354:  LDR             R0, [R1]
105356:  LDR             R2, [R0,#0x18]
105358:  ADD             R0, SP, #0x18+var_14
10535A:  BLX             R2
10535C:  LDRD.W          R1, R2, [SP,#0x18+var_14]
105360:  MOV             R0, R4
105362:  BL              sub_FFB40
105366:  LDR             R0, [SP,#0x18+var_C]
105368:  LDR             R1, =(__stack_chk_guard_ptr - 0x10536E)
10536A:  ADD             R1, PC; __stack_chk_guard_ptr
10536C:  LDR             R1, [R1]; __stack_chk_guard
10536E:  LDR             R1, [R1]
105370:  CMP             R1, R0
105372:  IT EQ
105374:  POPEQ           {R0-R5,R7,PC}
105376:  BLX             __stack_chk_fail
