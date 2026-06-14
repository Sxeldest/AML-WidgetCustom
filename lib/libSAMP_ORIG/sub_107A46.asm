; =========================================================
; Game Engine Function: sub_107A46
; Address            : 0x107A46 - 0x107A56
; =========================================================

107A46:  PUSH            {R7,LR}
107A48:  MOV             R7, SP
107A4A:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
107A4E:  POP.W           {R7,LR}
107A52:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
