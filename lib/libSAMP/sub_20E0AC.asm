; =========================================================
; Game Engine Function: sub_20E0AC
; Address            : 0x20E0AC - 0x20E0BC
; =========================================================

20E0AC:  PUSH            {R7,LR}
20E0AE:  MOV             R7, SP
20E0B0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E0B4:  POP.W           {R7,LR}
20E0B8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
