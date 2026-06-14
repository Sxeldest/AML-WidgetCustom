; =========================================================
; Game Engine Function: sub_96334
; Address            : 0x96334 - 0x963F4
; =========================================================

96334:  PUSH            {R4,R5,R7,LR}
96336:  ADD             R7, SP, #8
96338:  SUB             SP, SP, #0x18
9633A:  MOV             R5, R0
9633C:  LDR             R0, =(__stack_chk_guard_ptr - 0x96344)
9633E:  MOV             R4, R1
96340:  ADD             R0, PC; __stack_chk_guard_ptr
96342:  LDR             R0, [R0]; __stack_chk_guard
96344:  LDR             R0, [R0]
96346:  STR             R0, [SP,#0x20+var_C]
96348:  LDRB.W          R0, [R1,#0x7D]
9634C:  CBZ             R0, loc_9635E
9634E:  LDR.W           R0, [R4,#0x90]
96352:  CMP             R0, #0
96354:  ITT LE
96356:  LDRLE.W         R0, [R4,#0x94]
9635A:  CMPLE           R0, #0
9635C:  BLE             loc_96372
9635E:  LDRB.W          R0, [R4,#0x81]
96362:  CBZ             R0, loc_9637C
96364:  LDR.W           R0, [R4,#0xA8]
96368:  CBNZ            R0, loc_9637C
9636A:  LDR.W           R0, [R4,#0xA4]
9636E:  CMP             R0, #1
96370:  BLT             loc_9637C
96372:  LDR             R1, [R4,#0x28]
96374:  LDR             R0, [R4,#0x24]
96376:  STRD.W          R0, R1, [SP,#0x20+var_18]
9637A:  B               loc_963C8
9637C:  VLDR            S0, [R4,#0x2C]
96380:  VCMP.F32        S0, #0.0
96384:  VMRS            APSR_nzcv, FPSCR
96388:  ITTT EQ
9638A:  VLDREQ          S0, [R4,#0xD8]
9638E:  VLDREQ          S2, [R4,#0xE0]
96392:  VSUBEQ.F32      S0, S2, S0
96396:  VLDR            S2, [R4,#0x30]
9639A:  VCVT.S32.F32    S0, S0
9639E:  VCMP.F32        S2, #0.0
963A2:  VMRS            APSR_nzcv, FPSCR
963A6:  ITTT EQ
963A8:  VLDREQ          S2, [R4,#0xDC]
963AC:  VLDREQ          S4, [R4,#0xE4]
963B0:  VSUBEQ.F32      S2, S4, S2
963B4:  VCVT.S32.F32    S2, S2
963B8:  VCVT.F32.S32    S0, S0
963BC:  VCVT.F32.S32    S2, S2
963C0:  VSTR            S0, [SP,#0x20+var_18]
963C4:  VSTR            S2, [SP,#0x20+var_14]
963C8:  ADD             R2, SP, #0x20+var_18
963CA:  MOV             R0, SP
963CC:  MOV             R1, R4
963CE:  BL              sub_965F4
963D2:  LDRD.W          R2, R3, [SP,#0x20+var_20]
963D6:  MOV             R0, R5
963D8:  MOV             R1, R4
963DA:  BL              sub_963FC
963DE:  LDR             R0, [SP,#0x20+var_C]
963E0:  LDR             R1, =(__stack_chk_guard_ptr - 0x963E6)
963E2:  ADD             R1, PC; __stack_chk_guard_ptr
963E4:  LDR             R1, [R1]; __stack_chk_guard
963E6:  LDR             R1, [R1]
963E8:  CMP             R1, R0
963EA:  ITT EQ
963EC:  ADDEQ           SP, SP, #0x18
963EE:  POPEQ           {R4,R5,R7,PC}
963F0:  BLX             __stack_chk_fail
