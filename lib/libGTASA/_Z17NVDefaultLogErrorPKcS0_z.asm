; =========================================================
; Game Engine Function: _Z17NVDefaultLogErrorPKcS0_z
; Address            : 0x276E98 - 0x276F1C
; =========================================================

276E98:  SUB             SP, SP, #8
276E9A:  PUSH            {R4-R7,LR}
276E9C:  ADD             R7, SP, #0xC
276E9E:  PUSH.W          {R11}
276EA2:  SUB.W           SP, SP, #0x4000
276EA6:  SUB             SP, SP, #0x10
276EA8:  MOV             R4, R0
276EAA:  LDR             R0, =(__stack_chk_guard_ptr - 0x276EB4)
276EAC:  STR             R3, [R7,#var_sC]
276EAE:  MOV             R5, R1
276EB0:  ADD             R0, PC; __stack_chk_guard_ptr
276EB2:  MOV.W           R1, #0x4000
276EB6:  LDR             R0, [R0]; __stack_chk_guard
276EB8:  LDR             R0, [R0]
276EBA:  STR             R2, [R7,#var_s8]
276EBC:  STR.W           R0, [R7,#var_14]
276EC0:  ADD             R0, SP, #0x4020+var_4018
276EC2:  BLX             j___aeabi_memclr8
276EC6:  LDR             R0, =(g_NVLogMask_ptr - 0x276ECC)
276EC8:  ADD             R0, PC; g_NVLogMask_ptr
276ECA:  LDR             R0, [R0]; g_NVLogMask
276ECC:  LDRB            R0, [R0]
276ECE:  LSLS            R0, R0, #0x1B
276ED0:  BPL             loc_276EF4
276ED2:  ADD             R6, SP, #0x4020+var_4018
276ED4:  ADD.W           R2, R7, #8
276ED8:  MOV             R1, R5
276EDA:  STR             R2, [SP,#0x4020+var_401C]
276EDC:  MOV             R0, R6
276EDE:  BL              sub_5E6C0C
276EE2:  LDR             R0, =(NVLogMessage_ptr - 0x276EEE)
276EE4:  ADR             R1, off_276F28; char *
276EE6:  MOV             R2, R4
276EE8:  MOV             R3, R6
276EEA:  ADD             R0, PC; NVLogMessage_ptr
276EEC:  LDR             R0, [R0]; NVLogMessage
276EEE:  LDR             R5, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276EF0:  MOVS            R0, #0x10; int
276EF2:  BLX             R5; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276EF4:  LDR             R0, =(__stack_chk_guard_ptr - 0x276EFE)
276EF6:  LDR.W           R1, [R7,#var_14]
276EFA:  ADD             R0, PC; __stack_chk_guard_ptr
276EFC:  LDR             R0, [R0]; __stack_chk_guard
276EFE:  LDR             R0, [R0]
276F00:  SUBS            R0, R0, R1
276F02:  ITTTT EQ
276F04:  ADDEQ.W         SP, SP, #0x4000
276F08:  ADDEQ           SP, SP, #0x10
276F0A:  POPEQ.W         {R11}
276F0E:  POPEQ.W         {R4-R7,LR}
276F12:  ITT EQ
276F14:  ADDEQ           SP, SP, #8
276F16:  BXEQ            LR
276F18:  BLX             __stack_chk_fail
