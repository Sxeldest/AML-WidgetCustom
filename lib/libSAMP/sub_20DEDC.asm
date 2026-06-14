; =========================================================
; Game Engine Function: sub_20DEDC
; Address            : 0x20DEDC - 0x20DEEC
; =========================================================

20DEDC:  PUSH            {R7,LR}
20DEDE:  MOV             R7, SP
20DEE0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DEE4:  POP.W           {R7,LR}
20DEE8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
