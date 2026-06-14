; =========================================================
; Game Engine Function: sub_6B318
; Address            : 0x6B318 - 0x6B35E
; =========================================================

6B318:  SUB             SP, SP, #4
6B31A:  PUSH            {R4,R6,R7,LR}
6B31C:  ADD             R7, SP, #8
6B31E:  SUB             SP, SP, #0xC
6B320:  LDR             R4, =(aSsampCrashlogT - 0x6B32C); "%sSAMP/crashlog.txt" ...
6B322:  MOVS            R2, #0xFF
6B324:  STR             R3, [R7,#var_s8]
6B326:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B32E)
6B328:  ADD             R4, PC; "%sSAMP/crashlog.txt"
6B32A:  ADD             R1, PC; __stack_chk_guard_ptr
6B32C:  MOV             R3, R4
6B32E:  LDR             R1, [R1]; __stack_chk_guard
6B330:  LDR             R1, [R1]
6B332:  STR             R1, [SP,#0x14+var_C]
6B334:  ADD.W           R1, R7, #8
6B338:  STRD.W          R1, R1, [SP,#0x14+var_14]
6B33C:  MOVS            R1, #0
6B33E:  BLX             __vsprintf_chk
6B342:  LDR             R0, [SP,#0x14+var_C]
6B344:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B34A)
6B346:  ADD             R1, PC; __stack_chk_guard_ptr
6B348:  LDR             R1, [R1]; __stack_chk_guard
6B34A:  LDR             R1, [R1]
6B34C:  CMP             R1, R0
6B34E:  ITTTT EQ
6B350:  ADDEQ           SP, SP, #0xC
6B352:  POPEQ.W         {R4,R6,R7,LR}
6B356:  ADDEQ           SP, SP, #4
6B358:  BXEQ            LR
6B35A:  BLX             __stack_chk_fail
