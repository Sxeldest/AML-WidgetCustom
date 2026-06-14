; =========================================================
; Game Engine Function: sub_F7A70
; Address            : 0xF7A70 - 0xF7AE4
; =========================================================

F7A70:  PUSH            {R4-R7,LR}
F7A72:  ADD             R7, SP, #0xC
F7A74:  PUSH.W          {R11}
F7A78:  SUB             SP, SP, #8
F7A7A:  MOV             R4, R0
F7A7C:  LDR             R0, =(__stack_chk_guard_ptr - 0xF7A82)
F7A7E:  ADD             R0, PC; __stack_chk_guard_ptr
F7A80:  LDR             R0, [R0]; __stack_chk_guard
F7A82:  LDR             R0, [R0]
F7A84:  STR             R0, [SP,#0x18+var_14]
F7A86:  MOV             R0, SP; attr
F7A88:  BLX             pthread_mutexattr_init
F7A8C:  MOV             R5, R0
F7A8E:  CBNZ            R0, loc_F7AC8
F7A90:  MOV             R0, SP
F7A92:  MOVS            R1, #1
F7A94:  BLX             pthread_mutexattr_settype
F7A98:  CBZ             R0, loc_F7AA4
F7A9A:  MOV             R5, R0
F7A9C:  MOV             R0, SP; attr
F7A9E:  BLX             pthread_mutexattr_destroy
F7AA2:  B               loc_F7AC8
F7AA4:  MOV             R6, SP
F7AA6:  MOV             R0, R4; mutex
F7AA8:  MOV             R1, R6; mutexattr
F7AAA:  BLX             pthread_mutex_init
F7AAE:  MOV             R5, R0
F7AB0:  MOV             R0, R6; attr
F7AB2:  BLX             pthread_mutexattr_destroy
F7AB6:  CBNZ            R5, loc_F7AC8
F7AB8:  MOV             R6, R0
F7ABA:  CBZ             R0, loc_F7AC6
F7ABC:  MOV             R0, R4; mutex
F7ABE:  BLX             pthread_mutex_destroy
F7AC2:  MOV             R5, R6
F7AC4:  B               loc_F7AC8
F7AC6:  MOVS            R5, #0
F7AC8:  LDR             R0, [SP,#0x18+var_14]
F7ACA:  LDR             R1, =(__stack_chk_guard_ptr - 0xF7AD0)
F7ACC:  ADD             R1, PC; __stack_chk_guard_ptr
F7ACE:  LDR             R1, [R1]; __stack_chk_guard
F7AD0:  LDR             R1, [R1]
F7AD2:  CMP             R1, R0
F7AD4:  ITTTT EQ
F7AD6:  MOVEQ           R0, R5
F7AD8:  ADDEQ           SP, SP, #8
F7ADA:  POPEQ.W         {R11}
F7ADE:  POPEQ           {R4-R7,PC}
F7AE0:  BLX             __stack_chk_fail
