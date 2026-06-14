; =========================================================
; Game Engine Function: sub_20E0BC
; Address            : 0x20E0BC - 0x20E0CC
; =========================================================

20E0BC:  PUSH            {R7,LR}
20E0BE:  MOV             R7, SP
20E0C0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E0C4:  POP.W           {R7,LR}
20E0C8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
