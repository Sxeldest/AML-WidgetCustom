; =========================================================
; Game Engine Function: _Z17NVDefaultLogFatalPKcS0_z
; Address            : 0x276F30 - 0x276FB4
; =========================================================

276F30:  SUB             SP, SP, #8
276F32:  PUSH            {R4-R7,LR}
276F34:  ADD             R7, SP, #0xC
276F36:  PUSH.W          {R11}
276F3A:  SUB.W           SP, SP, #0x4000
276F3E:  SUB             SP, SP, #0x10
276F40:  MOV             R4, R0
276F42:  LDR             R0, =(__stack_chk_guard_ptr - 0x276F4C)
276F44:  STR             R3, [R7,#var_sC]
276F46:  MOV             R5, R1
276F48:  ADD             R0, PC; __stack_chk_guard_ptr
276F4A:  MOV.W           R1, #0x4000
276F4E:  LDR             R0, [R0]; __stack_chk_guard
276F50:  LDR             R0, [R0]
276F52:  STR             R2, [R7,#var_s8]
276F54:  STR.W           R0, [R7,#var_14]
276F58:  ADD             R0, SP, #0x4020+var_4018
276F5A:  BLX             j___aeabi_memclr8
276F5E:  LDR             R0, =(g_NVLogMask_ptr - 0x276F64)
276F60:  ADD             R0, PC; g_NVLogMask_ptr
276F62:  LDR             R0, [R0]; g_NVLogMask
276F64:  LDRB            R0, [R0]
276F66:  LSLS            R0, R0, #0x1A
276F68:  BPL             loc_276F8C
276F6A:  ADD             R6, SP, #0x4020+var_4018
276F6C:  ADD.W           R2, R7, #8
276F70:  MOV             R1, R5
276F72:  STR             R2, [SP,#0x4020+var_401C]
276F74:  MOV             R0, R6
276F76:  BL              sub_5E6C0C
276F7A:  LDR             R0, =(NVLogMessage_ptr - 0x276F86)
276F7C:  ADR             R1, off_276FC0; char *
276F7E:  MOV             R2, R4
276F80:  MOV             R3, R6
276F82:  ADD             R0, PC; NVLogMessage_ptr
276F84:  LDR             R0, [R0]; NVLogMessage
276F86:  LDR             R5, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276F88:  MOVS            R0, #0x20 ; ' '; int
276F8A:  BLX             R5; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276F8C:  LDR             R0, =(__stack_chk_guard_ptr - 0x276F96)
276F8E:  LDR.W           R1, [R7,#var_14]
276F92:  ADD             R0, PC; __stack_chk_guard_ptr
276F94:  LDR             R0, [R0]; __stack_chk_guard
276F96:  LDR             R0, [R0]
276F98:  SUBS            R0, R0, R1
276F9A:  ITTTT EQ
276F9C:  ADDEQ.W         SP, SP, #0x4000
276FA0:  ADDEQ           SP, SP, #0x10
276FA2:  POPEQ.W         {R11}
276FA6:  POPEQ.W         {R4-R7,LR}
276FAA:  ITT EQ
276FAC:  ADDEQ           SP, SP, #8
276FAE:  BXEQ            LR
276FB0:  BLX             __stack_chk_fail
