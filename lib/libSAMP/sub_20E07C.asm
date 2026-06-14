; =========================================================
; Game Engine Function: sub_20E07C
; Address            : 0x20E07C - 0x20E08C
; =========================================================

20E07C:  PUSH            {R7,LR}
20E07E:  MOV             R7, SP
20E080:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E084:  POP.W           {R7,LR}
20E088:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
