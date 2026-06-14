; =========================================================
; Game Engine Function: sub_20E06C
; Address            : 0x20E06C - 0x20E07C
; =========================================================

20E06C:  PUSH            {R7,LR}
20E06E:  MOV             R7, SP
20E070:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20E074:  POP.W           {R7,LR}
20E078:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
