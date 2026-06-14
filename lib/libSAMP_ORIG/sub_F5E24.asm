; =========================================================
; Game Engine Function: sub_F5E24
; Address            : 0xF5E24 - 0xF5E34
; =========================================================

F5E24:  PUSH            {R7,LR}
F5E26:  MOV             R7, SP
F5E28:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5E2C:  POP.W           {R7,LR}
F5E30:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
