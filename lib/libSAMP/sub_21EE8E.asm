; =========================================================
; Game Engine Function: sub_21EE8E
; Address            : 0x21EE8E - 0x21EE9E
; =========================================================

21EE8E:  PUSH            {R7,LR}
21EE90:  MOV             R7, SP
21EE92:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE96:  POP.W           {R7,LR}
21EE9A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
