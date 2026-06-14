; =========================================================
; Game Engine Function: sub_107A16
; Address            : 0x107A16 - 0x107A26
; =========================================================

107A16:  PUSH            {R7,LR}
107A18:  MOV             R7, SP
107A1A:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
107A1E:  POP.W           {R7,LR}
107A22:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
