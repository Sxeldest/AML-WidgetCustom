; =========================================================
; Game Engine Function: sub_20DEB8
; Address            : 0x20DEB8 - 0x20DEC8
; =========================================================

20DEB8:  PUSH            {R7,LR}
20DEBA:  MOV             R7, SP
20DEBC:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DEC0:  POP.W           {R7,LR}
20DEC4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
