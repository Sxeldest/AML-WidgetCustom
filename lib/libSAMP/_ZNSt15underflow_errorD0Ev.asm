; =========================================================
; Game Engine Function: _ZNSt15underflow_errorD0Ev
; Address            : 0x21FC28 - 0x21FC38
; =========================================================

21FC28:  PUSH            {R7,LR}
21FC2A:  MOV             R7, SP
21FC2C:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
21FC30:  POP.W           {R7,LR}
21FC34:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
