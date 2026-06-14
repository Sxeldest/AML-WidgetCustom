; =========================================================
; Game Engine Function: sub_161BA0
; Address            : 0x161BA0 - 0x161BB0
; =========================================================

161BA0:  PUSH            {R7,LR}
161BA2:  MOV             R7, SP
161BA4:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
161BA8:  POP.W           {R7,LR}
161BAC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
