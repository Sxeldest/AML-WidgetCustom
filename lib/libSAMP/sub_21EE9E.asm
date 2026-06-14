; =========================================================
; Game Engine Function: sub_21EE9E
; Address            : 0x21EE9E - 0x21EEAE
; =========================================================

21EE9E:  PUSH            {R7,LR}
21EEA0:  MOV             R7, SP
21EEA2:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EEA6:  POP.W           {R7,LR}
21EEAA:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
