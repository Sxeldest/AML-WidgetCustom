; =========================================================
; Game Engine Function: sub_1079B6
; Address            : 0x1079B6 - 0x1079C6
; =========================================================

1079B6:  PUSH            {R7,LR}
1079B8:  MOV             R7, SP
1079BA:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
1079BE:  POP.W           {R7,LR}
1079C2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
