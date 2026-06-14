; =========================================================
; Game Engine Function: sub_F5FEC
; Address            : 0xF5FEC - 0xF5FFC
; =========================================================

F5FEC:  PUSH            {R7,LR}
F5FEE:  MOV             R7, SP
F5FF0:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F5FF4:  POP.W           {R7,LR}
F5FF8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
