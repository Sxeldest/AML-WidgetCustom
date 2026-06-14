; =========================================================
; Game Engine Function: sub_220348
; Address            : 0x220348 - 0x22037E
; =========================================================

220348:  SUB             SP, SP, #4
22034A:  PUSH            {R4-R7,LR}
22034C:  ADD             R7, SP, #0xC
22034E:  STR             R3, [R7,#var_s8]
220350:  LDR             R3, =(__stack_chk_guard_ptr - 0x220356)
220352:  ADD             R3, PC; __stack_chk_guard_ptr
220354:  LDR             R3, [R3]; __stack_chk_guard
220356:  LDR             R3, [R3]
220358:  STR             R3, [SP,#0xC+var_4]
22035A:  ADD.W           R3, R7, #8
22035E:  STR             R3, [SP,#0xC+var_8]
220360:  BL              sub_220388
220364:  LDR             R1, [SP,#0xC+var_4]
220366:  LDR             R2, =(__stack_chk_guard_ptr - 0x22036C)
220368:  ADD             R2, PC; __stack_chk_guard_ptr
22036A:  LDR             R2, [R2]; __stack_chk_guard
22036C:  LDR             R2, [R2]
22036E:  CMP             R2, R1
220370:  ITTT EQ
220372:  POPEQ.W         {R1-R3,R7,LR}
220376:  ADDEQ           SP, SP, #4
220378:  BXEQ            LR
22037A:  BLX             __stack_chk_fail
