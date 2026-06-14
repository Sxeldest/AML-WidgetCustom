; =========================================================
; Game Engine Function: sub_214F3A
; Address            : 0x214F3A - 0x214F4C
; =========================================================

214F3A:  CBZ             R0, loc_214F48
214F3C:  PUSH            {R7,LR}
214F3E:  MOV             R7, SP
214F40:  BLX             j__ZNSt6__ndk115__thread_structD2Ev_0; std::__thread_struct::~__thread_struct()
214F44:  POP.W           {R7,LR}
214F48:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
