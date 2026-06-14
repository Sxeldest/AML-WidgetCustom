; =========================================================
; Game Engine Function: sub_5E8320
; Address            : 0x5E8320 - 0x5E8350
; =========================================================

5E8320:  PUSH            {R7,LR}
5E8322:  MOV             R7, SP
5E8324:  SUB             SP, SP, #8
5E8326:  LDR             R3, =(__stack_chk_guard_ptr - 0x5E832C)
5E8328:  ADD             R3, PC; __stack_chk_guard_ptr
5E832A:  LDR             R3, [R3]; __stack_chk_guard
5E832C:  LDR             R3, [R3]
5E832E:  STR             R3, [SP,#0x10+var_C]
5E8330:  MOVS            R3, #0
5E8332:  STR             R1, [SP,#0x10+var_10]
5E8334:  MOV             R1, SP
5E8336:  BL              sub_5E8524
5E833A:  LDR             R1, =(__stack_chk_guard_ptr - 0x5E8342)
5E833C:  LDR             R2, [SP,#0x10+var_C]
5E833E:  ADD             R1, PC; __stack_chk_guard_ptr
5E8340:  LDR             R1, [R1]; __stack_chk_guard
5E8342:  LDR             R1, [R1]
5E8344:  SUBS            R1, R1, R2
5E8346:  ITT EQ
5E8348:  ADDEQ           SP, SP, #8
5E834A:  POPEQ           {R7,PC}
5E834C:  BLX.W           __stack_chk_fail
