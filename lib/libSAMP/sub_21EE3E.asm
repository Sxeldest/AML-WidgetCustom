; =========================================================
; Game Engine Function: sub_21EE3E
; Address            : 0x21EE3E - 0x21EE4E
; =========================================================

21EE3E:  PUSH            {R7,LR}
21EE40:  MOV             R7, SP
21EE42:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE46:  POP.W           {R7,LR}
21EE4A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
