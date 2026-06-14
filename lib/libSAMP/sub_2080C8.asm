; =========================================================
; Game Engine Function: sub_2080C8
; Address            : 0x2080C8 - 0x2080F8
; =========================================================

2080C8:  PUSH            {R5-R7,LR}
2080CA:  ADD             R7, SP, #8
2080CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x2080D2)
2080CE:  ADD             R1, PC; __stack_chk_guard_ptr
2080D0:  LDR             R1, [R1]; __stack_chk_guard
2080D2:  LDR             R1, [R1]
2080D4:  STR             R1, [SP,#8+var_4]
2080D6:  BL              sub_21FCA0
2080DA:  STR             R0, [SP,#8+var_8]
2080DC:  MOV             R0, SP
2080DE:  BL              sub_20E0DC
2080E2:  LDR             R0, [SP,#8+var_4]
2080E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x2080EA)
2080E6:  ADD             R1, PC; __stack_chk_guard_ptr
2080E8:  LDR             R1, [R1]; __stack_chk_guard
2080EA:  LDR             R1, [R1]
2080EC:  CMP             R1, R0
2080EE:  ITT EQ
2080F0:  MOVEQ           R0, #1
2080F2:  POPEQ           {R2,R3,R7,PC}
2080F4:  BLX             __stack_chk_fail
