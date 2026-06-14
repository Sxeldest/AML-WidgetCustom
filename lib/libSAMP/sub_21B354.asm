; =========================================================
; Game Engine Function: sub_21B354
; Address            : 0x21B354 - 0x21B3D4
; =========================================================

21B354:  PUSH            {R0-R5,R7,LR}
21B356:  ADD             R7, SP, #0x18
21B358:  MOV             R4, R0
21B35A:  LDR             R0, =(__stack_chk_guard_ptr - 0x21B360)
21B35C:  ADD             R0, PC; __stack_chk_guard_ptr
21B35E:  LDR             R0, [R0]; __stack_chk_guard
21B360:  LDR             R0, [R0]
21B362:  STR             R0, [SP,#0x18+var_C]
21B364:  LDRD.W          R0, R1, [R4]
21B368:  CMP             R1, R0
21B36A:  BEQ             loc_21B38A
21B36C:  LDRB            R0, [R0]
21B36E:  CMP             R0, #0x44 ; 'D'
21B370:  BEQ             loc_21B3A6
21B372:  CMP             R0, #0x54 ; 'T'
21B374:  BNE             loc_21B38A
21B376:  MOV             R0, R4
21B378:  BL              sub_2174C8
21B37C:  MOV             R5, R0
21B37E:  STR             R0, [SP,#0x18+var_10]
21B380:  CBZ             R0, loc_21B3BC
21B382:  ADD.W           R0, R4, #0x94
21B386:  ADD             R1, SP, #0x18+var_10
21B388:  B               loc_21B3B8
21B38A:  LDR             R0, [SP,#0x18+var_C]
21B38C:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B392)
21B38E:  ADD             R1, PC; __stack_chk_guard_ptr
21B390:  LDR             R1, [R1]; __stack_chk_guard
21B392:  LDR             R1, [R1]
21B394:  CMP             R1, R0
21B396:  ITTTT EQ
21B398:  MOVEQ           R0, R4
21B39A:  ADDEQ           SP, SP, #0x10
21B39C:  POPEQ.W         {R4,R5,R7,LR}
21B3A0:  BEQ.W           sub_21700C
21B3A4:  B               loc_21B3D0
21B3A6:  MOV             R0, R4
21B3A8:  BL              sub_21767C
21B3AC:  MOV             R5, R0
21B3AE:  STR             R0, [SP,#0x18+var_14]
21B3B0:  CBZ             R0, loc_21B3BC
21B3B2:  ADD.W           R0, R4, #0x94
21B3B6:  ADD             R1, SP, #0x18+var_14
21B3B8:  BL              sub_216CEC
21B3BC:  LDR             R0, [SP,#0x18+var_C]
21B3BE:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B3C4)
21B3C0:  ADD             R1, PC; __stack_chk_guard_ptr
21B3C2:  LDR             R1, [R1]; __stack_chk_guard
21B3C4:  LDR             R1, [R1]
21B3C6:  CMP             R1, R0
21B3C8:  ITTT EQ
21B3CA:  MOVEQ           R0, R5
21B3CC:  ADDEQ           SP, SP, #0x10
21B3CE:  POPEQ           {R4,R5,R7,PC}
21B3D0:  BLX             __stack_chk_fail
