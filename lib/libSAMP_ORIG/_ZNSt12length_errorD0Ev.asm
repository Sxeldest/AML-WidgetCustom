; =========================================================
; Game Engine Function: _ZNSt12length_errorD0Ev
; Address            : 0x108790 - 0x1087A0
; =========================================================

108790:  PUSH            {R7,LR}
108792:  MOV             R7, SP
108794:  BLX             j__ZNSt16invalid_argumentD2Ev; std::invalid_argument::~invalid_argument()
108798:  POP.W           {R7,LR}
10879C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
