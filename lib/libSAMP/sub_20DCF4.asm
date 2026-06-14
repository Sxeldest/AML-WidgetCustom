; =========================================================
; Game Engine Function: sub_20DCF4
; Address            : 0x20DCF4 - 0x20DD04
; =========================================================

20DCF4:  PUSH            {R7,LR}
20DCF6:  MOV             R7, SP
20DCF8:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DCFC:  POP.W           {R7,LR}
20DD00:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
