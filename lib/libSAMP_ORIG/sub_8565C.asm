; =========================================================
; Game Engine Function: sub_8565C
; Address            : 0x8565C - 0x8566C
; =========================================================

8565C:  PUSH            {R7,LR}
8565E:  MOV             R7, SP
85660:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
85664:  POP.W           {R7,LR}
85668:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
