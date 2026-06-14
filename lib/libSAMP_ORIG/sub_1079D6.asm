; =========================================================
; Game Engine Function: sub_1079D6
; Address            : 0x1079D6 - 0x1079E6
; =========================================================

1079D6:  PUSH            {R7,LR}
1079D8:  MOV             R7, SP
1079DA:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
1079DE:  POP.W           {R7,LR}
1079E2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
