; =========================================================
; Game Engine Function: sub_F5E14
; Address            : 0xF5E14 - 0xF5E24
; =========================================================

F5E14:  PUSH            {R7,LR}
F5E16:  MOV             R7, SP
F5E18:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5E1C:  POP.W           {R7,LR}
F5E20:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
