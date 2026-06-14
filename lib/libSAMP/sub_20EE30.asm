; =========================================================
; Game Engine Function: sub_20EE30
; Address            : 0x20EE30 - 0x20EEA6
; =========================================================

20EE30:  PUSH            {R4-R7,LR}
20EE32:  ADD             R7, SP, #0xC
20EE34:  PUSH.W          {R6-R9,R11}
20EE38:  MOV             R4, R0
20EE3A:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EE44)
20EE3C:  MOV             R8, R2
20EE3E:  CMP             R4, R1
20EE40:  ADD             R0, PC; __stack_chk_guard_ptr
20EE42:  LDR             R0, [R0]; __stack_chk_guard
20EE44:  LDR             R0, [R0]
20EE46:  STR             R0, [SP,#0x20+var_1C]
20EE48:  BEQ             loc_20EE80
20EE4A:  MOV             R5, R1
20EE4C:  BLX             __errno
20EE50:  MOV             R6, R0
20EE52:  LDR.W           R9, [R0]
20EE56:  MOVS            R0, #0
20EE58:  MOV             R1, SP
20EE5A:  STR             R0, [R6]
20EE5C:  MOV             R0, R4
20EE5E:  BL              sub_20EEB8
20EE62:  VMOV            S0, R0
20EE66:  LDR             R0, [R6]
20EE68:  CBZ             R0, loc_20EE76
20EE6A:  LDR             R1, [SP,#0x20+var_20]
20EE6C:  CMP             R1, R5
20EE6E:  BNE             loc_20EE80
20EE70:  CMP             R0, #0x22 ; '"'
20EE72:  BEQ             loc_20EE84
20EE74:  B               loc_20EE8A
20EE76:  LDR             R0, [SP,#0x20+var_20]
20EE78:  STR.W           R9, [R6]
20EE7C:  CMP             R0, R5
20EE7E:  BEQ             loc_20EE8A
20EE80:  VLDR            S0, =0.0
20EE84:  MOVS            R0, #4
20EE86:  STR.W           R0, [R8]
20EE8A:  LDR             R0, [SP,#0x20+var_1C]
20EE8C:  LDR             R1, =(__stack_chk_guard_ptr - 0x20EE92)
20EE8E:  ADD             R1, PC; __stack_chk_guard_ptr
20EE90:  LDR             R1, [R1]; __stack_chk_guard
20EE92:  LDR             R1, [R1]
20EE94:  CMP             R1, R0
20EE96:  ITTT EQ
20EE98:  VMOVEQ          R0, S0
20EE9C:  POPEQ.W         {R2,R3,R8,R9,R11}
20EEA0:  POPEQ           {R4-R7,PC}
20EEA2:  BLX             __stack_chk_fail
