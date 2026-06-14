; =========================================================
; Game Engine Function: sub_F68DA
; Address            : 0xF68DA - 0xF68EA
; =========================================================

F68DA:  PUSH            {R7,LR}
F68DC:  MOV             R7, SP
F68DE:  BLX             j__ZNSt6__ndk112ctype_bynameIcED2Ev; std::ctype_byname<char>::~ctype_byname()
F68E2:  POP.W           {R7,LR}
F68E6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
