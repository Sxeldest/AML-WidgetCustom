; =========================================================
; Game Engine Function: sub_20E734
; Address            : 0x20E734 - 0x20E744
; =========================================================

20E734:  PUSH            {R7,LR}
20E736:  MOV             R7, SP
20E738:  BLX             j__ZNSt6__ndk112ctype_bynameIwED2Ev; std::ctype_byname<wchar_t>::~ctype_byname()
20E73C:  POP.W           {R7,LR}
20E740:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
