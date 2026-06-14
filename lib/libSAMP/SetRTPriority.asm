; =========================================================
; Game Engine Function: SetRTPriority
; Address            : 0x1C0CD0 - 0x1C0D60
; =========================================================

1C0CD0:  PUSH            {R11,LR}
1C0CD4:  MOV             R11, SP
1C0CD8:  SUB             SP, SP, #8
1C0CDC:  LDR             R0, =(RTPrioLevel_ptr - 0x1C0CEC)
1C0CE0:  LDR             R1, =(__stack_chk_guard_ptr - 0x1C0CF0)
1C0CE4:  LDR             R0, [PC,R0]; RTPrioLevel
1C0CE8:  LDR             R1, [PC,R1]; __stack_chk_guard
1C0CEC:  LDR             R0, [R0]
1C0CF0:  LDR             R1, [R1]
1C0CF4:  CMP             R0, #1
1C0CF8:  STR             R1, [SP,#8+var_4]
1C0CFC:  BLT             loc_1C0D40
1C0D00:  MOV             R0, #2; algorithm
1C0D04:  BL              sched_get_priority_min
1C0D08:  STR             R0, [SP,#8+var_8]
1C0D0C:  BL              pthread_self
1C0D10:  MOV             R2, SP; param
1C0D14:  MOV             R1, #2; policy
1C0D18:  BL              pthread_setschedparam
1C0D1C:  CMP             R0, #0
1C0D20:  BEQ             loc_1C0D40
1C0D24:  LDR             R0, =(LogLevel_ptr - 0x1C0D30)
1C0D28:  LDR             R0, [PC,R0]; LogLevel
1C0D2C:  LDR             R0, [R0]
1C0D30:  CMP             R0, #0
1C0D34:  ADRNE           R0, aSetrtpriority_0; "SetRTPriority"
1C0D38:  ADRNE           R1, aFailedToSetPri; "Failed to set priority level for thread"...
1C0D3C:  BLNE            j_al_print
1C0D40:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0D50)
1C0D44:  LDR             R1, [SP,#8+var_4]
1C0D48:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0D4C:  LDR             R0, [R0]
1C0D50:  SUBS            R0, R0, R1
1C0D54:  MOVEQ           SP, R11
1C0D58:  POPEQ           {R11,PC}
1C0D5C:  BL              __stack_chk_fail
