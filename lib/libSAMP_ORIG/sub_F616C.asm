; =========================================================
; Game Engine Function: sub_F616C
; Address            : 0xF616C - 0xF617C
; =========================================================

F616C:  PUSH            {R7,LR}
F616E:  MOV             R7, SP
F6170:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F6174:  POP.W           {R7,LR}
F6178:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
