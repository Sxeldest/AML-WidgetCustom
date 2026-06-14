; =========================================================
; Game Engine Function: _Z12NVDefaultLog11ENVLogLevelPKcS1_S1_z
; Address            : 0x276AC4 - 0x276B40
; =========================================================

276AC4:  PUSH            {R4-R7,LR}
276AC6:  ADD             R7, SP, #0xC
276AC8:  PUSH.W          {R8,R9,R11}
276ACC:  SUB.W           SP, SP, #0x4000
276AD0:  SUB             SP, SP, #0x10
276AD2:  MOV             R6, R0
276AD4:  LDR             R0, =(__stack_chk_guard_ptr - 0x276AE0)
276AD6:  MOV             R5, R1
276AD8:  MOV.W           R1, #0x4000
276ADC:  ADD             R0, PC; __stack_chk_guard_ptr
276ADE:  MOV             R4, R3
276AE0:  MOV             R8, R2
276AE2:  LDR             R0, [R0]; __stack_chk_guard
276AE4:  LDR             R0, [R0]
276AE6:  STR.W           R0, [R7,#var_1C]
276AEA:  ADD             R0, SP, #0x4028+var_4020
276AEC:  BLX             j___aeabi_memclr8
276AF0:  LDR             R0, =(g_NVLogMask_ptr - 0x276AF6)
276AF2:  ADD             R0, PC; g_NVLogMask_ptr
276AF4:  LDR             R0, [R0]; g_NVLogMask
276AF6:  LDR             R0, [R0]
276AF8:  TST             R0, R6
276AFA:  BEQ             loc_276B20
276AFC:  ADD.W           R9, SP, #0x4028+var_4020
276B00:  ADD.W           R2, R7, #8
276B04:  MOV             R1, R4
276B06:  STR             R2, [SP,#0x4028+var_4024]
276B08:  MOV             R0, R9
276B0A:  BL              sub_5E6C0C
276B0E:  LDR             R0, =(NVLogMessage_ptr - 0x276B1A)
276B10:  MOV             R1, R5; char *
276B12:  MOV             R2, R8
276B14:  MOV             R3, R9
276B16:  ADD             R0, PC; NVLogMessage_ptr
276B18:  LDR             R0, [R0]; NVLogMessage
276B1A:  LDR             R4, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276B1C:  MOV             R0, R6; int
276B1E:  BLX             R4; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276B20:  LDR             R0, =(__stack_chk_guard_ptr - 0x276B2A)
276B22:  LDR.W           R1, [R7,#var_1C]
276B26:  ADD             R0, PC; __stack_chk_guard_ptr
276B28:  LDR             R0, [R0]; __stack_chk_guard
276B2A:  LDR             R0, [R0]
276B2C:  SUBS            R0, R0, R1
276B2E:  ITTTT EQ
276B30:  ADDEQ.W         SP, SP, #0x4000
276B34:  ADDEQ           SP, SP, #0x10
276B36:  POPEQ.W         {R8,R9,R11}
276B3A:  POPEQ           {R4-R7,PC}
276B3C:  BLX             __stack_chk_fail
