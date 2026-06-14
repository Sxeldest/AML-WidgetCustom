; =========================================================
; Game Engine Function: sub_15878C
; Address            : 0x15878C - 0x1587C4
; =========================================================

15878C:  PUSH            {R4,R5,R7,LR}
15878E:  ADD             R7, SP, #8
158790:  MOV             R4, R0
158792:  LDR             R0, =(_ZTVNSt6__ndk117__assoc_sub_stateE_ptr - 0x15879A)
158794:  MOV             R5, R4
158796:  ADD             R0, PC; _ZTVNSt6__ndk117__assoc_sub_stateE_ptr
158798:  LDR             R0, [R0]; `vtable for'std::__assoc_sub_state ...
15879A:  ADDS            R0, #8
15879C:  STR.W           R0, [R5],#8
1587A0:  ADD.W           R0, R4, #0x10; this
1587A4:  BLX             j__ZNSt6__ndk118condition_variableD2Ev; std::condition_variable::~condition_variable()
1587A8:  ADD.W           R0, R4, #0xC; this
1587AC:  BLX             j__ZNSt6__ndk15mutexD2Ev; std::mutex::~mutex()
1587B0:  MOV             R0, R5; this
1587B2:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
1587B6:  MOV             R0, R4; this
1587B8:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
1587BC:  POP.W           {R4,R5,R7,LR}
1587C0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
