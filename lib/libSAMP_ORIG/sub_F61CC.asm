; =========================================================
; Game Engine Function: sub_F61CC
; Address            : 0xF61CC - 0xF61DC
; =========================================================

F61CC:  PUSH            {R7,LR}
F61CE:  MOV             R7, SP
F61D0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F61D4:  POP.W           {R7,LR}
F61D8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
