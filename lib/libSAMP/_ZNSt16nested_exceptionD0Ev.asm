; =========================================================
; Game Engine Function: _ZNSt16nested_exceptionD0Ev
; Address            : 0x1ED7D0 - 0x1ED7E0
; =========================================================

1ED7D0:  PUSH            {R7,LR}
1ED7D2:  MOV             R7, SP
1ED7D4:  BLX             j__ZNSt16nested_exceptionD2Ev; std::nested_exception::~nested_exception()
1ED7D8:  POP.W           {R7,LR}
1ED7DC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
