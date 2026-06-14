; =========================================================
; Game Engine Function: _ZNSt8bad_castD0Ev
; Address            : 0x1087FC - 0x10880C
; =========================================================

1087FC:  PUSH            {R7,LR}
1087FE:  MOV             R7, SP
108800:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
108804:  POP.W           {R7,LR}
108808:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
