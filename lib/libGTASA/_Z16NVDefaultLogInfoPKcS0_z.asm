; =========================================================
; Game Engine Function: _Z16NVDefaultLogInfoPKcS0_z
; Address            : 0x276D68 - 0x276DEC
; =========================================================

276D68:  SUB             SP, SP, #8
276D6A:  PUSH            {R4-R7,LR}
276D6C:  ADD             R7, SP, #0xC
276D6E:  PUSH.W          {R11}
276D72:  SUB.W           SP, SP, #0x4000
276D76:  SUB             SP, SP, #0x10
276D78:  MOV             R4, R0
276D7A:  LDR             R0, =(__stack_chk_guard_ptr - 0x276D84)
276D7C:  STR             R3, [R7,#var_sC]
276D7E:  MOV             R5, R1
276D80:  ADD             R0, PC; __stack_chk_guard_ptr
276D82:  MOV.W           R1, #0x4000
276D86:  LDR             R0, [R0]; __stack_chk_guard
276D88:  LDR             R0, [R0]
276D8A:  STR             R2, [R7,#var_s8]
276D8C:  STR.W           R0, [R7,#var_14]
276D90:  ADD             R0, SP, #0x4020+var_4018
276D92:  BLX             j___aeabi_memclr8
276D96:  LDR             R0, =(g_NVLogMask_ptr - 0x276D9C)
276D98:  ADD             R0, PC; g_NVLogMask_ptr
276D9A:  LDR             R0, [R0]; g_NVLogMask
276D9C:  LDRB            R0, [R0]
276D9E:  LSLS            R0, R0, #0x1D
276DA0:  BPL             loc_276DC4
276DA2:  ADD             R6, SP, #0x4020+var_4018
276DA4:  ADD.W           R2, R7, #8
276DA8:  MOV             R1, R5
276DAA:  STR             R2, [SP,#0x4020+var_401C]
276DAC:  MOV             R0, R6
276DAE:  BL              sub_5E6C0C
276DB2:  LDR             R0, =(NVLogMessage_ptr - 0x276DBE)
276DB4:  ADR             R1, off_276DF8; char *
276DB6:  MOV             R2, R4
276DB8:  MOV             R3, R6
276DBA:  ADD             R0, PC; NVLogMessage_ptr
276DBC:  LDR             R0, [R0]; NVLogMessage
276DBE:  LDR             R5, [R0]; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276DC0:  MOVS            R0, #4; int
276DC2:  BLX             R5; NVDefaultLogMessage(ENVLogLevel,char const*,char const*,char const*)
276DC4:  LDR             R0, =(__stack_chk_guard_ptr - 0x276DCE)
276DC6:  LDR.W           R1, [R7,#var_14]
276DCA:  ADD             R0, PC; __stack_chk_guard_ptr
276DCC:  LDR             R0, [R0]; __stack_chk_guard
276DCE:  LDR             R0, [R0]
276DD0:  SUBS            R0, R0, R1
276DD2:  ITTTT EQ
276DD4:  ADDEQ.W         SP, SP, #0x4000
276DD8:  ADDEQ           SP, SP, #0x10
276DDA:  POPEQ.W         {R11}
276DDE:  POPEQ.W         {R4-R7,LR}
276DE2:  ITT EQ
276DE4:  ADDEQ           SP, SP, #8
276DE6:  BXEQ            LR
276DE8:  BLX             __stack_chk_fail
