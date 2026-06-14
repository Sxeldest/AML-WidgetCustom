; =========================================================
; Game Engine Function: sub_F5FC8
; Address            : 0xF5FC8 - 0xF5FD8
; =========================================================

F5FC8:  PUSH            {R7,LR}
F5FCA:  MOV             R7, SP
F5FCC:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5FD0:  POP.W           {R7,LR}
F5FD4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
