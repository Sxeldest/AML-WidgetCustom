; =========================================================
; Game Engine Function: sub_20DEA8
; Address            : 0x20DEA8 - 0x20DEB8
; =========================================================

20DEA8:  PUSH            {R7,LR}
20DEAA:  MOV             R7, SP
20DEAC:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
20DEB0:  POP.W           {R7,LR}
20DEB4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
