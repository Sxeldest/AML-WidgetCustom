; =========================================================
; Game Engine Function: sub_20E05C
; Address            : 0x20E05C - 0x20E06C
; =========================================================

20E05C:  PUSH            {R7,LR}
20E05E:  MOV             R7, SP
20E060:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E064:  POP.W           {R7,LR}
20E068:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
