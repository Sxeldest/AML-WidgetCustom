; =========================================================
; Game Engine Function: sub_6B238
; Address            : 0x6B238 - 0x6B2F4
; =========================================================

6B238:  SUB             SP, SP, #0xC
6B23A:  PUSH            {R4-R7,LR}
6B23C:  ADD             R7, SP, #0xC
6B23E:  PUSH.W          {R11}
6B242:  SUB             SP, SP, #0x10C
6B244:  ADD.W           R12, R7, #8
6B248:  MOV             R4, R0
6B24A:  LDR             R0, =(dword_1A4404 - 0x6B254)
6B24C:  STM.W           R12, {R1-R3}
6B250:  ADD             R0, PC; dword_1A4404
6B252:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B25A)
6B254:  LDR             R0, [R0]
6B256:  ADD             R1, PC; __stack_chk_guard_ptr
6B258:  LDR             R1, [R1]; __stack_chk_guard
6B25A:  LDR             R1, [R1]
6B25C:  STR             R1, [SP,#0x11C+var_14]
6B25E:  MOV             R1, #0x6D687C
6B266:  ADDS            R3, R0, R1
6B268:  BEQ             loc_6B2E2
6B26A:  LDR             R6, =(dword_1A4414 - 0x6B270)
6B26C:  ADD             R6, PC; dword_1A4414
6B26E:  LDR             R0, [R6]
6B270:  CBNZ            R0, loc_6B286
6B272:  ADD             R5, SP, #0x11C+var_114
6B274:  MOV             R0, R5
6B276:  BL              sub_6B318
6B27A:  LDR             R1, =(aW - 0x6B282); "w" ...
6B27C:  MOV             R0, R5; filename
6B27E:  ADD             R1, PC; "w"
6B280:  BLX             fopen
6B284:  STR             R0, [R6]
6B286:  ADD             R5, SP, #0x11C+var_114
6B288:  MOVS            R1, #0xFF; n
6B28A:  MOV             R0, R5; int
6B28C:  BLX             sub_10967C
6B290:  ADD.W           R3, R7, #8; arg
6B294:  MOV             R0, R5; s
6B296:  MOVS            R1, #0xFF; maxlen
6B298:  MOV             R2, R4; format
6B29A:  STR             R3, [SP,#0x11C+var_118]
6B29C:  BLX             vsnprintf
6B2A0:  LDR             R1, =(aSampMobile - 0x6B2AA); "SAMP_MOBILE" ...
6B2A2:  MOVS            R0, #4; prio
6B2A4:  MOV             R2, R5; text
6B2A6:  ADD             R1, PC; "SAMP_MOBILE"
6B2A8:  BLX             __android_log_write
6B2AC:  LDR             R0, [R6]; stream
6B2AE:  CBZ             R0, loc_6B2C0
6B2B0:  LDR             R1, =(aS - 0x6B2B8); "%s\n" ...
6B2B2:  ADD             R2, SP, #0x11C+var_114
6B2B4:  ADD             R1, PC; "%s\n"
6B2B6:  BLX             fprintf
6B2BA:  LDR             R0, [R6]; stream
6B2BC:  BLX             fflush
6B2C0:  LDR             R0, [SP,#0x11C+var_14]
6B2C2:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B2C8)
6B2C4:  ADD             R1, PC; __stack_chk_guard_ptr
6B2C6:  LDR             R1, [R1]; __stack_chk_guard
6B2C8:  LDR             R1, [R1]
6B2CA:  CMP             R1, R0
6B2CC:  ITTTT EQ
6B2CE:  ADDEQ           SP, SP, #0x10C
6B2D0:  POPEQ.W         {R11}
6B2D4:  POPEQ.W         {R4-R7,LR}
6B2D8:  ADDEQ           SP, SP, #0xC
6B2DA:  IT EQ
6B2DC:  BXEQ            LR
6B2DE:  BLX             __stack_chk_fail
6B2E2:  LDR             R1, =(aSampOrig - 0x6B2EC); "SAMP_ORIG" ...
6B2E4:  MOVS            R0, #6; prio
6B2E6:  LDR             R2, =(aFailedToInitia - 0x6B2EE); "Failed to initialize settings. (game st"... ...
6B2E8:  ADD             R1, PC; "SAMP_ORIG"
6B2EA:  ADD             R2, PC; "Failed to initialize settings. (game st"...
6B2EC:  BLX             __android_log_print
6B2F0:  BLX             j__ZSt9terminatev; std::terminate(void)
