; =========================================================
; Game Engine Function: sub_21EE0E
; Address            : 0x21EE0E - 0x21EE1E
; =========================================================

21EE0E:  PUSH            {R7,LR}
21EE10:  MOV             R7, SP
21EE12:  BLX             j__ZNSt9type_infoD2Ev; std::type_info::~type_info()
21EE16:  POP.W           {R7,LR}
21EE1A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
