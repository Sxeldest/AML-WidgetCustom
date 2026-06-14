; =========================================================
; Game Engine Function: sub_FD1E0
; Address            : 0xFD1E0 - 0xFD210
; =========================================================

FD1E0:  PUSH            {R5-R7,LR}
FD1E2:  ADD             R7, SP, #8
FD1E4:  STR             R1, [SP,#8+var_8]
FD1E6:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD1EC)
FD1E8:  ADD             R1, PC; __stack_chk_guard_ptr
FD1EA:  LDR             R1, [R1]; __stack_chk_guard
FD1EC:  LDR             R1, [R1]
FD1EE:  STR             R1, [SP,#8+var_4]
FD1F0:  MOV             R1, SP
FD1F2:  BL              sub_FD218
FD1F6:  LDR             R0, [SP,#8+var_8]; this
FD1F8:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
FD1FC:  LDR             R0, [SP,#8+var_4]
FD1FE:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD204)
FD200:  ADD             R1, PC; __stack_chk_guard_ptr
FD202:  LDR             R1, [R1]; __stack_chk_guard
FD204:  LDR             R1, [R1]
FD206:  CMP             R1, R0
FD208:  IT EQ
FD20A:  POPEQ           {R2,R3,R7,PC}
FD20C:  BLX             __stack_chk_fail
