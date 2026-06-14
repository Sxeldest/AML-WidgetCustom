; =========================================================
; Game Engine Function: sub_20DCE4
; Address            : 0x20DCE4 - 0x20DCF4
; =========================================================

20DCE4:  PUSH            {R7,LR}
20DCE6:  MOV             R7, SP
20DCE8:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DCEC:  POP.W           {R7,LR}
20DCF0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
