; =========================================================
; Game Engine Function: _ZNSt14overflow_errorD0Ev
; Address            : 0x21FC18 - 0x21FC28
; =========================================================

21FC18:  PUSH            {R7,LR}
21FC1A:  MOV             R7, SP
21FC1C:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
21FC20:  POP.W           {R7,LR}
21FC24:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
