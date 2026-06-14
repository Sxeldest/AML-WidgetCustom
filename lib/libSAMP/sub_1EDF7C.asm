; =========================================================
; Game Engine Function: sub_1EDF7C
; Address            : 0x1EDF7C - 0x1EDFC0
; =========================================================

1EDF7C:  PUSH            {R0-R4,R6,R7,LR}
1EDF7E:  ADD             R7, SP, #0x18
1EDF80:  MOV             R4, R0
1EDF82:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDF8A)
1EDF84:  MOVS            R3, #0
1EDF86:  ADD             R0, PC; __stack_chk_guard_ptr
1EDF88:  LDR             R0, [R0]; __stack_chk_guard
1EDF8A:  LDR             R0, [R0]
1EDF8C:  STR             R0, [SP,#0x18+var_C]
1EDF8E:  LDRD.W          R0, R2, [R1]
1EDF92:  STRD.W          R3, R3, [R1]
1EDF96:  LDRD.W          R1, R3, [R4]
1EDF9A:  STRD.W          R0, R2, [R4]
1EDF9E:  STRD.W          R1, R3, [SP,#0x18+var_14]
1EDFA2:  ADD             R0, SP, #0x18+var_14
1EDFA4:  BL              sub_1EDFC8
1EDFA8:  LDR             R0, [SP,#0x18+var_C]
1EDFAA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EDFB0)
1EDFAC:  ADD             R1, PC; __stack_chk_guard_ptr
1EDFAE:  LDR             R1, [R1]; __stack_chk_guard
1EDFB0:  LDR             R1, [R1]
1EDFB2:  CMP             R1, R0
1EDFB4:  ITTT EQ
1EDFB6:  MOVEQ           R0, R4
1EDFB8:  ADDEQ           SP, SP, #0x10
1EDFBA:  POPEQ           {R4,R6,R7,PC}
1EDFBC:  BLX             __stack_chk_fail
