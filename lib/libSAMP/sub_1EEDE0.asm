; =========================================================
; Game Engine Function: sub_1EEDE0
; Address            : 0x1EEDE0 - 0x1EEE02
; =========================================================

1EEDE0:  PUSH            {R4,R6,R7,LR}
1EEDE2:  ADD             R7, SP, #8
1EEDE4:  MOV             R4, R0
1EEDE6:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceINS_4__fs10filesystem28recursive_directory_iterator12__shared_impENS_9allocatorIS4_EEEE - 0x1EEDEC); `vtable for'std::__shared_ptr_emplace<std::__fs::filesystem::recursive_directory_iterator::__shared_imp> ...
1EEDE8:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<std::__fs::filesystem::recursive_directory_iterator::__shared_imp>
1EEDEA:  ADD.W           R1, R0, #8
1EEDEE:  MOV             R0, R4
1EEDF0:  STR.W           R1, [R0],#0xC
1EEDF4:  BL              sub_1EEE4C
1EEDF8:  MOV             R0, R4
1EEDFA:  POP.W           {R4,R6,R7,LR}
1EEDFE:  B.W             sub_2242D4
