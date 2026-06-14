; =========================================================
; Game Engine Function: sub_1073C0
; Address            : 0x1073C0 - 0x1073F4
; =========================================================

1073C0:  PUSH            {R3-R7,LR}
1073C2:  ADD             R7, SP, #0x10
1073C4:  MOV             R2, R1
1073C6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1073CE)
1073C8:  MOVS            R3, #0
1073CA:  ADD             R1, PC; __stack_chk_guard_ptr
1073CC:  LDR             R1, [R1]; __stack_chk_guard
1073CE:  LDR             R1, [R1]
1073D0:  STR             R1, [SP,#0x10+var_4]
1073D2:  ADD             R1, SP, #0x10+var_8
1073D4:  STR             R1, [SP,#0x10+var_10]
1073D6:  MOVS            R1, #0
1073D8:  BLX             sub_109C50
1073DC:  LDR             R0, [SP,#0x10+var_8]
1073DE:  LDR             R1, [SP,#0x10+var_4]
1073E0:  LDR             R2, =(__stack_chk_guard_ptr - 0x1073E6)
1073E2:  ADD             R2, PC; __stack_chk_guard_ptr
1073E4:  LDR             R2, [R2]; __stack_chk_guard
1073E6:  LDR             R2, [R2]
1073E8:  CMP             R2, R1
1073EA:  ITT EQ
1073EC:  ADDEQ           SP, SP, #0x10
1073EE:  POPEQ           {R7,PC}
1073F0:  BLX             __stack_chk_fail
