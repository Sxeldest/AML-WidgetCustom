; =========================================================
; Game Engine Function: _ZNSt12out_of_rangeD0Ev
; Address            : 0x1087A0 - 0x1087B0
; =========================================================

1087A0:  PUSH            {R7,LR}
1087A2:  MOV             R7, SP
1087A4:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
1087A8:  POP.W           {R7,LR}
1087AC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
