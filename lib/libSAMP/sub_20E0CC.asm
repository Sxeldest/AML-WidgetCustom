; =========================================================
; Game Engine Function: sub_20E0CC
; Address            : 0x20E0CC - 0x20E0DC
; =========================================================

20E0CC:  PUSH            {R7,LR}
20E0CE:  MOV             R7, SP
20E0D0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E0D4:  POP.W           {R7,LR}
20E0D8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
