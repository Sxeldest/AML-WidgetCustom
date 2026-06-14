; =========================================================
; Game Engine Function: sub_94E9C
; Address            : 0x94E9C - 0x94F02
; =========================================================

94E9C:  SUB             SP, SP, #0xC
94E9E:  PUSH            {R4,R5,R7,LR}
94EA0:  ADD             R7, SP, #8
94EA2:  SUB             SP, SP, #0xC
94EA4:  ADD.W           R12, R7, #8
94EA8:  MOV             R4, R0
94EAA:  LDR             R0, =(dword_1ACF68 - 0x94EB8)
94EAC:  ADD.W           R5, R7, #8
94EB0:  STM.W           R12, {R1-R3}
94EB4:  ADD             R0, PC; dword_1ACF68
94EB6:  LDR             R1, =(__stack_chk_guard_ptr - 0x94EBC)
94EB8:  ADD             R1, PC; __stack_chk_guard_ptr
94EBA:  LDR             R1, [R1]; __stack_chk_guard
94EBC:  LDR             R1, [R1]
94EBE:  STR             R1, [SP,#0x14+var_C]
94EC0:  MOVW            R1, #0x1D19
94EC4:  LDR             R0, [R0]
94EC6:  STR             R5, [SP,#0x14+var_10]
94EC8:  LDRB            R0, [R0,R1]
94ECA:  CBZ             R0, loc_94ED2
94ECC:  BL              sub_9824C
94ED0:  B               loc_94EDA
94ED2:  MOVS            R0, #0
94ED4:  MOVS            R1, #1
94ED6:  BL              sub_9833C
94EDA:  MOV             R0, R4
94EDC:  MOV             R1, R5
94EDE:  BL              sub_A6270
94EE2:  BL              sub_94DC0
94EE6:  LDR             R0, [SP,#0x14+var_C]
94EE8:  LDR             R1, =(__stack_chk_guard_ptr - 0x94EEE)
94EEA:  ADD             R1, PC; __stack_chk_guard_ptr
94EEC:  LDR             R1, [R1]; __stack_chk_guard
94EEE:  LDR             R1, [R1]
94EF0:  CMP             R1, R0
94EF2:  ITTTT EQ
94EF4:  ADDEQ           SP, SP, #0xC
94EF6:  POPEQ.W         {R4,R5,R7,LR}
94EFA:  ADDEQ           SP, SP, #0xC
94EFC:  BXEQ            LR
94EFE:  BLX             __stack_chk_fail
