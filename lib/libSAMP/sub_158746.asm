; =========================================================
; Game Engine Function: sub_158746
; Address            : 0x158746 - 0x158756
; =========================================================

158746:  PUSH            {R7,LR}
158748:  MOV             R7, SP
15874A:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
15874E:  POP.W           {R7,LR}
158752:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
