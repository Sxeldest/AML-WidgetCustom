; =========================================================
; Game Engine Function: sub_1079F6
; Address            : 0x1079F6 - 0x107A06
; =========================================================

1079F6:  PUSH            {R7,LR}
1079F8:  MOV             R7, SP
1079FA:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
1079FE:  POP.W           {R7,LR}
107A02:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
