; =========================================================
; Game Engine Function: sub_A7558
; Address            : 0xA7558 - 0xA75CE
; =========================================================

A7558:  PUSH            {R4,R5,R7,LR}
A755A:  ADD             R7, SP, #8
A755C:  SUB             SP, SP, #0x10
A755E:  LDR             R0, =(off_114D5C - 0xA7564)
A7560:  ADD             R0, PC; off_114D5C
A7562:  LDR             R0, [R0]; dword_1ACF68
A7564:  LDR             R0, [R0]
A7566:  LDR             R1, =(__stack_chk_guard_ptr - 0xA756C)
A7568:  ADD             R1, PC; __stack_chk_guard_ptr
A756A:  LDR             R1, [R1]; __stack_chk_guard
A756C:  LDR             R1, [R1]
A756E:  STR             R1, [SP,#0x18+var_C]
A7570:  MOVW            R1, #0x19AC
A7574:  LDR             R4, [R0,R1]
A7576:  MOVS            R1, #1
A7578:  LDRB.W          R2, [R4,#0x7F]
A757C:  STRB.W          R1, [R4,#0x7C]
A7580:  CBNZ            R2, loc_A75B8
A7582:  VLDR            S0, [R4,#0xEC]
A7586:  LDR.W           R5, [R4,#0x15C]
A758A:  VCMP.F32        S0, #0.0
A758E:  STR.W           R1, [R4,#0x15C]
A7592:  VMRS            APSR_nzcv, FPSCR
A7596:  BLE             loc_A759E
A7598:  MOVS            R0, #0
A759A:  STR             R0, [SP,#0x18+var_10]
A759C:  B               loc_A75AA
A759E:  MOVW            R1, #0x18C8
A75A2:  ADD             R0, R1
A75A4:  LDR             R0, [R0]
A75A6:  STR             R0, [SP,#0x18+var_10]
A75A8:  MOVS            R0, #0
A75AA:  STR             R0, [SP,#0x18+var_14]
A75AC:  ADD             R0, SP, #0x18+var_14
A75AE:  MOVS            R1, #0
A75B0:  BL              sub_8B104
A75B4:  STR.W           R5, [R4,#0x15C]
A75B8:  LDR             R0, [SP,#0x18+var_C]
A75BA:  LDR             R1, =(__stack_chk_guard_ptr - 0xA75C0)
A75BC:  ADD             R1, PC; __stack_chk_guard_ptr
A75BE:  LDR             R1, [R1]; __stack_chk_guard
A75C0:  LDR             R1, [R1]
A75C2:  CMP             R1, R0
A75C4:  ITT EQ
A75C6:  ADDEQ           SP, SP, #0x10
A75C8:  POPEQ           {R4,R5,R7,PC}
A75CA:  BLX             __stack_chk_fail
