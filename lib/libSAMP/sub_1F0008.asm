; =========================================================
; Game Engine Function: sub_1F0008
; Address            : 0x1F0008 - 0x1F003E
; =========================================================

1F0008:  PUSH            {R0-R5,R7,LR}
1F000A:  ADD             R7, SP, #0x18
1F000C:  MOV             R4, R0
1F000E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F0014)
1F0010:  ADD             R0, PC; __stack_chk_guard_ptr
1F0012:  LDR             R0, [R0]; __stack_chk_guard
1F0014:  LDR             R0, [R0]; this
1F0016:  STR             R0, [SP,#0x18+var_C]
1F0018:  LDR             R5, [R1]
1F001A:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
1F001E:  STRD.W          R5, R0, [SP,#0x18+var_14]
1F0022:  ADD             R1, SP, #0x18+var_14
1F0024:  MOV             R0, R4
1F0026:  BL              sub_1EFF64
1F002A:  LDR             R0, [SP,#0x18+var_C]
1F002C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F0032)
1F002E:  ADD             R1, PC; __stack_chk_guard_ptr
1F0030:  LDR             R1, [R1]; __stack_chk_guard
1F0032:  LDR             R1, [R1]
1F0034:  CMP             R1, R0
1F0036:  IT EQ
1F0038:  POPEQ           {R0-R5,R7,PC}
1F003A:  BLX             __stack_chk_fail
