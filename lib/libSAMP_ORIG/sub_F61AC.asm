; =========================================================
; Game Engine Function: sub_F61AC
; Address            : 0xF61AC - 0xF61BC
; =========================================================

F61AC:  PUSH            {R7,LR}
F61AE:  MOV             R7, SP
F61B0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F61B4:  POP.W           {R7,LR}
F61B8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
