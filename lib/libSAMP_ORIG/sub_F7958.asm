; =========================================================
; Game Engine Function: sub_F7958
; Address            : 0xF7958 - 0xF7988
; =========================================================

F7958:  PUSH            {R3-R7,LR}
F795A:  ADD             R7, SP, #0x10
F795C:  LDR             R0, =(__stack_chk_guard_ptr - 0xF7962)
F795E:  ADD             R0, PC; __stack_chk_guard_ptr
F7960:  LDR             R0, [R0]; __stack_chk_guard
F7962:  LDR             R0, [R0]
F7964:  STR             R0, [SP,#0x10+var_4]
F7966:  STR             R1, [SP,#0x10+var_8]
F7968:  ADD             R0, SP, #0x10+var_C
F796A:  ADD             R1, SP, #0x10+var_8
F796C:  MOVS            R2, #4
F796E:  BLX             j__ZNSt6__ndk121__murmur2_or_cityhashIjLj32EEclEPKvj; std::__murmur2_or_cityhash<uint,32u>::operator()(void const*,uint)
F7972:  LDR             R1, [SP,#0x10+var_4]
F7974:  LDR             R2, =(__stack_chk_guard_ptr - 0xF797A)
F7976:  ADD             R2, PC; __stack_chk_guard_ptr
F7978:  LDR             R2, [R2]; __stack_chk_guard
F797A:  LDR             R2, [R2]
F797C:  CMP             R2, R1
F797E:  ITT EQ
F7980:  ADDEQ           SP, SP, #0x10
F7982:  POPEQ           {R7,PC}
F7984:  BLX             __stack_chk_fail
