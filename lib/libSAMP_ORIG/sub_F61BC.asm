; =========================================================
; Game Engine Function: sub_F61BC
; Address            : 0xF61BC - 0xF61CC
; =========================================================

F61BC:  PUSH            {R7,LR}
F61BE:  MOV             R7, SP
F61C0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F61C4:  POP.W           {R7,LR}
F61C8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
