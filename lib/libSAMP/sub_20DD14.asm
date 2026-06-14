; =========================================================
; Game Engine Function: sub_20DD14
; Address            : 0x20DD14 - 0x20DD24
; =========================================================

20DD14:  PUSH            {R7,LR}
20DD16:  MOV             R7, SP
20DD18:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DD1C:  POP.W           {R7,LR}
20DD20:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
