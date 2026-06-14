; =========================================================
; Game Engine Function: sub_113432
; Address            : 0x113432 - 0x113442
; =========================================================

113432:  PUSH            {R7,LR}
113434:  MOV             R7, SP
113436:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
11343A:  POP.W           {R7,LR}
11343E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
