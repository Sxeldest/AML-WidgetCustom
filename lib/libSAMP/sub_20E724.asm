; =========================================================
; Game Engine Function: sub_20E724
; Address            : 0x20E724 - 0x20E734
; =========================================================

20E724:  PUSH            {R7,LR}
20E726:  MOV             R7, SP
20E728:  BLX             j__ZNSt6__ndk112ctype_bynameIcED2Ev; std::ctype_byname<char>::~ctype_byname()
20E72C:  POP.W           {R7,LR}
20E730:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
