; =========================================================
; Game Engine Function: _Z14OS_GetDateTimeP8DateTime
; Address            : 0x26C324 - 0x26C380
; =========================================================

26C324:  PUSH            {R4-R7,LR}
26C326:  ADD             R7, SP, #0xC
26C328:  PUSH.W          {R11}
26C32C:  SUB             SP, SP, #0x38
26C32E:  ADD             R1, SP, #0x48+var_18; tp
26C330:  MOV             R4, R0
26C332:  MOVS            R0, #0; clock_id
26C334:  BLX             clock_gettime
26C338:  LDR             R0, [SP,#0x48+var_18]
26C33A:  MOV             R1, SP; tp
26C33C:  STR             R0, [SP,#0x48+timer]
26C33E:  ADD             R0, SP, #0x48+timer; timer
26C340:  BLX             localtime_r
26C344:  LDRD.W          R12, R1, [SP,#0x48+var_3C]
26C348:  MOVW            R5, #0x851F
26C34C:  LDR             R2, [SP,#0x48+var_34]
26C34E:  MOVT            R5, #0x51EB
26C352:  LDR             R3, [SP,#0x48+var_40]
26C354:  ADDS            R1, #1
26C356:  LDRD.W          R0, LR, [SP,#0x48+var_48]
26C35A:  ADDW            R2, R2, #0x76C
26C35E:  STRD.W          R1, R12, [R4]
26C362:  ADD.W           R1, R4, #8
26C366:  STM.W           R1, {R2,R3,LR}
26C36A:  SMMUL.W         R5, R0, R5
26C36E:  ASRS            R6, R5, #5
26C370:  ADD.W           R5, R6, R5,LSR#31
26C374:  STRD.W          R0, R5, [R4,#0x14]
26C378:  ADD             SP, SP, #0x38 ; '8'
26C37A:  POP.W           {R11}
26C37E:  POP             {R4-R7,PC}
