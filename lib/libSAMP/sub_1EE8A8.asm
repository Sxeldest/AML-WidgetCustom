; =========================================================
; Game Engine Function: sub_1EE8A8
; Address            : 0x1EE8A8 - 0x1EE906
; =========================================================

1EE8A8:  PUSH            {R4-R7,LR}
1EE8AA:  ADD             R7, SP, #0xC
1EE8AC:  PUSH.W          {R11}
1EE8B0:  SUB             SP, SP, #0x18
1EE8B2:  MOV             R4, R0
1EE8B4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE8BE)
1EE8B6:  MOV             R5, R2
1EE8B8:  MOV             R6, R1
1EE8BA:  ADD             R0, PC; __stack_chk_guard_ptr
1EE8BC:  LDR             R0, [R0]; __stack_chk_guard
1EE8BE:  LDR             R0, [R0]
1EE8C0:  STR             R0, [SP,#0x28+var_14]
1EE8C2:  MOVS            R0, #0x30 ; '0'; unsigned int
1EE8C4:  BLX             j__Znwj; operator new(uint)
1EE8C8:  MOVS            R1, #1
1EE8CA:  STR             R1, [SP,#0x28+var_1C]
1EE8CC:  ADD             R1, SP, #0x28+var_18
1EE8CE:  STRD.W          R0, R1, [SP,#0x28+var_24]
1EE8D2:  MOV             R1, R6
1EE8D4:  MOV             R2, R5
1EE8D6:  BL              sub_1EE92C
1EE8DA:  ADD.W           R1, R0, #0xC
1EE8DE:  STRD.W          R1, R0, [R4]
1EE8E2:  MOVS            R0, #0
1EE8E4:  STR             R0, [SP,#0x28+var_24]
1EE8E6:  ADD             R0, SP, #0x28+var_24
1EE8E8:  BL              sub_1EE95C
1EE8EC:  LDR             R0, [SP,#0x28+var_14]
1EE8EE:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EE8F4)
1EE8F0:  ADD             R1, PC; __stack_chk_guard_ptr
1EE8F2:  LDR             R1, [R1]; __stack_chk_guard
1EE8F4:  LDR             R1, [R1]
1EE8F6:  CMP             R1, R0
1EE8F8:  ITTT EQ
1EE8FA:  ADDEQ           SP, SP, #0x18
1EE8FC:  POPEQ.W         {R11}
1EE900:  POPEQ           {R4-R7,PC}
1EE902:  BLX             __stack_chk_fail
