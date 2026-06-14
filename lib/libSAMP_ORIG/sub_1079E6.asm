; =========================================================
; Game Engine Function: sub_1079E6
; Address            : 0x1079E6 - 0x1079F6
; =========================================================

1079E6:  PUSH            {R7,LR}
1079E8:  MOV             R7, SP
1079EA:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
1079EE:  POP.W           {R7,LR}
1079F2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
