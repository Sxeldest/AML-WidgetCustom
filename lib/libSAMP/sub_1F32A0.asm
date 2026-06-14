; =========================================================
; Game Engine Function: sub_1F32A0
; Address            : 0x1F32A0 - 0x1F32E0
; =========================================================

1F32A0:  PUSH            {R3-R7,LR}
1F32A2:  ADD             R7, SP, #0x10
1F32A4:  STRD.W          R0, R1, [SP,#0x10+var_C]
1F32A8:  CMP             R1, R3
1F32AA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F32B0)
1F32AC:  ADD             R0, PC; __stack_chk_guard_ptr
1F32AE:  LDR             R0, [R0]; __stack_chk_guard
1F32B0:  LDR             R0, [R0]
1F32B2:  STR             R0, [SP,#0x10+var_4]
1F32B4:  BNE             loc_1F32C8
1F32B6:  ADD             R0, SP, #0x10+var_C; int
1F32B8:  MOV             R1, R2; int
1F32BA:  MOV             R2, R3; n
1F32BC:  BL              sub_126DBE
1F32C0:  CMP             R0, #0
1F32C2:  IT NE
1F32C4:  MOVNE           R0, #1
1F32C6:  B               loc_1F32CA
1F32C8:  MOVS            R0, #1
1F32CA:  LDR             R1, [SP,#0x10+var_4]
1F32CC:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F32D2)
1F32CE:  ADD             R2, PC; __stack_chk_guard_ptr
1F32D0:  LDR             R2, [R2]; __stack_chk_guard
1F32D2:  LDR             R2, [R2]
1F32D4:  CMP             R2, R1
1F32D6:  ITT EQ
1F32D8:  ADDEQ           SP, SP, #0x10
1F32DA:  POPEQ           {R7,PC}
1F32DC:  BLX             __stack_chk_fail
