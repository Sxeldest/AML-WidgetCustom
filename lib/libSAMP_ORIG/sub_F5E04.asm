; =========================================================
; Game Engine Function: sub_F5E04
; Address            : 0xF5E04 - 0xF5E14
; =========================================================

F5E04:  PUSH            {R7,LR}
F5E06:  MOV             R7, SP
F5E08:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5E0C:  POP.W           {R7,LR}
F5E10:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
