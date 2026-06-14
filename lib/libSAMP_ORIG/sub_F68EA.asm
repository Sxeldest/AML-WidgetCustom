; =========================================================
; Game Engine Function: sub_F68EA
; Address            : 0xF68EA - 0xF68FA
; =========================================================

F68EA:  PUSH            {R7,LR}
F68EC:  MOV             R7, SP
F68EE:  BLX             j__ZNSt6__ndk112ctype_bynameIwED2Ev; std::ctype_byname<wchar_t>::~ctype_byname()
F68F2:  POP.W           {R7,LR}
F68F6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
