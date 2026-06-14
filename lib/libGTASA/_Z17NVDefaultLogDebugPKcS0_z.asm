; =========================================================
; Game Engine Function: _Z17NVDefaultLogDebugPKcS0_z
; Address            : 0x276CD0 - 0x276D54
; =========================================================

276CD0:  SUB             SP, SP, #8
276CD2:  PUSH            {R4-R7,LR}
276CD4:  ADD             R7, SP, #0xC
276CD6:  PUSH.W          {R11}
276CDA:  SUB.W           SP, SP, #0x4000
276CDE:  SUB             SP, SP, #0x10
276CE0:  MOV             R4, R0
276CE2:  LDR             R0, =(__stack_chk_guard_ptr - 0x276CEC)
276CE4:  STR             R3, [R7,#var_sC]
276CE6:  MOV             R5, R1
276CE8:  ADD             R0, PC; __stack_chk_guard_ptr
276CEA:  MOV.W           R1, #0x4000
276CEE:  LDR             R0, [R0]; __stack_chk_guard
276CF0:  LDR             R0, [R0]
276CF2:  STR             R2, [R7,#var_s8]
276CF4:  STR.W           R0, [R7,#var_14]
276CF8:  ADD             R0, SP, #0x4020+var_4018
276CFA:  BLX             j___aeabi_memclr8
276CFE:  LDR             R0, =(g_NVLogMask_ptr - 0x276D04)
276D00:  ADD             R0, PC; g_NVLogMask_ptr
276D02:  LDR             R0, [R0]; g_NVLogMask
276D04:  LDRB            R0, [R0]
276D06:  LSLS            R0, R0, #0x1F
276D08:  BEQ             loc_276D2C
276D0A:  ADD             R6, SP, #0x4020+var_4018
276D0C:  ADD.W           R2, R7, #8
276D10:  MOV             R1, R5
276D12:  STR             R2, [SP,#0x4020+var_401C]
276D14:  MOV             R0, R6
276D16:  BL              sub_5E6C0C
276D1A:  LDR             R0, =(NVLogMessage_ptr - 0x276D26)
276D1C:  ADR             R1, off_276D60; char *
276D1E:  MOV             R2, R4
276D20:  MOV             R3, R6
276D22:  ADD             R0, PC; NVLogMessage_ptr
276D24:  LDR             R0, [R0]; NVLogMessage
276D26:  LDR             R5, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276D28:  MOVS            R0, #1; int
276D2A:  BLX             R5; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276D2C:  LDR             R0, =(__stack_chk_guard_ptr - 0x276D36)
276D2E:  LDR.W           R1, [R7,#var_14]
276D32:  ADD             R0, PC; __stack_chk_guard_ptr
276D34:  LDR             R0, [R0]; __stack_chk_guard
276D36:  LDR             R0, [R0]
276D38:  SUBS            R0, R0, R1
276D3A:  ITTTT EQ
276D3C:  ADDEQ.W         SP, SP, #0x4000
276D40:  ADDEQ           SP, SP, #0x10
276D42:  POPEQ.W         {R11}
276D46:  POPEQ.W         {R4-R7,LR}
276D4A:  ITT EQ
276D4C:  ADDEQ           SP, SP, #8
276D4E:  BXEQ            LR
276D50:  BLX             __stack_chk_fail
