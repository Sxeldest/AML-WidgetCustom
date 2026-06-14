; =========================================================
; Game Engine Function: _ZNSt8bad_castD0Ev
; Address            : 0x21FC54 - 0x21FC64
; =========================================================

21FC54:  PUSH            {R7,LR}
21FC56:  MOV             R7, SP
21FC58:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
21FC5C:  POP.W           {R7,LR}
21FC60:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
