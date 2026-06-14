; =========================================================
; Game Engine Function: sub_F619C
; Address            : 0xF619C - 0xF61AC
; =========================================================

F619C:  PUSH            {R7,LR}
F619E:  MOV             R7, SP
F61A0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F61A4:  POP.W           {R7,LR}
F61A8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
