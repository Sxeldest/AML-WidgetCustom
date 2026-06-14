; =========================================================
; Game Engine Function: sub_F617C
; Address            : 0xF617C - 0xF618C
; =========================================================

F617C:  PUSH            {R7,LR}
F617E:  MOV             R7, SP
F6180:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F6184:  POP.W           {R7,LR}
F6188:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
