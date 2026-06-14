; =========================================================
; Game Engine Function: sub_1F27B0
; Address            : 0x1F27B0 - 0x1F27F0
; =========================================================

1F27B0:  PUSH            {R3-R7,LR}
1F27B2:  ADD             R7, SP, #0x10
1F27B4:  STRD.W          R0, R1, [SP,#0x10+var_C]
1F27B8:  CMP             R1, R3
1F27BA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F27C0)
1F27BC:  ADD             R0, PC; __stack_chk_guard_ptr
1F27BE:  LDR             R0, [R0]; __stack_chk_guard
1F27C0:  LDR             R0, [R0]
1F27C2:  STR             R0, [SP,#0x10+var_4]
1F27C4:  BNE             loc_1F27D8
1F27C6:  ADD             R0, SP, #0x10+var_C; int
1F27C8:  MOV             R1, R2; int
1F27CA:  MOV             R2, R3; n
1F27CC:  BL              sub_126DBE
1F27D0:  CLZ.W           R0, R0
1F27D4:  LSRS            R0, R0, #5
1F27D6:  B               loc_1F27DA
1F27D8:  MOVS            R0, #0
1F27DA:  LDR             R1, [SP,#0x10+var_4]
1F27DC:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F27E2)
1F27DE:  ADD             R2, PC; __stack_chk_guard_ptr
1F27E0:  LDR             R2, [R2]; __stack_chk_guard
1F27E2:  LDR             R2, [R2]
1F27E4:  CMP             R2, R1
1F27E6:  ITT EQ
1F27E8:  ADDEQ           SP, SP, #0x10
1F27EA:  POPEQ           {R7,PC}
1F27EC:  BLX             __stack_chk_fail
