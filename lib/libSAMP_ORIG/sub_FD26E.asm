; =========================================================
; Game Engine Function: sub_FD26E
; Address            : 0xFD26E - 0xFD280
; =========================================================

FD26E:  CBZ             R0, loc_FD27C
FD270:  PUSH            {R7,LR}
FD272:  MOV             R7, SP
FD274:  BLX             j__ZNSt6__ndk115__thread_structD2Ev; std::__thread_struct::~__thread_struct()
FD278:  POP.W           {R7,LR}
FD27C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
