; =========================================================
; Game Engine Function: sub_21EE1E
; Address            : 0x21EE1E - 0x21EE2E
; =========================================================

21EE1E:  PUSH            {R7,LR}
21EE20:  MOV             R7, SP
21EE22:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE26:  POP.W           {R7,LR}
21EE2A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
