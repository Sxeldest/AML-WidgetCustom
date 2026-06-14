; =========================================================
; Game Engine Function: _ZNSt12domain_errorD0Ev
; Address            : 0x21FBC8 - 0x21FBD8
; =========================================================

21FBC8:  PUSH            {R7,LR}
21FBCA:  MOV             R7, SP
21FBCC:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
21FBD0:  POP.W           {R7,LR}
21FBD4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
