; =========================================================
; Game Engine Function: sub_111D20
; Address            : 0x111D20 - 0x111D30
; =========================================================

111D20:  PUSH            {R7,LR}
111D22:  MOV             R7, SP
111D24:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
111D28:  POP.W           {R7,LR}
111D2C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
