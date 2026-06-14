; =========================================================
; Game Engine Function: _ZNSt16nested_exceptionD0Ev
; Address            : 0xE30B8 - 0xE30C8
; =========================================================

E30B8:  PUSH            {R7,LR}
E30BA:  MOV             R7, SP
E30BC:  BLX             j__ZNSt16nested_exceptionD2Ev; std::nested_exception::~nested_exception()
E30C0:  POP.W           {R7,LR}
E30C4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
