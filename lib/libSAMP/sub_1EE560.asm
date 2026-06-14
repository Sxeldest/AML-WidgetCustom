; =========================================================
; Game Engine Function: sub_1EE560
; Address            : 0x1EE560 - 0x1EE594
; =========================================================

1EE560:  PUSH            {R3-R7,LR}
1EE562:  ADD             R7, SP, #0x10
1EE564:  MOV             R1, R0
1EE566:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE56C)
1EE568:  ADD             R0, PC; __stack_chk_guard_ptr
1EE56A:  LDR             R0, [R0]; __stack_chk_guard
1EE56C:  LDR             R0, [R0]
1EE56E:  STR             R0, [SP,#0x10+var_4]
1EE570:  ADD             R0, SP, #0x10+var_C; this
1EE572:  BLX             j__ZNKSt6__ndk14__fs10filesystem4path16__root_directoryEv; std::__fs::filesystem::path::__root_directory(void)
1EE576:  LDR             R0, [SP,#0x10+var_8]
1EE578:  CMP             R0, #0
1EE57A:  IT NE
1EE57C:  MOVNE           R0, #1
1EE57E:  LDR             R1, [SP,#0x10+var_4]
1EE580:  LDR             R2, =(__stack_chk_guard_ptr - 0x1EE586)
1EE582:  ADD             R2, PC; __stack_chk_guard_ptr
1EE584:  LDR             R2, [R2]; __stack_chk_guard
1EE586:  LDR             R2, [R2]
1EE588:  CMP             R2, R1
1EE58A:  ITT EQ
1EE58C:  ADDEQ           SP, SP, #0x10
1EE58E:  POPEQ           {R7,PC}
1EE590:  BLX             __stack_chk_fail
