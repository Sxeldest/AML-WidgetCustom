; =========================================================
; Game Engine Function: _Z16NVDefaultLogWarnPKcS0_z
; Address            : 0x276E00 - 0x276E84
; =========================================================

276E00:  SUB             SP, SP, #8
276E02:  PUSH            {R4-R7,LR}
276E04:  ADD             R7, SP, #0xC
276E06:  PUSH.W          {R11}
276E0A:  SUB.W           SP, SP, #0x4000
276E0E:  SUB             SP, SP, #0x10
276E10:  MOV             R4, R0
276E12:  LDR             R0, =(__stack_chk_guard_ptr - 0x276E1C)
276E14:  STR             R3, [R7,#var_sC]
276E16:  MOV             R5, R1
276E18:  ADD             R0, PC; __stack_chk_guard_ptr
276E1A:  MOV.W           R1, #0x4000
276E1E:  LDR             R0, [R0]; __stack_chk_guard
276E20:  LDR             R0, [R0]
276E22:  STR             R2, [R7,#var_s8]
276E24:  STR.W           R0, [R7,#var_14]
276E28:  ADD             R0, SP, #0x4020+var_4018
276E2A:  BLX             j___aeabi_memclr8
276E2E:  LDR             R0, =(g_NVLogMask_ptr - 0x276E34)
276E30:  ADD             R0, PC; g_NVLogMask_ptr
276E32:  LDR             R0, [R0]; g_NVLogMask
276E34:  LDRB            R0, [R0]
276E36:  LSLS            R0, R0, #0x1C
276E38:  BPL             loc_276E5C
276E3A:  ADD             R6, SP, #0x4020+var_4018
276E3C:  ADD.W           R2, R7, #8
276E40:  MOV             R1, R5
276E42:  STR             R2, [SP,#0x4020+var_401C]
276E44:  MOV             R0, R6
276E46:  BL              sub_5E6C0C
276E4A:  LDR             R0, =(NVLogMessage_ptr - 0x276E56)
276E4C:  ADR             R1, off_276E90; char *
276E4E:  MOV             R2, R4
276E50:  MOV             R3, R6
276E52:  ADD             R0, PC; NVLogMessage_ptr
276E54:  LDR             R0, [R0]; NVLogMessage
276E56:  LDR             R5, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276E58:  MOVS            R0, #8; int
276E5A:  BLX             R5; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276E5C:  LDR             R0, =(__stack_chk_guard_ptr - 0x276E66)
276E5E:  LDR.W           R1, [R7,#var_14]
276E62:  ADD             R0, PC; __stack_chk_guard_ptr
276E64:  LDR             R0, [R0]; __stack_chk_guard
276E66:  LDR             R0, [R0]
276E68:  SUBS            R0, R0, R1
276E6A:  ITTTT EQ
276E6C:  ADDEQ.W         SP, SP, #0x4000
276E70:  ADDEQ           SP, SP, #0x10
276E72:  POPEQ.W         {R11}
276E76:  POPEQ.W         {R4-R7,LR}
276E7A:  ITT EQ
276E7C:  ADDEQ           SP, SP, #8
276E7E:  BXEQ            LR
276E80:  BLX             __stack_chk_fail
