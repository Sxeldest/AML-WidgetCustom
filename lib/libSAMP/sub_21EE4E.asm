; =========================================================
; Game Engine Function: sub_21EE4E
; Address            : 0x21EE4E - 0x21EE5E
; =========================================================

21EE4E:  PUSH            {R7,LR}
21EE50:  MOV             R7, SP
21EE52:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE56:  POP.W           {R7,LR}
21EE5A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
