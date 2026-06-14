; =========================================================
; Game Engine Function: sub_69070
; Address            : 0x69070 - 0x690AE
; =========================================================

69070:  SUB             SP, SP, #4
69072:  PUSH            {R7,LR}
69074:  MOV             R7, SP
69076:  SUB             SP, SP, #0xC
69078:  STR             R3, [R7,#8]
6907A:  LDR             R3, =(__stack_chk_guard_ptr - 0x69080)
6907C:  ADD             R3, PC; __stack_chk_guard_ptr
6907E:  LDR             R3, [R3]; __stack_chk_guard
69080:  LDR             R3, [R3]
69082:  STR             R3, [SP,#0x18+var_10]
69084:  LDR             R3, [R0]
69086:  LDR.W           R12, [R3,#0xF8]
6908A:  ADD.W           R3, R7, #8
6908E:  STR             R3, [SP,#0x18+var_14]
69090:  BLX             R12
69092:  LDR             R0, [SP,#0x18+var_10]
69094:  LDR             R1, =(__stack_chk_guard_ptr - 0x6909A)
69096:  ADD             R1, PC; __stack_chk_guard_ptr
69098:  LDR             R1, [R1]; __stack_chk_guard
6909A:  LDR             R1, [R1]
6909C:  CMP             R1, R0
6909E:  ITTTT EQ
690A0:  ADDEQ           SP, SP, #0xC
690A2:  POPEQ.W         {R7,LR}
690A6:  ADDEQ           SP, SP, #4
690A8:  BXEQ            LR
690AA:  BLX             __stack_chk_fail
