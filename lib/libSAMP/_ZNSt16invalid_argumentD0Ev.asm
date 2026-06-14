; =========================================================
; Game Engine Function: _ZNSt16invalid_argumentD0Ev
; Address            : 0x21FBD8 - 0x21FBE8
; =========================================================

21FBD8:  PUSH            {R7,LR}
21FBDA:  MOV             R7, SP
21FBDC:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
21FBE0:  POP.W           {R7,LR}
21FBE4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
