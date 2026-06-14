; =========================================================
; Game Engine Function: sub_F5DF4
; Address            : 0xF5DF4 - 0xF5E04
; =========================================================

F5DF4:  PUSH            {R7,LR}
F5DF6:  MOV             R7, SP
F5DF8:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5DFC:  POP.W           {R7,LR}
F5E00:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
