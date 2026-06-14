; =========================================================
; Game Engine Function: _ZNSt11logic_errorD0Ev
; Address            : 0x108720 - 0x108730
; =========================================================

108720:  PUSH            {R7,LR}
108722:  MOV             R7, SP
108724:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
108728:  POP.W           {R7,LR}
10872C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
