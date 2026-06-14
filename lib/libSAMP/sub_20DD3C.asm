; =========================================================
; Game Engine Function: sub_20DD3C
; Address            : 0x20DD3C - 0x20DD4C
; =========================================================

20DD3C:  PUSH            {R7,LR}
20DD3E:  MOV             R7, SP
20DD40:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DD44:  POP.W           {R7,LR}
20DD48:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
