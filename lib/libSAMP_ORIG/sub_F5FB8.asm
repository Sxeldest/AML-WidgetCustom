; =========================================================
; Game Engine Function: sub_F5FB8
; Address            : 0xF5FB8 - 0xF5FC8
; =========================================================

F5FB8:  PUSH            {R7,LR}
F5FBA:  MOV             R7, SP
F5FBC:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5FC0:  POP.W           {R7,LR}
F5FC4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
