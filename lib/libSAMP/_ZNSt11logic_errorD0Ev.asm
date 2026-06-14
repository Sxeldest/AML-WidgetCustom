; =========================================================
; Game Engine Function: _ZNSt11logic_errorD0Ev
; Address            : 0x21FB78 - 0x21FB88
; =========================================================

21FB78:  PUSH            {R7,LR}
21FB7A:  MOV             R7, SP
21FB7C:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
21FB80:  POP.W           {R7,LR}
21FB84:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
