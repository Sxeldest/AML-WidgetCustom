; =========================================================
; Game Engine Function: sub_1EE96C
; Address            : 0x1EE96C - 0x1EE98E
; =========================================================

1EE96C:  PUSH            {R4,R6,R7,LR}
1EE96E:  ADD             R7, SP, #8
1EE970:  MOV             R4, R0
1EE972:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceINS_4__fs10filesystem16filesystem_error8_StorageENS_9allocatorIS4_EEEE - 0x1EE978); `vtable for'std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage> ...
1EE974:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage>
1EE976:  ADD.W           R1, R0, #8
1EE97A:  MOV             R0, R4
1EE97C:  STR.W           R1, [R0],#0xC
1EE980:  BL              sub_1EE9DC
1EE984:  MOV             R0, R4
1EE986:  POP.W           {R4,R6,R7,LR}
1EE98A:  B.W             sub_2242D4
