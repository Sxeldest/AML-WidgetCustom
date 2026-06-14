; =========================================================
; Game Engine Function: sub_7FDA0
; Address            : 0x7FDA0 - 0x7FDF4
; =========================================================

7FDA0:  PUSH            {R4,R5,R7,LR}
7FDA2:  ADD             R7, SP, #8
7FDA4:  SUB             SP, SP, #8
7FDA6:  MOV             R4, R0
7FDA8:  LDR             R0, =(__stack_chk_guard_ptr - 0x7FDAE)
7FDAA:  ADD             R0, PC; __stack_chk_guard_ptr
7FDAC:  LDR             R0, [R0]; __stack_chk_guard
7FDAE:  LDR             R0, [R0]; this
7FDB0:  STR             R0, [SP,#0x10+var_C]
7FDB2:  STR             R4, [SP,#0x10+var_10]
7FDB4:  BLX             j__ZNSt6__ndk119__thread_local_dataEv; std::__thread_local_data(void)
7FDB8:  LDR             R1, [R4]; pointer
7FDBA:  MOVS            R5, #0
7FDBC:  LDR             R0, [R0]; key
7FDBE:  STR             R5, [R4]
7FDC0:  BLX             pthread_setspecific
7FDC4:  LDR             R0, [R4,#4]
7FDC6:  BLX             R0
7FDC8:  LDR             R0, [R4]; this
7FDCA:  STR             R5, [R4]
7FDCC:  CBZ             R0, loc_7FDD6
7FDCE:  BLX             j__ZNSt6__ndk115__thread_structD2Ev_0; std::__thread_struct::~__thread_struct()
7FDD2:  BLX             j__ZdlPv; operator delete(void *)
7FDD6:  MOV             R0, R4; void *
7FDD8:  BLX             j__ZdlPv; operator delete(void *)
7FDDC:  LDR             R0, [SP,#0x10+var_C]
7FDDE:  LDR             R1, =(__stack_chk_guard_ptr - 0x7FDE4)
7FDE0:  ADD             R1, PC; __stack_chk_guard_ptr
7FDE2:  LDR             R1, [R1]; __stack_chk_guard
7FDE4:  LDR             R1, [R1]
7FDE6:  CMP             R1, R0
7FDE8:  ITTT EQ
7FDEA:  MOVEQ           R0, #0
7FDEC:  ADDEQ           SP, SP, #8
7FDEE:  POPEQ           {R4,R5,R7,PC}
7FDF0:  BLX             __stack_chk_fail
