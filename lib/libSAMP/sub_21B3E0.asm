; =========================================================
; Game Engine Function: sub_21B3E0
; Address            : 0x21B3E0 - 0x21B440
; =========================================================

21B3E0:  PUSH            {R0-R5,R7,LR}
21B3E2:  ADD             R7, SP, #0x18
21B3E4:  MOV             R5, R0
21B3E6:  LDR             R0, =(__stack_chk_guard_ptr - 0x21B3EC)
21B3E8:  ADD             R0, PC; __stack_chk_guard_ptr
21B3EA:  LDR             R0, [R0]; __stack_chk_guard
21B3EC:  LDR             R0, [R0]
21B3EE:  STR             R0, [SP,#0x18+var_C]
21B3F0:  MOV             R0, R5
21B3F2:  BL              sub_21B5BC
21B3F6:  STR             R0, [SP,#0x18+var_10]
21B3F8:  CBZ             R0, loc_21B426
21B3FA:  MOV             R4, R0
21B3FC:  LDRD.W          R0, R1, [R5]
21B400:  CMP             R1, R0
21B402:  BEQ             loc_21B428
21B404:  LDRB            R0, [R0]
21B406:  CMP             R0, #0x49 ; 'I'
21B408:  BNE             loc_21B428
21B40A:  MOV             R0, R5
21B40C:  MOVS            R1, #0
21B40E:  MOVS            R4, #0
21B410:  BL              sub_217130
21B414:  STR             R0, [SP,#0x18+var_14]
21B416:  CBZ             R0, loc_21B428
21B418:  ADD             R1, SP, #0x18+var_10
21B41A:  ADD             R2, SP, #0x18+var_14
21B41C:  MOV             R0, R5
21B41E:  BL              sub_2173BC
21B422:  MOV             R4, R0
21B424:  B               loc_21B428
21B426:  MOVS            R4, #0
21B428:  LDR             R0, [SP,#0x18+var_C]
21B42A:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B430)
21B42C:  ADD             R1, PC; __stack_chk_guard_ptr
21B42E:  LDR             R1, [R1]; __stack_chk_guard
21B430:  LDR             R1, [R1]
21B432:  CMP             R1, R0
21B434:  ITTT EQ
21B436:  MOVEQ           R0, R4
21B438:  ADDEQ           SP, SP, #0x10
21B43A:  POPEQ           {R4,R5,R7,PC}
21B43C:  BLX             __stack_chk_fail
