; =========================================================
; Game Engine Function: sub_F5E38
; Address            : 0xF5E38 - 0xF5E48
; =========================================================

F5E38:  PUSH            {R7,LR}
F5E3A:  MOV             R7, SP
F5E3C:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5E40:  POP.W           {R7,LR}
F5E44:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
