; =========================================================
; Game Engine Function: sub_1ED95C
; Address            : 0x1ED95C - 0x1ED9A0
; =========================================================

1ED95C:  PUSH            {R0-R4,R6,R7,LR}
1ED95E:  ADD             R7, SP, #0x18
1ED960:  MOV             R4, R0
1ED962:  LDR             R0, =(__stack_chk_guard_ptr - 0x1ED96A)
1ED964:  MOVS            R3, #0
1ED966:  ADD             R0, PC; __stack_chk_guard_ptr
1ED968:  LDR             R0, [R0]; __stack_chk_guard
1ED96A:  LDR             R0, [R0]
1ED96C:  STR             R0, [SP,#0x18+var_C]
1ED96E:  LDRD.W          R0, R2, [R1]
1ED972:  STRD.W          R3, R3, [R1]
1ED976:  LDRD.W          R1, R3, [R4]
1ED97A:  STRD.W          R0, R2, [R4]
1ED97E:  STRD.W          R1, R3, [SP,#0x18+var_14]
1ED982:  ADD             R0, SP, #0x18+var_14
1ED984:  BL              sub_10E060
1ED988:  LDR             R0, [SP,#0x18+var_C]
1ED98A:  LDR             R1, =(__stack_chk_guard_ptr - 0x1ED990)
1ED98C:  ADD             R1, PC; __stack_chk_guard_ptr
1ED98E:  LDR             R1, [R1]; __stack_chk_guard
1ED990:  LDR             R1, [R1]
1ED992:  CMP             R1, R0
1ED994:  ITTT EQ
1ED996:  MOVEQ           R0, R4
1ED998:  ADDEQ           SP, SP, #0x10
1ED99A:  POPEQ           {R4,R6,R7,PC}
1ED99C:  BLX             __stack_chk_fail
