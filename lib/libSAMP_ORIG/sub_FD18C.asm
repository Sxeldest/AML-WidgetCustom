; =========================================================
; Game Engine Function: sub_FD18C
; Address            : 0xFD18C - 0xFD1BA
; =========================================================

FD18C:  PUSH            {R3-R7,LR}
FD18E:  ADD             R7, SP, #0x10
FD190:  LDR             R3, =(__stack_chk_guard_ptr - 0xFD198)
FD192:  ADDS            R0, #0xC
FD194:  ADD             R3, PC; __stack_chk_guard_ptr
FD196:  LDR             R3, [R3]; __stack_chk_guard
FD198:  LDR             R3, [R3]
FD19A:  STR             R3, [SP,#0x10+var_4]
FD19C:  STRD.W          R1, R2, [SP,#0x10+var_C]
FD1A0:  ADD             R1, SP, #0x10+var_C
FD1A2:  BL              sub_FD1C4
FD1A6:  LDR             R0, [SP,#0x10+var_4]
FD1A8:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD1AE)
FD1AA:  ADD             R1, PC; __stack_chk_guard_ptr
FD1AC:  LDR             R1, [R1]; __stack_chk_guard
FD1AE:  LDR             R1, [R1]
FD1B0:  CMP             R1, R0
FD1B2:  IT EQ
FD1B4:  POPEQ           {R0-R3,R7,PC}
FD1B6:  BLX             __stack_chk_fail
