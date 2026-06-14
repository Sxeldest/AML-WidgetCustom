; =========================================================
; Game Engine Function: sub_162B28
; Address            : 0x162B28 - 0x162B38
; =========================================================

162B28:  PUSH            {R7,LR}
162B2A:  MOV             R7, SP
162B2C:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
162B30:  POP.W           {R7,LR}
162B34:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
