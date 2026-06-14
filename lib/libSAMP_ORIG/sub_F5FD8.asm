; =========================================================
; Game Engine Function: sub_F5FD8
; Address            : 0xF5FD8 - 0xF5FE8
; =========================================================

F5FD8:  PUSH            {R7,LR}
F5FDA:  MOV             R7, SP
F5FDC:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5FE0:  POP.W           {R7,LR}
F5FE4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
