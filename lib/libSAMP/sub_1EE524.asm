; =========================================================
; Game Engine Function: sub_1EE524
; Address            : 0x1EE524 - 0x1EE558
; =========================================================

1EE524:  PUSH            {R3-R7,LR}
1EE526:  ADD             R7, SP, #0x10
1EE528:  MOV             R1, R0
1EE52A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE530)
1EE52C:  ADD             R0, PC; __stack_chk_guard_ptr
1EE52E:  LDR             R0, [R0]; __stack_chk_guard
1EE530:  LDR             R0, [R0]
1EE532:  STR             R0, [SP,#0x10+var_4]
1EE534:  ADD             R0, SP, #0x10+var_C; this
1EE536:  BLX             j__ZNKSt6__ndk14__fs10filesystem4path10__filenameEv; std::__fs::filesystem::path::__filename(void)
1EE53A:  LDR             R0, [SP,#0x10+var_8]
1EE53C:  CMP             R0, #0
1EE53E:  IT NE
1EE540:  MOVNE           R0, #1
1EE542:  LDR             R1, [SP,#0x10+var_4]
1EE544:  LDR             R2, =(__stack_chk_guard_ptr - 0x1EE54A)
1EE546:  ADD             R2, PC; __stack_chk_guard_ptr
1EE548:  LDR             R2, [R2]; __stack_chk_guard
1EE54A:  LDR             R2, [R2]
1EE54C:  CMP             R2, R1
1EE54E:  ITT EQ
1EE550:  ADDEQ           SP, SP, #0x10
1EE552:  POPEQ           {R7,PC}
1EE554:  BLX             __stack_chk_fail
