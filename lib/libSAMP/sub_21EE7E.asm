; =========================================================
; Game Engine Function: sub_21EE7E
; Address            : 0x21EE7E - 0x21EE8E
; =========================================================

21EE7E:  PUSH            {R7,LR}
21EE80:  MOV             R7, SP
21EE82:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE86:  POP.W           {R7,LR}
21EE8A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
