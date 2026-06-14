; =========================================================
; Game Engine Function: sub_20E08C
; Address            : 0x20E08C - 0x20E09C
; =========================================================

20E08C:  PUSH            {R7,LR}
20E08E:  MOV             R7, SP
20E090:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E094:  POP.W           {R7,LR}
20E098:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
