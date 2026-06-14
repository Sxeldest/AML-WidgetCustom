; =========================================================
; Game Engine Function: sub_16254C
; Address            : 0x16254C - 0x16255C
; =========================================================

16254C:  PUSH            {R7,LR}
16254E:  MOV             R7, SP
162550:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
162554:  POP.W           {R7,LR}
162558:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
