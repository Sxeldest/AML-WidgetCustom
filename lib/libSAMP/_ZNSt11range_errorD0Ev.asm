; =========================================================
; Game Engine Function: _ZNSt11range_errorD0Ev
; Address            : 0x21FC08 - 0x21FC18
; =========================================================

21FC08:  PUSH            {R7,LR}
21FC0A:  MOV             R7, SP
21FC0C:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
21FC10:  POP.W           {R7,LR}
21FC14:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
