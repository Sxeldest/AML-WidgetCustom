; =========================================================
; Game Engine Function: _ZNSt10bad_typeidD0Ev
; Address            : 0x21FC84 - 0x21FC94
; =========================================================

21FC84:  PUSH            {R7,LR}
21FC86:  MOV             R7, SP
21FC88:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
21FC8C:  POP.W           {R7,LR}
21FC90:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
