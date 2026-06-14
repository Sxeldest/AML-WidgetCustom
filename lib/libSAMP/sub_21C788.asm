; =========================================================
; Game Engine Function: sub_21C788
; Address            : 0x21C788 - 0x21C7D2
; =========================================================

21C788:  PUSH            {R0-R5,R7,LR}
21C78A:  ADD             R7, SP, #0x18
21C78C:  MOV             R5, R0
21C78E:  LDR             R0, =(__stack_chk_guard_ptr - 0x21C796)
21C790:  MOV             R4, R1
21C792:  ADD             R0, PC; __stack_chk_guard_ptr
21C794:  LDR             R0, [R0]; __stack_chk_guard
21C796:  LDR             R0, [R0]
21C798:  STR             R0, [SP,#0x18+var_C]
21C79A:  LDRB            R0, [R5,#0xC]
21C79C:  CBZ             R0, loc_21C7AA
21C79E:  LDR             R1, =(asc_8F738 - 0x21C7A6); "~" ...
21C7A0:  MOV             R0, R4
21C7A2:  ADD             R1, PC; "~"
21C7A4:  ADDS            R2, R1, #1
21C7A6:  BL              sub_216F98
21C7AA:  LDR             R1, [R5,#8]
21C7AC:  LDR             R0, [R1]
21C7AE:  LDR             R2, [R0,#0x18]
21C7B0:  ADD             R0, SP, #0x18+var_14
21C7B2:  BLX             R2
21C7B4:  LDRD.W          R1, R2, [SP,#0x18+var_14]
21C7B8:  MOV             R0, R4
21C7BA:  BL              sub_216F98
21C7BE:  LDR             R0, [SP,#0x18+var_C]
21C7C0:  LDR             R1, =(__stack_chk_guard_ptr - 0x21C7C6)
21C7C2:  ADD             R1, PC; __stack_chk_guard_ptr
21C7C4:  LDR             R1, [R1]; __stack_chk_guard
21C7C6:  LDR             R1, [R1]
21C7C8:  CMP             R1, R0
21C7CA:  IT EQ
21C7CC:  POPEQ           {R0-R5,R7,PC}
21C7CE:  BLX             __stack_chk_fail
