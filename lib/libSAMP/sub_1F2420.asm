; =========================================================
; Game Engine Function: sub_1F2420
; Address            : 0x1F2420 - 0x1F245E
; =========================================================

1F2420:  PUSH            {R0-R4,R6,R7,LR}
1F2422:  ADD             R7, SP, #0x18
1F2424:  LDR             R4, =(__stack_chk_guard_ptr - 0x1F242A)
1F2426:  ADD             R4, PC; __stack_chk_guard_ptr
1F2428:  LDR             R4, [R4]; __stack_chk_guard
1F242A:  LDR             R4, [R4]
1F242C:  STR             R4, [SP,#0x18+var_C]
1F242E:  STRD.W          R2, R3, [SP,#0x18+var_14]
1F2432:  LDRD.W          R2, R0, [R0]
1F2436:  STRB.W          R1, [R7,#var_15]
1F243A:  LDR             R4, [R2]
1F243C:  ADD             R3, R4
1F243E:  STR             R3, [R2]
1F2440:  ADD             R1, SP, #0x18+var_14
1F2442:  SUB.W           R2, R7, #-var_15
1F2446:  BLX             j__ZNSt6__ndk16vectorINS_4pairINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_4__fs10filesystem12PathPartKindEEENS_9allocatorIS9_EEE12emplace_backIJRS5_RS8_EEERS9_DpOT_; std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::emplace_back<std::string_view&,std::__fs::filesystem::PathPartKind&>(std::string_view&,std::__fs::filesystem::PathPartKind&)
1F244A:  LDR             R0, [SP,#0x18+var_C]
1F244C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F2452)
1F244E:  ADD             R1, PC; __stack_chk_guard_ptr
1F2450:  LDR             R1, [R1]; __stack_chk_guard
1F2452:  LDR             R1, [R1]
1F2454:  CMP             R1, R0
1F2456:  IT EQ
1F2458:  POPEQ           {R0-R4,R6,R7,PC}
1F245A:  BLX             __stack_chk_fail
