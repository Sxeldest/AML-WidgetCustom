; =========================================================
; Game Engine Function: sub_107A26
; Address            : 0x107A26 - 0x107A36
; =========================================================

107A26:  PUSH            {R7,LR}
107A28:  MOV             R7, SP
107A2A:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
107A2E:  POP.W           {R7,LR}
107A32:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
