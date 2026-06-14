; =========================================================
; Game Engine Function: _ZNSt14overflow_errorD0Ev
; Address            : 0x1087C0 - 0x1087D0
; =========================================================

1087C0:  PUSH            {R7,LR}
1087C2:  MOV             R7, SP
1087C4:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
1087C8:  POP.W           {R7,LR}
1087CC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
