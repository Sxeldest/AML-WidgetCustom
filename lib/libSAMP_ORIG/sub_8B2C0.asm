; =========================================================
; Game Engine Function: sub_8B2C0
; Address            : 0x8B2C0 - 0x8B30C
; =========================================================

8B2C0:  PUSH            {R7,LR}
8B2C2:  MOV             R7, SP
8B2C4:  SUB             SP, SP, #0x10
8B2C6:  LDR             R2, =(__stack_chk_guard_ptr - 0x8B2CC)
8B2C8:  ADD             R2, PC; __stack_chk_guard_ptr
8B2CA:  LDR             R2, [R2]; __stack_chk_guard
8B2CC:  LDR             R2, [R2]
8B2CE:  STR             R2, [SP,#0x18+var_C]
8B2D0:  VLDR            S0, [R0]
8B2D4:  VLDR            S4, [R0,#8]
8B2D8:  VLDR            S2, [R0,#4]
8B2DC:  VLDR            S6, [R0,#0xC]
8B2E0:  VSUB.F32        S0, S4, S0
8B2E4:  ADD             R0, SP, #0x18+var_14
8B2E6:  VSUB.F32        S2, S6, S2
8B2EA:  VSTR            S0, [SP,#0x18+var_14]
8B2EE:  VSTR            S2, [SP,#0x18+var_10]
8B2F2:  BL              sub_8B104
8B2F6:  LDR             R0, [SP,#0x18+var_C]
8B2F8:  LDR             R1, =(__stack_chk_guard_ptr - 0x8B2FE)
8B2FA:  ADD             R1, PC; __stack_chk_guard_ptr
8B2FC:  LDR             R1, [R1]; __stack_chk_guard
8B2FE:  LDR             R1, [R1]
8B300:  CMP             R1, R0
8B302:  ITT EQ
8B304:  ADDEQ           SP, SP, #0x10
8B306:  POPEQ           {R7,PC}
8B308:  BLX             __stack_chk_fail
