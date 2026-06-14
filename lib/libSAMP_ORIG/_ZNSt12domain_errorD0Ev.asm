; =========================================================
; Game Engine Function: _ZNSt12domain_errorD0Ev
; Address            : 0x108770 - 0x108780
; =========================================================

108770:  PUSH            {R7,LR}
108772:  MOV             R7, SP
108774:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
108778:  POP.W           {R7,LR}
10877C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
