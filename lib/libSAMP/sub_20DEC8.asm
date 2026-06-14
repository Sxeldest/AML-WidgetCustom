; =========================================================
; Game Engine Function: sub_20DEC8
; Address            : 0x20DEC8 - 0x20DED8
; =========================================================

20DEC8:  PUSH            {R7,LR}
20DECA:  MOV             R7, SP
20DECC:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DED0:  POP.W           {R7,LR}
20DED4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
