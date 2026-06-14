; =========================================================
; Game Engine Function: sub_1079C6
; Address            : 0x1079C6 - 0x1079D6
; =========================================================

1079C6:  PUSH            {R7,LR}
1079C8:  MOV             R7, SP
1079CA:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
1079CE:  POP.W           {R7,LR}
1079D2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
