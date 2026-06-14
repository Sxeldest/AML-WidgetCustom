; =========================================================
; Game Engine Function: _ZNSt13runtime_errorD0Ev
; Address            : 0x21FBB4 - 0x21FBC4
; =========================================================

21FBB4:  PUSH            {R7,LR}
21FBB6:  MOV             R7, SP
21FBB8:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
21FBBC:  POP.W           {R7,LR}
21FBC0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
