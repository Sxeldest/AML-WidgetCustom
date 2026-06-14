; =========================================================
; Game Engine Function: sub_161444
; Address            : 0x161444 - 0x161454
; =========================================================

161444:  PUSH            {R7,LR}
161446:  MOV             R7, SP
161448:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
16144C:  POP.W           {R7,LR}
161450:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
