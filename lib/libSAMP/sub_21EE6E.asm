; =========================================================
; Game Engine Function: sub_21EE6E
; Address            : 0x21EE6E - 0x21EE7E
; =========================================================

21EE6E:  PUSH            {R7,LR}
21EE70:  MOV             R7, SP
21EE72:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE76:  POP.W           {R7,LR}
21EE7A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
