; =========================================================
; Game Engine Function: sub_1EE6A8
; Address            : 0x1EE6A8 - 0x1EE6CA
; =========================================================

1EE6A8:  PUSH            {R4,R6,R7,LR}
1EE6AA:  ADD             R7, SP, #8
1EE6AC:  MOV             R4, R0
1EE6AE:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceINS_4__fs10filesystem12__dir_streamENS_9allocatorIS3_EEEE - 0x1EE6B4); `vtable for'std::__shared_ptr_emplace<std::__fs::filesystem::__dir_stream> ...
1EE6B0:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<std::__fs::filesystem::__dir_stream>
1EE6B2:  ADD.W           R1, R0, #8
1EE6B6:  MOV             R0, R4
1EE6B8:  STR.W           R1, [R0],#0x10
1EE6BC:  BL              sub_1EDFDC
1EE6C0:  MOV             R0, R4
1EE6C2:  POP.W           {R4,R6,R7,LR}
1EE6C6:  B.W             sub_2242D4
