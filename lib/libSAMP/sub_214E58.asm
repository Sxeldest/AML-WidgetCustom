; =========================================================
; Game Engine Function: sub_214E58
; Address            : 0x214E58 - 0x214E86
; =========================================================

214E58:  PUSH            {R3-R7,LR}
214E5A:  ADD             R7, SP, #0x10
214E5C:  LDR             R3, =(__stack_chk_guard_ptr - 0x214E64)
214E5E:  ADDS            R0, #0xC
214E60:  ADD             R3, PC; __stack_chk_guard_ptr
214E62:  LDR             R3, [R3]; __stack_chk_guard
214E64:  LDR             R3, [R3]
214E66:  STR             R3, [SP,#0x10+var_4]
214E68:  STRD.W          R1, R2, [SP,#0x10+var_C]
214E6C:  ADD             R1, SP, #0x10+var_C
214E6E:  BL              sub_214E90
214E72:  LDR             R0, [SP,#0x10+var_4]
214E74:  LDR             R1, =(__stack_chk_guard_ptr - 0x214E7A)
214E76:  ADD             R1, PC; __stack_chk_guard_ptr
214E78:  LDR             R1, [R1]; __stack_chk_guard
214E7A:  LDR             R1, [R1]
214E7C:  CMP             R1, R0
214E7E:  IT EQ
214E80:  POPEQ           {R0-R3,R7,PC}
214E82:  BLX             __stack_chk_fail
