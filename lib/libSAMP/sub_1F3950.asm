; =========================================================
; Game Engine Function: sub_1F3950
; Address            : 0x1F3950 - 0x1F3990
; =========================================================

1F3950:  PUSH            {R2-R4,R6,R7,LR}
1F3952:  ADD             R7, SP, #0x10
1F3954:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F395A)
1F3956:  ADD             R1, PC; __stack_chk_guard_ptr
1F3958:  LDR             R1, [R1]; __stack_chk_guard
1F395A:  LDR             R1, [R1]
1F395C:  STR             R1, [SP,#0x10+var_C]
1F395E:  LDRB            R1, [R0,#0x14]
1F3960:  LSLS            R1, R1, #0x1F
1F3962:  BNE             loc_1F3978
1F3964:  MOVS            R1, #0
1F3966:  LDR             R4, [R0,#8]
1F3968:  MOV             R0, SP; this
1F396A:  STR             R1, [SP,#0x10+var_10]
1F396C:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
1F3970:  CMP             R4, #0
1F3972:  IT NE
1F3974:  MOVNE           R4, #1
1F3976:  B               loc_1F397A
1F3978:  MOVS            R4, #1
1F397A:  LDR             R0, [SP,#0x10+var_C]
1F397C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F3982)
1F397E:  ADD             R1, PC; __stack_chk_guard_ptr
1F3980:  LDR             R1, [R1]; __stack_chk_guard
1F3982:  LDR             R1, [R1]
1F3984:  CMP             R1, R0
1F3986:  ITT EQ
1F3988:  MOVEQ           R0, R4
1F398A:  POPEQ           {R2-R4,R6,R7,PC}
1F398C:  BLX             __stack_chk_fail
