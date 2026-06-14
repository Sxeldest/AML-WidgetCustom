; =========================================================
; Game Engine Function: sub_1077B4
; Address            : 0x1077B4 - 0x1077F4
; =========================================================

1077B4:  PUSH            {R2-R4,R6,R7,LR}
1077B6:  ADD             R7, SP, #0x10
1077B8:  MOV             R4, R0
1077BA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1077C2)
1077BC:  CMP             R4, #0
1077BE:  ADD             R0, PC; __stack_chk_guard_ptr
1077C0:  LDR             R0, [R0]; __stack_chk_guard
1077C2:  LDR             R0, [R0]
1077C4:  STR             R0, [SP,#0x10+var_C]
1077C6:  IT EQ
1077C8:  MOVEQ           R4, #1
1077CA:  MOV             R0, SP; memptr
1077CC:  MOVS            R1, #0x10; alignment
1077CE:  MOV             R2, R4; size
1077D0:  BLX             posix_memalign
1077D4:  CBZ             R0, loc_1077DE
1077D6:  MOV             R0, R4
1077D8:  BL              sub_1077FC
1077DC:  B               loc_1077E0
1077DE:  LDR             R0, [SP,#0x10+var_10]
1077E0:  LDR             R1, [SP,#0x10+var_C]
1077E2:  LDR             R2, =(__stack_chk_guard_ptr - 0x1077E8)
1077E4:  ADD             R2, PC; __stack_chk_guard_ptr
1077E6:  LDR             R2, [R2]; __stack_chk_guard
1077E8:  LDR             R2, [R2]
1077EA:  CMP             R2, R1
1077EC:  IT EQ
1077EE:  POPEQ           {R2-R4,R6,R7,PC}
1077F0:  BLX             __stack_chk_fail
