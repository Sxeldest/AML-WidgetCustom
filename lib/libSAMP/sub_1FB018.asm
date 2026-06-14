; =========================================================
; Game Engine Function: sub_1FB018
; Address            : 0x1FB018 - 0x1FB028
; =========================================================

1FB018:  PUSH            {R7,LR}
1FB01A:  MOV             R7, SP
1FB01C:  BLX             j__ZNSt6__ndk114error_categoryD2Ev; std::error_category::~error_category()
1FB020:  POP.W           {R7,LR}
1FB024:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
