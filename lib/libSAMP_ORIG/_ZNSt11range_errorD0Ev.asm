; =========================================================
; Game Engine Function: _ZNSt11range_errorD0Ev
; Address            : 0x1087B0 - 0x1087C0
; =========================================================

1087B0:  PUSH            {R7,LR}
1087B2:  MOV             R7, SP
1087B4:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
1087B8:  POP.W           {R7,LR}
1087BC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
