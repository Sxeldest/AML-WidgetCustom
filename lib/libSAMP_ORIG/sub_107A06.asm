; =========================================================
; Game Engine Function: sub_107A06
; Address            : 0x107A06 - 0x107A16
; =========================================================

107A06:  PUSH            {R7,LR}
107A08:  MOV             R7, SP
107A0A:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
107A0E:  POP.W           {R7,LR}
107A12:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
