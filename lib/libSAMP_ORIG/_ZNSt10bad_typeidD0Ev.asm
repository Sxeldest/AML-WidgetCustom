; =========================================================
; Game Engine Function: _ZNSt10bad_typeidD0Ev
; Address            : 0x10882C - 0x10883C
; =========================================================

10882C:  PUSH            {R7,LR}
10882E:  MOV             R7, SP
108830:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
108834:  POP.W           {R7,LR}
108838:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
