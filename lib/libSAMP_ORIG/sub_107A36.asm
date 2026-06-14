; =========================================================
; Game Engine Function: sub_107A36
; Address            : 0x107A36 - 0x107A46
; =========================================================

107A36:  PUSH            {R7,LR}
107A38:  MOV             R7, SP
107A3A:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
107A3E:  POP.W           {R7,LR}
107A42:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
