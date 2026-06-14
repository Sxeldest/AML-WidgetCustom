; =========================================================
; Game Engine Function: sub_21EE5E
; Address            : 0x21EE5E - 0x21EE6E
; =========================================================

21EE5E:  PUSH            {R7,LR}
21EE60:  MOV             R7, SP
21EE62:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE66:  POP.W           {R7,LR}
21EE6A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
