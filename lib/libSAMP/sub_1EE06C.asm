; =========================================================
; Game Engine Function: sub_1EE06C
; Address            : 0x1EE06C - 0x1EE0A2
; =========================================================

1EE06C:  PUSH            {R3-R7,LR}
1EE06E:  ADD             R7, SP, #0x10
1EE070:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EE078)
1EE072:  MOVS            R3, #0
1EE074:  ADD             R1, PC; __stack_chk_guard_ptr
1EE076:  LDR             R1, [R1]; __stack_chk_guard
1EE078:  LDR             R1, [R1]
1EE07A:  STR             R1, [SP,#0x10+var_4]
1EE07C:  LDRD.W          R1, R2, [R0]
1EE080:  STRD.W          R3, R3, [R0]
1EE084:  STRD.W          R1, R2, [SP,#0x10+var_C]
1EE088:  ADD             R0, SP, #0x10+var_C
1EE08A:  BL              sub_1EDFC8
1EE08E:  LDR             R0, [SP,#0x10+var_4]
1EE090:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EE096)
1EE092:  ADD             R1, PC; __stack_chk_guard_ptr
1EE094:  LDR             R1, [R1]; __stack_chk_guard
1EE096:  LDR             R1, [R1]
1EE098:  CMP             R1, R0
1EE09A:  IT EQ
1EE09C:  POPEQ           {R0-R3,R7,PC}
1EE09E:  BLX             __stack_chk_fail
