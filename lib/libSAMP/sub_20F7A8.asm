; =========================================================
; Game Engine Function: sub_20F7A8
; Address            : 0x20F7A8 - 0x20F7D8
; =========================================================

20F7A8:  PUSH            {R3-R7,LR}
20F7AA:  ADD             R7, SP, #0x10
20F7AC:  LDR             R0, =(__stack_chk_guard_ptr - 0x20F7B2)
20F7AE:  ADD             R0, PC; __stack_chk_guard_ptr
20F7B0:  LDR             R0, [R0]; __stack_chk_guard
20F7B2:  LDR             R0, [R0]
20F7B4:  STR             R0, [SP,#0x10+var_4]
20F7B6:  STR             R1, [SP,#0x10+var_8]
20F7B8:  ADD             R0, SP, #0x10+var_C
20F7BA:  ADD             R1, SP, #0x10+var_8
20F7BC:  MOVS            R2, #4
20F7BE:  BLX             j__ZNSt6__ndk121__murmur2_or_cityhashIjLj32EEclEPKvj; std::__murmur2_or_cityhash<uint,32u>::operator()(void const*,uint)
20F7C2:  LDR             R1, [SP,#0x10+var_4]
20F7C4:  LDR             R2, =(__stack_chk_guard_ptr - 0x20F7CA)
20F7C6:  ADD             R2, PC; __stack_chk_guard_ptr
20F7C8:  LDR             R2, [R2]; __stack_chk_guard
20F7CA:  LDR             R2, [R2]
20F7CC:  CMP             R2, R1
20F7CE:  ITT EQ
20F7D0:  ADDEQ           SP, SP, #0x10
20F7D2:  POPEQ           {R7,PC}
20F7D4:  BLX             __stack_chk_fail
