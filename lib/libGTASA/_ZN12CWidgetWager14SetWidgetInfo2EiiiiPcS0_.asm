; =========================================================
; Game Engine Function: _ZN12CWidgetWager14SetWidgetInfo2EiiiiPcS0_
; Address            : 0x2C9690 - 0x2C9710
; =========================================================

2C9690:  PUSH            {R4-R7,LR}
2C9692:  ADD             R7, SP, #0xC
2C9694:  PUSH.W          {R8-R11}
2C9698:  SUB             SP, SP, #0x114
2C969A:  MOV             R4, R0
2C969C:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C96A6)
2C969E:  MOV             R6, R1
2C96A0:  MOV             R8, R3
2C96A2:  ADD             R0, PC; __stack_chk_guard_ptr
2C96A4:  MOV             R9, R2
2C96A6:  CMP             R6, #3
2C96A8:  LDR             R0, [R0]; __stack_chk_guard
2C96AA:  LDR             R0, [R0]
2C96AC:  STR             R0, [SP,#0x130+var_20]
2C96AE:  BHI             loc_2C96F6
2C96B0:  LDR             R5, =(byte_61CD7E - 0x2C96BE)
2C96B2:  MOV             R10, SP
2C96B4:  LDRD.W          R1, R11, [R7,#arg_4]
2C96B8:  MOV             R0, R10; char *
2C96BA:  ADD             R5, PC; byte_61CD7E
2C96BC:  CMP             R1, #0
2C96BE:  IT EQ
2C96C0:  MOVEQ           R1, R5; char *
2C96C2:  BLX             strcpy
2C96C6:  CMP.W           R11, #0
2C96CA:  ADD.W           R0, R10, #0x80; char *
2C96CE:  IT NE
2C96D0:  MOVNE           R5, R11
2C96D2:  MOV             R1, R5; char *
2C96D4:  BLX             strcpy
2C96D8:  MOV.W           R0, #0x10C
2C96DC:  LDR             R1, [R7,#arg_0]
2C96DE:  MLA.W           R0, R6, R0, R4
2C96E2:  STRD.W          R9, R8, [SP,#0x130+var_30]
2C96E6:  STR             R1, [SP,#0x130+var_28]
2C96E8:  MOV             R1, R10; void *
2C96EA:  MOV.W           R2, #0x10C; size_t
2C96EE:  ADD.W           R0, R0, #0x110; void *
2C96F2:  BLX             memcpy_0
2C96F6:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C96FE)
2C96F8:  LDR             R1, [SP,#0x130+var_20]
2C96FA:  ADD             R0, PC; __stack_chk_guard_ptr
2C96FC:  LDR             R0, [R0]; __stack_chk_guard
2C96FE:  LDR             R0, [R0]
2C9700:  SUBS            R0, R0, R1
2C9702:  ITTT EQ
2C9704:  ADDEQ           SP, SP, #0x114
2C9706:  POPEQ.W         {R8-R11}
2C970A:  POPEQ           {R4-R7,PC}
2C970C:  BLX             __stack_chk_fail
