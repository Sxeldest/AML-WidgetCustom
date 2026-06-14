; =========================================================
; Game Engine Function: sub_20E09C
; Address            : 0x20E09C - 0x20E0AC
; =========================================================

20E09C:  PUSH            {R7,LR}
20E09E:  MOV             R7, SP
20E0A0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E0A4:  POP.W           {R7,LR}
20E0A8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
