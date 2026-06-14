; =========================================================
; Game Engine Function: sub_7C73C
; Address            : 0x7C73C - 0x7C778
; =========================================================

7C73C:  PUSH            {R4,R6,R7,LR}
7C73E:  ADD             R7, SP, #8
7C740:  SUB             SP, SP, #8
7C742:  MOV             R4, R0
7C744:  LDR             R0, =(__stack_chk_guard_ptr - 0x7C74C)
7C746:  MOV             R2, SP
7C748:  ADD             R0, PC; __stack_chk_guard_ptr
7C74A:  LDR             R0, [R0]; __stack_chk_guard
7C74C:  LDR             R0, [R0]
7C74E:  STR             R0, [SP,#0x10+var_C]
7C750:  ADD.W           R0, R4, #0x48 ; 'H'
7C754:  LDR             R3, [R4,#0x4C]
7C756:  STR             R1, [SP,#0x10+var_10]
7C758:  MOV             R1, R3
7C75A:  BL              sub_7C4F0
7C75E:  LDR             R0, [SP,#0x10+var_10]
7C760:  STR             R4, [R0,#4]
7C762:  LDR             R0, [SP,#0x10+var_C]
7C764:  LDR             R1, =(__stack_chk_guard_ptr - 0x7C76A)
7C766:  ADD             R1, PC; __stack_chk_guard_ptr
7C768:  LDR             R1, [R1]; __stack_chk_guard
7C76A:  LDR             R1, [R1]
7C76C:  CMP             R1, R0
7C76E:  ITT EQ
7C770:  ADDEQ           SP, SP, #8
7C772:  POPEQ           {R4,R6,R7,PC}
7C774:  BLX             __stack_chk_fail
