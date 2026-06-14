; =========================================================
; Game Engine Function: sub_156ABC
; Address            : 0x156ABC - 0x156ACC
; =========================================================

156ABC:  PUSH            {R7,LR}
156ABE:  MOV             R7, SP
156AC0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
156AC4:  POP.W           {R7,LR}
156AC8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
