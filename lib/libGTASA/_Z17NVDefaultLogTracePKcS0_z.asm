; =========================================================
; Game Engine Function: _Z17NVDefaultLogTracePKcS0_z
; Address            : 0x2770B0 - 0x277134
; =========================================================

2770B0:  SUB             SP, SP, #8
2770B2:  PUSH            {R4-R7,LR}
2770B4:  ADD             R7, SP, #0xC
2770B6:  PUSH.W          {R11}
2770BA:  SUB.W           SP, SP, #0x4000
2770BE:  SUB             SP, SP, #0x10
2770C0:  MOV             R4, R0
2770C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2770CC)
2770C4:  STR             R3, [R7,#var_sC]
2770C6:  MOV             R5, R1
2770C8:  ADD             R0, PC; __stack_chk_guard_ptr
2770CA:  MOV.W           R1, #0x4000
2770CE:  LDR             R0, [R0]; __stack_chk_guard
2770D0:  LDR             R0, [R0]
2770D2:  STR             R2, [R7,#var_s8]
2770D4:  STR.W           R0, [R7,#var_14]
2770D8:  ADD             R0, SP, #0x4020+var_4018
2770DA:  BLX             j___aeabi_memclr8
2770DE:  LDR             R0, =(g_NVLogMask_ptr - 0x2770E4)
2770E0:  ADD             R0, PC; g_NVLogMask_ptr
2770E2:  LDR             R0, [R0]; g_NVLogMask
2770E4:  LDRB            R0, [R0]
2770E6:  LSLS            R0, R0, #0x1E
2770E8:  BPL             loc_27710C
2770EA:  ADD             R6, SP, #0x4020+var_4018
2770EC:  ADD.W           R2, R7, #8
2770F0:  MOV             R1, R5
2770F2:  STR             R2, [SP,#0x4020+var_401C]
2770F4:  MOV             R0, R6
2770F6:  BL              sub_5E6C0C
2770FA:  LDR             R0, =(NVLogMessage_ptr - 0x277106)
2770FC:  ADR             R1, off_277140; char *
2770FE:  MOV             R2, R4
277100:  MOV             R3, R6
277102:  ADD             R0, PC; NVLogMessage_ptr
277104:  LDR             R0, [R0]; NVLogMessage
277106:  LDR             R5, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
277108:  MOVS            R0, #2; int
27710A:  BLX             R5; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
27710C:  LDR             R0, =(__stack_chk_guard_ptr - 0x277116)
27710E:  LDR.W           R1, [R7,#var_14]
277112:  ADD             R0, PC; __stack_chk_guard_ptr
277114:  LDR             R0, [R0]; __stack_chk_guard
277116:  LDR             R0, [R0]
277118:  SUBS            R0, R0, R1
27711A:  ITTTT EQ
27711C:  ADDEQ.W         SP, SP, #0x4000
277120:  ADDEQ           SP, SP, #0x10
277122:  POPEQ.W         {R11}
277126:  POPEQ.W         {R4-R7,LR}
27712A:  ITT EQ
27712C:  ADDEQ           SP, SP, #8
27712E:  BXEQ            LR
277130:  BLX             __stack_chk_fail
