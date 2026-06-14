; =========================================================
; Game Engine Function: sub_20DD28
; Address            : 0x20DD28 - 0x20DD38
; =========================================================

20DD28:  PUSH            {R7,LR}
20DD2A:  MOV             R7, SP
20DD2C:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DD30:  POP.W           {R7,LR}
20DD34:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
