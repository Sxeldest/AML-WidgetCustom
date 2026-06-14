; =========================================================
; Game Engine Function: InitializeCriticalSection
; Address            : 0x1C0938 - 0x1C09A4
; =========================================================

1C0938:  PUSH            {R4,R5,R11,LR}
1C093C:  ADD             R11, SP, #8
1C0940:  SUB             SP, SP, #8
1C0944:  MOV             R4, R0
1C0948:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0958)
1C094C:  MOV             R5, SP
1C0950:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0954:  LDR             R0, [R0]
1C0958:  STR             R0, [SP,#0x10+var_C]
1C095C:  MOV             R0, R5; attr
1C0960:  BL              pthread_mutexattr_init
1C0964:  MOV             R0, R5
1C0968:  MOV             R1, #1
1C096C:  BL              pthread_mutexattr_settype
1C0970:  MOV             R0, R4; mutex
1C0974:  MOV             R1, R5; mutexattr
1C0978:  BL              pthread_mutex_init
1C097C:  MOV             R0, R5; attr
1C0980:  BL              pthread_mutexattr_destroy
1C0984:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0994)
1C0988:  LDR             R1, [SP,#0x10+var_C]
1C098C:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0990:  LDR             R0, [R0]
1C0994:  SUBS            R0, R0, R1
1C0998:  SUBEQ           SP, R11, #8
1C099C:  POPEQ           {R4,R5,R11,PC}
1C09A0:  BL              __stack_chk_fail
