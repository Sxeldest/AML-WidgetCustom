; =========================================================
; Game Engine Function: _ZNSt15underflow_errorD0Ev
; Address            : 0x1087D0 - 0x1087E0
; =========================================================

1087D0:  PUSH            {R7,LR}
1087D2:  MOV             R7, SP
1087D4:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
1087D8:  POP.W           {R7,LR}
1087DC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
