; =========================================================
; Game Engine Function: sub_113632
; Address            : 0x113632 - 0x113642
; =========================================================

113632:  PUSH            {R7,LR}
113634:  MOV             R7, SP
113636:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
11363A:  POP.W           {R7,LR}
11363E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
