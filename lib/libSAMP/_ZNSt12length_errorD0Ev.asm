; =========================================================
; Game Engine Function: _ZNSt12length_errorD0Ev
; Address            : 0x21FBE8 - 0x21FBF8
; =========================================================

21FBE8:  PUSH            {R7,LR}
21FBEA:  MOV             R7, SP
21FBEC:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
21FBF0:  POP.W           {R7,LR}
21FBF4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
