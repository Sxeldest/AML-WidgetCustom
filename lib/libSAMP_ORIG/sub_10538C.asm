; =========================================================
; Game Engine Function: sub_10538C
; Address            : 0x10538C - 0x1053E6
; =========================================================

10538C:  PUSH            {R4-R7,LR}
10538E:  ADD             R7, SP, #0xC
105390:  PUSH.W          {R11}
105394:  SUB             SP, SP, #8
105396:  MOV             R4, R0
105398:  LDR             R0, =(__stack_chk_guard_ptr - 0x1053A2)
10539A:  MOV             R5, R1
10539C:  MOVS            R6, #0
10539E:  ADD             R0, PC; __stack_chk_guard_ptr
1053A0:  MOV             R1, SP
1053A2:  LDR             R0, [R0]; __stack_chk_guard
1053A4:  LDR             R0, [R0]
1053A6:  STR             R0, [SP,#0x18+var_14]
1053A8:  MOV             R0, R5
1053AA:  STR             R6, [SP,#0x18+var_18]
1053AC:  BL              sub_10049E
1053B0:  CBNZ            R0, loc_1053BE
1053B2:  LDRD.W          R0, R1, [R5]
1053B6:  SUBS            R2, R1, R0
1053B8:  LDR             R1, [SP,#0x18+var_18]
1053BA:  CMP             R2, R1
1053BC:  BCS             loc_1053C4
1053BE:  STRD.W          R6, R6, [R4]
1053C2:  B               loc_1053CC
1053C4:  ADD             R1, R0
1053C6:  STR             R1, [R5]
1053C8:  STRD.W          R0, R1, [R4]
1053CC:  LDR             R0, [SP,#0x18+var_14]
1053CE:  LDR             R1, =(__stack_chk_guard_ptr - 0x1053D4)
1053D0:  ADD             R1, PC; __stack_chk_guard_ptr
1053D2:  LDR             R1, [R1]; __stack_chk_guard
1053D4:  LDR             R1, [R1]
1053D6:  CMP             R1, R0
1053D8:  ITTT EQ
1053DA:  ADDEQ           SP, SP, #8
1053DC:  POPEQ.W         {R11}
1053E0:  POPEQ           {R4-R7,PC}
1053E2:  BLX             __stack_chk_fail
