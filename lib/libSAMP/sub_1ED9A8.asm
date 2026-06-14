; =========================================================
; Game Engine Function: sub_1ED9A8
; Address            : 0x1ED9A8 - 0x1ED9DE
; =========================================================

1ED9A8:  PUSH            {R3-R7,LR}
1ED9AA:  ADD             R7, SP, #0x10
1ED9AC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1ED9B4)
1ED9AE:  MOVS            R3, #0
1ED9B0:  ADD             R1, PC; __stack_chk_guard_ptr
1ED9B2:  LDR             R1, [R1]; __stack_chk_guard
1ED9B4:  LDR             R1, [R1]
1ED9B6:  STR             R1, [SP,#0x10+var_4]
1ED9B8:  LDRD.W          R1, R2, [R0]
1ED9BC:  STRD.W          R3, R3, [R0]
1ED9C0:  STRD.W          R1, R2, [SP,#0x10+var_C]
1ED9C4:  ADD             R0, SP, #0x10+var_C
1ED9C6:  BL              sub_10E060
1ED9CA:  LDR             R0, [SP,#0x10+var_4]
1ED9CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1ED9D2)
1ED9CE:  ADD             R1, PC; __stack_chk_guard_ptr
1ED9D0:  LDR             R1, [R1]; __stack_chk_guard
1ED9D2:  LDR             R1, [R1]
1ED9D4:  CMP             R1, R0
1ED9D6:  IT EQ
1ED9D8:  POPEQ           {R0-R3,R7,PC}
1ED9DA:  BLX             __stack_chk_fail
