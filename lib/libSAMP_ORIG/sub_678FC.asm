; =========================================================
; Game Engine Function: sub_678FC
; Address            : 0x678FC - 0x67968
; =========================================================

678FC:  PUSH            {R4,R5,R7,LR}
678FE:  ADD             R7, SP, #8
67900:  SUB             SP, SP, #0x18
67902:  MOV             R4, R0
67904:  LDR             R0, =(__stack_chk_guard_ptr - 0x6790A)
67906:  ADD             R0, PC; __stack_chk_guard_ptr
67908:  LDR             R0, [R0]; __stack_chk_guard
6790A:  LDR             R0, [R0]; this
6790C:  STR             R0, [SP,#0x20+var_C]
6790E:  STR             R4, [SP,#0x20+var_1C]
67910:  BLX             j__ZNSt6__ndk119__thread_local_dataEv; std::__thread_local_data(void)
67914:  LDR             R1, [R4]; pointer
67916:  MOVS            R2, #0
67918:  LDR             R0, [R0]; key
6791A:  STR             R2, [R4]
6791C:  BLX             pthread_setspecific
67920:  MOVW            R0, #0xF200
67924:  MOVS            R5, #1
67926:  MOVT            R0, #0x2A05
6792A:  STR             R5, [SP,#0x20+var_14]
6792C:  STR             R0, [SP,#0x20+var_18]
6792E:  ADD             R0, SP, #0x20+var_18
67930:  BLX             j__ZNSt6__ndk111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILx1ELx1000000000EEEEE; std::this_thread::sleep_for(std::chrono::duration<long long,std::ratio<1ll,1000000000ll>> const&)
67934:  LDRD.W          R0, R1, [R4]; this
67938:  MOVS            R2, #0
6793A:  STR             R2, [R4]
6793C:  STR.W           R5, [R1,#0x218]
67940:  CBZ             R0, loc_6794A
67942:  BLX             j__ZNSt6__ndk115__thread_structD2Ev_0; std::__thread_struct::~__thread_struct()
67946:  BLX             j__ZdlPv; operator delete(void *)
6794A:  MOV             R0, R4; void *
6794C:  BLX             j__ZdlPv; operator delete(void *)
67950:  LDR             R0, [SP,#0x20+var_C]
67952:  LDR             R1, =(__stack_chk_guard_ptr - 0x67958)
67954:  ADD             R1, PC; __stack_chk_guard_ptr
67956:  LDR             R1, [R1]; __stack_chk_guard
67958:  LDR             R1, [R1]
6795A:  CMP             R1, R0
6795C:  ITTT EQ
6795E:  MOVEQ           R0, #0
67960:  ADDEQ           SP, SP, #0x18
67962:  POPEQ           {R4,R5,R7,PC}
67964:  BLX             __stack_chk_fail
