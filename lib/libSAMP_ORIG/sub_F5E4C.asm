; =========================================================
; Game Engine Function: sub_F5E4C
; Address            : 0xF5E4C - 0xF5E5C
; =========================================================

F5E4C:  PUSH            {R7,LR}
F5E4E:  MOV             R7, SP
F5E50:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5E54:  POP.W           {R7,LR}
F5E58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
