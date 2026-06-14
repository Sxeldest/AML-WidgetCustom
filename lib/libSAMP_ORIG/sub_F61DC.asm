; =========================================================
; Game Engine Function: sub_F61DC
; Address            : 0xF61DC - 0xF61EC
; =========================================================

F61DC:  PUSH            {R7,LR}
F61DE:  MOV             R7, SP
F61E0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F61E4:  POP.W           {R7,LR}
F61E8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
