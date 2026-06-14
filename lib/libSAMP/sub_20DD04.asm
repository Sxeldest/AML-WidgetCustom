; =========================================================
; Game Engine Function: sub_20DD04
; Address            : 0x20DD04 - 0x20DD14
; =========================================================

20DD04:  PUSH            {R7,LR}
20DD06:  MOV             R7, SP
20DD08:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DD0C:  POP.W           {R7,LR}
20DD10:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
